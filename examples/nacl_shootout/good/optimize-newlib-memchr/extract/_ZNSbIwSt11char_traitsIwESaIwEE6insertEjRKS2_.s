  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_, @function

#! file-offset 0x11a8a0
#! rip-offset  0xda8a0
#! capacity    32 bytes

# Text                                                #  Line  RIP      Bytes  Opcode            
._ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_:       #        0xda8a0  0      OPC=<label>       
  movl %edx, %edx                                     #  1     0xda8a0  2      OPC=movl_r32_r32  
  movl %edi, %edi                                     #  2     0xda8a2  2      OPC=movl_r32_r32  
  movl %edx, %edx                                     #  3     0xda8a4  2      OPC=movl_r32_r32  
  movl (%r15,%rdx,1), %edx                            #  4     0xda8a6  4      OPC=movl_r32_m32  
  leal -0xc(%rdx), %eax                               #  5     0xda8aa  3      OPC=leal_r32_m16  
  movl %eax, %eax                                     #  6     0xda8ad  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx                            #  7     0xda8af  4      OPC=movl_r32_m32  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6insertEjPKwj  #  8     0xda8b3  5      OPC=jmpq_label_1  
  nop                                                 #  9     0xda8b8  1      OPC=nop           
  nop                                                 #  10    0xda8b9  1      OPC=nop           
  nop                                                 #  11    0xda8ba  1      OPC=nop           
  nop                                                 #  12    0xda8bb  1      OPC=nop           
  nop                                                 #  13    0xda8bc  1      OPC=nop           
  nop                                                 #  14    0xda8bd  1      OPC=nop           
  nop                                                 #  15    0xda8be  1      OPC=nop           
  nop                                                 #  16    0xda8bf  1      OPC=nop           
                                                                                                 
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_

