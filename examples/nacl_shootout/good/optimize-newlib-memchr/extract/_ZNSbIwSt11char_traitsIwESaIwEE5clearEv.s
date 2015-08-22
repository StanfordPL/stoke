  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5clearEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE5clearEv, @function

#! file-offset 0x11a8c0
#! rip-offset  0xda8c0
#! capacity    32 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE5clearEv:              #        0xda8c0  0      OPC=<label>        
  movl %edi, %edi                                      #  1     0xda8c0  2      OPC=movl_r32_r32   
  xorl %ecx, %ecx                                      #  2     0xda8c2  2      OPC=xorl_r32_r32   
  xorl %esi, %esi                                      #  3     0xda8c4  2      OPC=xorl_r32_r32   
  movl %edi, %edi                                      #  4     0xda8c6  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                             #  5     0xda8c8  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                      #  6     0xda8cc  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                      #  7     0xda8cf  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edx                             #  8     0xda8d1  4      OPC=movl_r32_m32   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  9     0xda8d5  5      OPC=jmpq_label_1   
  nop                                                  #  10    0xda8da  1      OPC=nop            
  nop                                                  #  11    0xda8db  1      OPC=nop            
  nop                                                  #  12    0xda8dc  1      OPC=nop            
  nop                                                  #  13    0xda8dd  1      OPC=nop            
  nop                                                  #  14    0xda8de  1      OPC=nop            
  nop                                                  #  15    0xda8df  1      OPC=nop            
                                                                                                   
.size _ZNSbIwSt11char_traitsIwESaIwEE5clearEv, .-_ZNSbIwSt11char_traitsIwESaIwEE5clearEv

