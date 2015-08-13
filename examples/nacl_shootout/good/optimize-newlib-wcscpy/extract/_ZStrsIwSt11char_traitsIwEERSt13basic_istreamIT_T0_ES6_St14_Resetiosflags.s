  .text
  .globl _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags
  .type _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags, @function

#! file-offset 0xa7160
#! rip-offset  0x67160
#! capacity    64 bytes

# Text                                                                       #  Line  RIP      Bytes  Opcode              
._ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags:  #        0x67160  0      OPC=<label>         
  movl %edi, %eax                                                            #  1     0x67160  2      OPC=movl_r32_r32    
  notl %esi                                                                  #  2     0x67162  2      OPC=notl_r32        
  movl %eax, %eax                                                            #  3     0x67164  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                                   #  4     0x67166  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                            #  5     0x6716a  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                            #  6     0x6716d  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                                   #  7     0x6716f  4      OPC=movl_r32_m32    
  addl %eax, %edx                                                            #  8     0x67173  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                            #  9     0x67175  2      OPC=movl_r32_r32    
  andl %esi, 0xc(%r15,%rdx,1)                                                #  10    0x67177  5      OPC=andl_m32_r32    
  popq %r11                                                                  #  11    0x6717c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                             #  12    0x6717e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                    #  13    0x67180  7      OPC=andl_r32_imm32  
  nop                                                                        #  14    0x67187  1      OPC=nop             
  nop                                                                        #  15    0x67188  1      OPC=nop             
  nop                                                                        #  16    0x67189  1      OPC=nop             
  nop                                                                        #  17    0x6718a  1      OPC=nop             
  addq %r15, %r11                                                            #  18    0x6718b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                  #  19    0x6718e  3      OPC=jmpq_r64        
  nop                                                                        #  20    0x67191  1      OPC=nop             
  nop                                                                        #  21    0x67192  1      OPC=nop             
  nop                                                                        #  22    0x67193  1      OPC=nop             
  nop                                                                        #  23    0x67194  1      OPC=nop             
  nop                                                                        #  24    0x67195  1      OPC=nop             
  nop                                                                        #  25    0x67196  1      OPC=nop             
  nop                                                                        #  26    0x67197  1      OPC=nop             
  nop                                                                        #  27    0x67198  1      OPC=nop             
  nop                                                                        #  28    0x67199  1      OPC=nop             
  nop                                                                        #  29    0x6719a  1      OPC=nop             
  nop                                                                        #  30    0x6719b  1      OPC=nop             
  nop                                                                        #  31    0x6719c  1      OPC=nop             
  nop                                                                        #  32    0x6719d  1      OPC=nop             
  nop                                                                        #  33    0x6719e  1      OPC=nop             
  nop                                                                        #  34    0x6719f  1      OPC=nop             
  nop                                                                        #  35    0x671a0  1      OPC=nop             
  nop                                                                        #  36    0x671a1  1      OPC=nop             
  nop                                                                        #  37    0x671a2  1      OPC=nop             
  nop                                                                        #  38    0x671a3  1      OPC=nop             
  nop                                                                        #  39    0x671a4  1      OPC=nop             
  nop                                                                        #  40    0x671a5  1      OPC=nop             
  nop                                                                        #  41    0x671a6  1      OPC=nop             
                                                                                                                          
.size _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags, .-_ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags

