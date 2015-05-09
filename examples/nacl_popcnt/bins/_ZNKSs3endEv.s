  .text
  .globl _ZNKSs3endEv
  .type _ZNKSs3endEv, @function

#! file-offset 0x44400
#! rip-offset  0x44400
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs3endEv:              #        0x44400  0      
  movl %edi, %edi           #  1     0x44400  2      
  movl %edi, %edi           #  2     0x44402  2      
  movl (%r15,%rdi,1), %eax  #  3     0x44404  4      
  popq %r11                 #  4     0x44408  3      
  leal -0xc(%rax), %edx     #  5     0x4440b  3      
  movl %edx, %edx           #  6     0x4440e  2      
  addl (%r15,%rdx,1), %eax  #  7     0x44410  4      
  andl $0xffffffe0, %r11d   #  8     0x44414  7      
  addq %r15, %r11           #  9     0x4441b  3      
  jmpq %r11                 #  10    0x4441e  3      
  nop                       #  11    0x44421  1      
  nop                       #  12    0x44422  1      
  nop                       #  13    0x44423  1      
                                                     
.size _ZNKSs3endEv, .-_ZNKSs3endEv

