  .text
  .globl _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase
  .type _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase, @function

#! file-offset 0xdcfc0
#! rip-offset  0x9cfc0
#! capacity    96 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase:  #        0x9cfc0  0      OPC=<label>         
  cmpl $0x8, %esi                                                     #  1     0x9cfc0  3      OPC=cmpl_r32_imm8   
  movl %edi, %eax                                                     #  2     0x9cfc3  2      OPC=movl_r32_r32    
  movl $0x40, %ecx                                                    #  3     0x9cfc5  5      OPC=movl_r32_imm32  
  je .L_9cfe0                                                         #  4     0x9cfca  2      OPC=je_label        
  cmpl $0xa, %esi                                                     #  5     0x9cfcc  3      OPC=cmpl_r32_imm8   
  movb $0x2, %cl                                                      #  6     0x9cfcf  2      OPC=movb_r8_imm8    
  je .L_9cfe0                                                         #  7     0x9cfd1  2      OPC=je_label        
  xorl %ecx, %ecx                                                     #  8     0x9cfd3  2      OPC=xorl_r32_r32    
  cmpl $0x10, %esi                                                    #  9     0x9cfd5  3      OPC=cmpl_r32_imm8   
  sete %cl                                                            #  10    0x9cfd8  3      OPC=sete_r8         
  shll $0x3, %ecx                                                     #  11    0x9cfdb  3      OPC=shll_r32_imm8   
  xchgw %ax, %ax                                                      #  12    0x9cfde  2      OPC=xchgw_ax_r16    
.L_9cfe0:                                                             #        0x9cfe0  0      OPC=<label>         
  movl %eax, %eax                                                     #  13    0x9cfe0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                            #  14    0x9cfe2  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                     #  15    0x9cfe6  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                     #  16    0x9cfe9  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %esi                                            #  17    0x9cfeb  4      OPC=movl_r32_m32    
  addl %eax, %esi                                                     #  18    0x9cfef  2      OPC=addl_r32_r32    
  movl %esi, %esi                                                     #  19    0x9cff1  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rsi,1), %edx                                         #  20    0x9cff3  5      OPC=movl_r32_m32    
  andl $0xffffffb5, %edx                                              #  21    0x9cff8  6      OPC=andl_r32_imm32  
  nop                                                                 #  22    0x9cffe  1      OPC=nop             
  nop                                                                 #  23    0x9cfff  1      OPC=nop             
  nop                                                                 #  24    0x9d000  1      OPC=nop             
  orl %ecx, %edx                                                      #  25    0x9d001  2      OPC=orl_r32_r32     
  nop                                                                 #  26    0x9d003  1      OPC=nop             
  nop                                                                 #  27    0x9d004  1      OPC=nop             
  nop                                                                 #  28    0x9d005  1      OPC=nop             
  movl %esi, %esi                                                     #  29    0x9d006  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)                                         #  30    0x9d008  5      OPC=movl_m32_r32    
  popq %r11                                                           #  31    0x9d00d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  32    0x9d00f  7      OPC=andl_r32_imm32  
  nop                                                                 #  33    0x9d016  1      OPC=nop             
  nop                                                                 #  34    0x9d017  1      OPC=nop             
  nop                                                                 #  35    0x9d018  1      OPC=nop             
  nop                                                                 #  36    0x9d019  1      OPC=nop             
  addq %r15, %r11                                                     #  37    0x9d01a  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  38    0x9d01d  3      OPC=jmpq_r64        
  nop                                                                 #  39    0x9d020  1      OPC=nop             
  nop                                                                 #  40    0x9d021  1      OPC=nop             
  nop                                                                 #  41    0x9d022  1      OPC=nop             
  nop                                                                 #  42    0x9d023  1      OPC=nop             
  nop                                                                 #  43    0x9d024  1      OPC=nop             
  nop                                                                 #  44    0x9d025  1      OPC=nop             
  nop                                                                 #  45    0x9d026  1      OPC=nop             
  nop                                                                 #  46    0x9d027  1      OPC=nop             
  nop                                                                 #  47    0x9d028  1      OPC=nop             
  nop                                                                 #  48    0x9d029  1      OPC=nop             
  nop                                                                 #  49    0x9d02a  1      OPC=nop             
  nop                                                                 #  50    0x9d02b  1      OPC=nop             
  nop                                                                 #  51    0x9d02c  1      OPC=nop             
                                                                                                                   
.size _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase, .-_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase

