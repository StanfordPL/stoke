  .text
  .globl _ZNKSs4sizeEv
  .type _ZNKSs4sizeEv, @function

#! file-offset 0x44520
#! rip-offset  0x44520
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs4sizeEv:             #        0x44520  0      
  movl %edi, %edi           #  1     0x44520  2      
  movl %edi, %edi           #  2     0x44522  2      
  movl (%r15,%rdi,1), %eax  #  3     0x44524  4      
  popq %r11                 #  4     0x44528  3      
  subl $0xc, %eax           #  5     0x4452b  3      
  movl %eax, %eax           #  6     0x4452e  2      
  movl (%r15,%rax,1), %eax  #  7     0x44530  4      
  andl $0xffffffe0, %r11d   #  8     0x44534  7      
  addq %r15, %r11           #  9     0x4453b  3      
  jmpq %r11                 #  10    0x4453e  3      
  nop                       #  11    0x44541  1      
  nop                       #  12    0x44542  1      
  nop                       #  13    0x44543  1      
                                                     
.size _ZNKSs4sizeEv, .-_ZNKSs4sizeEv

