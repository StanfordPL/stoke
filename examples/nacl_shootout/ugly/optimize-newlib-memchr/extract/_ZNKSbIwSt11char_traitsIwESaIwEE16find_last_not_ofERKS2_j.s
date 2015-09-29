  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE16find_last_not_ofERKS2_j
  .type _ZNKSbIwSt11char_traitsIwESaIwEE16find_last_not_ofERKS2_j, @function

#! file-offset 0x116be0
#! rip-offset  0xd6be0
#! capacity    32 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode            
._ZNKSbIwSt11char_traitsIwESaIwEE16find_last_not_ofERKS2_j:       #        0xd6be0  0      OPC=<label>       
  movl %esi, %esi                                                 #  1     0xd6be0  2      OPC=movl_r32_r32  
  movl %edi, %edi                                                 #  2     0xd6be2  2      OPC=movl_r32_r32  
  movl %esi, %esi                                                 #  3     0xd6be4  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi                                        #  4     0xd6be6  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax                                           #  5     0xd6bea  3      OPC=leal_r32_m16  
  movl %eax, %eax                                                 #  6     0xd6bed  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx                                        #  7     0xd6bef  4      OPC=movl_r32_m32  
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE16find_last_not_ofEPKwjj  #  8     0xd6bf3  5      OPC=jmpq_label_1  
  nop                                                             #  9     0xd6bf8  1      OPC=nop           
  nop                                                             #  10    0xd6bf9  1      OPC=nop           
  nop                                                             #  11    0xd6bfa  1      OPC=nop           
  nop                                                             #  12    0xd6bfb  1      OPC=nop           
  nop                                                             #  13    0xd6bfc  1      OPC=nop           
  nop                                                             #  14    0xd6bfd  1      OPC=nop           
  nop                                                             #  15    0xd6bfe  1      OPC=nop           
  nop                                                             #  16    0xd6bff  1      OPC=nop           
                                                                                                             
.size _ZNKSbIwSt11char_traitsIwESaIwEE16find_last_not_ofERKS2_j, .-_ZNKSbIwSt11char_traitsIwESaIwEE16find_last_not_ofERKS2_j

