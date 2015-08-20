  .text
  .globl _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags
  .type _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags, @function

#! file-offset 0xdd1e0
#! rip-offset  0x9d1e0
#! capacity    64 bytes

# Text                                                                       #  Line  RIP      Bytes  Opcode              
._ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags:  #        0x9d1e0  0      OPC=<label>         
  movl %edi, %eax                                                            #  1     0x9d1e0  2      OPC=movl_r32_r32    
  notl %esi                                                                  #  2     0x9d1e2  2      OPC=notl_r32        
  movl %eax, %eax                                                            #  3     0x9d1e4  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                                   #  4     0x9d1e6  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                            #  5     0x9d1ea  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                            #  6     0x9d1ed  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                                   #  7     0x9d1ef  4      OPC=movl_r32_m32    
  addl %eax, %edx                                                            #  8     0x9d1f3  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                            #  9     0x9d1f5  2      OPC=movl_r32_r32    
  andl %esi, 0xc(%r15,%rdx,1)                                                #  10    0x9d1f7  5      OPC=andl_m32_r32    
  popq %r11                                                                  #  11    0x9d1fc  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                             #  12    0x9d1fe  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                    #  13    0x9d200  7      OPC=andl_r32_imm32  
  nop                                                                        #  14    0x9d207  1      OPC=nop             
  nop                                                                        #  15    0x9d208  1      OPC=nop             
  nop                                                                        #  16    0x9d209  1      OPC=nop             
  nop                                                                        #  17    0x9d20a  1      OPC=nop             
  addq %r15, %r11                                                            #  18    0x9d20b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                  #  19    0x9d20e  3      OPC=jmpq_r64        
  nop                                                                        #  20    0x9d211  1      OPC=nop             
  nop                                                                        #  21    0x9d212  1      OPC=nop             
  nop                                                                        #  22    0x9d213  1      OPC=nop             
  nop                                                                        #  23    0x9d214  1      OPC=nop             
  nop                                                                        #  24    0x9d215  1      OPC=nop             
  nop                                                                        #  25    0x9d216  1      OPC=nop             
  nop                                                                        #  26    0x9d217  1      OPC=nop             
  nop                                                                        #  27    0x9d218  1      OPC=nop             
  nop                                                                        #  28    0x9d219  1      OPC=nop             
  nop                                                                        #  29    0x9d21a  1      OPC=nop             
  nop                                                                        #  30    0x9d21b  1      OPC=nop             
  nop                                                                        #  31    0x9d21c  1      OPC=nop             
  nop                                                                        #  32    0x9d21d  1      OPC=nop             
  nop                                                                        #  33    0x9d21e  1      OPC=nop             
  nop                                                                        #  34    0x9d21f  1      OPC=nop             
  nop                                                                        #  35    0x9d220  1      OPC=nop             
  nop                                                                        #  36    0x9d221  1      OPC=nop             
  nop                                                                        #  37    0x9d222  1      OPC=nop             
  nop                                                                        #  38    0x9d223  1      OPC=nop             
  nop                                                                        #  39    0x9d224  1      OPC=nop             
  nop                                                                        #  40    0x9d225  1      OPC=nop             
  nop                                                                        #  41    0x9d226  1      OPC=nop             
                                                                                                                          
.size _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags, .-_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags

