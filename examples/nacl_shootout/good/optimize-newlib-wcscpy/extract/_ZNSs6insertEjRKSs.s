  .text
  .globl _ZNSs6insertEjRKSs
  .type _ZNSs6insertEjRKSs, @function

#! file-offset 0xef900
#! rip-offset  0xaf900
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode            
._ZNSs6insertEjRKSs:        #        0xaf900  0      OPC=<label>       
  movl %edx, %edx           #  1     0xaf900  2      OPC=movl_r32_r32  
  movl %edi, %edi           #  2     0xaf902  2      OPC=movl_r32_r32  
  movl %edx, %edx           #  3     0xaf904  2      OPC=movl_r32_r32  
  movl (%r15,%rdx,1), %edx  #  4     0xaf906  4      OPC=movl_r32_m32  
  leal -0xc(%rdx), %eax     #  5     0xaf90a  3      OPC=leal_r32_m16  
  movl %eax, %eax           #  6     0xaf90d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx  #  7     0xaf90f  4      OPC=movl_r32_m32  
  jmpq ._ZNSs6insertEjPKcj  #  8     0xaf913  5      OPC=jmpq_label_1  
  nop                       #  9     0xaf918  1      OPC=nop           
  nop                       #  10    0xaf919  1      OPC=nop           
  nop                       #  11    0xaf91a  1      OPC=nop           
  nop                       #  12    0xaf91b  1      OPC=nop           
  nop                       #  13    0xaf91c  1      OPC=nop           
  nop                       #  14    0xaf91d  1      OPC=nop           
  nop                       #  15    0xaf91e  1      OPC=nop           
  nop                       #  16    0xaf91f  1      OPC=nop           
                                                                       
.size _ZNSs6insertEjRKSs, .-_ZNSs6insertEjRKSs

