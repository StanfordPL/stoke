  .text
  .globl _ZNKSs6lengthEv
  .type _ZNKSs6lengthEv, @function

#! file-offset 0x444c0
#! rip-offset  0x444c0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs6lengthEv:           #        0x444c0  0      
  movl %edi, %edi           #  1     0x444c0  2      
  movl %edi, %edi           #  2     0x444c2  2      
  movl (%r15,%rdi,1), %eax  #  3     0x444c4  4      
  popq %r11                 #  4     0x444c8  3      
  subl $0xc, %eax           #  5     0x444cb  3      
  movl %eax, %eax           #  6     0x444ce  2      
  movl (%r15,%rax,1), %eax  #  7     0x444d0  4      
  andl $0xffffffe0, %r11d   #  8     0x444d4  7      
  addq %r15, %r11           #  9     0x444db  3      
  jmpq %r11                 #  10    0x444de  3      
  nop                       #  11    0x444e1  1      
  nop                       #  12    0x444e2  1      
  nop                       #  13    0x444e3  1      
                                                     
.size _ZNKSs6lengthEv, .-_ZNKSs6lengthEv

