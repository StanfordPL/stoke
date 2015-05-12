  .text
  .globl _ZNKSs3endEv
  .type _ZNKSs3endEv, @function

#! file-offset 0x44420
#! rip-offset  0x44420
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs3endEv:              #        0x44420  0      
  movl %edi, %edi           #  1     0x44420  2      
  movl %edi, %edi           #  2     0x44422  2      
  movl (%r15,%rdi,1), %eax  #  3     0x44424  4      
  popq %r11                 #  4     0x44428  3      
  leal -0xc(%rax), %edx     #  5     0x4442b  3      
  movl %edx, %edx           #  6     0x4442e  2      
  addl (%r15,%rdx,1), %eax  #  7     0x44430  4      
  andl $0xffffffe0, %r11d   #  8     0x44434  7      
  addq %r15, %r11           #  9     0x4443b  3      
  jmpq %r11                 #  10    0x4443e  3      
  nop                       #  11    0x44441  1      
  nop                       #  12    0x44442  1      
  nop                       #  13    0x44443  1      
                                                     
.size _ZNKSs3endEv, .-_ZNKSs3endEv

