  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j
  .type _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j, @function

#! file-offset 0x116660
#! rip-offset  0xd6660
#! capacity    32 bytes

# Text                                                         #  Line  RIP      Bytes  Opcode            
._ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j:       #        0xd6660  0      OPC=<label>       
  movl %esi, %esi                                              #  1     0xd6660  2      OPC=movl_r32_r32  
  movl %edi, %edi                                              #  2     0xd6662  2      OPC=movl_r32_r32  
  movl %esi, %esi                                              #  3     0xd6664  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi                                     #  4     0xd6666  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax                                        #  5     0xd666a  3      OPC=leal_r32_m16  
  movl %eax, %eax                                              #  6     0xd666d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx                                     #  7     0xd666f  4      OPC=movl_r32_m32  
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwjj  #  8     0xd6673  5      OPC=jmpq_label_1  
  nop                                                          #  9     0xd6678  1      OPC=nop           
  nop                                                          #  10    0xd6679  1      OPC=nop           
  nop                                                          #  11    0xd667a  1      OPC=nop           
  nop                                                          #  12    0xd667b  1      OPC=nop           
  nop                                                          #  13    0xd667c  1      OPC=nop           
  nop                                                          #  14    0xd667d  1      OPC=nop           
  nop                                                          #  15    0xd667e  1      OPC=nop           
  nop                                                          #  16    0xd667f  1      OPC=nop           
                                                                                                          
.size _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j, .-_ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofERKS2_j

