  .text
  .globl __get_current_time_locale
  .type __get_current_time_locale, @function

#! file-offset 0x175080
#! rip-offset  0x135080
#! capacity    64 bytes

# Text                        #  Line  RIP       Bytes  Opcode               
.__get_current_time_locale:   #        0x135080  0      OPC=<label>          
  movl 0xff440d6(%rip), %edx  #  1     0x135080  6      OPC=movl_r32_m32     
  movl $0x100468a0, %eax      #  2     0x135086  5      OPC=movl_r32_imm32   
  popq %r11                   #  3     0x13508b  2      OPC=popq_r64_1       
  testl %edx, %edx            #  4     0x13508d  2      OPC=testl_r32_r32    
  movl $0x10079060, %edx      #  5     0x13508f  5      OPC=movl_r32_imm32   
  cmovneq %rdx, %rax          #  6     0x135094  4      OPC=cmovneq_r64_r64  
  nop                         #  7     0x135098  1      OPC=nop              
  nop                         #  8     0x135099  1      OPC=nop              
  nop                         #  9     0x13509a  1      OPC=nop              
  nop                         #  10    0x13509b  1      OPC=nop              
  nop                         #  11    0x13509c  1      OPC=nop              
  nop                         #  12    0x13509d  1      OPC=nop              
  nop                         #  13    0x13509e  1      OPC=nop              
  nop                         #  14    0x13509f  1      OPC=nop              
  andl $0xffffffe0, %r11d     #  15    0x1350a0  7      OPC=andl_r32_imm32   
  nop                         #  16    0x1350a7  1      OPC=nop              
  nop                         #  17    0x1350a8  1      OPC=nop              
  nop                         #  18    0x1350a9  1      OPC=nop              
  nop                         #  19    0x1350aa  1      OPC=nop              
  addq %r15, %r11             #  20    0x1350ab  3      OPC=addq_r64_r64     
  jmpq %r11                   #  21    0x1350ae  3      OPC=jmpq_r64         
  nop                         #  22    0x1350b1  1      OPC=nop              
  nop                         #  23    0x1350b2  1      OPC=nop              
  nop                         #  24    0x1350b3  1      OPC=nop              
  nop                         #  25    0x1350b4  1      OPC=nop              
  nop                         #  26    0x1350b5  1      OPC=nop              
  nop                         #  27    0x1350b6  1      OPC=nop              
  nop                         #  28    0x1350b7  1      OPC=nop              
  nop                         #  29    0x1350b8  1      OPC=nop              
  nop                         #  30    0x1350b9  1      OPC=nop              
  nop                         #  31    0x1350ba  1      OPC=nop              
  nop                         #  32    0x1350bb  1      OPC=nop              
  nop                         #  33    0x1350bc  1      OPC=nop              
  nop                         #  34    0x1350bd  1      OPC=nop              
  nop                         #  35    0x1350be  1      OPC=nop              
  nop                         #  36    0x1350bf  1      OPC=nop              
  nop                         #  37    0x1350c0  1      OPC=nop              
  nop                         #  38    0x1350c1  1      OPC=nop              
  nop                         #  39    0x1350c2  1      OPC=nop              
  nop                         #  40    0x1350c3  1      OPC=nop              
  nop                         #  41    0x1350c4  1      OPC=nop              
  nop                         #  42    0x1350c5  1      OPC=nop              
  nop                         #  43    0x1350c6  1      OPC=nop              
                                                                             
.size __get_current_time_locale, .-__get_current_time_locale

