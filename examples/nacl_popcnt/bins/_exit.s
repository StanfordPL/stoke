  .text
  .globl _exit
  .type _exit, @function

#! file-offset 0x60460
#! rip-offset  0x60460
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
._exit:                       #        0x60460  0      
  subl $0x8, %esp             #  1     0x60460  3      
  addq %r15, %rsp             #  2     0x60463  3      
  movl 0xffd6a54(%rip), %eax  #  3     0x60466  6      
  nop                         #  4     0x6046c  1      
  andl $0xffffffe0, %eax      #  5     0x6046d  5      
  addq %r15, %rax             #  6     0x60472  3      
  callq %rax                  #  7     0x60475  2      
  ud2                         #  8     0x60477  2      
  nop                         #  9     0x60479  1      
  nop                         #  10    0x6047a  1      
  nop                         #  11    0x6047b  1      
  nop                         #  12    0x6047c  1      
  nop                         #  13    0x6047d  1      
  nop                         #  14    0x6047e  1      
  nop                         #  15    0x6047f  1      
  nop                         #  16    0x60480  1      
  nop                         #  17    0x60481  1      
  nop                         #  18    0x60482  1      
  nop                         #  19    0x60483  1      
  nop                         #  20    0x60484  1      
  nop                         #  21    0x60485  1      
  nop                         #  22    0x60486  1      
  nop                         #  23    0x60487  1      
  nop                         #  24    0x60488  1      
  nop                         #  25    0x60489  1      
  nop                         #  26    0x6048a  1      
  nop                         #  27    0x6048b  1      
  nop                         #  28    0x6048c  1      
  nop                         #  29    0x6048d  1      
  nop                         #  30    0x6048e  1      
  nop                         #  31    0x6048f  1      
  nop                         #  32    0x60490  1      
  nop                         #  33    0x60491  1      
  nop                         #  34    0x60492  1      
  nop                         #  35    0x60493  1      
  nop                         #  36    0x60494  1      
  nop                         #  37    0x60495  1      
  nop                         #  38    0x60496  1      
                                                       
.size _exit, .-_exit

