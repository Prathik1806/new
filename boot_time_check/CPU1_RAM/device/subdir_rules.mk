################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
device/%.obj: ../device/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'C2000 Compiler - building file: "$<"'
	"C:/ti/ccs2050/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu1 --vcu_support=vcrc -Ooff --include_path="C:/Users/prath/workspace_ccstheia/boot_time_check" --include_path="C:/ti/C2000Ware_26_00_00_00" --include_path="C:/Users/prath/workspace_ccstheia/boot_time_check/device" --include_path="C:/ti/C2000Ware_26_00_00_00/driverlib/f28p55x/driverlib/" --include_path="C:/ti/ccs2050/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include" --include_path="C:/ti/C2000Ware_26_00_00_00/driverlib/f28p55x/examples/flash" --include_path="C:/ti/C2000Ware_26_00_00_00/libraries/flash_api/f28p55x/include/FlashAPI" --define=DEBUG --define=RAM --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="device/$(basename $(<F)).d_raw" --include_path="C:/Users/prath/workspace_ccstheia/boot_time_check/CPU1_RAM/syscfg" --obj_directory="device" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

device/%.obj: ../device/%.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'C2000 Compiler - building file: "$<"'
	"C:/ti/ccs2050/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu1 --vcu_support=vcrc -Ooff --include_path="C:/Users/prath/workspace_ccstheia/boot_time_check" --include_path="C:/ti/C2000Ware_26_00_00_00" --include_path="C:/Users/prath/workspace_ccstheia/boot_time_check/device" --include_path="C:/ti/C2000Ware_26_00_00_00/driverlib/f28p55x/driverlib/" --include_path="C:/ti/ccs2050/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include" --include_path="C:/ti/C2000Ware_26_00_00_00/driverlib/f28p55x/examples/flash" --include_path="C:/ti/C2000Ware_26_00_00_00/libraries/flash_api/f28p55x/include/FlashAPI" --define=DEBUG --define=RAM --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="device/$(basename $(<F)).d_raw" --include_path="C:/Users/prath/workspace_ccstheia/boot_time_check/CPU1_RAM/syscfg" --obj_directory="device" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


