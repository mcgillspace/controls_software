################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Git/EPS/eps_software/upsat-ecss-services-master/services/event_reporting_service.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/services/function_management_service.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/services/housekeeping_service.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/services/service_utilities.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/services/services.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/services/test_service.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/services/time_management_service.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/services/verification_service.c 

OBJS += \
./services/event_reporting_service.o \
./services/function_management_service.o \
./services/housekeeping_service.o \
./services/service_utilities.o \
./services/services.o \
./services/test_service.o \
./services/time_management_service.o \
./services/verification_service.o 

C_DEPS += \
./services/event_reporting_service.d \
./services/function_management_service.d \
./services/housekeeping_service.d \
./services/service_utilities.d \
./services/services.d \
./services/test_service.d \
./services/time_management_service.d \
./services/verification_service.d 


# Each subdirectory must supply rules for building sources it contributes
services/event_reporting_service.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/services/event_reporting_service.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

services/function_management_service.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/services/function_management_service.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

services/housekeeping_service.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/services/housekeeping_service.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

services/service_utilities.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/services/service_utilities.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

services/services.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/services/services.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

services/test_service.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/services/test_service.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

services/time_management_service.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/services/time_management_service.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

services/verification_service.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/services/verification_service.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


