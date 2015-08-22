  .text
  .globl _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_Setbase
  .type _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_Setbase, @function

#! file-offset 0xdd940
#! rip-offset  0x9d940
#! capacity    96 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_Setbase:  #        0x9d940  0      OPC=<label>         
  cmpl $0x8, %esi                                                     #  1     0x9d940  3      OPC=cmpl_r32_imm8   
  movl %edi, %eax                                                     #  2     0x9d943  2      OPC=movl_r32_r32    
  movl $0x40, %ecx                                                    #  3     0x9d945  5      OPC=movl_r32_imm32  
  je .L_9d960                                                         #  4     0x9d94a  2      OPC=je_label        
  cmpl $0xa, %esi                                                     #  5     0x9d94c  3      OPC=cmpl_r32_imm8   
  movb $0x2, %cl                                                      #  6     0x9d94f  2      OPC=movb_r8_imm8    
  je .L_9d960                                                         #  7     0x9d951  2      OPC=je_label        
  xorl %ecx, %ecx                                                     #  8     0x9d953  2      OPC=xorl_r32_r32    
  cmpl $0x10, %esi                                                    #  9     0x9d955  3      OPC=cmpl_r32_imm8   
  sete %cl                                                            #  10    0x9d958  3      OPC=sete_r8         
  shll $0x3, %ecx                                                     #  11    0x9d95b  3      OPC=shll_r32_imm8   
  xchgw %ax, %ax                                                      #  12    0x9d95e  2      OPC=xchgw_ax_r16    
.L_9d960:                                                             #        0x9d960  0      OPC=<label>         
  movl %eax, %eax                                                     #  13    0x9d960  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                            #  14    0x9d962  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                     #  15    0x9d966  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                     #  16    0x9d969  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %esi                                            #  17    0x9d96b  4      OPC=movl_r32_m32    
  addl %eax, %esi                                                     #  18    0x9d96f  2      OPC=addl_r32_r32    
  movl %esi, %esi                                                     #  19    0x9d971  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rsi,1), %edx                                         #  20    0x9d973  5      OPC=movl_r32_m32    
  andl $0xffffffb5, %edx                                              #  21    0x9d978  6      OPC=andl_r32_imm32  
  nop                                                                 #  22    0x9d97e  1      OPC=nop             
  nop                                                                 #  23    0x9d97f  1      OPC=nop             
  nop                                                                 #  24    0x9d980  1      OPC=nop             
  orl %ecx, %edx                                                      #  25    0x9d981  2      OPC=orl_r32_r32     
  nop                                                                 #  26    0x9d983  1      OPC=nop             
  nop                                                                 #  27    0x9d984  1      OPC=nop             
  nop                                                                 #  28    0x9d985  1      OPC=nop             
  movl %esi, %esi                                                     #  29    0x9d986  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)                                         #  30    0x9d988  5      OPC=movl_m32_r32    
  popq %r11                                                           #  31    0x9d98d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  32    0x9d98f  7      OPC=andl_r32_imm32  
  nop                                                                 #  33    0x9d996  1      OPC=nop             
  nop                                                                 #  34    0x9d997  1      OPC=nop             
  nop                                                                 #  35    0x9d998  1      OPC=nop             
  nop                                                                 #  36    0x9d999  1      OPC=nop             
  addq %r15, %r11                                                     #  37    0x9d99a  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  38    0x9d99d  3      OPC=jmpq_r64        
  nop                                                                 #  39    0x9d9a0  1      OPC=nop             
  nop                                                                 #  40    0x9d9a1  1      OPC=nop             
  nop                                                                 #  41    0x9d9a2  1      OPC=nop             
  nop                                                                 #  42    0x9d9a3  1      OPC=nop             
  nop                                                                 #  43    0x9d9a4  1      OPC=nop             
  nop                                                                 #  44    0x9d9a5  1      OPC=nop             
  nop                                                                 #  45    0x9d9a6  1      OPC=nop             
  nop                                                                 #  46    0x9d9a7  1      OPC=nop             
  nop                                                                 #  47    0x9d9a8  1      OPC=nop             
  nop                                                                 #  48    0x9d9a9  1      OPC=nop             
  nop                                                                 #  49    0x9d9aa  1      OPC=nop             
  nop                                                                 #  50    0x9d9ab  1      OPC=nop             
  nop                                                                 #  51    0x9d9ac  1      OPC=nop             
                                                                                                                   
.size _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_Setbase, .-_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_Setbase

