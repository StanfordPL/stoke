  .text
  .globl _ZNSs6insertEjRKSs
  .type _ZNSs6insertEjRKSs, @function

#! file-offset 0x49920
#! rip-offset  0x49920
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNSs6insertEjRKSs:        #        0x49920  0      
  movl %edx, %edx           #  1     0x49920  2      
  movl %edi, %edi           #  2     0x49922  2      
  movl %edx, %edx           #  3     0x49924  2      
  movl (%r15,%rdx,1), %edx  #  4     0x49926  4      
  leal -0xc(%rdx), %eax     #  5     0x4992a  3      
  movl %eax, %eax           #  6     0x4992d  2      
  movl (%r15,%rax,1), %ecx  #  7     0x4992f  4      
  jmpq ._ZNSs6insertEjPKcj  #  8     0x49933  5      
  nop                       #  9     0x49938  1      
  nop                       #  10    0x49939  1      
  nop                       #  11    0x4993a  1      
  nop                       #  12    0x4993b  1      
  nop                       #  13    0x4993c  1      
  nop                       #  14    0x4993d  1      
  nop                       #  15    0x4993e  1      
  nop                       #  16    0x4993f  1      
                                                     
.size _ZNSs6insertEjRKSs, .-_ZNSs6insertEjRKSs

