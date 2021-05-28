#
# Copyright Altera 2013,2014
# All Rights Reserved.
#

SOCEDS_ROOT ?= $(SOCEDS_DEST_ROOT)
HWLIBS_ROOT = $(SOCEDS_ROOT)/ip/altera/hps/altera_hps/hwlib

# look for SoC EDS 15.0 directory structure
ifneq (,$(wildcard $(SOCEDS_ROOT)/ip/altera/hps/altera_hps/hwlib/include/soc_cv_av/socal))
SOCAL_ROOT := $(SOCEDS_ROOT)/ip/altera/hps/altera_hps/hwlib/include/soc_cv_av
endif

# look for SoC EDS 14.0 directory structure
ifneq (,$(wildcard $(SOCEDS_ROOT)/ip/altera/hps/altera_hps/hwlib/include/socal))
SOCAL_ROOT := $(SOCEDS_ROOT)/ip/altera/hps/altera_hps/hwlib/include
endif

# this will cahnge for system to system.  just needed to make the mkimage wrapper.  If you are using it after uboot it is not needed.
MKI := mkimage

ifndef SOCAL_ROOT
$(error SOCAL_ROOT is undefined)
endif
#ukf/rt_nonfinite.c ukf/Cholesky.c ukf/measurement_eq.c ukf/nonlinear_state_eq.c ukf/sigmas.c ukf/ukf.c ukf/ut.c ukf/Cholesky_terminate.c ukf/Cholesky_emxAPI.c ukf/Cholesky_initialize.c ukf/Cholesky_emxutil.c ukf/rtGetNaN.c ukf/rtGetInf.c ukf/example.c ukf/randn.c ukf/Cholesky_data.c ukf/eml_rand_mt19937ar_stateful.c 
EXAMPLE_SRC := soc_dma.c io.c arm_cache_modified.s alt_address_space.c fpga_dmac_api.c pmu.c ukf32/rt_nonfinite.c ukf32/Cholesky.c ukf32/measurement_eq.c ukf32/nonlinear_state_eq.c ukf32/sigmas.c ukf32/ukf.c ukf32/ut.c ukf32/Cholesky_terminate.c ukf32/Cholesky_emxAPI.c ukf32/Cholesky_initialize.c ukf32/Cholesky_emxutil.c ukf32/rtGetNaN.c ukf32/rtGetInf.c ukf32/example.c ukf32/randn.c ukf32/Cholesky_data.c ukf32/eml_rand_mt19937ar_stateful.c ukf32/eye.c ukf32/inv.c
C_SRC       := $(EXAMPLE_SRC)

LINKER_SCRIPT := cycloneV-dk-ram-modified.ld

MULTILIBFLAGS := -mcpu=cortex-a9 -mfloat-abi=softfp -mfpu=neon
CFLAGS  := -g -O0 -Wall -Werror -std=c99 $(MULTILIBFLAGS) -I$(HWLIBS_ROOT)/include -I. -Imsgdma -Iqsys_headers -I$(SOCAL_ROOT)
LDFLAGS := -T$(LINKER_SCRIPT) $(MULTILIBFLAGS)

CROSS_COMPILE := arm-altera-eabi-
CC := $(CROSS_COMPILE)gcc
LD := $(CROSS_COMPILE)g++
NM := $(CROSS_COMPILE)nm
OC := $(CROSS_COMPILE)objcopy
OD := $(CROSS_COMPILE)objdump
RM := rm -rf
CP := cp -f

ELF ?= $(basename $(firstword $(C_SRC))).axf
OBJ := $(patsubst %.c,%.o,$(C_SRC))
#BIN = $(basename $(firstword $(C_SRC))).bin
BIN = baremetalapp.bin

.PHONY: all
all: $(BIN)

.PHONY: clean
clean:
	$(RM) $(ELF) $(OBJ) $(BIN)
	$(RM) *.map
	$(RM) *.objdump

%.c: $(HWLIBS_ROOT)/src/hwmgr/%.c
	$(CP) $< $@

$(OBJ): %.o: %.c Makefile
	$(CC) $(CFLAGS) -c $< -o $@

$(ELF): $(OBJ)
	$(LD) $(LDFLAGS) $(OBJ) -o $@
	$(NM) $@ > $@.map
	$(OD) -d $@ > $@.objdump

$(BIN): $(ELF)
	$(OC) -O binary $(ELF) $(BIN)
	$(MKI) -A arm -O u-boot -T standalone -C none -a 0x00100040 -e 0x00100040 -n "baremetalapp" -d $(BIN)  $(BIN).img
