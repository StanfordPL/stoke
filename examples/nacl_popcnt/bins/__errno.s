  .text
  .globl __errno
  .type __errno, @function

#! file-offset 0x68440
#! rip-offset  0x68440
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
.__errno:                   #        0x68440  0      
  nop                       #  1     0x68440  1      
  nop                       #  2     0x68441  1      
  callq .__nacl_read_tp     #  3     0x68442  5      
  popq %r11                 #  4     0x68447  3      
  leaq -0x480(%rax), %rax   #  5     0x6844a  7      
  movl %eax, %eax           #  6     0x68451  2      
  movl (%r15,%rax,1), %eax  #  7     0x68453  4      
  andl $0xffffffe0, %r11d   #  8     0x68457  7      
  addq %r15, %r11           #  9     0x6845e  3      
  jmpq %r11                 #  10    0x68461  3      
  nop                       #  11    0x68464  1      
  nop                       #  12    0x68465  1      
  nop                       #  13    0x68466  1      
  nop                       #  14    0x68467  1      
  nop                       #  15    0x68468  1      
  nop                       #  16    0x68469  1      
  nop                       #  17    0x6846a  1      
                                                     
.size __errno, .-__errno

