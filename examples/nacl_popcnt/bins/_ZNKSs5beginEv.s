  .text
  .globl _ZNKSs5beginEv
  .type _ZNKSs5beginEv, @function

#! file-offset 0x44480
#! rip-offset  0x44480
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5beginEv:            #        0x44480  0      
  popq %r11                 #  1     0x44480  3      
  movl %edi, %edi           #  2     0x44483  2      
  movl %edi, %edi           #  3     0x44485  2      
  movl (%r15,%rdi,1), %eax  #  4     0x44487  4      
  andl $0xffffffe0, %r11d   #  5     0x4448b  7      
  addq %r15, %r11           #  6     0x44492  3      
  jmpq %r11                 #  7     0x44495  3      
  nop                       #  8     0x44498  1      
  nop                       #  9     0x44499  1      
  nop                       #  10    0x4449a  1      
  nop                       #  11    0x4449b  1      
  nop                       #  12    0x4449c  1      
  nop                       #  13    0x4449d  1      
  nop                       #  14    0x4449e  1      
  nop                       #  15    0x4449f  1      
  nop                       #  16    0x444a0  1      
  nop                       #  17    0x444a1  1      
  nop                       #  18    0x444a2  1      
  nop                       #  19    0x444a3  1      
                                                     
.size _ZNKSs5beginEv, .-_ZNKSs5beginEv

