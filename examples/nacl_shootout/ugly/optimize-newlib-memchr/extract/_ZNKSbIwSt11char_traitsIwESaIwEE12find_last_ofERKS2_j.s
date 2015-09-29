  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofERKS2_j
  .type _ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofERKS2_j, @function

#! file-offset 0x116f00
#! rip-offset  0xd6f00
#! capacity    32 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode            
._ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofERKS2_j:       #        0xd6f00  0      OPC=<label>       
  movl %esi, %esi                                             #  1     0xd6f00  2      OPC=movl_r32_r32  
  movl %edi, %edi                                             #  2     0xd6f02  2      OPC=movl_r32_r32  
  movl %esi, %esi                                             #  3     0xd6f04  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi                                    #  4     0xd6f06  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax                                       #  5     0xd6f0a  3      OPC=leal_r32_m16  
  movl %eax, %eax                                             #  6     0xd6f0d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx                                    #  7     0xd6f0f  4      OPC=movl_r32_m32  
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwjj  #  8     0xd6f13  5      OPC=jmpq_label_1  
  nop                                                         #  9     0xd6f18  1      OPC=nop           
  nop                                                         #  10    0xd6f19  1      OPC=nop           
  nop                                                         #  11    0xd6f1a  1      OPC=nop           
  nop                                                         #  12    0xd6f1b  1      OPC=nop           
  nop                                                         #  13    0xd6f1c  1      OPC=nop           
  nop                                                         #  14    0xd6f1d  1      OPC=nop           
  nop                                                         #  15    0xd6f1e  1      OPC=nop           
  nop                                                         #  16    0xd6f1f  1      OPC=nop           
                                                                                                         
.size _ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofERKS2_j, .-_ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofERKS2_j

