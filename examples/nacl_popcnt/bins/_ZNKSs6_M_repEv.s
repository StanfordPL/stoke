  .text
  .globl _ZNKSs6_M_repEv
  .type _ZNKSs6_M_repEv, @function

#! file-offset 0x44300
#! rip-offset  0x44300
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs6_M_repEv:           #        0x44300  0      
  movl %edi, %edi           #  1     0x44300  2      
  popq %r11                 #  2     0x44302  3      
  movl %edi, %edi           #  3     0x44305  2      
  movl (%r15,%rdi,1), %eax  #  4     0x44307  4      
  subl $0xc, %eax           #  5     0x4430b  3      
  andl $0xffffffe0, %r11d   #  6     0x4430e  7      
  addq %r15, %r11           #  7     0x44315  3      
  jmpq %r11                 #  8     0x44318  3      
  nop                       #  9     0x4431b  1      
  nop                       #  10    0x4431c  1      
  nop                       #  11    0x4431d  1      
  nop                       #  12    0x4431e  1      
  nop                       #  13    0x4431f  1      
  nop                       #  14    0x44320  1      
  nop                       #  15    0x44321  1      
  nop                       #  16    0x44322  1      
  nop                       #  17    0x44323  1      
                                                     
.size _ZNKSs6_M_repEv, .-_ZNKSs6_M_repEv

