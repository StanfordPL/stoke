  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw, @function

#! file-offset 0x11a160
#! rip-offset  0xda160
#! capacity    96 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw:                #        0xda160  0      OPC=<label>         
  movl %edi, %edi                                             #  1     0xda160  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                             #  2     0xda162  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                             #  3     0xda165  3      OPC=addq_r64_r64    
  movl %edx, %eax                                             #  4     0xda168  2      OPC=movl_r32_r32    
  movl %edi, %edi                                             #  5     0xda16a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx                                    #  6     0xda16c  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                             #  7     0xda170  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                             #  8     0xda173  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                    #  9     0xda175  4      OPC=movl_r32_m32    
  cmpl %edx, %esi                                             #  10    0xda179  2      OPC=cmpl_r32_r32    
  nop                                                         #  11    0xda17b  1      OPC=nop             
  nop                                                         #  12    0xda17c  1      OPC=nop             
  nop                                                         #  13    0xda17d  1      OPC=nop             
  nop                                                         #  14    0xda17e  1      OPC=nop             
  nop                                                         #  15    0xda17f  1      OPC=nop             
  ja .L_da1a0                                                 #  16    0xda180  2      OPC=ja_label        
  subl %esi, %edx                                             #  17    0xda182  2      OPC=subl_r32_r32    
  cmpl %eax, %edx                                             #  18    0xda184  2      OPC=cmpl_r32_r32    
  cmoval %eax, %edx                                           #  19    0xda186  3      OPC=cmoval_r32_r32  
  addl $0x8, %esp                                             #  20    0xda189  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                             #  21    0xda18c  3      OPC=addq_r64_r64    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw  #  22    0xda18f  5      OPC=jmpq_label_1    
  nop                                                         #  23    0xda194  1      OPC=nop             
  nop                                                         #  24    0xda195  1      OPC=nop             
  nop                                                         #  25    0xda196  1      OPC=nop             
  nop                                                         #  26    0xda197  1      OPC=nop             
  nop                                                         #  27    0xda198  1      OPC=nop             
  nop                                                         #  28    0xda199  1      OPC=nop             
  nop                                                         #  29    0xda19a  1      OPC=nop             
  nop                                                         #  30    0xda19b  1      OPC=nop             
  nop                                                         #  31    0xda19c  1      OPC=nop             
  nop                                                         #  32    0xda19d  1      OPC=nop             
  nop                                                         #  33    0xda19e  1      OPC=nop             
  nop                                                         #  34    0xda19f  1      OPC=nop             
.L_da1a0:                                                     #        0xda1a0  0      OPC=<label>         
  movl $0x1003bb5d, %edi                                      #  35    0xda1a0  5      OPC=movl_r32_imm32  
  nop                                                         #  36    0xda1a5  1      OPC=nop             
  nop                                                         #  37    0xda1a6  1      OPC=nop             
  nop                                                         #  38    0xda1a7  1      OPC=nop             
  nop                                                         #  39    0xda1a8  1      OPC=nop             
  nop                                                         #  40    0xda1a9  1      OPC=nop             
  nop                                                         #  41    0xda1aa  1      OPC=nop             
  nop                                                         #  42    0xda1ab  1      OPC=nop             
  nop                                                         #  43    0xda1ac  1      OPC=nop             
  nop                                                         #  44    0xda1ad  1      OPC=nop             
  nop                                                         #  45    0xda1ae  1      OPC=nop             
  nop                                                         #  46    0xda1af  1      OPC=nop             
  nop                                                         #  47    0xda1b0  1      OPC=nop             
  nop                                                         #  48    0xda1b1  1      OPC=nop             
  nop                                                         #  49    0xda1b2  1      OPC=nop             
  nop                                                         #  50    0xda1b3  1      OPC=nop             
  nop                                                         #  51    0xda1b4  1      OPC=nop             
  nop                                                         #  52    0xda1b5  1      OPC=nop             
  nop                                                         #  53    0xda1b6  1      OPC=nop             
  nop                                                         #  54    0xda1b7  1      OPC=nop             
  nop                                                         #  55    0xda1b8  1      OPC=nop             
  nop                                                         #  56    0xda1b9  1      OPC=nop             
  nop                                                         #  57    0xda1ba  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                        #  58    0xda1bb  5      OPC=callq_label     
                                                                                                           
.size _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw, .-_ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw

