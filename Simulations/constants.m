% Constants file.
% units!

% Satellite
mass = 1.5; % kg, mass.
sat_I = [6.7e-3 0 0; 0 3.33e-3 0; 0 0 3.33e-2]; % kg*m^2, of 3U.
wheel_I = [0.733e-4 0 0; 0 0.733e-4 0; 0 0 1.466e-4]; % kg*m^2, of a reaction wheel.
I = eye(3);

% Earth (B dot)
Altitude = 400*1000 + 6371.2*1000; % m, altitude of the satellite
incl = 51.6*pi()/180; %Orbital Inclanation at 51.6 degrees
period = 2*pi()/5400;
zeta = pi/2;
k = 2*period*(1 + sin(zeta))*8.65e-3;
gc = 3.986e14; % Geocentric gravitational constant

% ISS Orbit
v = 7.66e3; % velocity m/s
Cd = 2; % coefficient of drag
rho = 1.83e-15; % Temperature (K), Speed of sound (m), Pressure (Pa), density (kg/m^3)

% Solar Radiation
p = 4.5e-6; % N/m^2, pressure

dummy_matix = blkdiag([1 2; 3 4], 1);