  .text
  .globl _ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags
  .type _ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags, @function

#! file-offset 0xa7900
#! rip-offset  0x67900
#! capacity    64 bytes

# Text                                                                       #  Line  RIP      Bytes  Opcode              
._ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags:  #        0x67900  0      OPC=<label>         
  movl %edi, %eax                                                            #  1     0x67900  2      OPC=movl_r32_r32    
  notl %esi                                                                  #  2     0x67902  2      OPC=notl_r32        
  movl %eax, %eax                                                            #  3     0x67904  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                                   #  4     0x67906  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                            #  5     0x6790a  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                            #  6     0x6790d  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                                   #  7     0x6790f  4      OPC=movl_r32_m32    
  addl %eax, %edx                                                            #  8     0x67913  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                            #  9     0x67915  2      OPC=movl_r32_r32    
  andl %esi, 0xc(%r15,%rdx,1)                                                #  10    0x67917  5      OPC=andl_m32_r32    
  popq %r11                                                                  #  11    0x6791c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                             #  12    0x6791e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                    #  13    0x67920  7      OPC=andl_r32_imm32  
  nop                                                                        #  14    0x67927  1      OPC=nop             
  nop                                                                        #  15    0x67928  1      OPC=nop             
  nop                                                                        #  16    0x67929  1      OPC=nop             
  nop                                                                        #  17    0x6792a  1      OPC=nop             
  addq %r15, %r11                                                            #  18    0x6792b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                  #  19    0x6792e  3      OPC=jmpq_r64        
  nop                                                                        #  20    0x67931  1      OPC=nop             
  nop                                                                        #  21    0x67932  1      OPC=nop             
  nop                                                                        #  22    0x67933  1      OPC=nop             
  nop                                                                        #  23    0x67934  1      OPC=nop             
  nop                                                                        #  24    0x67935  1      OPC=nop             
  nop                                                                        #  25    0x67936  1      OPC=nop             
  nop                                                                        #  26    0x67937  1      OPC=nop             
  nop                                                                        #  27    0x67938  1      OPC=nop             
  nop                                                                        #  28    0x67939  1      OPC=nop             
  nop                                                                        #  29    0x6793a  1      OPC=nop             
  nop                                                                        #  30    0x6793b  1      OPC=nop             
  nop                                                                        #  31    0x6793c  1      OPC=nop             
  nop                                                                        #  32    0x6793d  1      OPC=nop             
  nop                                                                        #  33    0x6793e  1      OPC=nop             
  nop                                                                        #  34    0x6793f  1      OPC=nop             
  nop                                                                        #  35    0x67940  1      OPC=nop             
  nop                                                                        #  36    0x67941  1      OPC=nop             
  nop                                                                        #  37    0x67942  1      OPC=nop             
  nop                                                                        #  38    0x67943  1      OPC=nop             
  nop                                                                        #  39    0x67944  1      OPC=nop             
  nop                                                                        #  40    0x67945  1      OPC=nop             
  nop                                                                        #  41    0x67946  1      OPC=nop             
                                                                                                                          
.size _ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags, .-_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags

