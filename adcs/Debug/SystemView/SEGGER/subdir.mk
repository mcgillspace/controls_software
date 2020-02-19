################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SystemView/SEGGER/SEGGER_RTT.c \
../SystemView/SEGGER/SEGGER_SYSVIEW.c 

OBJS += \
./SystemView/SEGGER/SEGGER_RTT.o \
./SystemView/SEGGER/SEGGER_SYSVIEW.o 

C_DEPS += \
./SystemView/SEGGER/SEGGER_RTT.d \
./SystemView/SEGGER/SEGGER_SYSVIEW.d 


# Each subdirectory must supply rules for building sources it contributes
SystemView/SEGGER/%.o: ../SystemView/SEGGER/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


