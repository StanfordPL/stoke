  .text
  .globl _ZNKSs4sizeEv
  .type _ZNKSs4sizeEv, @function

#! file-offset 0x444a0
#! rip-offset  0x444a0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs4sizeEv:             #        0x444a0  0      
  movl %edi, %edi           #  1     0x444a0  2      
  movl %edi, %edi           #  2     0x444a2  2      
  movl (%r15,%rdi,1), %eax  #  3     0x444a4  4      
  popq %r11                 #  4     0x444a8  3      
  subl $0xc, %eax           #  5     0x444ab  3      
  movl %eax, %eax           #  6     0x444ae  2      
  movl (%r15,%rax,1), %eax  #  7     0x444b0  4      
  andl $0xffffffe0, %r11d   #  8     0x444b4  7      
  addq %r15, %r11           #  9     0x444bb  3      
  jmpq %r11                 #  10    0x444be  3      
  nop                       #  11    0x444c1  1      
  nop                       #  12    0x444c2  1      
  nop                       #  13    0x444c3  1      
                                                     
.size _ZNKSs4sizeEv, .-_ZNKSs4sizeEv

