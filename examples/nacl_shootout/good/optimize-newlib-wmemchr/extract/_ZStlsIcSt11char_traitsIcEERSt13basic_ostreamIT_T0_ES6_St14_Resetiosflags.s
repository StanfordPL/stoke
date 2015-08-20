  .text
  .globl _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags
  .type _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags, @function

#! file-offset 0xdcf80
#! rip-offset  0x9cf80
#! capacity    64 bytes

# Text                                                                       #  Line  RIP      Bytes  Opcode              
._ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags:  #        0x9cf80  0      OPC=<label>         
  movl %edi, %eax                                                            #  1     0x9cf80  2      OPC=movl_r32_r32    
  notl %esi                                                                  #  2     0x9cf82  2      OPC=notl_r32        
  movl %eax, %eax                                                            #  3     0x9cf84  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                                   #  4     0x9cf86  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                            #  5     0x9cf8a  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                            #  6     0x9cf8d  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                                   #  7     0x9cf8f  4      OPC=movl_r32_m32    
  addl %eax, %edx                                                            #  8     0x9cf93  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                            #  9     0x9cf95  2      OPC=movl_r32_r32    
  andl %esi, 0xc(%r15,%rdx,1)                                                #  10    0x9cf97  5      OPC=andl_m32_r32    
  popq %r11                                                                  #  11    0x9cf9c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                             #  12    0x9cf9e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                    #  13    0x9cfa0  7      OPC=andl_r32_imm32  
  nop                                                                        #  14    0x9cfa7  1      OPC=nop             
  nop                                                                        #  15    0x9cfa8  1      OPC=nop             
  nop                                                                        #  16    0x9cfa9  1      OPC=nop             
  nop                                                                        #  17    0x9cfaa  1      OPC=nop             
  addq %r15, %r11                                                            #  18    0x9cfab  3      OPC=addq_r64_r64    
  jmpq %r11                                                                  #  19    0x9cfae  3      OPC=jmpq_r64        
  nop                                                                        #  20    0x9cfb1  1      OPC=nop             
  nop                                                                        #  21    0x9cfb2  1      OPC=nop             
  nop                                                                        #  22    0x9cfb3  1      OPC=nop             
  nop                                                                        #  23    0x9cfb4  1      OPC=nop             
  nop                                                                        #  24    0x9cfb5  1      OPC=nop             
  nop                                                                        #  25    0x9cfb6  1      OPC=nop             
  nop                                                                        #  26    0x9cfb7  1      OPC=nop             
  nop                                                                        #  27    0x9cfb8  1      OPC=nop             
  nop                                                                        #  28    0x9cfb9  1      OPC=nop             
  nop                                                                        #  29    0x9cfba  1      OPC=nop             
  nop                                                                        #  30    0x9cfbb  1      OPC=nop             
  nop                                                                        #  31    0x9cfbc  1      OPC=nop             
  nop                                                                        #  32    0x9cfbd  1      OPC=nop             
  nop                                                                        #  33    0x9cfbe  1      OPC=nop             
  nop                                                                        #  34    0x9cfbf  1      OPC=nop             
  nop                                                                        #  35    0x9cfc0  1      OPC=nop             
  nop                                                                        #  36    0x9cfc1  1      OPC=nop             
  nop                                                                        #  37    0x9cfc2  1      OPC=nop             
  nop                                                                        #  38    0x9cfc3  1      OPC=nop             
  nop                                                                        #  39    0x9cfc4  1      OPC=nop             
  nop                                                                        #  40    0x9cfc5  1      OPC=nop             
  nop                                                                        #  41    0x9cfc6  1      OPC=nop             
                                                                                                                          
.size _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags, .-_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags

