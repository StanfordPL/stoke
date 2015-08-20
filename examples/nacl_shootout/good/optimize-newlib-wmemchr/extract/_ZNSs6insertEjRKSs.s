  .text
  .globl _ZNSs6insertEjRKSs
  .type _ZNSs6insertEjRKSs, @function

#! file-offset 0xefc00
#! rip-offset  0xafc00
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode            
._ZNSs6insertEjRKSs:        #        0xafc00  0      OPC=<label>       
  movl %edx, %edx           #  1     0xafc00  2      OPC=movl_r32_r32  
  movl %edi, %edi           #  2     0xafc02  2      OPC=movl_r32_r32  
  movl %edx, %edx           #  3     0xafc04  2      OPC=movl_r32_r32  
  movl (%r15,%rdx,1), %edx  #  4     0xafc06  4      OPC=movl_r32_m32  
  leal -0xc(%rdx), %eax     #  5     0xafc0a  3      OPC=leal_r32_m16  
  movl %eax, %eax           #  6     0xafc0d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx  #  7     0xafc0f  4      OPC=movl_r32_m32  
  jmpq ._ZNSs6insertEjPKcj  #  8     0xafc13  5      OPC=jmpq_label_1  
  nop                       #  9     0xafc18  1      OPC=nop           
  nop                       #  10    0xafc19  1      OPC=nop           
  nop                       #  11    0xafc1a  1      OPC=nop           
  nop                       #  12    0xafc1b  1      OPC=nop           
  nop                       #  13    0xafc1c  1      OPC=nop           
  nop                       #  14    0xafc1d  1      OPC=nop           
  nop                       #  15    0xafc1e  1      OPC=nop           
  nop                       #  16    0xafc1f  1      OPC=nop           
                                                                       
.size _ZNSs6insertEjRKSs, .-_ZNSs6insertEjRKSs

