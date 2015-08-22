  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofERKS2_j
  .type _ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofERKS2_j, @function

#! file-offset 0x116d60
#! rip-offset  0xd6d60
#! capacity    32 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode            
._ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofERKS2_j:       #        0xd6d60  0      OPC=<label>       
  movl %esi, %esi                                                  #  1     0xd6d60  2      OPC=movl_r32_r32  
  movl %edi, %edi                                                  #  2     0xd6d62  2      OPC=movl_r32_r32  
  movl %esi, %esi                                                  #  3     0xd6d64  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi                                         #  4     0xd6d66  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax                                            #  5     0xd6d6a  3      OPC=leal_r32_m16  
  movl %eax, %eax                                                  #  6     0xd6d6d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx                                         #  7     0xd6d6f  4      OPC=movl_r32_m32  
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofEPKwjj  #  8     0xd6d73  5      OPC=jmpq_label_1  
  nop                                                              #  9     0xd6d78  1      OPC=nop           
  nop                                                              #  10    0xd6d79  1      OPC=nop           
  nop                                                              #  11    0xd6d7a  1      OPC=nop           
  nop                                                              #  12    0xd6d7b  1      OPC=nop           
  nop                                                              #  13    0xd6d7c  1      OPC=nop           
  nop                                                              #  14    0xd6d7d  1      OPC=nop           
  nop                                                              #  15    0xd6d7e  1      OPC=nop           
  nop                                                              #  16    0xd6d7f  1      OPC=nop           
                                                                                                              
.size _ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofERKS2_j, .-_ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofERKS2_j

