  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofERKS2_j
  .type _ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofERKS2_j, @function

#! file-offset 0x1164e0
#! rip-offset  0xd64e0
#! capacity    32 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode            
._ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofERKS2_j:       #        0xd64e0  0      OPC=<label>       
  movl %esi, %esi                                             #  1     0xd64e0  2      OPC=movl_r32_r32  
  movl %edi, %edi                                             #  2     0xd64e2  2      OPC=movl_r32_r32  
  movl %esi, %esi                                             #  3     0xd64e4  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi                                    #  4     0xd64e6  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax                                       #  5     0xd64ea  3      OPC=leal_r32_m16  
  movl %eax, %eax                                             #  6     0xd64ed  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx                                    #  7     0xd64ef  4      OPC=movl_r32_m32  
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwjj  #  8     0xd64f3  5      OPC=jmpq_label_1  
  nop                                                         #  9     0xd64f8  1      OPC=nop           
  nop                                                         #  10    0xd64f9  1      OPC=nop           
  nop                                                         #  11    0xd64fa  1      OPC=nop           
  nop                                                         #  12    0xd64fb  1      OPC=nop           
  nop                                                         #  13    0xd64fc  1      OPC=nop           
  nop                                                         #  14    0xd64fd  1      OPC=nop           
  nop                                                         #  15    0xd64fe  1      OPC=nop           
  nop                                                         #  16    0xd64ff  1      OPC=nop           
                                                                                                         
.size _ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofERKS2_j, .-_ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofERKS2_j

