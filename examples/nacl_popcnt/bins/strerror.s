  .text
  .globl strerror
  .type strerror, @function

#! file-offset 0x6b720
#! rip-offset  0x6b720
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
.strerror:                  #        0x6b720  0      
  pushq %rbx                #  1     0x6b720  2      
  movl %edi, %ebx           #  2     0x6b722  2      
  nop                       #  3     0x6b724  1      
  nop                       #  4     0x6b725  1      
  callq .__nacl_read_tp     #  5     0x6b726  5      
  leaq -0x480(%rax), %rax   #  6     0x6b72b  7      
  movl %ebx, %esi           #  7     0x6b732  2      
  xorl %ecx, %ecx           #  8     0x6b734  2      
  popq %rbx                 #  9     0x6b736  2      
  xorl %edx, %edx           #  10    0x6b738  2      
  movl %eax, %eax           #  11    0x6b73a  2      
  movl (%r15,%rax,1), %edi  #  12    0x6b73c  4      
  jmpq ._strerror_r         #  13    0x6b740  5      
  nop                       #  14    0x6b745  1      
  nop                       #  15    0x6b746  1      
  nop                       #  16    0x6b747  1      
  nop                       #  17    0x6b748  1      
  nop                       #  18    0x6b749  1      
  nop                       #  19    0x6b74a  1      
  nop                       #  20    0x6b74b  1      
                                                     
.size strerror, .-strerror

