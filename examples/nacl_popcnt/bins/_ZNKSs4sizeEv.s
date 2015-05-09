  .text
  .globl _ZNKSs4sizeEv
  .type _ZNKSs4sizeEv, @function

#! file-offset 0x44480
#! rip-offset  0x44480
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs4sizeEv:             #        0x44480  0      
  movl %edi, %edi           #  1     0x44480  2      
  movl %edi, %edi           #  2     0x44482  2      
  movl (%r15,%rdi,1), %eax  #  3     0x44484  4      
  popq %r11                 #  4     0x44488  3      
  subl $0xc, %eax           #  5     0x4448b  3      
  movl %eax, %eax           #  6     0x4448e  2      
  movl (%r15,%rax,1), %eax  #  7     0x44490  4      
  andl $0xffffffe0, %r11d   #  8     0x44494  7      
  addq %r15, %r11           #  9     0x4449b  3      
  jmpq %r11                 #  10    0x4449e  3      
  nop                       #  11    0x444a1  1      
  nop                       #  12    0x444a2  1      
  nop                       #  13    0x444a3  1      
                                                     
.size _ZNKSs4sizeEv, .-_ZNKSs4sizeEv

