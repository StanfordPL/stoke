  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4findERKS2_j
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4findERKS2_j, @function

#! file-offset 0x116020
#! rip-offset  0xd6020
#! capacity    32 bytes

# Text                                               #  Line  RIP      Bytes  Opcode            
._ZNKSbIwSt11char_traitsIwESaIwEE4findERKS2_j:       #        0xd6020  0      OPC=<label>       
  movl %esi, %esi                                    #  1     0xd6020  2      OPC=movl_r32_r32  
  movl %edi, %edi                                    #  2     0xd6022  2      OPC=movl_r32_r32  
  movl %esi, %esi                                    #  3     0xd6024  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi                           #  4     0xd6026  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax                              #  5     0xd602a  3      OPC=leal_r32_m16  
  movl %eax, %eax                                    #  6     0xd602d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx                           #  7     0xd602f  4      OPC=movl_r32_m32  
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE4findEPKwjj  #  8     0xd6033  5      OPC=jmpq_label_1  
  nop                                                #  9     0xd6038  1      OPC=nop           
  nop                                                #  10    0xd6039  1      OPC=nop           
  nop                                                #  11    0xd603a  1      OPC=nop           
  nop                                                #  12    0xd603b  1      OPC=nop           
  nop                                                #  13    0xd603c  1      OPC=nop           
  nop                                                #  14    0xd603d  1      OPC=nop           
  nop                                                #  15    0xd603e  1      OPC=nop           
  nop                                                #  16    0xd603f  1      OPC=nop           
                                                                                                
.size _ZNKSbIwSt11char_traitsIwESaIwEE4findERKS2_j, .-_ZNKSbIwSt11char_traitsIwESaIwEE4findERKS2_j

