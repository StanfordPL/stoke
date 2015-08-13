  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6assignEjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6assignEjw, @function

#! file-offset 0x119880
#! rip-offset  0xd9880
#! capacity    32 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE6assignEjw:                   #        0xd9880  0      OPC=<label>        
  movl %edi, %edi                                             #  1     0xd9880  2      OPC=movl_r32_r32   
  movl %edx, %r8d                                             #  2     0xd9882  3      OPC=movl_r32_r32   
  movl %esi, %ecx                                             #  3     0xd9885  2      OPC=movl_r32_r32   
  movl %edi, %edi                                             #  4     0xd9887  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                                    #  5     0xd9889  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                             #  6     0xd988d  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                             #  7     0xd988f  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                             #  8     0xd9892  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edx                                    #  9     0xd9894  4      OPC=movl_r32_m32   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw  #  10    0xd9898  5      OPC=jmpq_label_1   
  nop                                                         #  11    0xd989d  1      OPC=nop            
  nop                                                         #  12    0xd989e  1      OPC=nop            
  nop                                                         #  13    0xd989f  1      OPC=nop            
                                                                                                          
.size _ZNSbIwSt11char_traitsIwESaIwEE6assignEjw, .-_ZNSbIwSt11char_traitsIwESaIwEE6assignEjw

