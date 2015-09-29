  .text
  .globl _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags
  .type _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags, @function

#! file-offset 0xdd900
#! rip-offset  0x9d900
#! capacity    64 bytes

# Text                                                                       #  Line  RIP      Bytes  Opcode              
._ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags:  #        0x9d900  0      OPC=<label>         
  movl %edi, %eax                                                            #  1     0x9d900  2      OPC=movl_r32_r32    
  notl %esi                                                                  #  2     0x9d902  2      OPC=notl_r32        
  movl %eax, %eax                                                            #  3     0x9d904  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                                   #  4     0x9d906  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                            #  5     0x9d90a  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                            #  6     0x9d90d  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                                   #  7     0x9d90f  4      OPC=movl_r32_m32    
  addl %eax, %edx                                                            #  8     0x9d913  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                            #  9     0x9d915  2      OPC=movl_r32_r32    
  andl %esi, 0xc(%r15,%rdx,1)                                                #  10    0x9d917  5      OPC=andl_m32_r32    
  popq %r11                                                                  #  11    0x9d91c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                             #  12    0x9d91e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                    #  13    0x9d920  7      OPC=andl_r32_imm32  
  nop                                                                        #  14    0x9d927  1      OPC=nop             
  nop                                                                        #  15    0x9d928  1      OPC=nop             
  nop                                                                        #  16    0x9d929  1      OPC=nop             
  nop                                                                        #  17    0x9d92a  1      OPC=nop             
  addq %r15, %r11                                                            #  18    0x9d92b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                  #  19    0x9d92e  3      OPC=jmpq_r64        
  nop                                                                        #  20    0x9d931  1      OPC=nop             
  nop                                                                        #  21    0x9d932  1      OPC=nop             
  nop                                                                        #  22    0x9d933  1      OPC=nop             
  nop                                                                        #  23    0x9d934  1      OPC=nop             
  nop                                                                        #  24    0x9d935  1      OPC=nop             
  nop                                                                        #  25    0x9d936  1      OPC=nop             
  nop                                                                        #  26    0x9d937  1      OPC=nop             
  nop                                                                        #  27    0x9d938  1      OPC=nop             
  nop                                                                        #  28    0x9d939  1      OPC=nop             
  nop                                                                        #  29    0x9d93a  1      OPC=nop             
  nop                                                                        #  30    0x9d93b  1      OPC=nop             
  nop                                                                        #  31    0x9d93c  1      OPC=nop             
  nop                                                                        #  32    0x9d93d  1      OPC=nop             
  nop                                                                        #  33    0x9d93e  1      OPC=nop             
  nop                                                                        #  34    0x9d93f  1      OPC=nop             
  nop                                                                        #  35    0x9d940  1      OPC=nop             
  nop                                                                        #  36    0x9d941  1      OPC=nop             
  nop                                                                        #  37    0x9d942  1      OPC=nop             
  nop                                                                        #  38    0x9d943  1      OPC=nop             
  nop                                                                        #  39    0x9d944  1      OPC=nop             
  nop                                                                        #  40    0x9d945  1      OPC=nop             
  nop                                                                        #  41    0x9d946  1      OPC=nop             
                                                                                                                          
.size _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags, .-_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags

