  .text
  .globl _ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St8_Setbase
  .type _ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St8_Setbase, @function

#! file-offset 0xa7220
#! rip-offset  0x67220
#! capacity    96 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St8_Setbase:  #        0x67220  0      OPC=<label>         
  cmpl $0x8, %esi                                                     #  1     0x67220  3      OPC=cmpl_r32_imm8   
  movl %edi, %eax                                                     #  2     0x67223  2      OPC=movl_r32_r32    
  movl $0x40, %ecx                                                    #  3     0x67225  5      OPC=movl_r32_imm32  
  je .L_67240                                                         #  4     0x6722a  2      OPC=je_label        
  cmpl $0xa, %esi                                                     #  5     0x6722c  3      OPC=cmpl_r32_imm8   
  movb $0x2, %cl                                                      #  6     0x6722f  2      OPC=movb_r8_imm8    
  je .L_67240                                                         #  7     0x67231  2      OPC=je_label        
  xorl %ecx, %ecx                                                     #  8     0x67233  2      OPC=xorl_r32_r32    
  cmpl $0x10, %esi                                                    #  9     0x67235  3      OPC=cmpl_r32_imm8   
  sete %cl                                                            #  10    0x67238  3      OPC=sete_r8         
  shll $0x3, %ecx                                                     #  11    0x6723b  3      OPC=shll_r32_imm8   
  xchgw %ax, %ax                                                      #  12    0x6723e  2      OPC=xchgw_ax_r16    
.L_67240:                                                             #        0x67240  0      OPC=<label>         
  movl %eax, %eax                                                     #  13    0x67240  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                            #  14    0x67242  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                     #  15    0x67246  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                     #  16    0x67249  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %esi                                            #  17    0x6724b  4      OPC=movl_r32_m32    
  addl %eax, %esi                                                     #  18    0x6724f  2      OPC=addl_r32_r32    
  movl %esi, %esi                                                     #  19    0x67251  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rsi,1), %edx                                         #  20    0x67253  5      OPC=movl_r32_m32    
  andl $0xffffffb5, %edx                                              #  21    0x67258  6      OPC=andl_r32_imm32  
  nop                                                                 #  22    0x6725e  1      OPC=nop             
  nop                                                                 #  23    0x6725f  1      OPC=nop             
  nop                                                                 #  24    0x67260  1      OPC=nop             
  orl %ecx, %edx                                                      #  25    0x67261  2      OPC=orl_r32_r32     
  nop                                                                 #  26    0x67263  1      OPC=nop             
  nop                                                                 #  27    0x67264  1      OPC=nop             
  nop                                                                 #  28    0x67265  1      OPC=nop             
  movl %esi, %esi                                                     #  29    0x67266  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)                                         #  30    0x67268  5      OPC=movl_m32_r32    
  popq %r11                                                           #  31    0x6726d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  32    0x6726f  7      OPC=andl_r32_imm32  
  nop                                                                 #  33    0x67276  1      OPC=nop             
  nop                                                                 #  34    0x67277  1      OPC=nop             
  nop                                                                 #  35    0x67278  1      OPC=nop             
  nop                                                                 #  36    0x67279  1      OPC=nop             
  addq %r15, %r11                                                     #  37    0x6727a  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  38    0x6727d  3      OPC=jmpq_r64        
  nop                                                                 #  39    0x67280  1      OPC=nop             
  nop                                                                 #  40    0x67281  1      OPC=nop             
  nop                                                                 #  41    0x67282  1      OPC=nop             
  nop                                                                 #  42    0x67283  1      OPC=nop             
  nop                                                                 #  43    0x67284  1      OPC=nop             
  nop                                                                 #  44    0x67285  1      OPC=nop             
  nop                                                                 #  45    0x67286  1      OPC=nop             
  nop                                                                 #  46    0x67287  1      OPC=nop             
  nop                                                                 #  47    0x67288  1      OPC=nop             
  nop                                                                 #  48    0x67289  1      OPC=nop             
  nop                                                                 #  49    0x6728a  1      OPC=nop             
  nop                                                                 #  50    0x6728b  1      OPC=nop             
  nop                                                                 #  51    0x6728c  1      OPC=nop             
                                                                                                                   
.size _ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St8_Setbase, .-_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St8_Setbase

