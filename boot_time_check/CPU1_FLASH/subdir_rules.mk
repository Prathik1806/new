################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
build-888848188: ../c2000.syscfg
	@echo 'SysConfig - building file: "$<"'
	"C:/ti/ccs2050/ccs/utils/sysconfig_1.27.0/sysconfig_cli.bat" -s "C:/ti/C2000Ware_26_00_00_00/.metadata/sdk.json" -d "F28P55x" -p "128PDT" -r "F28P55x_128PDT" --script "C:/Users/prath/workspace_ccstheia/boot_time_check/c2000.syscfg" -o "syscfg" --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/board.c: build-888848188 ../c2000.syscfg
syscfg/board.h: build-888848188
syscfg/board.cmd.genlibs: build-888848188
syscfg/board.opt: build-888848188
syscfg/board.json: build-888848188
syscfg/pinmux.csv: build-888848188
syscfg/c2000ware_libraries.cmd.genlibs: build-888848188
syscfg/c2000ware_libraries.opt: build-888848188
syscfg/c2000ware_libraries.c: build-888848188
syscfg/c2000ware_libraries.h: build-888848188
syscfg/clocktree.h: build-888848188
syscfg: build-888848188

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'C2000 Compiler - building file: "$<"'
	"C:/ti/ccs2050/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu1 --vcu_support=vcrc -Ooff --include_path="C:/Users/prath/workspace_ccstheia/boot_time_check" --include_path="C:/ti/C2000Ware_26_00_00_00" --include_path="C:/Users/prath/workspace_ccstheia/boot_time_check/device" --include_path="C:/ti/C2000Ware_26_00_00_00/driverlib/f28p55x/driverlib/" --include_path="C:/ti/ccs2050/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include" --define=DEBUG --define=_FLASH --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="C:/Users/prath/workspace_ccstheia/boot_time_check/CPU1_FLASH/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'C2000 Compiler - building file: "$<"'
	"C:/ti/ccs2050/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu1 --vcu_support=vcrc -Ooff --include_path="C:/Users/prath/workspace_ccstheia/boot_time_check" --include_path="C:/ti/C2000Ware_26_00_00_00" --include_path="C:/Users/prath/workspace_ccstheia/boot_time_check/device" --include_path="C:/ti/C2000Ware_26_00_00_00/driverlib/f28p55x/driverlib/" --include_path="C:/ti/ccs2050/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include" --define=DEBUG --define=_FLASH --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="C:/Users/prath/workspace_ccstheia/boot_time_check/CPU1_FLASH/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


