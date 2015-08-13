  .text
  .globl _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags
  .type _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags, @function

#! file-offset 0xdcc80
#! rip-offset  0x9cc80
#! capacity    64 bytes

# Text                                                                       #  Line  RIP      Bytes  Opcode              
._ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags:  #        0x9cc80  0      OPC=<label>         
  movl %edi, %eax                                                            #  1     0x9cc80  2      OPC=movl_r32_r32    
  notl %esi                                                                  #  2     0x9cc82  2      OPC=notl_r32        
  movl %eax, %eax                                                            #  3     0x9cc84  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                                   #  4     0x9cc86  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                            #  5     0x9cc8a  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                            #  6     0x9cc8d  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                                   #  7     0x9cc8f  4      OPC=movl_r32_m32    
  addl %eax, %edx                                                            #  8     0x9cc93  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                            #  9     0x9cc95  2      OPC=movl_r32_r32    
  andl %esi, 0xc(%r15,%rdx,1)                                                #  10    0x9cc97  5      OPC=andl_m32_r32    
  popq %r11                                                                  #  11    0x9cc9c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                             #  12    0x9cc9e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                    #  13    0x9cca0  7      OPC=andl_r32_imm32  
  nop                                                                        #  14    0x9cca7  1      OPC=nop             
  nop                                                                        #  15    0x9cca8  1      OPC=nop             
  nop                                                                        #  16    0x9cca9  1      OPC=nop             
  nop                                                                        #  17    0x9ccaa  1      OPC=nop             
  addq %r15, %r11                                                            #  18    0x9ccab  3      OPC=addq_r64_r64    
  jmpq %r11                                                                  #  19    0x9ccae  3      OPC=jmpq_r64        
  nop                                                                        #  20    0x9ccb1  1      OPC=nop             
  nop                                                                        #  21    0x9ccb2  1      OPC=nop             
  nop                                                                        #  22    0x9ccb3  1      OPC=nop             
  nop                                                                        #  23    0x9ccb4  1      OPC=nop             
  nop                                                                        #  24    0x9ccb5  1      OPC=nop             
  nop                                                                        #  25    0x9ccb6  1      OPC=nop             
  nop                                                                        #  26    0x9ccb7  1      OPC=nop             
  nop                                                                        #  27    0x9ccb8  1      OPC=nop             
  nop                                                                        #  28    0x9ccb9  1      OPC=nop             
  nop                                                                        #  29    0x9ccba  1      OPC=nop             
  nop                                                                        #  30    0x9ccbb  1      OPC=nop             
  nop                                                                        #  31    0x9ccbc  1      OPC=nop             
  nop                                                                        #  32    0x9ccbd  1      OPC=nop             
  nop                                                                        #  33    0x9ccbe  1      OPC=nop             
  nop                                                                        #  34    0x9ccbf  1      OPC=nop             
  nop                                                                        #  35    0x9ccc0  1      OPC=nop             
  nop                                                                        #  36    0x9ccc1  1      OPC=nop             
  nop                                                                        #  37    0x9ccc2  1      OPC=nop             
  nop                                                                        #  38    0x9ccc3  1      OPC=nop             
  nop                                                                        #  39    0x9ccc4  1      OPC=nop             
  nop                                                                        #  40    0x9ccc5  1      OPC=nop             
  nop                                                                        #  41    0x9ccc6  1      OPC=nop             
                                                                                                                          
.size _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags, .-_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags

