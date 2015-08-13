  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE5rfindERKS2_j
  .type _ZNKSbIwSt11char_traitsIwESaIwEE5rfindERKS2_j, @function

#! file-offset 0x115e40
#! rip-offset  0xd5e40
#! capacity    32 bytes

# Text                                                #  Line  RIP      Bytes  Opcode            
._ZNKSbIwSt11char_traitsIwESaIwEE5rfindERKS2_j:       #        0xd5e40  0      OPC=<label>       
  movl %esi, %esi                                     #  1     0xd5e40  2      OPC=movl_r32_r32  
  movl %edi, %edi                                     #  2     0xd5e42  2      OPC=movl_r32_r32  
  movl %esi, %esi                                     #  3     0xd5e44  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi                            #  4     0xd5e46  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax                               #  5     0xd5e4a  3      OPC=leal_r32_m16  
  movl %eax, %eax                                     #  6     0xd5e4d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx                            #  7     0xd5e4f  4      OPC=movl_r32_m32  
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwjj  #  8     0xd5e53  5      OPC=jmpq_label_1  
  nop                                                 #  9     0xd5e58  1      OPC=nop           
  nop                                                 #  10    0xd5e59  1      OPC=nop           
  nop                                                 #  11    0xd5e5a  1      OPC=nop           
  nop                                                 #  12    0xd5e5b  1      OPC=nop           
  nop                                                 #  13    0xd5e5c  1      OPC=nop           
  nop                                                 #  14    0xd5e5d  1      OPC=nop           
  nop                                                 #  15    0xd5e5e  1      OPC=nop           
  nop                                                 #  16    0xd5e5f  1      OPC=nop           
                                                                                                 
.size _ZNKSbIwSt11char_traitsIwESaIwEE5rfindERKS2_j, .-_ZNKSbIwSt11char_traitsIwESaIwEE5rfindERKS2_j

