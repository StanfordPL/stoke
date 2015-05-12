  .text
  .globl _ZNKSsixEj
  .type _ZNKSsixEj, @function

#! file-offset 0x44560
#! rip-offset  0x44560
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSsixEj:                #        0x44560  0      
  popq %r11                 #  1     0x44560  3      
  movl %edi, %edi           #  2     0x44563  2      
  movl %esi, %eax           #  3     0x44565  2      
  movl %edi, %edi           #  4     0x44567  2      
  addl (%r15,%rdi,1), %eax  #  5     0x44569  4      
  andl $0xffffffe0, %r11d   #  6     0x4456d  7      
  addq %r15, %r11           #  7     0x44574  3      
  jmpq %r11                 #  8     0x44577  3      
  nop                       #  9     0x4457a  1      
  nop                       #  10    0x4457b  1      
  nop                       #  11    0x4457c  1      
  nop                       #  12    0x4457d  1      
  nop                       #  13    0x4457e  1      
  nop                       #  14    0x4457f  1      
  nop                       #  15    0x44580  1      
  nop                       #  16    0x44581  1      
  nop                       #  17    0x44582  1      
  nop                       #  18    0x44583  1      
                                                     
.size _ZNKSsixEj, .-_ZNKSsixEj

