  .text
  .globl _ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St8_Setbase
  .type _ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St8_Setbase, @function

#! file-offset 0xa6f20
#! rip-offset  0x66f20
#! capacity    96 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St8_Setbase:  #        0x66f20  0      OPC=<label>         
  cmpl $0x8, %esi                                                     #  1     0x66f20  3      OPC=cmpl_r32_imm8   
  movl %edi, %eax                                                     #  2     0x66f23  2      OPC=movl_r32_r32    
  movl $0x40, %ecx                                                    #  3     0x66f25  5      OPC=movl_r32_imm32  
  je .L_66f40                                                         #  4     0x66f2a  2      OPC=je_label        
  cmpl $0xa, %esi                                                     #  5     0x66f2c  3      OPC=cmpl_r32_imm8   
  movb $0x2, %cl                                                      #  6     0x66f2f  2      OPC=movb_r8_imm8    
  je .L_66f40                                                         #  7     0x66f31  2      OPC=je_label        
  xorl %ecx, %ecx                                                     #  8     0x66f33  2      OPC=xorl_r32_r32    
  cmpl $0x10, %esi                                                    #  9     0x66f35  3      OPC=cmpl_r32_imm8   
  sete %cl                                                            #  10    0x66f38  3      OPC=sete_r8         
  shll $0x3, %ecx                                                     #  11    0x66f3b  3      OPC=shll_r32_imm8   
  xchgw %ax, %ax                                                      #  12    0x66f3e  2      OPC=xchgw_ax_r16    
.L_66f40:                                                             #        0x66f40  0      OPC=<label>         
  movl %eax, %eax                                                     #  13    0x66f40  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                            #  14    0x66f42  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                     #  15    0x66f46  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                     #  16    0x66f49  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %esi                                            #  17    0x66f4b  4      OPC=movl_r32_m32    
  addl %eax, %esi                                                     #  18    0x66f4f  2      OPC=addl_r32_r32    
  movl %esi, %esi                                                     #  19    0x66f51  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rsi,1), %edx                                         #  20    0x66f53  5      OPC=movl_r32_m32    
  andl $0xffffffb5, %edx                                              #  21    0x66f58  6      OPC=andl_r32_imm32  
  nop                                                                 #  22    0x66f5e  1      OPC=nop             
  nop                                                                 #  23    0x66f5f  1      OPC=nop             
  nop                                                                 #  24    0x66f60  1      OPC=nop             
  orl %ecx, %edx                                                      #  25    0x66f61  2      OPC=orl_r32_r32     
  nop                                                                 #  26    0x66f63  1      OPC=nop             
  nop                                                                 #  27    0x66f64  1      OPC=nop             
  nop                                                                 #  28    0x66f65  1      OPC=nop             
  movl %esi, %esi                                                     #  29    0x66f66  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)                                         #  30    0x66f68  5      OPC=movl_m32_r32    
  popq %r11                                                           #  31    0x66f6d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  32    0x66f6f  7      OPC=andl_r32_imm32  
  nop                                                                 #  33    0x66f76  1      OPC=nop             
  nop                                                                 #  34    0x66f77  1      OPC=nop             
  nop                                                                 #  35    0x66f78  1      OPC=nop             
  nop                                                                 #  36    0x66f79  1      OPC=nop             
  addq %r15, %r11                                                     #  37    0x66f7a  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  38    0x66f7d  3      OPC=jmpq_r64        
  nop                                                                 #  39    0x66f80  1      OPC=nop             
  nop                                                                 #  40    0x66f81  1      OPC=nop             
  nop                                                                 #  41    0x66f82  1      OPC=nop             
  nop                                                                 #  42    0x66f83  1      OPC=nop             
  nop                                                                 #  43    0x66f84  1      OPC=nop             
  nop                                                                 #  44    0x66f85  1      OPC=nop             
  nop                                                                 #  45    0x66f86  1      OPC=nop             
  nop                                                                 #  46    0x66f87  1      OPC=nop             
  nop                                                                 #  47    0x66f88  1      OPC=nop             
  nop                                                                 #  48    0x66f89  1      OPC=nop             
  nop                                                                 #  49    0x66f8a  1      OPC=nop             
  nop                                                                 #  50    0x66f8b  1      OPC=nop             
  nop                                                                 #  51    0x66f8c  1      OPC=nop             
                                                                                                                   
.size _ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St8_Setbase, .-_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_St8_Setbase

