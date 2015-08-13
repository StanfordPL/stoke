  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5clearEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE5clearEv, @function

#! file-offset 0x119ea0
#! rip-offset  0xd9ea0
#! capacity    32 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE5clearEv:              #        0xd9ea0  0      OPC=<label>        
  movl %edi, %edi                                      #  1     0xd9ea0  2      OPC=movl_r32_r32   
  xorl %ecx, %ecx                                      #  2     0xd9ea2  2      OPC=xorl_r32_r32   
  xorl %esi, %esi                                      #  3     0xd9ea4  2      OPC=xorl_r32_r32   
  movl %edi, %edi                                      #  4     0xd9ea6  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                             #  5     0xd9ea8  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                      #  6     0xd9eac  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                      #  7     0xd9eaf  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edx                             #  8     0xd9eb1  4      OPC=movl_r32_m32   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  9     0xd9eb5  5      OPC=jmpq_label_1   
  nop                                                  #  10    0xd9eba  1      OPC=nop            
  nop                                                  #  11    0xd9ebb  1      OPC=nop            
  nop                                                  #  12    0xd9ebc  1      OPC=nop            
  nop                                                  #  13    0xd9ebd  1      OPC=nop            
  nop                                                  #  14    0xd9ebe  1      OPC=nop            
  nop                                                  #  15    0xd9ebf  1      OPC=nop            
                                                                                                   
.size _ZNSbIwSt11char_traitsIwESaIwEE5clearEv, .-_ZNSbIwSt11char_traitsIwESaIwEE5clearEv

