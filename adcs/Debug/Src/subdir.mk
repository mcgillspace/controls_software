################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/WahbaRotM.c \
../Src/adcs_actuators.c \
../Src/adcs_configuration.c \
../Src/adcs_control.c \
../Src/adcs_error_handler.c \
../Src/adcs_flash.c \
../Src/adcs_frame.c \
../Src/adcs_gps.c \
../Src/adcs_manager.c \
../Src/adcs_sensors.c \
../Src/adcs_switch.c \
../Src/adcs_time.c \
../Src/geomag.c \
../Src/jacobiTS.c \
../Src/main.c \
../Src/sgp4.c \
../Src/stm32f4xx_hal_msp.c \
../Src/stm32f4xx_it.c \
../Src/sun_pos.c 

OBJS += \
./Src/WahbaRotM.o \
./Src/adcs_actuators.o \
./Src/adcs_configuration.o \
./Src/adcs_control.o \
./Src/adcs_error_handler.o \
./Src/adcs_flash.o \
./Src/adcs_frame.o \
./Src/adcs_gps.o \
./Src/adcs_manager.o \
./Src/adcs_sensors.o \
./Src/adcs_switch.o \
./Src/adcs_time.o \
./Src/geomag.o \
./Src/jacobiTS.o \
./Src/main.o \
./Src/sgp4.o \
./Src/stm32f4xx_hal_msp.o \
./Src/stm32f4xx_it.o \
./Src/sun_pos.o 

C_DEPS += \
./Src/WahbaRotM.d \
./Src/adcs_actuators.d \
./Src/adcs_configuration.d \
./Src/adcs_control.d \
./Src/adcs_error_handler.d \
./Src/adcs_flash.d \
./Src/adcs_frame.d \
./Src/adcs_gps.d \
./Src/adcs_manager.d \
./Src/adcs_sensors.d \
./Src/adcs_switch.d \
./Src/adcs_time.d \
./Src/geomag.d \
./Src/jacobiTS.d \
./Src/main.d \
./Src/sgp4.d \
./Src/stm32f4xx_hal_msp.d \
./Src/stm32f4xx_it.d \
./Src/sun_pos.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


