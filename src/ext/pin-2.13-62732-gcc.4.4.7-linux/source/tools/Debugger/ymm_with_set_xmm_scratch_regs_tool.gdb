handle SIGILL pass nostop noprint
break LoadYmm0Breakpoint
break HandleSigill
cont
set width 4096
p $ymm0
quit
