  .text
  .globl _ZNKSs6lengthEv
  .type _ZNKSs6lengthEv, @function

#! file-offset 0x44540
#! rip-offset  0x44540
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs6lengthEv:           #        0x44540  0      
  movl %edi, %edi           #  1     0x44540  2      
  movl %edi, %edi           #  2     0x44542  2      
  movl (%r15,%rdi,1), %eax  #  3     0x44544  4      
  popq %r11                 #  4     0x44548  3      
  subl $0xc, %eax           #  5     0x4454b  3      
  movl %eax, %eax           #  6     0x4454e  2      
  movl (%r15,%rax,1), %eax  #  7     0x44550  4      
  andl $0xffffffe0, %r11d   #  8     0x44554  7      
  addq %r15, %r11           #  9     0x4455b  3      
  jmpq %r11                 #  10    0x4455e  3      
  nop                       #  11    0x44561  1      
  nop                       #  12    0x44562  1      
  nop                       #  13    0x44563  1      
                                                     
.size _ZNKSs6lengthEv, .-_ZNKSs6lengthEv

