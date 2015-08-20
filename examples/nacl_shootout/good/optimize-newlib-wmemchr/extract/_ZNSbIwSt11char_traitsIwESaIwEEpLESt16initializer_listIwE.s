  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE
  .type _ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE, @function

#! file-offset 0x11ac60
#! rip-offset  0xdac60
#! capacity    64 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE:  #        0xdac60  0      OPC=<label>        
  movl %edi, %edi                                            #  1     0xdac60  2      OPC=movl_r32_r32   
  movl %esi, %ecx                                            #  2     0xdac62  2      OPC=movl_r32_r32   
  shrq $0x20, %rsi                                           #  3     0xdac64  4      OPC=shrq_r64_imm8  
  movl %edi, %edi                                            #  4     0xdac68  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                                   #  5     0xdac6a  4      OPC=movl_r32_m32   
  leal (,%rsi,4), %r8d                                       #  6     0xdac6e  8      OPC=leal_r32_m16   
  xorl %edx, %edx                                            #  7     0xdac76  2      OPC=xorl_r32_r32   
  sarl $0x2, %r8d                                            #  8     0xdac78  4      OPC=sarl_r32_imm8  
  subl $0xc, %eax                                            #  9     0xdac7c  3      OPC=subl_r32_imm8  
  nop                                                        #  10    0xdac7f  1      OPC=nop            
  movl %eax, %eax                                            #  11    0xdac80  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %esi                                   #  12    0xdac82  4      OPC=movl_r32_m32   
  shll $0x2, %esi                                            #  13    0xdac86  3      OPC=shll_r32_imm8  
  sarl $0x2, %esi                                            #  14    0xdac89  3      OPC=sarl_r32_imm8  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj       #  15    0xdac8c  5      OPC=jmpq_label_1   
  nop                                                        #  16    0xdac91  1      OPC=nop            
  nop                                                        #  17    0xdac92  1      OPC=nop            
  nop                                                        #  18    0xdac93  1      OPC=nop            
  nop                                                        #  19    0xdac94  1      OPC=nop            
  nop                                                        #  20    0xdac95  1      OPC=nop            
  nop                                                        #  21    0xdac96  1      OPC=nop            
  nop                                                        #  22    0xdac97  1      OPC=nop            
  nop                                                        #  23    0xdac98  1      OPC=nop            
  nop                                                        #  24    0xdac99  1      OPC=nop            
  nop                                                        #  25    0xdac9a  1      OPC=nop            
  nop                                                        #  26    0xdac9b  1      OPC=nop            
  nop                                                        #  27    0xdac9c  1      OPC=nop            
  nop                                                        #  28    0xdac9d  1      OPC=nop            
  nop                                                        #  29    0xdac9e  1      OPC=nop            
  nop                                                        #  30    0xdac9f  1      OPC=nop            
                                                                                                         
.size _ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE, .-_ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE

