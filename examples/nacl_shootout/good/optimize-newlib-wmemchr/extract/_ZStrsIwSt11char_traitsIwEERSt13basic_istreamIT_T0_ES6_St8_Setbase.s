  .text
  .globl _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase
  .type _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase, @function

#! file-offset 0xa74a0
#! rip-offset  0x674a0
#! capacity    96 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase:  #        0x674a0  0      OPC=<label>         
  cmpl $0x8, %esi                                                     #  1     0x674a0  3      OPC=cmpl_r32_imm8   
  movl %edi, %eax                                                     #  2     0x674a3  2      OPC=movl_r32_r32    
  movl $0x40, %ecx                                                    #  3     0x674a5  5      OPC=movl_r32_imm32  
  je .L_674c0                                                         #  4     0x674aa  2      OPC=je_label        
  cmpl $0xa, %esi                                                     #  5     0x674ac  3      OPC=cmpl_r32_imm8   
  movb $0x2, %cl                                                      #  6     0x674af  2      OPC=movb_r8_imm8    
  je .L_674c0                                                         #  7     0x674b1  2      OPC=je_label        
  xorl %ecx, %ecx                                                     #  8     0x674b3  2      OPC=xorl_r32_r32    
  cmpl $0x10, %esi                                                    #  9     0x674b5  3      OPC=cmpl_r32_imm8   
  sete %cl                                                            #  10    0x674b8  3      OPC=sete_r8         
  shll $0x3, %ecx                                                     #  11    0x674bb  3      OPC=shll_r32_imm8   
  xchgw %ax, %ax                                                      #  12    0x674be  2      OPC=xchgw_ax_r16    
.L_674c0:                                                             #        0x674c0  0      OPC=<label>         
  movl %eax, %eax                                                     #  13    0x674c0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                            #  14    0x674c2  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                     #  15    0x674c6  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                     #  16    0x674c9  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %esi                                            #  17    0x674cb  4      OPC=movl_r32_m32    
  addl %eax, %esi                                                     #  18    0x674cf  2      OPC=addl_r32_r32    
  movl %esi, %esi                                                     #  19    0x674d1  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rsi,1), %edx                                         #  20    0x674d3  5      OPC=movl_r32_m32    
  andl $0xffffffb5, %edx                                              #  21    0x674d8  6      OPC=andl_r32_imm32  
  nop                                                                 #  22    0x674de  1      OPC=nop             
  nop                                                                 #  23    0x674df  1      OPC=nop             
  nop                                                                 #  24    0x674e0  1      OPC=nop             
  orl %ecx, %edx                                                      #  25    0x674e1  2      OPC=orl_r32_r32     
  nop                                                                 #  26    0x674e3  1      OPC=nop             
  nop                                                                 #  27    0x674e4  1      OPC=nop             
  nop                                                                 #  28    0x674e5  1      OPC=nop             
  movl %esi, %esi                                                     #  29    0x674e6  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)                                         #  30    0x674e8  5      OPC=movl_m32_r32    
  popq %r11                                                           #  31    0x674ed  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  32    0x674ef  7      OPC=andl_r32_imm32  
  nop                                                                 #  33    0x674f6  1      OPC=nop             
  nop                                                                 #  34    0x674f7  1      OPC=nop             
  nop                                                                 #  35    0x674f8  1      OPC=nop             
  nop                                                                 #  36    0x674f9  1      OPC=nop             
  addq %r15, %r11                                                     #  37    0x674fa  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  38    0x674fd  3      OPC=jmpq_r64        
  nop                                                                 #  39    0x67500  1      OPC=nop             
  nop                                                                 #  40    0x67501  1      OPC=nop             
  nop                                                                 #  41    0x67502  1      OPC=nop             
  nop                                                                 #  42    0x67503  1      OPC=nop             
  nop                                                                 #  43    0x67504  1      OPC=nop             
  nop                                                                 #  44    0x67505  1      OPC=nop             
  nop                                                                 #  45    0x67506  1      OPC=nop             
  nop                                                                 #  46    0x67507  1      OPC=nop             
  nop                                                                 #  47    0x67508  1      OPC=nop             
  nop                                                                 #  48    0x67509  1      OPC=nop             
  nop                                                                 #  49    0x6750a  1      OPC=nop             
  nop                                                                 #  50    0x6750b  1      OPC=nop             
  nop                                                                 #  51    0x6750c  1      OPC=nop             
                                                                                                                   
.size _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase, .-_ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase

