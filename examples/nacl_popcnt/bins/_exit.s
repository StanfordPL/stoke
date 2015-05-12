  .text
  .globl _exit
  .type _exit, @function

#! file-offset 0x60480
#! rip-offset  0x60480
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
._exit:                       #        0x60480  0      
  subl $0x8, %esp             #  1     0x60480  3      
  addq %r15, %rsp             #  2     0x60483  3      
  movl 0xffd6a34(%rip), %eax  #  3     0x60486  6      
  nop                         #  4     0x6048c  1      
  andl $0xffffffe0, %eax      #  5     0x6048d  5      
  addq %r15, %rax             #  6     0x60492  3      
  callq %rax                  #  7     0x60495  2      
  ud2                         #  8     0x60497  2      
  nop                         #  9     0x60499  1      
  nop                         #  10    0x6049a  1      
  nop                         #  11    0x6049b  1      
  nop                         #  12    0x6049c  1      
  nop                         #  13    0x6049d  1      
  nop                         #  14    0x6049e  1      
  nop                         #  15    0x6049f  1      
  nop                         #  16    0x604a0  1      
  nop                         #  17    0x604a1  1      
  nop                         #  18    0x604a2  1      
  nop                         #  19    0x604a3  1      
  nop                         #  20    0x604a4  1      
  nop                         #  21    0x604a5  1      
  nop                         #  22    0x604a6  1      
  nop                         #  23    0x604a7  1      
  nop                         #  24    0x604a8  1      
  nop                         #  25    0x604a9  1      
  nop                         #  26    0x604aa  1      
  nop                         #  27    0x604ab  1      
  nop                         #  28    0x604ac  1      
  nop                         #  29    0x604ad  1      
  nop                         #  30    0x604ae  1      
  nop                         #  31    0x604af  1      
  nop                         #  32    0x604b0  1      
  nop                         #  33    0x604b1  1      
  nop                         #  34    0x604b2  1      
  nop                         #  35    0x604b3  1      
  nop                         #  36    0x604b4  1      
  nop                         #  37    0x604b5  1      
  nop                         #  38    0x604b6  1      
                                                       
.size _exit, .-_exit

