# This top-level makefile is exported into the Pin kit and is referenced by
# several external scripts.  Be careful when changing the names of the makefile
# targets so as not to break anything that depends on them.

# All directories which contain tests should be placed here.
# Please maintain alphabetical order.

ALL_TEST_DIRS := AVX AVX2 AlignChk AttachDetach Buffer CacheClient ChildProcess CrossIa32Intel64  Debugger DebugInfo    \
                 DebugTrace GracefulExit I18N ImageTests Insmix InstLibExamples InstrumentationOrderAndVersion          \
                 JitProfilingApiTests MacTests ManualExamples MaskVector Memory MemTrace Mix Mmx MyPinTool Probes       \
                 Regvalue Replay SegTrace SegmentsVirtualization SignalTests SimpleExamples SyncTests SyscallsEmulation \
                 Tests ToolUnitTests Tsx

# Some of these targets are referenced in the User Guide and/or are commonly used by Pin users.
# Others are used by the nightly system and/or remote-builder.py.

all: build

utils:
	$(MAKE) -C Utils

build: utils
	-$(MAKE) -k $(ALL_TEST_DIRS:%=%.build)

install: Utils.install
	-$(MAKE) -k $(ALL_TEST_DIRS:%=%.install)

test: $(ALL_TEST_DIRS:%=%.test)
	Utils/testsummary

sanity: $(ALL_TEST_DIRS:%=%.sanity)
	Utils/testsummary

clean: $(ALL_TEST_DIRS:%=%.clean)
	-$(MAKE) -k -C Utils clean

# These are directory-specific template targets.

$(ALL_TEST_DIRS:%=%.build):
	-$(MAKE) -k -C $(@:%.build=%)

$(ALL_TEST_DIRS:%=%.install):
	-$(MAKE) -k -C $(@:%.install=%) install

Utils.install:
	$(MAKE) -k -C $(@:%.install=%) install

$(ALL_TEST_DIRS:%=%.test):
	-$(MAKE) -k -C $(@:%.test=%) test

$(ALL_TEST_DIRS:%=%.sanity):
	-$(MAKE) -k -C $(@:%.sanity=%) sanity

$(ALL_TEST_DIRS:%=%.clean):
	-$(MAKE) -k -C $(@:%.clean=%) clean

.PHONY: all utils build install test sanity clean
.PHONY: $(ALL_TEST_DIRS:%=%.build) $(ALL_TEST_DIRS:%=%.install) $(ALL_TEST_DIRS:%=%.test)
.PHONY: $(ALL_TEST_DIRS:%=%.sanity) $(ALL_TEST_DIRS:%=%.clean)
