  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode, @function

#! file-offset 0xe8fc0
#! rip-offset  0xa8fc0
#! capacity    96 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode:  #        0xa8fc0  0      OPC=<label>         
  movl %edi, %edi                                                                                 #  1     0xa8fc0  2      OPC=movl_r32_r32    
  subl $0x38, %esp                                                                                #  2     0xa8fc2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  3     0xa8fc5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                 #  4     0xa8fc8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                        #  5     0xa8fca  4      OPC=movl_r32_m32    
  movq %rsi, 0x10(%rsp)                                                                           #  6     0xa8fce  5      OPC=movq_m64_r64    
  movq %rdx, 0x18(%rsp)                                                                           #  7     0xa8fd3  5      OPC=movq_m64_r64    
  movl %eax, %eax                                                                                 #  8     0xa8fd8  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                                                    #  9     0xa8fda  5      OPC=movl_r32_m32    
  nop                                                                                             #  10    0xa8fdf  1      OPC=nop             
  nop                                                                                             #  11    0xa8fe0  1      OPC=nop             
  nop                                                                                             #  12    0xa8fe1  1      OPC=nop             
  nop                                                                                             #  13    0xa8fe2  1      OPC=nop             
  nop                                                                                             #  14    0xa8fe3  1      OPC=nop             
  nop                                                                                             #  15    0xa8fe4  1      OPC=nop             
  nop                                                                                             #  16    0xa8fe5  1      OPC=nop             
  nop                                                                                             #  17    0xa8fe6  1      OPC=nop             
  nop                                                                                             #  18    0xa8fe7  1      OPC=nop             
  nop                                                                                             #  19    0xa8fe8  1      OPC=nop             
  nop                                                                                             #  20    0xa8fe9  1      OPC=nop             
  nop                                                                                             #  21    0xa8fea  1      OPC=nop             
  nop                                                                                             #  22    0xa8feb  1      OPC=nop             
  nop                                                                                             #  23    0xa8fec  1      OPC=nop             
  nop                                                                                             #  24    0xa8fed  1      OPC=nop             
  nop                                                                                             #  25    0xa8fee  1      OPC=nop             
  nop                                                                                             #  26    0xa8fef  1      OPC=nop             
  nop                                                                                             #  27    0xa8ff0  1      OPC=nop             
  nop                                                                                             #  28    0xa8ff1  1      OPC=nop             
  nop                                                                                             #  29    0xa8ff2  1      OPC=nop             
  nop                                                                                             #  30    0xa8ff3  1      OPC=nop             
  nop                                                                                             #  31    0xa8ff4  1      OPC=nop             
  nop                                                                                             #  32    0xa8ff5  1      OPC=nop             
  nop                                                                                             #  33    0xa8ff6  1      OPC=nop             
  nop                                                                                             #  34    0xa8ff7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                          #  35    0xa8ff8  6      OPC=andl_r32_imm32  
  nop                                                                                             #  36    0xa8ffe  1      OPC=nop             
  nop                                                                                             #  37    0xa8fff  1      OPC=nop             
  nop                                                                                             #  38    0xa9000  1      OPC=nop             
  addq %r15, %rax                                                                                 #  39    0xa9001  3      OPC=addq_r64_r64    
  callq %rax                                                                                      #  40    0xa9004  2      OPC=callq_r64       
  addl $0x38, %esp                                                                                #  41    0xa9006  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  42    0xa9009  3      OPC=addq_r64_r64    
  popq %r11                                                                                       #  43    0xa900c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  44    0xa900e  7      OPC=andl_r32_imm32  
  nop                                                                                             #  45    0xa9015  1      OPC=nop             
  nop                                                                                             #  46    0xa9016  1      OPC=nop             
  nop                                                                                             #  47    0xa9017  1      OPC=nop             
  nop                                                                                             #  48    0xa9018  1      OPC=nop             
  addq %r15, %r11                                                                                 #  49    0xa9019  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  50    0xa901c  3      OPC=jmpq_r64        
  nop                                                                                             #  51    0xa901f  1      OPC=nop             
  nop                                                                                             #  52    0xa9020  1      OPC=nop             
  nop                                                                                             #  53    0xa9021  1      OPC=nop             
  nop                                                                                             #  54    0xa9022  1      OPC=nop             
  nop                                                                                             #  55    0xa9023  1      OPC=nop             
  nop                                                                                             #  56    0xa9024  1      OPC=nop             
  nop                                                                                             #  57    0xa9025  1      OPC=nop             
  nop                                                                                             #  58    0xa9026  1      OPC=nop             
  nop                                                                                             #  59    0xa9027  1      OPC=nop             
  nop                                                                                             #  60    0xa9028  1      OPC=nop             
  nop                                                                                             #  61    0xa9029  1      OPC=nop             
  nop                                                                                             #  62    0xa902a  1      OPC=nop             
  nop                                                                                             #  63    0xa902b  1      OPC=nop             
  nop                                                                                             #  64    0xa902c  1      OPC=nop             
                                                                                                                                               
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode

