  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j
  .type _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j, @function

#! file-offset 0x116960
#! rip-offset  0xd6960
#! capacity    32 bytes

# Text                                                         #  Line  RIP      Bytes  Opcode            
._ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j:       #        0xd6960  0      OPC=<label>       
  movl %esi, %esi                                              #  1     0xd6960  2      OPC=movl_r32_r32  
  movl %edi, %edi                                              #  2     0xd6962  2      OPC=movl_r32_r32  
  movl %esi, %esi                                              #  3     0xd6964  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi                                     #  4     0xd6966  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax                                        #  5     0xd696a  3      OPC=leal_r32_m16  
  movl %eax, %eax                                              #  6     0xd696d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx                                     #  7     0xd696f  4      OPC=movl_r32_m32  
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwjj  #  8     0xd6973  5      OPC=jmpq_label_1  
  nop                                                          #  9     0xd6978  1      OPC=nop           
  nop                                                          #  10    0xd6979  1      OPC=nop           
  nop                                                          #  11    0xd697a  1      OPC=nop           
  nop                                                          #  12    0xd697b  1      OPC=nop           
  nop                                                          #  13    0xd697c  1      OPC=nop           
  nop                                                          #  14    0xd697d  1      OPC=nop           
  nop                                                          #  15    0xd697e  1      OPC=nop           
  nop                                                          #  16    0xd697f  1      OPC=nop           
                                                                                                          
.size _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j, .-_ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j

