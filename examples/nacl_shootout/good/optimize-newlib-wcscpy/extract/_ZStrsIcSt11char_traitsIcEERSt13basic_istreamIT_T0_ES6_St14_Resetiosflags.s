  .text
  .globl _ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags
  .type _ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags, @function

#! file-offset 0xa6ee0
#! rip-offset  0x66ee0
#! capacity    64 bytes

# Text                                                                       #  Line  RIP      Bytes  Opcode              
._ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags:  #        0x66ee0  0      OPC=<label>         
  movl %edi, %eax                                                            #  1     0x66ee0  2      OPC=movl_r32_r32    
  notl %esi                                                                  #  2     0x66ee2  2      OPC=notl_r32        
  movl %eax, %eax                                                            #  3     0x66ee4  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                                   #  4     0x66ee6  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                            #  5     0x66eea  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                            #  6     0x66eed  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                                   #  7     0x66eef  4      OPC=movl_r32_m32    
  addl %eax, %edx                                                            #  8     0x66ef3  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                            #  9     0x66ef5  2      OPC=movl_r32_r32    
  andl %esi, 0xc(%r15,%rdx,1)                                                #  10    0x66ef7  5      OPC=andl_m32_r32    
  popq %r11                                                                  #  11    0x66efc  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                             #  12    0x66efe  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                    #  13    0x66f00  7      OPC=andl_r32_imm32  
  nop                                                                        #  14    0x66f07  1      OPC=nop             
  nop                                                                        #  15    0x66f08  1      OPC=nop             
  nop                                                                        #  16    0x66f09  1      OPC=nop             
  nop                                                                        #  17    0x66f0a  1      OPC=nop             
  addq %r15, %r11                                                            #  18    0x66f0b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                  #  19    0x66f0e  3      OPC=jmpq_r64        
  nop                                                                        #  20    0x66f11  1      OPC=nop             
  nop                                                                        #  21    0x66f12  1      OPC=nop             
  nop                                                                        #  22    0x66f13  1      OPC=nop             
  nop                                                                        #  23    0x66f14  1      OPC=nop             
  nop                                                                        #  24    0x66f15  1      OPC=nop             
  nop                                                                        #  25    0x66f16  1      OPC=nop             
  nop                                                                        #  26    0x66f17  1      OPC=nop             
  nop                                                                        #  27    0x66f18  1      OPC=nop             
  nop                                                                        #  28    0x66f19  1      OPC=nop             
  nop                                                                        #  29    0x66f1a  1      OPC=nop             
  nop                                                                        #  30    0x66f1b  1      OPC=nop             
  nop                                                                        #  31    0x66f1c  1      OPC=nop             
  nop                                                                        #  32    0x66f1d  1      OPC=nop             
  nop                                                                        #  33    0x66f1e  1      OPC=nop             
  nop                                                                        #  34    0x66f1f  1      OPC=nop             
  nop                                                                        #  35    0x66f20  1      OPC=nop             
  nop                                                                        #  36    0x66f21  1      OPC=nop             
  nop                                                                        #  37    0x66f22  1      OPC=nop             
  nop                                                                        #  38    0x66f23  1      OPC=nop             
  nop                                                                        #  39    0x66f24  1      OPC=nop             
  nop                                                                        #  40    0x66f25  1      OPC=nop             
  nop                                                                        #  41    0x66f26  1      OPC=nop             
                                                                                                                          
.size _ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags, .-_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St14_Resetiosflags

