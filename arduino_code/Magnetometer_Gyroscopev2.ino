#include <Wire.h>
#include <math.h>

#define magAddress 0x1E

//Gyroscope variables
char WHO_AM_I = 0x00;
char SMPLRT_DIV= 0x15;
char DLPF_FS = 0x16;
char GYRO_XOUT_H = 0x1D;
char GYRO_XOUT_L = 0x1E;
char GYRO_YOUT_H = 0x1F;
char GYRO_YOUT_L = 0x20;
char GYRO_ZOUT_H = 0x21;
char GYRO_ZOUT_L = 0x22;
//filter stuff
char DLPF_CFG_0 = 1<<0;
char DLPF_CFG_1 = 1<<1;
char DLPF_CFG_2 = 1<<2;
char DLPF_FS_SEL_0 = 1<<3;
char DLPF_FS_SEL_1 = 1<<4;

char gyroAddress = 0x69;

void setup() {
  Serial.begin(9600);
  Wire.begin();

  //Magnetometer setup
  Wire.beginTransmission(magAddress);
  Wire.write(0x02);
  Wire.write(0x00);
  Wire.endTransmission();
  
  //Gyroscope setup
  Wire.beginTransmission(gyroAddress);
  Wire.write(DLPF_FS);
  Wire.write(DLPF_FS_SEL_0|DLPF_FS_SEL_1|DLPF_CFG_0);
  Wire.endTransmission();

  Wire.beginTransmission(gyroAddress);
  Wire.write(SMPLRT_DIV);
  Wire.write(9);
  Wire.endTransmission();
}

void loop() {
  int magX, magY, magZ;
  int gyroX, gyroY, gyroZ;
  int tempX, tempY, tempZ;

  //TODO: SET UP REFERENCE FRAME FROM THE 5th MAGNETOMETER AND ACCELEROMETER READINGS

  Wire.beginTransmission(magAddress);
  Wire.write(0x03);
  Wire.endTransmission();

  Wire.requestFrom(magAddress, 6);
  if(6<=Wire.available()){
    magX = Wire.read()<<8;
    magX |= Wire.read();
    magZ = Wire.read()<<8;
    magZ |= Wire.read();
    magY = Wire.read()<<8;
    magY |= Wire.read();
  }

  gyroX = gyroRead(gyroAddress, GYRO_XOUT_H)<<8;
  gyroX |= gyroRead(gyroAddress, GYRO_XOUT_L);
  gyroY = gyroRead(gyroAddress, GYRO_YOUT_H)<<8;
  gyroY |= gyroRead(gyroAddress, GYRO_YOUT_L);
  gyroZ = gyroRead(gyroAddress, GYRO_ZOUT_H)<<8;
  gyroZ |= gyroRead(gyroAddress, GYRO_ZOUT_L);

 //print accelerometer values
  //Serial.print('\t');
  //Serial.print("Magnetometer x: ");

  tempX = magX;
  magX = magY; //this is the magnetometer's x-value in the same frame as gyro
  magY = tempX; //this is the magnetometer's y-value in the same frame as gyro
  magZ = -magZ; //this is the magnetometer's z-value in the same frame as gyro
  
  Serial.print(magX); 
  Serial.print(",");
  //Serial.print("Magnetometer y: ");
  Serial.print(magY); 
  Serial.print(",");
  //Serial.print("Magnetometer z: ");
  Serial.print(magZ); 
  Serial.print(",");
  //Serial.print("Gyroscope x: ");
  Serial.print(gyroX + 18);
  Serial.print(",");
  //Serial.print("Gyroscope y: ");
  Serial.print(gyroY + 30);
  Serial.print(",");
  //Serial.print("Gyroscope z: ");
  Serial.print(gyroZ - 10);
  Serial.print('\n');

//=========================================
  //Calculating Rotation Matrix
  float normAccel, normMag;
  float magParrX, magParrY, magParrZ;
  float magPerpX, magPerpY, magPerpZ;
  float orthoX, orthoY, orthoZ;
  float accX, accY, accZ;

  //get parralel components of magnetometer reading (projection of mag on accel)
  normAccel = norm(accX, accY, accZ);
  magParrX = (dot(magX, magY, magZ, accX, accY, accZ)/(normAccel)*(normAccel))*accX;
  magParrY = (dot(magX, magY, magZ, accX, accY, accZ)/(normAccel)*(normAccel))*accY;
  magParrZ = (dot(magX, magY, magZ, accX, accY, accZ)/(normAccel)*(normAccel))*accZ;

  //get perpendicular components of magnetometer reading
  magPerpX = magX - magParrX;
  magPerpY = magY - magParrY;
  magPerpZ = magX - magParrX;

  //accel (cross) magPerp = ortho
  orthoX = (accY*magPerpZ - accZ*magPerpY);
  orthoY = -(accX*magPerpZ - accZ*magPerpX);
  orthoZ = (accX*magPerpY - accY*magPerpX);

  //normalize vectors
  float orthoNormX, orthoNormY, orthoNormZ;
  float magNormX, magNormY, magNormZ;
  float accNormX, accNormY, accNormZ;

  orthoNormX = normalize(orthoX, orthoY, orthoZ, orthoX);
  orthoNormY = normalize(orthoX, orthoY, orthoZ, orthoY);
  orthoNormZ = normalize(orthoX, orthoY, orthoZ, orthoZ);
  
  magNormX = normalize(magPerpX, magPerpY, magPerpZ, magPerpX);
  magNormY = normalize(magPerpX, magPerpY, magPerpZ, magPerpY);
  magNormZ = normalize(magPerpX, magPerpY, magPerpZ, magPerpZ);
  
  accNormX = normalize(accX, accY, accZ, accX);
  accNormY = normalize(accX, accY, accZ, accY);
  accNormZ = normalize(accX, accY, accZ, accZ);

  //TRIAD
//  counter in setup()
//  if(counter < something)
//    go back to start of loop AFTER GETTING READING
//  if(counter == something)
//    set as initial frame and go back to loop
//  if not, set as current frame and compute error matrix, and continue

    

//=============================================  
  delay(50);
}


unsigned char gyroRead(char address, char registerAddress)
{
  //This variable will hold the contents read from the i2c device.
  unsigned char data=0;

  //Send the register address to be read.
  Wire.beginTransmission(address);
  //Send the Register Address
  Wire.write(registerAddress);
  //End the communication sequence.
  Wire.endTransmission();

  //Ask the I2C device for data
  Wire.beginTransmission(address);
  Wire.requestFrom(address, 1);

  //Wait for a response from the I2C device
  if(Wire.available()){
    //Save the data sent from the I2C device
    data = Wire.read();
  }

  //End the communication sequence.
  Wire.endTransmission();

  //Return the data read during the operation
  return data;
}

float norm(float x, float y, float z){
  float norm;
  norm = sqrt(x*x + y*y + z*z); 

  return norm;
}

float dot(float mX, float mY, float mZ, float aX, float aY, float aZ){
  float dot;

  dot = mX*aX + mY*aY + mZ*aZ;
  return dot;
}

float normalize(float x, float y, float z, float value){
  float norm;
  float result;
  norm = sqrt(x*x + y*y + z*z);

  result = value/norm;

  return result;
}

