  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5clearEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE5clearEv, @function

#! file-offset 0x11a1a0
#! rip-offset  0xda1a0
#! capacity    32 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE5clearEv:              #        0xda1a0  0      OPC=<label>        
  movl %edi, %edi                                      #  1     0xda1a0  2      OPC=movl_r32_r32   
  xorl %ecx, %ecx                                      #  2     0xda1a2  2      OPC=xorl_r32_r32   
  xorl %esi, %esi                                      #  3     0xda1a4  2      OPC=xorl_r32_r32   
  movl %edi, %edi                                      #  4     0xda1a6  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                             #  5     0xda1a8  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                      #  6     0xda1ac  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                      #  7     0xda1af  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edx                             #  8     0xda1b1  4      OPC=movl_r32_m32   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  9     0xda1b5  5      OPC=jmpq_label_1   
  nop                                                  #  10    0xda1ba  1      OPC=nop            
  nop                                                  #  11    0xda1bb  1      OPC=nop            
  nop                                                  #  12    0xda1bc  1      OPC=nop            
  nop                                                  #  13    0xda1bd  1      OPC=nop            
  nop                                                  #  14    0xda1be  1      OPC=nop            
  nop                                                  #  15    0xda1bf  1      OPC=nop            
                                                                                                   
.size _ZNSbIwSt11char_traitsIwESaIwEE5clearEv, .-_ZNSbIwSt11char_traitsIwESaIwEE5clearEv

