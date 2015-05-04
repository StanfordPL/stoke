  .text
  .globl _exit
  .type _exit, @function

#! file-offset 0x60500
#! rip-offset  0x60500
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
._exit:                       #        0x60500  0      
  subl $0x8, %esp             #  1     0x60500  3      
  addq %r15, %rsp             #  2     0x60503  3      
  movl 0xffd69b4(%rip), %eax  #  3     0x60506  6      
  nop                         #  4     0x6050c  1      
  andl $0xffffffe0, %eax      #  5     0x6050d  5      
  addq %r15, %rax             #  6     0x60512  3      
  callq %rax                  #  7     0x60515  2      
  ud2                         #  8     0x60517  2      
  nop                         #  9     0x60519  1      
  nop                         #  10    0x6051a  1      
  nop                         #  11    0x6051b  1      
  nop                         #  12    0x6051c  1      
  nop                         #  13    0x6051d  1      
  nop                         #  14    0x6051e  1      
  nop                         #  15    0x6051f  1      
  nop                         #  16    0x60520  1      
  nop                         #  17    0x60521  1      
  nop                         #  18    0x60522  1      
  nop                         #  19    0x60523  1      
  nop                         #  20    0x60524  1      
  nop                         #  21    0x60525  1      
  nop                         #  22    0x60526  1      
  nop                         #  23    0x60527  1      
  nop                         #  24    0x60528  1      
  nop                         #  25    0x60529  1      
  nop                         #  26    0x6052a  1      
  nop                         #  27    0x6052b  1      
  nop                         #  28    0x6052c  1      
  nop                         #  29    0x6052d  1      
  nop                         #  30    0x6052e  1      
  nop                         #  31    0x6052f  1      
  nop                         #  32    0x60530  1      
  nop                         #  33    0x60531  1      
  nop                         #  34    0x60532  1      
  nop                         #  35    0x60533  1      
  nop                         #  36    0x60534  1      
  nop                         #  37    0x60535  1      
  nop                         #  38    0x60536  1      
                                                       
.size _exit, .-_exit

