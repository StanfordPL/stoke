  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj
  .type _ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj, @function

#! file-offset 0x117240
#! rip-offset  0xd7240
#! capacity    64 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj:  #        0xd7240  0      OPC=<label>         
  cmpl $0x1, %edx                                 #  1     0xd7240  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi                                 #  2     0xd7243  2      OPC=movl_r32_r32    
  movl %esi, %esi                                 #  3     0xd7245  2      OPC=movl_r32_r32    
  je .L_d7260                                     #  4     0xd7247  2      OPC=je_label        
  jmpq .wmemmove                                  #  5     0xd7249  5      OPC=jmpq_label_1    
  nop                                             #  6     0xd724e  1      OPC=nop             
  nop                                             #  7     0xd724f  1      OPC=nop             
  nop                                             #  8     0xd7250  1      OPC=nop             
  nop                                             #  9     0xd7251  1      OPC=nop             
  nop                                             #  10    0xd7252  1      OPC=nop             
  nop                                             #  11    0xd7253  1      OPC=nop             
  nop                                             #  12    0xd7254  1      OPC=nop             
  nop                                             #  13    0xd7255  1      OPC=nop             
  nop                                             #  14    0xd7256  1      OPC=nop             
  nop                                             #  15    0xd7257  1      OPC=nop             
  nop                                             #  16    0xd7258  1      OPC=nop             
  nop                                             #  17    0xd7259  1      OPC=nop             
  nop                                             #  18    0xd725a  1      OPC=nop             
  nop                                             #  19    0xd725b  1      OPC=nop             
  nop                                             #  20    0xd725c  1      OPC=nop             
  nop                                             #  21    0xd725d  1      OPC=nop             
  nop                                             #  22    0xd725e  1      OPC=nop             
  nop                                             #  23    0xd725f  1      OPC=nop             
.L_d7260:                                         #        0xd7260  0      OPC=<label>         
  popq %r11                                       #  24    0xd7260  2      OPC=popq_r64_1      
  movl %esi, %esi                                 #  25    0xd7262  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                        #  26    0xd7264  4      OPC=movl_r32_m32    
  movl %edi, %edi                                 #  27    0xd7268  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                        #  28    0xd726a  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                         #  29    0xd726e  7      OPC=andl_r32_imm32  
  nop                                             #  30    0xd7275  1      OPC=nop             
  nop                                             #  31    0xd7276  1      OPC=nop             
  nop                                             #  32    0xd7277  1      OPC=nop             
  nop                                             #  33    0xd7278  1      OPC=nop             
  addq %r15, %r11                                 #  34    0xd7279  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  35    0xd727c  3      OPC=jmpq_r64        
  nop                                             #  36    0xd727f  1      OPC=nop             
  nop                                             #  37    0xd7280  1      OPC=nop             
  nop                                             #  38    0xd7281  1      OPC=nop             
  nop                                             #  39    0xd7282  1      OPC=nop             
  nop                                             #  40    0xd7283  1      OPC=nop             
  nop                                             #  41    0xd7284  1      OPC=nop             
  nop                                             #  42    0xd7285  1      OPC=nop             
  nop                                             #  43    0xd7286  1      OPC=nop             
                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj, .-_ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj

