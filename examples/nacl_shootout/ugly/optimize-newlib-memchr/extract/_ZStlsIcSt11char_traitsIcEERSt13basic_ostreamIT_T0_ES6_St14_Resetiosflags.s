  .text
  .globl _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags
  .type _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags, @function

#! file-offset 0xdd6a0
#! rip-offset  0x9d6a0
#! capacity    64 bytes

# Text                                                                       #  Line  RIP      Bytes  Opcode              
._ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags:  #        0x9d6a0  0      OPC=<label>         
  movl %edi, %eax                                                            #  1     0x9d6a0  2      OPC=movl_r32_r32    
  notl %esi                                                                  #  2     0x9d6a2  2      OPC=notl_r32        
  movl %eax, %eax                                                            #  3     0x9d6a4  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                                   #  4     0x9d6a6  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                            #  5     0x9d6aa  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                            #  6     0x9d6ad  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                                   #  7     0x9d6af  4      OPC=movl_r32_m32    
  addl %eax, %edx                                                            #  8     0x9d6b3  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                            #  9     0x9d6b5  2      OPC=movl_r32_r32    
  andl %esi, 0xc(%r15,%rdx,1)                                                #  10    0x9d6b7  5      OPC=andl_m32_r32    
  popq %r11                                                                  #  11    0x9d6bc  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                             #  12    0x9d6be  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                    #  13    0x9d6c0  7      OPC=andl_r32_imm32  
  nop                                                                        #  14    0x9d6c7  1      OPC=nop             
  nop                                                                        #  15    0x9d6c8  1      OPC=nop             
  nop                                                                        #  16    0x9d6c9  1      OPC=nop             
  nop                                                                        #  17    0x9d6ca  1      OPC=nop             
  addq %r15, %r11                                                            #  18    0x9d6cb  3      OPC=addq_r64_r64    
  jmpq %r11                                                                  #  19    0x9d6ce  3      OPC=jmpq_r64        
  nop                                                                        #  20    0x9d6d1  1      OPC=nop             
  nop                                                                        #  21    0x9d6d2  1      OPC=nop             
  nop                                                                        #  22    0x9d6d3  1      OPC=nop             
  nop                                                                        #  23    0x9d6d4  1      OPC=nop             
  nop                                                                        #  24    0x9d6d5  1      OPC=nop             
  nop                                                                        #  25    0x9d6d6  1      OPC=nop             
  nop                                                                        #  26    0x9d6d7  1      OPC=nop             
  nop                                                                        #  27    0x9d6d8  1      OPC=nop             
  nop                                                                        #  28    0x9d6d9  1      OPC=nop             
  nop                                                                        #  29    0x9d6da  1      OPC=nop             
  nop                                                                        #  30    0x9d6db  1      OPC=nop             
  nop                                                                        #  31    0x9d6dc  1      OPC=nop             
  nop                                                                        #  32    0x9d6dd  1      OPC=nop             
  nop                                                                        #  33    0x9d6de  1      OPC=nop             
  nop                                                                        #  34    0x9d6df  1      OPC=nop             
  nop                                                                        #  35    0x9d6e0  1      OPC=nop             
  nop                                                                        #  36    0x9d6e1  1      OPC=nop             
  nop                                                                        #  37    0x9d6e2  1      OPC=nop             
  nop                                                                        #  38    0x9d6e3  1      OPC=nop             
  nop                                                                        #  39    0x9d6e4  1      OPC=nop             
  nop                                                                        #  40    0x9d6e5  1      OPC=nop             
  nop                                                                        #  41    0x9d6e6  1      OPC=nop             
                                                                                                                          
.size _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags, .-_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St14_Resetiosflags

