#################################################################
# Makefile generated by Xilinx Platform Studio 
# Project:C:\E\Dev\FreeRTOS\WorkingCopy3\Demo\PPC440_DP_FPU_Xilinx_Virtex5_GCC\system.xmp
#
# WARNING : This file will be re-generated every time a command
# to run a make target is invoked. So, any changes made to this  
# file manually, will be lost when make is invoked next. 
#################################################################

XILINX_EDK_DIR = /cygdrive/c/devtools/Xilinx/11.1/EDK
NON_CYG_XILINX_EDK_DIR = C:/devtools/Xilinx/11.1/EDK

SYSTEM = system

MHSFILE = system.mhs

MSSFILE = system.mss

FPGA_ARCH = virtex5

DEVICE = xc5vfx70tff1136-1

LANGUAGE = vhdl

SEARCHPATHOPT = 

SUBMODULE_OPT = 

PLATGEN_OPTIONS = -p $(DEVICE) -lang $(LANGUAGE) $(SEARCHPATHOPT) $(SUBMODULE_OPT) -msg __xps/ise/xmsgprops.lst

LIBGEN_OPTIONS = -mhs $(MHSFILE) -p $(DEVICE) $(SEARCHPATHOPT) -msg __xps/ise/xmsgprops.lst

OBSERVE_PAR_OPTIONS = -error yes

RTOSDEMO_OUTPUT_DIR = RTOSDemo
RTOSDEMO_OUTPUT = $(RTOSDEMO_OUTPUT_DIR)/executable.elf

MICROBLAZE_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop.elf
PPC405_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc405/ppc_bootloop.elf
PPC440_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc440/ppc440_bootloop.elf
BOOTLOOP_DIR = bootloops

PPC440_0_BOOTLOOP = $(BOOTLOOP_DIR)/ppc440_0.elf

BRAMINIT_ELF_FILES =   $(PPC440_0_BOOTLOOP) 
BRAMINIT_ELF_FILE_ARGS =   -pe ppc440_0  $(PPC440_0_BOOTLOOP) 

ALL_USER_ELF_FILES = $(RTOSDEMO_OUTPUT) 

SIM_CMD = vsim

BEHAVIORAL_SIM_SCRIPT = simulation/behavioral/$(SYSTEM)_setup.do

STRUCTURAL_SIM_SCRIPT = simulation/structural/$(SYSTEM)_setup.do

TIMING_SIM_SCRIPT = simulation/timing/$(SYSTEM)_setup.do

DEFAULT_SIM_SCRIPT = $(BEHAVIORAL_SIM_SCRIPT)

MIX_LANG_SIM_OPT = -mixed yes

SIMGEN_OPTIONS = -p $(DEVICE) -lang $(LANGUAGE) $(SEARCHPATHOPT) $(BRAMINIT_ELF_FILE_ARGS) $(MIX_LANG_SIM_OPT) -msg __xps/ise/xmsgprops.lst -s mti -X C:/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/


LIBRARIES =  \
       ppc440_0/lib/libxil.a 

LIBSCLEAN_TARGETS = ppc440_0_libsclean 

PROGRAMCLEAN_TARGETS = RTOSDemo_programclean 

CORE_STATE_DEVELOPMENT_FILES = 

WRAPPER_NGC_FILES = implementation/ppc440_0_wrapper.ngc \
implementation/plb_v46_0_wrapper.ngc \
implementation/xps_bram_if_cntlr_1_wrapper.ngc \
implementation/xps_bram_if_cntlr_1_bram_wrapper.ngc \
implementation/rs232_uart_1_wrapper.ngc \
implementation/leds_8bit_wrapper.ngc \
implementation/leds_positions_wrapper.ngc \
implementation/push_buttons_5bit_wrapper.ngc \
implementation/dip_switches_8bit_wrapper.ngc \
implementation/iic_eeprom_wrapper.ngc \
implementation/sram_wrapper.ngc \
implementation/pcie_bridge_wrapper.ngc \
implementation/ppc440_0_splb0_wrapper.ngc \
implementation/ethernet_mac_wrapper.ngc \
implementation/ddr2_sdram_wrapper.ngc \
implementation/sysace_compactflash_wrapper.ngc \
implementation/ppc440_0_fcb_v20_wrapper.ngc \
implementation/ppc440_0_apu_fpu_virtex5_wrapper.ngc \
implementation/clock_generator_0_wrapper.ngc \
implementation/jtagppc_cntlr_inst_wrapper.ngc \
implementation/proc_sys_reset_0_wrapper.ngc \
implementation/xps_intc_0_wrapper.ngc

POSTSYN_NETLIST = implementation/$(SYSTEM).ngc

SYSTEM_BIT = implementation/$(SYSTEM).bit

DOWNLOAD_BIT = implementation/download.bit

SYSTEM_ACE = implementation/$(SYSTEM).ace

UCF_FILE = data/system.ucf

BMM_FILE = implementation/$(SYSTEM).bmm

BITGEN_UT_FILE = etc/bitgen.ut

XFLOW_OPT_FILE = etc/fast_runtime.opt
XFLOW_DEPENDENCY = __xps/xpsxflow.opt $(XFLOW_OPT_FILE)

XPLORER_DEPENDENCY = __xps/xplorer.opt
XPLORER_OPTIONS = -p $(DEVICE) -uc $(SYSTEM).ucf -bm $(SYSTEM).bmm -max_runs 7

FPGA_IMP_DEPENDENCY = $(BMM_FILE) $(POSTSYN_NETLIST) $(UCF_FILE) $(XFLOW_DEPENDENCY)

SDK_EXPORT_DIR = SDK/SDK_Export/hw
SYSTEM_HW_HANDOFF = $(SDK_EXPORT_DIR)/$(SYSTEM).xml
SYSTEM_HW_HANDOFF_BIT = $(SDK_EXPORT_DIR)/$(SYSTEM).bit
SYSTEM_HW_HANDOFF_BMM = $(SDK_EXPORT_DIR)/$(SYSTEM)_bd.bmm
SYSTEM_HW_HANDOFF_DEP = $(SYSTEM_HW_HANDOFF) $(SYSTEM_HW_HANDOFF_BIT) $(SYSTEM_HW_HANDOFF_BMM)

#################################################################
# SOFTWARE APPLICATION RTOSDEMO
#################################################################

RTOSDEMO_SOURCES = /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../Common/Minimal/BlockQ.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../Common/Minimal/blocktim.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../Common/Minimal/comtest.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../Common/Minimal/countsem.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../Common/Minimal/death.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../Common/Minimal/dynamic.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../Common/Minimal/flash.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../Common/Minimal/GenQTest.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../Common/Minimal/integer.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../Common/Minimal/QPeek.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../Common/Minimal/recmutex.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../Common/Minimal/semtest.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../../Source/tasks.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../../Source/list.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../../Source/queue.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../../Source/croutine.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../../Source/portable/GCC/PPC440_Xilinx/portasm.S /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../../Source/portable/GCC/PPC440_Xilinx/port.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/../../../Source/portable/MemMang/heap_2.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/flop/flop-reg-test.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/flop/flop.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/partest/partest.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/serial/serial.c /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/main.c 

RTOSDEMO_HEADERS = 

RTOSDEMO_CC = powerpc-eabi-gcc
RTOSDEMO_CC_SIZE = powerpc-eabi-size
RTOSDEMO_CC_OPT = -O0
RTOSDEMO_CFLAGS = -D USE_DP_FPU -D GCC_PPC440 -mregnames
RTOSDEMO_CC_SEARCH = # -B
RTOSDEMO_LIBPATH = -L./ppc440_0/lib/ # -L
RTOSDEMO_INCLUDES = -I./ppc440_0/include/   -I../../Source/include -I../../Source/portable/GCC/PPC440_Xilinx -I../Common/include -I./RTOSDemo -I./RTOSDemo/flop 
RTOSDEMO_LFLAGS = # -l
RTOSDEMO_LINKER_SCRIPT = /cygdrive/c/E/Dev/FreeRTOS/WorkingCopy3/Demo/PPC440_DP_FPU_Xilinx_Virtex5_GCC/RTOSDemo/RTOSDemo_linker_script.ld
RTOSDEMO_LINKER_SCRIPT_FLAG = -Wl,-T -Wl,$(RTOSDEMO_LINKER_SCRIPT) 
RTOSDEMO_CC_DEBUG_FLAG =  -g 
RTOSDEMO_CC_PROFILE_FLAG = # -pg
RTOSDEMO_CC_GLOBPTR_FLAG= # -msdata=eabi
RTOSDEMO_CC_INFERRED_FLAGS= -mfpu=dp_full -mcpu=440 
RTOSDEMO_CC_START_ADDR_FLAG=  #  # -Wl,-defsym -Wl,_START_ADDR=
RTOSDEMO_CC_STACK_SIZE_FLAG=  #  # -Wl,-defsym -Wl,_STACK_SIZE=
RTOSDEMO_CC_HEAP_SIZE_FLAG=  #  # -Wl,-defsym -Wl,_HEAP_SIZE=
RTOSDEMO_OTHER_CC_FLAGS= $(RTOSDEMO_CC_GLOBPTR_FLAG)  \
                  $(RTOSDEMO_CC_START_ADDR_FLAG) $(RTOSDEMO_CC_STACK_SIZE_FLAG) $(RTOSDEMO_CC_HEAP_SIZE_FLAG)  \
                  $(RTOSDEMO_CC_INFERRED_FLAGS)  \
                  $(RTOSDEMO_LINKER_SCRIPT_FLAG) $(RTOSDEMO_CC_DEBUG_FLAG) $(RTOSDEMO_CC_PROFILE_FLAG) 