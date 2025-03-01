# Makefile to build DKR

############################ Shell ###########################

SHELL := /bin/bash

################## Preprocessor definitions ##################

# Currently, only US 1.0 is supported.
VERSION := us_1.0

NON_MATCHING ?= 0
$(eval $(call validate-option,NON_MATCHING,0 1))

ifeq ($(VERSION),us_1.0)
  DEFINES += VERSION_US_1_0=1
  DEFINES += F3DDKR_GBI=1
endif
ifeq ($(NON_EQUIVALENT),1)
  DEFINES += NON_EQUIVALENT=1
  DEFINES += NON_MATCHING=1
  NON_MATCHING = 1
endif
ifeq ($(NON_MATCHING),1)
  DEFINES += NON_MATCHING=1
  DEFINES += AVOID_UB=1
else
  DEFINES += ANTI_TAMPER=1
endif

# Whether to hide commands or not
VERBOSE ?= 0
ifeq ($(VERBOSE),0)
  V := @
endif

# Whether to colorize build messages
COLOR ?= 1

############################ Setup ###########################

# Don't do setup checks if cleaning.
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(MAKECMDGOALS),clean_lib)
ifneq ($(MAKECMDGOALS),clean_src)
ifneq ($(MAKECMDGOALS),distclean)
ifneq ($(MAKECMDGOALS),reset)

################ Check if a baserom exists  ################

numberOfFilesInBaseromsDirectory := $(words $(wildcard baseroms/*))
ifeq ($(shell test $(numberOfFilesInBaseromsDirectory) -lt 1; echo $$?),0)
  $(error Make sure you have a DKR rom in the /baseroms/ directory)
endif

########## Make tools ##########

DUMMY != $(MAKE) -s -C tools >&2 || echo FAIL
ifeq ($(DUMMY),FAIL)
  $(error Failed to build tools)
endif

PRINT = printf

ifeq ($(COLOR),1)
NO_COL  := \033[0m
RED     := \033[0;31m
GREEN   := \033[0;32m
BLUE    := \033[0;34m
YELLOW  := \033[0;33m
BLINK   := \033[33;5m
endif

# Common build print status function
define print
  @$(PRINT) "$(GREEN)$(1) $(YELLOW)$(2)$(GREEN) -> $(BLUE)$(3)$(NO_COL)\n"
endef

########## Recomp ##########

RECOMP_PROJECT := ./tools/ido-static-recomp/

DUMMY != ls $(RECOMP_PROJECT)ido >/dev/null || echo FAIL
ifeq ($(DUMMY),FAIL)
DUMMY != git submodule update --init
DUMMY != ls $(RECOMP_PROJECT)ido >/dev/null || echo FAIL
ifeq ($(DUMMY),FAIL)
$(error Missing submodule ido-static-recomp. Please run 'git submodule update --init')
endif
endif

######## Extract Assets & Microcode ########

DUMMY != python3 ./tools/python/check_if_need_to_extract.py $(VERSION) >&2 || echo FAIL

######## Prebuild step (Compile assets, generate linker file, etc.) ########

DUMMY != ./tools/dkr_assets_tool -dkrv $(VERSION) prebuild >&2 || echo FAIL

################################

endif
endif
endif
endif
endif
################ Target Executable and Sources ###############

# BUILD_DIR is location where all build artifacts are placed
# TODO: Support other versions of DKR
BUILD_DIR = build/$(VERSION)

##################### Compiler Options #######################

# Check if a binutils package is installed on the system.
ifeq ($(shell type mips-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  CROSS := mips-linux-gnu-
else ifeq ($(shell type mips64-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  CROSS := mips64-linux-gnu-
else ifeq ($(shell type mips64-elf-ld >/dev/null 2>/dev/null; echo $$?), 0)
  CROSS := mips64-elf-
else
# No binutil packages were found, so we have to download the source & build it.
ifeq ($(wildcard ./tools/binutils/.*),)
  DUMMY != ./tools/get-binutils.sh >&2 || echo FAIL
endif 
  CROSS := ./tools/binutils/mips64-elf-
endif

AS = $(CROSS)as
CC := tools/ido-static-recomp/build/5.3/out/cc
LD = $(CROSS)ld
OBJDUMP = $(CROSS)objdump
# Pad to 12MB if matching, otherwise build to a necessary minimum of 1.004MB
ifeq ($(NON_MATCHING),0)
  OBJCOPY = $(CROSS)objcopy --pad-to=0xC00000 --gap-fill=0xFF
else
  OBJCOPY = $(CROSS)objcopy --pad-to=0x101000 --gap-fill=0xFF
endif

# Returns the path to the command $(1) if exists. Otherwise returns an empty string.
find-command = $(shell which $(1) 2>/dev/null)

# Prefer clang as C preprocessor if installed on the system
ifneq (,$(call find-command,clang))
  CPP      := clang
  CPPFLAGS := -E -P -x c -Wno-trigraphs -I include
else
  CPP      := cpp
  CPPFLAGS := -P -Wno-trigraphs -I include
endif

MIPSISET := -mips1
OPT_FLAGS := -O2 -Xfullwarn #include -Xfullwarn here since it's not supported with -O3

INCLUDE_DIRS := include $(BUILD_DIR) $(BUILD_DIR)/include src include/libc .

C_DEFINES := $(foreach d,$(DEFINES),-D$(d))
DEF_INC_CFLAGS := $(foreach i,$(INCLUDE_DIRS),-I$(i)) $(C_DEFINES)


#IDO Warnings to Ignore. These are coding style warnings we don't follow
IDO_IGNORE_WARNINGS = -woff 838,649,624
ASFLAGS = -mtune=vr4300 -march=vr4300 -mabi=32 $(foreach d,$(DEFINES),--defsym $(d))
INCLUDE_CFLAGS := -I include -I $(BUILD_DIR) -I src -I . -I include/libc
CFLAGS = -c -Wab,-r4300_mul -non_shared -G 0 -Xcpluscomm -DNDEBUG $(OPT_FLAGS) $(MIPSISET) $(INCLUDE_CFLAGS) $(DEF_INC_CFLAGS) $(IDO_IGNORE_WARNINGS)
LDFLAGS = undefined_syms.txt -T $(BUILD_DIR)/$(LD_SCRIPT) -Map $(BUILD_DIR)/dkr.map

####################### Other Tools #########################

# N64 tools
TOOLS_DIR = ./tools
FLIPS = $(TOOLS_DIR)/Flips/flips
EMULATOR = mupen64plus
EMU_FLAGS = --noosd
LOADER = loader64
LOADER_FLAGS = -vwf

N64CRC = $(TOOLS_DIR)/n64crc
FIXCHECKSUMS = python3 $(TOOLS_DIR)/python/calc_func_checksums.py $(VERSION)
BUILDER = $(TOOLS_DIR)/dkr_assets_tool  -dkrv $(VERSION) build

LIB_DIRS := lib
ASM_DIRS := asm asm/boot asm/assets lib/asm lib/asm/non_decompilable
SRC_DIRS := $(sort $(patsubst %/,%,$(dir $(wildcard src/* src/**/* lib/src/* lib/src/**/* lib/src/**/**/*))))

OS := $(shell uname)

# MacOS has a slightly different name for grep, so check to see if it needs to be used.
ifeq ($(OS), Darwin)
	GREP_FILE := ggrep
else
	GREP_FILE := grep
endif

GLOBAL_ASM_C_FILES != $(GREP_FILE) -rl 'GLOBAL_ASM(' $(SRC_DIRS)
GLOBAL_ASM_O_FILES = $(foreach file,$(GLOBAL_ASM_C_FILES),$(BUILD_DIR)/$(file:.c=.o))

S_FILES := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))

# Object files
O_FILES := $(foreach file,$(S_FILES),$(BUILD_DIR)/$(file:.s=.o)) \
           $(foreach file,$(C_FILES),$(BUILD_DIR)/$(file:.c=.o))

# Automatic dependency files
DEP_FILES := $(O_FILES:.o=.d) $(BUILD_DIR)/$(LD_SCRIPT).d

# Check code syntax with host compiler
CC_CHECK := gcc
ifeq ($(shell getconf LONG_BIT), 64)
  # Ensure that gcc treats the code as 32-bit
  CC_CHECK_CFLAGS += -m32
endif
CC_CHECK_CFLAGS := -fsyntax-only -funsigned-char $(INCLUDE_CFLAGS) $(DEF_INC_CFLAGS) -std=gnu90 -Wall -Wextra -Wno-format-security -Wno-main -DNON_MATCHING -DAVOID_UB -D_LANGUAGE_C -DNDEBUG -Werror-implicit-function-declaration

# Disable GCC complaining about fakematches necessary to match if building a matching ROM. Example: "var2 = (0, var1)"
ifeq ($(NON_MATCHING),0)
	CC_CHECK_CFLAGS += -Wno-unused-value
endif
#Warnings to ignore
CC_CHECK_CFLAGS += -Wno-builtin-declaration-mismatch -Wno-pointer-to-int-cast -Wno-int-to-pointer-cast -Wno-switch

####################### ASSETS #########################

###### Define section files into the ALL_ASSETS_BUILT variable ######

UCODE_DIR = ucode/$(VERSION)
ASSETS := assets/$(VERSION)
#BUILD_DIR := ./build/$(VERSION)
ASSETS_BUILD_DIR := $(BUILD_DIR)/assets

ASSETS_COPY = cp

# Add .json files
JSON_FILES := $(shell find $(ASSETS) -type f -name '*.json')
# Ignore .meta.json files
IGNORE_JSON_FILES := $(shell find $(ASSETS) -type f -name '*.meta.json')
JSON_FILES := $(filter-out $(IGNORE_JSON_FILES),$(JSON_FILES))
# Add .cbin files
#CBIN_FILES := $(shell find $(ASSETS) -type f -name '*.cbin')
# Add .bin files
#BIN_FILES := $(shell find $(ASSETS) -type f -name '*.bin')
ALL_FILES := $(JSON_FILES)

ALL_FILES_OUT := $(foreach FILE,ALL_FILES,$($(FILE):$(ASSETS)%=$(ASSETS_BUILD_DIR)%))
ALL_FILES_OUT := $(foreach FILE,ALL_FILES_OUT,$($(FILE):$.json%=$.bin%))

DIRECTORY = $(sort $(dir $(ALL_FILES_OUT))) $(addprefix $(BUILD_DIR)/,$(LIB_DIRS) $(ASM_DIRS) $(SRC_DIRS) ucode)

DUMMY != mkdir -p $(DIRECTORY) >&2 || echo FAIL

# $1 = asset path (e.g. assets/levels/models/...), $2 = cmd to run
define DEFINE_ASSET_TARGET
$(eval BASE_PATH := $(subst $(ASSETS),$(ASSETS_BUILD_DIR),$(basename $1)))
$$(BASE_PATH).bin: $1
	$2
$(eval ALL_ASSETS_BUILT+=$(BASE_PATH).bin)
endef

# $1 = Print message
define JSON_FILE_ACTION
	$$(call print,$1:,$$<,$$@)
	$$(V)$$(BUILDER) -i $$< -o $$@
endef

# Microcode
UCODE_IN_DIR = $(UCODE_DIR)
UCODE_OUT_DIR = $(BUILD_DIR)/ucode
UCODE = $(wildcard $(UCODE_IN_DIR)/*.bin)
ALL_ASSETS_BUILT += $(patsubst $(UCODE_IN_DIR)/%.bin,$(UCODE_OUT_DIR)/%.bin,$(UCODE))


####################### LIBULTRA #########################

$(BUILD_DIR)/lib/%.o: OPT_FLAGS := -O2 -Xfullwarn
$(BUILD_DIR)/lib/src/al/%.o: OPT_FLAGS := -O3
$(BUILD_DIR)/lib/src/os/%.o: OPT_FLAGS := -O1 -Xfullwarn
$(BUILD_DIR)/lib/src/os/osViMgr.o: OPT_FLAGS := -O2 -Xfullwarn
$(BUILD_DIR)/lib/src/os/osCreatePiManager.o: OPT_FLAGS := -O2 -Xfullwarn
$(BUILD_DIR)/lib/src/os/osMotor.o: OPT_FLAGS := -O2 -Xfullwarn
$(BUILD_DIR)/lib/src/libc/xprintf.o : OPT_FLAGS := -O3
$(BUILD_DIR)/lib/src/al/env.o: OPT_FLAGS := -g
$(BUILD_DIR)/lib/src/libc/llcvt.o: OPT_FLAGS := -O1
$(BUILD_DIR)/lib/src/libc/llcvt.o: MIPSISET := -mips3 -32
$(BUILD_DIR)/lib/src/libc/ll.o: OPT_FLAGS := -O1
$(BUILD_DIR)/lib/src/libc/ll.o: MIPSISET := -mips3 -32
$(BUILD_DIR)/lib/src/libc/ldiv.o: OPT_FLAGS := -O3
$(BUILD_DIR)/lib/src/libc/ldiv.o: MIPSISET := -mips2

$(BUILD_DIR)/lib/%.o: MIPSISET := -mips2
$(BUILD_DIR)/lib/src/mips1/%.o: MIPSISET := -mips1
$(BUILD_DIR)/lib/src/os/osMotor.o: MIPSISET := -mips1
$(BUILD_DIR)/lib/src/al/env.o: MIPSISET := -mips1

####################### MATH UTIL #########################

$(BUILD_DIR)/src/math_util.o: MIPSISET := -mips2
$(BUILD_DIR)/src/collision.o: MIPSISET := -mips2

######################## Targets #############################

default: all

TARGET = dkr
LD_SCRIPT = $(TARGET).ld

all: $(BUILD_DIR)/$(TARGET).z64

reset:
ifneq ($(wildcard ./build/.*),)
	rm -r build
endif
ifneq ($(wildcard ./assets/.*),)
	rm -r assets
endif
ifneq ($(wildcard ./ucode/.*),)
	rm -r ucode
endif
	@echo "Done."

clean:
ifneq ($(wildcard ./build/.*),)
	rm -r build
else
	@echo "/build/ directory has already been deleted."
endif
	rm -f dkr.ld

distclean:
	rm -rf build
	rm -rf assets
	rm -rf ucode
	rm -f dkr.ld
	$(MAKE) -C tools distclean

clean_lib:
ifneq ($(wildcard $(BUILD_DIR)/lib/.*),)
	rm -r $(BUILD_DIR)/lib/src/*/*.o
else
	@echo "build lib directory has already been deleted."
endif

clean_src: clean_lib
ifneq ($(wildcard $(BUILD_DIR)/src/.*),)
	rm -r $(BUILD_DIR)/src/*.o
	rm -f dkr.ld
else
	@echo "/build/lib directory has already been deleted."
endif

clean_assets:
ifneq ($(wildcard ./build/.*),)
	rm -r build
else
	@echo "/build/ directory has already been deleted."
endif
	rm -r assets
	rm -f dkr.ld

# Helps fix an issue with parallel jobs.
$(ALL_ASSETS_BUILT): | $(BUILD_DIR)

# This is here to prevent make from deleting all the asset files after the build completes/fails.
dont_remove_asset_files: $(ALL_ASSETS_BUILT)

######## Asset Targets ########

$(foreach FILE,$(JSON_FILES),$(eval $(call DEFINE_ASSET_TARGET,$(FILE),$(call JSON_FILE_ACTION,Building))))

# Microcode target
$(UCODE_OUT_DIR)/%.bin: $(UCODE_IN_DIR)/%.bin
	$(call print,Copying:,$<,$@)
	$(V)$(ASSETS_COPY) $^ $@

###############################

$(BUILD_DIR)/%.o: %.s | $(ALL_ASSETS_BUILT)
	$(call print,Assembling:,$<,$@)
	$(V)$(AS) $(ASFLAGS) -MD $(BUILD_DIR)/$*.d -o $@ $<

$(BUILD_DIR)/%.o: %.c | $(ALL_ASSETS_BUILT)
	$(call print,Compiling:,$<,$@)
	@$(CC_CHECK) $(CC_CHECK_CFLAGS) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(V)$(CC) $(CFLAGS) -o $@ $<

$(BUILD_DIR)/lib/src/libc/llcvt.o: lib/src/libc/llcvt.c | $(ALL_ASSETS_BUILT)
	$(call print,Compiling mips3:,$<,$@)
	$(V)$(CC) $(CFLAGS) -o $@ $<
	$(V)python3 tools/python/patchmips3.py $@ || rm $@

$(BUILD_DIR)/lib/src/libc/ll.o: lib/src/libc/ll.c | $(ALL_ASSETS_BUILT)
	$(call print,Compiling mips3:,$<,$@)
	$(V)$(CC) $(CFLAGS) -o $@ $<
	$(V)python3 tools/python/patchmips3.py $@ || rm $@

$(BUILD_DIR)/%.o: $(BUILD_DIR)/%.c | $(ALL_ASSETS_BUILT)
	$(call print,Compiling:,$<,$@)
	@$(CC_CHECK) $(CC_CHECK_CFLAGS) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(V)$(CC) $(CFLAGS) -o $@ $<

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT) | $(ALL_ASSETS_BUILT)
	$(call print,Preprocessing linker script:,$<,$@)
	$(V)$(CPP) $(CPPFLAGS) $(VERSION_CFLAGS) -DBUILD_DIR=$(BUILD_DIR) -MMD -MP -MT $@ -MF $@.d -o $@ $<

$(BUILD_DIR)/$(TARGET).elf: $(O_FILES) $(BUILD_DIR)/$(LD_SCRIPT) | $(ALL_ASSETS_BUILT)
	@$(PRINT) "$(GREEN)Linking ELF file: $(BLUE)$@ $(NO_COL)\n"
	$(V)$(LD) $(LDFLAGS) -o $@ $(O_FILES) $(LIBS)

$(BUILD_DIR)/$(TARGET).bin: $(BUILD_DIR)/$(TARGET).elf | $(ALL_ASSETS_BUILT)
	$(call print,Making .bin:,$<,$@)
	$(V)$(OBJCOPY) $< $@ -O binary

$(BUILD_DIR)/$(TARGET).z64: $(BUILD_DIR)/$(TARGET).bin | $(ALL_ASSETS_BUILT)
	$(call print,Making final z64 ROM:,$<,$@)
	$(V)cp $< $@
	$(V)$(FIXCHECKSUMS)
	$(V)$(N64CRC) $@
ifeq ($(NON_MATCHING),0)
	@(sha1sum -c --quiet sha1/dkr.$(VERSION).sha1 \
	&& $(PRINT) "$(BLUE)$@$(NO_COL)\
	: $(GREEN)OK$(NO_COL)\n")
	@$(PRINT) "$(YELLOW)    __\n .\`_  _\`.\n| | \`| | |\n| |_|._| |\n \`. __ .\'$(NO_COL)\n\n"
else
	@$(PRINT) "$(GREEN)Build Complete!$(NO_COL)\n"
endif

$(BUILD_DIR)/$(TARGET).hex: $(BUILD_DIR)/$(TARGET).z64
	xxd $< > $@

$(BUILD_DIR)/$(TARGET).objdump: $(BUILD_DIR)/$(TARGET).elf
	$(OBJDUMP) -D $< > $@

$(GLOBAL_ASM_O_FILES): CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --

test: $(BUILD_DIR)/$(TARGET).z64
	$(EMULATOR) $(EMU_FLAGS) $<

load: $(BUILD_DIR)/$(TARGET).z64
	$(LOADER) $(LOADER_FLAGS) $<

ROM := $(BUILD_DIR)/$(TARGET).z64
patch: $(ROM)
	$(FLIPS) --create --bps ./baseroms/dkr.z64 $(ROM) $(BUILD_DIR)/$(TARGET).bps

.PHONY: all clean distclean default diff test

# Remove built-in rules, to improve performance
MAKEFLAGS += --no-builtin-rules

-include $(DEP_FILES)
