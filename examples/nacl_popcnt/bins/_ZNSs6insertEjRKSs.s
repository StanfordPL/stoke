  .text
  .globl _ZNSs6insertEjRKSs
  .type _ZNSs6insertEjRKSs, @function

#! file-offset 0x499a0
#! rip-offset  0x499a0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNSs6insertEjRKSs:        #        0x499a0  0      
  movl %edx, %edx           #  1     0x499a0  2      
  movl %edi, %edi           #  2     0x499a2  2      
  movl %edx, %edx           #  3     0x499a4  2      
  movl (%r15,%rdx,1), %edx  #  4     0x499a6  4      
  leal -0xc(%rdx), %eax     #  5     0x499aa  3      
  movl %eax, %eax           #  6     0x499ad  2      
  movl (%r15,%rax,1), %ecx  #  7     0x499af  4      
  jmpq ._ZNSs6insertEjPKcj  #  8     0x499b3  5      
  nop                       #  9     0x499b8  1      
  nop                       #  10    0x499b9  1      
  nop                       #  11    0x499ba  1      
  nop                       #  12    0x499bb  1      
  nop                       #  13    0x499bc  1      
  nop                       #  14    0x499bd  1      
  nop                       #  15    0x499be  1      
  nop                       #  16    0x499bf  1      
                                                     
.size _ZNSs6insertEjRKSs, .-_ZNSs6insertEjRKSs

