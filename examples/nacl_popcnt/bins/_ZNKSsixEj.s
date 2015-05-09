  .text
  .globl _ZNKSsixEj
  .type _ZNKSsixEj, @function

#! file-offset 0x44540
#! rip-offset  0x44540
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSsixEj:                #        0x44540  0      
  popq %r11                 #  1     0x44540  3      
  movl %edi, %edi           #  2     0x44543  2      
  movl %esi, %eax           #  3     0x44545  2      
  movl %edi, %edi           #  4     0x44547  2      
  addl (%r15,%rdi,1), %eax  #  5     0x44549  4      
  andl $0xffffffe0, %r11d   #  6     0x4454d  7      
  addq %r15, %r11           #  7     0x44554  3      
  jmpq %r11                 #  8     0x44557  3      
  nop                       #  9     0x4455a  1      
  nop                       #  10    0x4455b  1      
  nop                       #  11    0x4455c  1      
  nop                       #  12    0x4455d  1      
  nop                       #  13    0x4455e  1      
  nop                       #  14    0x4455f  1      
  nop                       #  15    0x44560  1      
  nop                       #  16    0x44561  1      
  nop                       #  17    0x44562  1      
  nop                       #  18    0x44563  1      
                                                     
.size _ZNKSsixEj, .-_ZNKSsixEj

