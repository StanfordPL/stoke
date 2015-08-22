  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE5rfindERKS2_j
  .type _ZNKSbIwSt11char_traitsIwESaIwEE5rfindERKS2_j, @function

#! file-offset 0x116860
#! rip-offset  0xd6860
#! capacity    32 bytes

# Text                                                #  Line  RIP      Bytes  Opcode            
._ZNKSbIwSt11char_traitsIwESaIwEE5rfindERKS2_j:       #        0xd6860  0      OPC=<label>       
  movl %esi, %esi                                     #  1     0xd6860  2      OPC=movl_r32_r32  
  movl %edi, %edi                                     #  2     0xd6862  2      OPC=movl_r32_r32  
  movl %esi, %esi                                     #  3     0xd6864  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi                            #  4     0xd6866  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax                               #  5     0xd686a  3      OPC=leal_r32_m16  
  movl %eax, %eax                                     #  6     0xd686d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx                            #  7     0xd686f  4      OPC=movl_r32_m32  
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwjj  #  8     0xd6873  5      OPC=jmpq_label_1  
  nop                                                 #  9     0xd6878  1      OPC=nop           
  nop                                                 #  10    0xd6879  1      OPC=nop           
  nop                                                 #  11    0xd687a  1      OPC=nop           
  nop                                                 #  12    0xd687b  1      OPC=nop           
  nop                                                 #  13    0xd687c  1      OPC=nop           
  nop                                                 #  14    0xd687d  1      OPC=nop           
  nop                                                 #  15    0xd687e  1      OPC=nop           
  nop                                                 #  16    0xd687f  1      OPC=nop           
                                                                                                 
.size _ZNKSbIwSt11char_traitsIwESaIwEE5rfindERKS2_j, .-_ZNKSbIwSt11char_traitsIwESaIwEE5rfindERKS2_j

