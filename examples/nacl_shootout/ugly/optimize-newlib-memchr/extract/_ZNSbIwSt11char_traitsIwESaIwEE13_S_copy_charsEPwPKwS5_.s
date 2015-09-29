  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_, @function

#! file-offset 0x117600
#! rip-offset  0xd7600
#! capacity    64 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_:  #        0xd7600  0      OPC=<label>         
  movl %esi, %esi                                          #  1     0xd7600  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  2     0xd7602  2      OPC=movl_r32_r32    
  subl %esi, %edx                                          #  3     0xd7604  2      OPC=subl_r32_r32    
  sarl $0x2, %edx                                          #  4     0xd7606  3      OPC=sarl_r32_imm8   
  cmpl $0x1, %edx                                          #  5     0xd7609  3      OPC=cmpl_r32_imm8   
  je .L_d7620                                              #  6     0xd760c  2      OPC=je_label        
  jmpq .wmemcpy                                            #  7     0xd760e  5      OPC=jmpq_label_1    
  nop                                                      #  8     0xd7613  1      OPC=nop             
  nop                                                      #  9     0xd7614  1      OPC=nop             
  nop                                                      #  10    0xd7615  1      OPC=nop             
  nop                                                      #  11    0xd7616  1      OPC=nop             
  nop                                                      #  12    0xd7617  1      OPC=nop             
  nop                                                      #  13    0xd7618  1      OPC=nop             
  nop                                                      #  14    0xd7619  1      OPC=nop             
  nop                                                      #  15    0xd761a  1      OPC=nop             
  nop                                                      #  16    0xd761b  1      OPC=nop             
  nop                                                      #  17    0xd761c  1      OPC=nop             
  nop                                                      #  18    0xd761d  1      OPC=nop             
  nop                                                      #  19    0xd761e  1      OPC=nop             
  nop                                                      #  20    0xd761f  1      OPC=nop             
.L_d7620:                                                  #        0xd7620  0      OPC=<label>         
  popq %r11                                                #  21    0xd7620  2      OPC=popq_r64_1      
  movl %esi, %esi                                          #  22    0xd7622  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                 #  23    0xd7624  4      OPC=movl_r32_m32    
  movl %edi, %edi                                          #  24    0xd7628  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                 #  25    0xd762a  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                  #  26    0xd762e  7      OPC=andl_r32_imm32  
  nop                                                      #  27    0xd7635  1      OPC=nop             
  nop                                                      #  28    0xd7636  1      OPC=nop             
  nop                                                      #  29    0xd7637  1      OPC=nop             
  nop                                                      #  30    0xd7638  1      OPC=nop             
  addq %r15, %r11                                          #  31    0xd7639  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  32    0xd763c  3      OPC=jmpq_r64        
  nop                                                      #  33    0xd763f  1      OPC=nop             
  nop                                                      #  34    0xd7640  1      OPC=nop             
  nop                                                      #  35    0xd7641  1      OPC=nop             
  nop                                                      #  36    0xd7642  1      OPC=nop             
  nop                                                      #  37    0xd7643  1      OPC=nop             
  nop                                                      #  38    0xd7644  1      OPC=nop             
  nop                                                      #  39    0xd7645  1      OPC=nop             
  nop                                                      #  40    0xd7646  1      OPC=nop             
                                                                                                        
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_

