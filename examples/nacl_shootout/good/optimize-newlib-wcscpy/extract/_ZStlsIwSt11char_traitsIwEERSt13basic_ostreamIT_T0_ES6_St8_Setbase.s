  .text
  .globl _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_Setbase
  .type _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_Setbase, @function

#! file-offset 0xdcf20
#! rip-offset  0x9cf20
#! capacity    96 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_Setbase:  #        0x9cf20  0      OPC=<label>         
  cmpl $0x8, %esi                                                     #  1     0x9cf20  3      OPC=cmpl_r32_imm8   
  movl %edi, %eax                                                     #  2     0x9cf23  2      OPC=movl_r32_r32    
  movl $0x40, %ecx                                                    #  3     0x9cf25  5      OPC=movl_r32_imm32  
  je .L_9cf40                                                         #  4     0x9cf2a  2      OPC=je_label        
  cmpl $0xa, %esi                                                     #  5     0x9cf2c  3      OPC=cmpl_r32_imm8   
  movb $0x2, %cl                                                      #  6     0x9cf2f  2      OPC=movb_r8_imm8    
  je .L_9cf40                                                         #  7     0x9cf31  2      OPC=je_label        
  xorl %ecx, %ecx                                                     #  8     0x9cf33  2      OPC=xorl_r32_r32    
  cmpl $0x10, %esi                                                    #  9     0x9cf35  3      OPC=cmpl_r32_imm8   
  sete %cl                                                            #  10    0x9cf38  3      OPC=sete_r8         
  shll $0x3, %ecx                                                     #  11    0x9cf3b  3      OPC=shll_r32_imm8   
  xchgw %ax, %ax                                                      #  12    0x9cf3e  2      OPC=xchgw_ax_r16    
.L_9cf40:                                                             #        0x9cf40  0      OPC=<label>         
  movl %eax, %eax                                                     #  13    0x9cf40  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                            #  14    0x9cf42  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                     #  15    0x9cf46  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                     #  16    0x9cf49  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %esi                                            #  17    0x9cf4b  4      OPC=movl_r32_m32    
  addl %eax, %esi                                                     #  18    0x9cf4f  2      OPC=addl_r32_r32    
  movl %esi, %esi                                                     #  19    0x9cf51  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rsi,1), %edx                                         #  20    0x9cf53  5      OPC=movl_r32_m32    
  andl $0xffffffb5, %edx                                              #  21    0x9cf58  6      OPC=andl_r32_imm32  
  nop                                                                 #  22    0x9cf5e  1      OPC=nop             
  nop                                                                 #  23    0x9cf5f  1      OPC=nop             
  nop                                                                 #  24    0x9cf60  1      OPC=nop             
  orl %ecx, %edx                                                      #  25    0x9cf61  2      OPC=orl_r32_r32     
  nop                                                                 #  26    0x9cf63  1      OPC=nop             
  nop                                                                 #  27    0x9cf64  1      OPC=nop             
  nop                                                                 #  28    0x9cf65  1      OPC=nop             
  movl %esi, %esi                                                     #  29    0x9cf66  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)                                         #  30    0x9cf68  5      OPC=movl_m32_r32    
  popq %r11                                                           #  31    0x9cf6d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  32    0x9cf6f  7      OPC=andl_r32_imm32  
  nop                                                                 #  33    0x9cf76  1      OPC=nop             
  nop                                                                 #  34    0x9cf77  1      OPC=nop             
  nop                                                                 #  35    0x9cf78  1      OPC=nop             
  nop                                                                 #  36    0x9cf79  1      OPC=nop             
  addq %r15, %r11                                                     #  37    0x9cf7a  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  38    0x9cf7d  3      OPC=jmpq_r64        
  nop                                                                 #  39    0x9cf80  1      OPC=nop             
  nop                                                                 #  40    0x9cf81  1      OPC=nop             
  nop                                                                 #  41    0x9cf82  1      OPC=nop             
  nop                                                                 #  42    0x9cf83  1      OPC=nop             
  nop                                                                 #  43    0x9cf84  1      OPC=nop             
  nop                                                                 #  44    0x9cf85  1      OPC=nop             
  nop                                                                 #  45    0x9cf86  1      OPC=nop             
  nop                                                                 #  46    0x9cf87  1      OPC=nop             
  nop                                                                 #  47    0x9cf88  1      OPC=nop             
  nop                                                                 #  48    0x9cf89  1      OPC=nop             
  nop                                                                 #  49    0x9cf8a  1      OPC=nop             
  nop                                                                 #  50    0x9cf8b  1      OPC=nop             
  nop                                                                 #  51    0x9cf8c  1      OPC=nop             
                                                                                                                   
.size _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_Setbase, .-_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_Setbase

