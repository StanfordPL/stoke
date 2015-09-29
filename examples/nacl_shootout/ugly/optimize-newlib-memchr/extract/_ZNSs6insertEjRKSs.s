  .text
  .globl _ZNSs6insertEjRKSs
  .type _ZNSs6insertEjRKSs, @function

#! file-offset 0xf0320
#! rip-offset  0xb0320
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode            
._ZNSs6insertEjRKSs:        #        0xb0320  0      OPC=<label>       
  movl %edx, %edx           #  1     0xb0320  2      OPC=movl_r32_r32  
  movl %edi, %edi           #  2     0xb0322  2      OPC=movl_r32_r32  
  movl %edx, %edx           #  3     0xb0324  2      OPC=movl_r32_r32  
  movl (%r15,%rdx,1), %edx  #  4     0xb0326  4      OPC=movl_r32_m32  
  leal -0xc(%rdx), %eax     #  5     0xb032a  3      OPC=leal_r32_m16  
  movl %eax, %eax           #  6     0xb032d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx  #  7     0xb032f  4      OPC=movl_r32_m32  
  jmpq ._ZNSs6insertEjPKcj  #  8     0xb0333  5      OPC=jmpq_label_1  
  nop                       #  9     0xb0338  1      OPC=nop           
  nop                       #  10    0xb0339  1      OPC=nop           
  nop                       #  11    0xb033a  1      OPC=nop           
  nop                       #  12    0xb033b  1      OPC=nop           
  nop                       #  13    0xb033c  1      OPC=nop           
  nop                       #  14    0xb033d  1      OPC=nop           
  nop                       #  15    0xb033e  1      OPC=nop           
  nop                       #  16    0xb033f  1      OPC=nop           
                                                                       
.size _ZNSs6insertEjRKSs, .-_ZNSs6insertEjRKSs

