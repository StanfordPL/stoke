  .text
  .globl _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase
  .type _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase, @function

#! file-offset 0xdd6e0
#! rip-offset  0x9d6e0
#! capacity    96 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase:  #        0x9d6e0  0      OPC=<label>         
  cmpl $0x8, %esi                                                     #  1     0x9d6e0  3      OPC=cmpl_r32_imm8   
  movl %edi, %eax                                                     #  2     0x9d6e3  2      OPC=movl_r32_r32    
  movl $0x40, %ecx                                                    #  3     0x9d6e5  5      OPC=movl_r32_imm32  
  je .L_9d700                                                         #  4     0x9d6ea  2      OPC=je_label        
  cmpl $0xa, %esi                                                     #  5     0x9d6ec  3      OPC=cmpl_r32_imm8   
  movb $0x2, %cl                                                      #  6     0x9d6ef  2      OPC=movb_r8_imm8    
  je .L_9d700                                                         #  7     0x9d6f1  2      OPC=je_label        
  xorl %ecx, %ecx                                                     #  8     0x9d6f3  2      OPC=xorl_r32_r32    
  cmpl $0x10, %esi                                                    #  9     0x9d6f5  3      OPC=cmpl_r32_imm8   
  sete %cl                                                            #  10    0x9d6f8  3      OPC=sete_r8         
  shll $0x3, %ecx                                                     #  11    0x9d6fb  3      OPC=shll_r32_imm8   
  xchgw %ax, %ax                                                      #  12    0x9d6fe  2      OPC=xchgw_ax_r16    
.L_9d700:                                                             #        0x9d700  0      OPC=<label>         
  movl %eax, %eax                                                     #  13    0x9d700  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                            #  14    0x9d702  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                     #  15    0x9d706  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                     #  16    0x9d709  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %esi                                            #  17    0x9d70b  4      OPC=movl_r32_m32    
  addl %eax, %esi                                                     #  18    0x9d70f  2      OPC=addl_r32_r32    
  movl %esi, %esi                                                     #  19    0x9d711  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rsi,1), %edx                                         #  20    0x9d713  5      OPC=movl_r32_m32    
  andl $0xffffffb5, %edx                                              #  21    0x9d718  6      OPC=andl_r32_imm32  
  nop                                                                 #  22    0x9d71e  1      OPC=nop             
  nop                                                                 #  23    0x9d71f  1      OPC=nop             
  nop                                                                 #  24    0x9d720  1      OPC=nop             
  orl %ecx, %edx                                                      #  25    0x9d721  2      OPC=orl_r32_r32     
  nop                                                                 #  26    0x9d723  1      OPC=nop             
  nop                                                                 #  27    0x9d724  1      OPC=nop             
  nop                                                                 #  28    0x9d725  1      OPC=nop             
  movl %esi, %esi                                                     #  29    0x9d726  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)                                         #  30    0x9d728  5      OPC=movl_m32_r32    
  popq %r11                                                           #  31    0x9d72d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  32    0x9d72f  7      OPC=andl_r32_imm32  
  nop                                                                 #  33    0x9d736  1      OPC=nop             
  nop                                                                 #  34    0x9d737  1      OPC=nop             
  nop                                                                 #  35    0x9d738  1      OPC=nop             
  nop                                                                 #  36    0x9d739  1      OPC=nop             
  addq %r15, %r11                                                     #  37    0x9d73a  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  38    0x9d73d  3      OPC=jmpq_r64        
  nop                                                                 #  39    0x9d740  1      OPC=nop             
  nop                                                                 #  40    0x9d741  1      OPC=nop             
  nop                                                                 #  41    0x9d742  1      OPC=nop             
  nop                                                                 #  42    0x9d743  1      OPC=nop             
  nop                                                                 #  43    0x9d744  1      OPC=nop             
  nop                                                                 #  44    0x9d745  1      OPC=nop             
  nop                                                                 #  45    0x9d746  1      OPC=nop             
  nop                                                                 #  46    0x9d747  1      OPC=nop             
  nop                                                                 #  47    0x9d748  1      OPC=nop             
  nop                                                                 #  48    0x9d749  1      OPC=nop             
  nop                                                                 #  49    0x9d74a  1      OPC=nop             
  nop                                                                 #  50    0x9d74b  1      OPC=nop             
  nop                                                                 #  51    0x9d74c  1      OPC=nop             
                                                                                                                   
.size _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase, .-_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase

