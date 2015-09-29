  .text
  .globl _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase
  .type _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase, @function

#! file-offset 0xa7bc0
#! rip-offset  0x67bc0
#! capacity    96 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase:  #        0x67bc0  0      OPC=<label>         
  cmpl $0x8, %esi                                                     #  1     0x67bc0  3      OPC=cmpl_r32_imm8   
  movl %edi, %eax                                                     #  2     0x67bc3  2      OPC=movl_r32_r32    
  movl $0x40, %ecx                                                    #  3     0x67bc5  5      OPC=movl_r32_imm32  
  je .L_67be0                                                         #  4     0x67bca  2      OPC=je_label        
  cmpl $0xa, %esi                                                     #  5     0x67bcc  3      OPC=cmpl_r32_imm8   
  movb $0x2, %cl                                                      #  6     0x67bcf  2      OPC=movb_r8_imm8    
  je .L_67be0                                                         #  7     0x67bd1  2      OPC=je_label        
  xorl %ecx, %ecx                                                     #  8     0x67bd3  2      OPC=xorl_r32_r32    
  cmpl $0x10, %esi                                                    #  9     0x67bd5  3      OPC=cmpl_r32_imm8   
  sete %cl                                                            #  10    0x67bd8  3      OPC=sete_r8         
  shll $0x3, %ecx                                                     #  11    0x67bdb  3      OPC=shll_r32_imm8   
  xchgw %ax, %ax                                                      #  12    0x67bde  2      OPC=xchgw_ax_r16    
.L_67be0:                                                             #        0x67be0  0      OPC=<label>         
  movl %eax, %eax                                                     #  13    0x67be0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                            #  14    0x67be2  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                     #  15    0x67be6  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                     #  16    0x67be9  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %esi                                            #  17    0x67beb  4      OPC=movl_r32_m32    
  addl %eax, %esi                                                     #  18    0x67bef  2      OPC=addl_r32_r32    
  movl %esi, %esi                                                     #  19    0x67bf1  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rsi,1), %edx                                         #  20    0x67bf3  5      OPC=movl_r32_m32    
  andl $0xffffffb5, %edx                                              #  21    0x67bf8  6      OPC=andl_r32_imm32  
  nop                                                                 #  22    0x67bfe  1      OPC=nop             
  nop                                                                 #  23    0x67bff  1      OPC=nop             
  nop                                                                 #  24    0x67c00  1      OPC=nop             
  orl %ecx, %edx                                                      #  25    0x67c01  2      OPC=orl_r32_r32     
  nop                                                                 #  26    0x67c03  1      OPC=nop             
  nop                                                                 #  27    0x67c04  1      OPC=nop             
  nop                                                                 #  28    0x67c05  1      OPC=nop             
  movl %esi, %esi                                                     #  29    0x67c06  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)                                         #  30    0x67c08  5      OPC=movl_m32_r32    
  popq %r11                                                           #  31    0x67c0d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  32    0x67c0f  7      OPC=andl_r32_imm32  
  nop                                                                 #  33    0x67c16  1      OPC=nop             
  nop                                                                 #  34    0x67c17  1      OPC=nop             
  nop                                                                 #  35    0x67c18  1      OPC=nop             
  nop                                                                 #  36    0x67c19  1      OPC=nop             
  addq %r15, %r11                                                     #  37    0x67c1a  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  38    0x67c1d  3      OPC=jmpq_r64        
  nop                                                                 #  39    0x67c20  1      OPC=nop             
  nop                                                                 #  40    0x67c21  1      OPC=nop             
  nop                                                                 #  41    0x67c22  1      OPC=nop             
  nop                                                                 #  42    0x67c23  1      OPC=nop             
  nop                                                                 #  43    0x67c24  1      OPC=nop             
  nop                                                                 #  44    0x67c25  1      OPC=nop             
  nop                                                                 #  45    0x67c26  1      OPC=nop             
  nop                                                                 #  46    0x67c27  1      OPC=nop             
  nop                                                                 #  47    0x67c28  1      OPC=nop             
  nop                                                                 #  48    0x67c29  1      OPC=nop             
  nop                                                                 #  49    0x67c2a  1      OPC=nop             
  nop                                                                 #  50    0x67c2b  1      OPC=nop             
  nop                                                                 #  51    0x67c2c  1      OPC=nop             
                                                                                                                   
.size _ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase, .-_ZStrsIwSt11char_traitsIwEERSt13basic_istreamIT_T0_ES6_St8_Setbase

