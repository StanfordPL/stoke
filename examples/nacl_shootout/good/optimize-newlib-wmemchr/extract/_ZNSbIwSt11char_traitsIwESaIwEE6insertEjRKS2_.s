  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_, @function

#! file-offset 0x11a180
#! rip-offset  0xda180
#! capacity    32 bytes

# Text                                                #  Line  RIP      Bytes  Opcode            
._ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_:       #        0xda180  0      OPC=<label>       
  movl %edx, %edx                                     #  1     0xda180  2      OPC=movl_r32_r32  
  movl %edi, %edi                                     #  2     0xda182  2      OPC=movl_r32_r32  
  movl %edx, %edx                                     #  3     0xda184  2      OPC=movl_r32_r32  
  movl (%r15,%rdx,1), %edx                            #  4     0xda186  4      OPC=movl_r32_m32  
  leal -0xc(%rdx), %eax                               #  5     0xda18a  3      OPC=leal_r32_m16  
  movl %eax, %eax                                     #  6     0xda18d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx                            #  7     0xda18f  4      OPC=movl_r32_m32  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6insertEjPKwj  #  8     0xda193  5      OPC=jmpq_label_1  
  nop                                                 #  9     0xda198  1      OPC=nop           
  nop                                                 #  10    0xda199  1      OPC=nop           
  nop                                                 #  11    0xda19a  1      OPC=nop           
  nop                                                 #  12    0xda19b  1      OPC=nop           
  nop                                                 #  13    0xda19c  1      OPC=nop           
  nop                                                 #  14    0xda19d  1      OPC=nop           
  nop                                                 #  15    0xda19e  1      OPC=nop           
  nop                                                 #  16    0xda19f  1      OPC=nop           
                                                                                                 
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_

