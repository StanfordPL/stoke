  .text
  .globl _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags
  .type _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags, @function

#! file-offset 0xa7460
#! rip-offset  0x67460
#! capacity    64 bytes

# Text                                                                       #  Line  RIP      Bytes  Opcode              
._ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags:  #        0x67460  0      OPC=<label>         
  movl %edi, %eax                                                            #  1     0x67460  2      OPC=movl_r32_r32    
  notl %esi                                                                  #  2     0x67462  2      OPC=notl_r32        
  movl %eax, %eax                                                            #  3     0x67464  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                                   #  4     0x67466  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                            #  5     0x6746a  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                            #  6     0x6746d  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                                   #  7     0x6746f  4      OPC=movl_r32_m32    
  addl %eax, %edx                                                            #  8     0x67473  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                            #  9     0x67475  2      OPC=movl_r32_r32    
  andl %esi, 0xc(%r15,%rdx,1)                                                #  10    0x67477  5      OPC=andl_m32_r32    
  popq %r11                                                                  #  11    0x6747c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                             #  12    0x6747e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                    #  13    0x67480  7      OPC=andl_r32_imm32  
  nop                                                                        #  14    0x67487  1      OPC=nop             
  nop                                                                        #  15    0x67488  1      OPC=nop             
  nop                                                                        #  16    0x67489  1      OPC=nop             
  nop                                                                        #  17    0x6748a  1      OPC=nop             
  addq %r15, %r11                                                            #  18    0x6748b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                  #  19    0x6748e  3      OPC=jmpq_r64        
  nop                                                                        #  20    0x67491  1      OPC=nop             
  nop                                                                        #  21    0x67492  1      OPC=nop             
  nop                                                                        #  22    0x67493  1      OPC=nop             
  nop                                                                        #  23    0x67494  1      OPC=nop             
  nop                                                                        #  24    0x67495  1      OPC=nop             
  nop                                                                        #  25    0x67496  1      OPC=nop             
  nop                                                                        #  26    0x67497  1      OPC=nop             
  nop                                                                        #  27    0x67498  1      OPC=nop             
  nop                                                                        #  28    0x67499  1      OPC=nop             
  nop                                                                        #  29    0x6749a  1      OPC=nop             
  nop                                                                        #  30    0x6749b  1      OPC=nop             
  nop                                                                        #  31    0x6749c  1      OPC=nop             
  nop                                                                        #  32    0x6749d  1      OPC=nop             
  nop                                                                        #  33    0x6749e  1      OPC=nop             
  nop                                                                        #  34    0x6749f  1      OPC=nop             
  nop                                                                        #  35    0x674a0  1      OPC=nop             
  nop                                                                        #  36    0x674a1  1      OPC=nop             
  nop                                                                        #  37    0x674a2  1      OPC=nop             
  nop                                                                        #  38    0x674a3  1      OPC=nop             
  nop                                                                        #  39    0x674a4  1      OPC=nop             
  nop                                                                        #  40    0x674a5  1      OPC=nop             
  nop                                                                        #  41    0x674a6  1      OPC=nop             
                                                                                                                          
.size _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags, .-_ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags

