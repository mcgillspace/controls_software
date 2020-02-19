################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f405xx.s 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f405xx.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/%.o: ../Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/SystemView/Config -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs/hal/stm32 -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/SystemView/OS -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/SystemView/SEGGER -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Drivers/CMSIS/Include -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Debug/ -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


