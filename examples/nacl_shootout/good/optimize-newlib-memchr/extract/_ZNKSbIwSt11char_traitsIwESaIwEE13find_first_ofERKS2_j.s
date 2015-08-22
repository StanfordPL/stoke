  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j
  .type _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j, @function

#! file-offset 0x117080
#! rip-offset  0xd7080
#! capacity    32 bytes

# Text                                                         #  Line  RIP      Bytes  Opcode            
._ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j:       #        0xd7080  0      OPC=<label>       
  movl %esi, %esi                                              #  1     0xd7080  2      OPC=movl_r32_r32  
  movl %edi, %edi                                              #  2     0xd7082  2      OPC=movl_r32_r32  
  movl %esi, %esi                                              #  3     0xd7084  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi                                     #  4     0xd7086  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax                                        #  5     0xd708a  3      OPC=leal_r32_m16  
  movl %eax, %eax                                              #  6     0xd708d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx                                     #  7     0xd708f  4      OPC=movl_r32_m32  
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwjj  #  8     0xd7093  5      OPC=jmpq_label_1  
  nop                                                          #  9     0xd7098  1      OPC=nop           
  nop                                                          #  10    0xd7099  1      OPC=nop           
  nop                                                          #  11    0xd709a  1      OPC=nop           
  nop                                                          #  12    0xd709b  1      OPC=nop           
  nop                                                          #  13    0xd709c  1      OPC=nop           
  nop                                                          #  14    0xd709d  1      OPC=nop           
  nop                                                          #  15    0xd709e  1      OPC=nop           
  nop                                                          #  16    0xd709f  1      OPC=nop           
                                                                                                          
.size _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j, .-_ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j

