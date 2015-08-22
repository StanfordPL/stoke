  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6assignEjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6assignEjw, @function

#! file-offset 0x11a2a0
#! rip-offset  0xda2a0
#! capacity    32 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE6assignEjw:                   #        0xda2a0  0      OPC=<label>        
  movl %edi, %edi                                             #  1     0xda2a0  2      OPC=movl_r32_r32   
  movl %edx, %r8d                                             #  2     0xda2a2  3      OPC=movl_r32_r32   
  movl %esi, %ecx                                             #  3     0xda2a5  2      OPC=movl_r32_r32   
  movl %edi, %edi                                             #  4     0xda2a7  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                                    #  5     0xda2a9  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                             #  6     0xda2ad  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                             #  7     0xda2af  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                             #  8     0xda2b2  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edx                                    #  9     0xda2b4  4      OPC=movl_r32_m32   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw  #  10    0xda2b8  5      OPC=jmpq_label_1   
  nop                                                         #  11    0xda2bd  1      OPC=nop            
  nop                                                         #  12    0xda2be  1      OPC=nop            
  nop                                                         #  13    0xda2bf  1      OPC=nop            
                                                                                                          
.size _ZNSbIwSt11char_traitsIwESaIwEE6assignEjw, .-_ZNSbIwSt11char_traitsIwESaIwEE6assignEjw

