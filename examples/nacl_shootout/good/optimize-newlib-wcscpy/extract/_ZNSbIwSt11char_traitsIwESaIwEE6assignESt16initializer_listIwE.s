  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE
  .type _ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE, @function

#! file-offset 0x11aa20
#! rip-offset  0xdaa20
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE:  #        0xdaa20  0      OPC=<label>        
  movl %edi, %edi                                                 #  1     0xdaa20  2      OPC=movl_r32_r32   
  movl %esi, %ecx                                                 #  2     0xdaa22  2      OPC=movl_r32_r32   
  shrq $0x20, %rsi                                                #  3     0xdaa24  4      OPC=shrq_r64_imm8  
  movl %edi, %edi                                                 #  4     0xdaa28  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                                        #  5     0xdaa2a  4      OPC=movl_r32_m32   
  leal (,%rsi,4), %r8d                                            #  6     0xdaa2e  8      OPC=leal_r32_m16   
  xorl %esi, %esi                                                 #  7     0xdaa36  2      OPC=xorl_r32_r32   
  sarl $0x2, %r8d                                                 #  8     0xdaa38  4      OPC=sarl_r32_imm8  
  subl $0xc, %eax                                                 #  9     0xdaa3c  3      OPC=subl_r32_imm8  
  nop                                                             #  10    0xdaa3f  1      OPC=nop            
  movl %eax, %eax                                                 #  11    0xdaa40  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edx                                        #  12    0xdaa42  4      OPC=movl_r32_m32   
  shll $0x2, %edx                                                 #  13    0xdaa46  3      OPC=shll_r32_imm8  
  sarl $0x2, %edx                                                 #  14    0xdaa49  3      OPC=sarl_r32_imm8  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj            #  15    0xdaa4c  5      OPC=jmpq_label_1   
  nop                                                             #  16    0xdaa51  1      OPC=nop            
  nop                                                             #  17    0xdaa52  1      OPC=nop            
  nop                                                             #  18    0xdaa53  1      OPC=nop            
  nop                                                             #  19    0xdaa54  1      OPC=nop            
  nop                                                             #  20    0xdaa55  1      OPC=nop            
  nop                                                             #  21    0xdaa56  1      OPC=nop            
  nop                                                             #  22    0xdaa57  1      OPC=nop            
  nop                                                             #  23    0xdaa58  1      OPC=nop            
  nop                                                             #  24    0xdaa59  1      OPC=nop            
  nop                                                             #  25    0xdaa5a  1      OPC=nop            
  nop                                                             #  26    0xdaa5b  1      OPC=nop            
  nop                                                             #  27    0xdaa5c  1      OPC=nop            
  nop                                                             #  28    0xdaa5d  1      OPC=nop            
  nop                                                             #  29    0xdaa5e  1      OPC=nop            
  nop                                                             #  30    0xdaa5f  1      OPC=nop            
                                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE, .-_ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE

