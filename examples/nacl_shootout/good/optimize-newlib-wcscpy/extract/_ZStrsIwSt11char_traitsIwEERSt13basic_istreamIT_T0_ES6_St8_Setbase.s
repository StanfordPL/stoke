  .text
  .globl _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase
  .type _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase, @function

#! file-offset 0xa71a0
#! rip-offset  0x671a0
#! capacity    96 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase:  #        0x671a0  0      OPC=<label>         
  cmpl $0x8, %esi                                                     #  1     0x671a0  3      OPC=cmpl_r32_imm8   
  movl %edi, %eax                                                     #  2     0x671a3  2      OPC=movl_r32_r32    
  movl $0x40, %ecx                                                    #  3     0x671a5  5      OPC=movl_r32_imm32  
  je .L_671c0                                                         #  4     0x671aa  2      OPC=je_label        
  cmpl $0xa, %esi                                                     #  5     0x671ac  3      OPC=cmpl_r32_imm8   
  movb $0x2, %cl                                                      #  6     0x671af  2      OPC=movb_r8_imm8    
  je .L_671c0                                                         #  7     0x671b1  2      OPC=je_label        
  xorl %ecx, %ecx                                                     #  8     0x671b3  2      OPC=xorl_r32_r32    
  cmpl $0x10, %esi                                                    #  9     0x671b5  3      OPC=cmpl_r32_imm8   
  sete %cl                                                            #  10    0x671b8  3      OPC=sete_r8         
  shll $0x3, %ecx                                                     #  11    0x671bb  3      OPC=shll_r32_imm8   
  xchgw %ax, %ax                                                      #  12    0x671be  2      OPC=xchgw_ax_r16    
.L_671c0:                                                             #        0x671c0  0      OPC=<label>         
  movl %eax, %eax                                                     #  13    0x671c0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                            #  14    0x671c2  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                     #  15    0x671c6  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                     #  16    0x671c9  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %esi                                            #  17    0x671cb  4      OPC=movl_r32_m32    
  addl %eax, %esi                                                     #  18    0x671cf  2      OPC=addl_r32_r32    
  movl %esi, %esi                                                     #  19    0x671d1  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rsi,1), %edx                                         #  20    0x671d3  5      OPC=movl_r32_m32    
  andl $0xffffffb5, %edx                                              #  21    0x671d8  6      OPC=andl_r32_imm32  
  nop                                                                 #  22    0x671de  1      OPC=nop             
  nop                                                                 #  23    0x671df  1      OPC=nop             
  nop                                                                 #  24    0x671e0  1      OPC=nop             
  orl %ecx, %edx                                                      #  25    0x671e1  2      OPC=orl_r32_r32     
  nop                                                                 #  26    0x671e3  1      OPC=nop             
  nop                                                                 #  27    0x671e4  1      OPC=nop             
  nop                                                                 #  28    0x671e5  1      OPC=nop             
  movl %esi, %esi                                                     #  29    0x671e6  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)                                         #  30    0x671e8  5      OPC=movl_m32_r32    
  popq %r11                                                           #  31    0x671ed  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  32    0x671ef  7      OPC=andl_r32_imm32  
  nop                                                                 #  33    0x671f6  1      OPC=nop             
  nop                                                                 #  34    0x671f7  1      OPC=nop             
  nop                                                                 #  35    0x671f8  1      OPC=nop             
  nop                                                                 #  36    0x671f9  1      OPC=nop             
  addq %r15, %r11                                                     #  37    0x671fa  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  38    0x671fd  3      OPC=jmpq_r64        
  nop                                                                 #  39    0x67200  1      OPC=nop             
  nop                                                                 #  40    0x67201  1      OPC=nop             
  nop                                                                 #  41    0x67202  1      OPC=nop             
  nop                                                                 #  42    0x67203  1      OPC=nop             
  nop                                                                 #  43    0x67204  1      OPC=nop             
  nop                                                                 #  44    0x67205  1      OPC=nop             
  nop                                                                 #  45    0x67206  1      OPC=nop             
  nop                                                                 #  46    0x67207  1      OPC=nop             
  nop                                                                 #  47    0x67208  1      OPC=nop             
  nop                                                                 #  48    0x67209  1      OPC=nop             
  nop                                                                 #  49    0x6720a  1      OPC=nop             
  nop                                                                 #  50    0x6720b  1      OPC=nop             
  nop                                                                 #  51    0x6720c  1      OPC=nop             
                                                                                                                   
.size _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase, .-_ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase

