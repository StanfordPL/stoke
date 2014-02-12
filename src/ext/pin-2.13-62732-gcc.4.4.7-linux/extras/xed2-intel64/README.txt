Documentation:

Internal Intel: http://sde.intel.com/xed
External World: http://software.intel.com/en-us/articles/pintool-downloads

Send bugs to sde-dev@intel.com


===========================================================================
USING examples/xed-ex4.exe
===========================================================================

Here is a 32b decode of a simple 2B instruction:
% examples/xed-ex4 00 00
<debugging stuff deleted>
BASE0=EAX EASZ=2 EOSZ=2 MEM0 REG0=AL SEG0=DS
		MEM0/RW/B/EXPLICIT/IMM_CONST/1
1		REG0/R/INVALID/EXPLICIT/NT_LOOKUP_FN/GPR8_R
2		LOCKABLE/R/INVALID/SUPPRESSED/IMM_CONST/1
3		MOD/R/INVALID/SUPPRESSED/IMM
4		REG/R/INVALID/SUPPRESSED/IMM
5		RM/R/INVALID/SUPPRESSED/IMM
add ds[eax] al
XED syntax: ADD BASE0=EAX EASZ=2 EOSZ=2 MEM0 REG0=AL SEG0=DS
ATT syntax: no-att-printer-yet
INTEL syntax: add ds[eax] al

Here is a 64b decode of a simple 2B instruction:
% examples/xed-ex4 -64 00 00

BASE0=RAX EASZ=3 EOSZ=2 MEM0 REG0=AL
		MEM0/RW/B/EXPLICIT/IMM_CONST/1
1		REG0/R/INVALID/EXPLICIT/NT_LOOKUP_FN/GPR8_R
2		LOCKABLE/R/INVALID/SUPPRESSED/IMM_CONST/1
3		MOD/R/INVALID/SUPPRESSED/IMM
4		REG/R/INVALID/SUPPRESSED/IMM
5		RM/R/INVALID/SUPPRESSED/IMM
add [rax] al
XED syntax: ADD BASE0=RAX EASZ=3 EOSZ=2 MEM0 REG0=AL
ATT syntax: no-att-printer-yet
INTEL syntax: add [rax] al


===========================================================================
USING examples/xed.exe
===========================================================================

% obj/xed -h
Usage: c:\mjcharne\xed\xed2\obj\xed.exe [options]
  One of the following is required:
  	-i input_file             (decode file)
  	-ide input_file           (decode/encode file)
  	-d hex-string             (decode one instruction)
  	-e instruction            (encode, must be last)
  	-de hex-string            (decode-then-encode)

  Optional arguments:

  	-v verbosity  (0=quiet, 1=errors, 2=useful-info, 3=trace,
                       6=very verbose)
  	-xv xed-engine-verbosity  (0...99)

  	-n number-of-instructions-to-decode (default 10,000,
                                             accepts K/M/G qualifiers)
  	-I            (Intel SYSV syntax for disassembly)
  	-A            (ATT SYSV syntax for disassembly)
  	-16           (for LEGACY_16 mode)
  	-32           (for LEGACY_32 mode, default)
  	-64           (for LONG_64 mode w/64b addressing)
  	-a32          (32b addressing, default, not in LONG_64 mode)
  	-a16          (16b addressing, not in LONG_64 mode)
  	-s32          (32b stack addressing, default, not in LONG_64 mode)
  	-s16          (16b stack addressing, not in LONG_64 mode)


Examples:

% examples/xed -i C:/mjcharne/hello.exe >! OUT
% head OUT
Mapped image
IA32 format
XDIS 1000: BASE 55               PUSH EASZ=2 EOSZ=2 REG0=EBP REG1=STACKPUSH
XDIS 1001: BASE 8BEC             MOV EASZ=2 EOSZ=2 REG0=EBP REG1=ESP
XDIS 1003: BASE 83EC10           SUB EASZ=2 EOSZ=2 IMM_WIDTH=8 REG0=ESP SIM0 SIMM=10
XDIS 1006: BASE 68A0104000       PUSH EASZ=2 EOSZ=2 IMM_WIDTH=20 REG0=STACKPUSH SIM0 SIMM=a0104000
XDIS 100b: BASE 68B8A14100       PUSH EASZ=2 EOSZ=2 IMM_WIDTH=20 REG0=STACKPUSH SIM0 SIMM=b8a14100
XDIS 1010: BASE 6848084200       PUSH EASZ=2 EOSZ=2 IMM_WIDTH=20 REG0=STACKPUSH SIM0 SIMM=48084200
XDIS 1015: BASE E836150000       CALL_NEAR BRDISP=36150000 BRDISP_WIDTH=20 EASZ=2 EOSZ=2 REG0=STACKPUSH REG1=EIP RELBR
XDIS 101a: BASE 83C408           ADD EASZ=2 EOSZ=2 IMM_WIDTH=8 REG0=ESP SIM0 SIMM=8


% examples/xed -I -i C:/mjcharne/hello.exe >! OUT
% head OUT
Mapped image
XDIS 1000: BASE 55               push ebp
XDIS 1001: BASE 8BEC             mov ebp esp
XDIS 1003: BASE 83EC10           sub esp 10
XDIS 1006: BASE 68A0104000       push 4010a0
XDIS 100b: BASE 68B8A14100       push 41a1b8
XDIS 1010: BASE 6848084200       push 420848
XDIS 1015: BASE E836150000       call_near 1536
XDIS 101a: BASE 83C408           add esp 8






