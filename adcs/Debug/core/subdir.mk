################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Git/EPS/eps_software/upsat-ecss-services-master/core/ecss_stats.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/core/flash.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/core/gps.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/core/hldlc.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/core/pkt_pool.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/core/queue.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/core/sysview.c \
D:/Git/EPS/eps_software/upsat-ecss-services-master/core/upsat.c 

OBJS += \
./core/ecss_stats.o \
./core/flash.o \
./core/gps.o \
./core/hldlc.o \
./core/pkt_pool.o \
./core/queue.o \
./core/sysview.o \
./core/upsat.o 

C_DEPS += \
./core/ecss_stats.d \
./core/flash.d \
./core/gps.d \
./core/hldlc.d \
./core/pkt_pool.d \
./core/queue.d \
./core/sysview.d \
./core/upsat.d 


# Each subdirectory must supply rules for building sources it contributes
core/ecss_stats.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/core/ecss_stats.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

core/flash.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/core/flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

core/gps.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/core/gps.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

core/hldlc.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/core/hldlc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

core/pkt_pool.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/core/pkt_pool.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

core/queue.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/core/queue.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

core/sysview.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/core/sysview.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

core/upsat.o: D:/Git/EPS/eps_software/upsat-ecss-services-master/core/upsat.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F405xx -I/home/azisi/Documents/UPSat/upsat-adcs-software/adcs/Inc -I/home/azisi/Documents/UPSat/ecss_services/services -I/home/azisi/Documents/UPSat/ecss_services/platform/adcs -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/core" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/services" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs" -I"D:/Git/EPS/eps_software/upsat-ecss-services-master/platform/adcs/hal/stm32" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/Config" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/OS" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/SystemView/SEGGER" -I"D:/Git/ADCS/adcs_soft/upsat-adcs-software/adcs/Debug"  -O0 -g3 -Wall -fmessage-length=0 -u _printf_float -DARM_MATH_CM4=1 -v -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


