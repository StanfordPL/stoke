  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE
  .type _ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE, @function

#! file-offset 0x11b440
#! rip-offset  0xdb440
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE:  #        0xdb440  0      OPC=<label>        
  movl %edi, %edi                                                 #  1     0xdb440  2      OPC=movl_r32_r32   
  movl %esi, %ecx                                                 #  2     0xdb442  2      OPC=movl_r32_r32   
  shrq $0x20, %rsi                                                #  3     0xdb444  4      OPC=shrq_r64_imm8  
  movl %edi, %edi                                                 #  4     0xdb448  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                                        #  5     0xdb44a  4      OPC=movl_r32_m32   
  leal (,%rsi,4), %r8d                                            #  6     0xdb44e  8      OPC=leal_r32_m16   
  xorl %esi, %esi                                                 #  7     0xdb456  2      OPC=xorl_r32_r32   
  sarl $0x2, %r8d                                                 #  8     0xdb458  4      OPC=sarl_r32_imm8  
  subl $0xc, %eax                                                 #  9     0xdb45c  3      OPC=subl_r32_imm8  
  nop                                                             #  10    0xdb45f  1      OPC=nop            
  movl %eax, %eax                                                 #  11    0xdb460  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edx                                        #  12    0xdb462  4      OPC=movl_r32_m32   
  shll $0x2, %edx                                                 #  13    0xdb466  3      OPC=shll_r32_imm8  
  sarl $0x2, %edx                                                 #  14    0xdb469  3      OPC=sarl_r32_imm8  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj            #  15    0xdb46c  5      OPC=jmpq_label_1   
  nop                                                             #  16    0xdb471  1      OPC=nop            
  nop                                                             #  17    0xdb472  1      OPC=nop            
  nop                                                             #  18    0xdb473  1      OPC=nop            
  nop                                                             #  19    0xdb474  1      OPC=nop            
  nop                                                             #  20    0xdb475  1      OPC=nop            
  nop                                                             #  21    0xdb476  1      OPC=nop            
  nop                                                             #  22    0xdb477  1      OPC=nop            
  nop                                                             #  23    0xdb478  1      OPC=nop            
  nop                                                             #  24    0xdb479  1      OPC=nop            
  nop                                                             #  25    0xdb47a  1      OPC=nop            
  nop                                                             #  26    0xdb47b  1      OPC=nop            
  nop                                                             #  27    0xdb47c  1      OPC=nop            
  nop                                                             #  28    0xdb47d  1      OPC=nop            
  nop                                                             #  29    0xdb47e  1      OPC=nop            
  nop                                                             #  30    0xdb47f  1      OPC=nop            
                                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE, .-_ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE

