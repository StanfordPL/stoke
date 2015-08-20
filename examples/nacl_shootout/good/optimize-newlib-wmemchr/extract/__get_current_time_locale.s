  .text
  .globl __get_current_time_locale
  .type __get_current_time_locale, @function

#! file-offset 0x174960
#! rip-offset  0x134960
#! capacity    64 bytes

# Text                        #  Line  RIP       Bytes  Opcode               
.__get_current_time_locale:   #        0x134960  0      OPC=<label>          
  movl 0xff447f6(%rip), %edx  #  1     0x134960  6      OPC=movl_r32_m32     
  movl $0x100468a0, %eax      #  2     0x134966  5      OPC=movl_r32_imm32   
  popq %r11                   #  3     0x13496b  2      OPC=popq_r64_1       
  testl %edx, %edx            #  4     0x13496d  2      OPC=testl_r32_r32    
  movl $0x10079060, %edx      #  5     0x13496f  5      OPC=movl_r32_imm32   
  cmovneq %rdx, %rax          #  6     0x134974  4      OPC=cmovneq_r64_r64  
  nop                         #  7     0x134978  1      OPC=nop              
  nop                         #  8     0x134979  1      OPC=nop              
  nop                         #  9     0x13497a  1      OPC=nop              
  nop                         #  10    0x13497b  1      OPC=nop              
  nop                         #  11    0x13497c  1      OPC=nop              
  nop                         #  12    0x13497d  1      OPC=nop              
  nop                         #  13    0x13497e  1      OPC=nop              
  nop                         #  14    0x13497f  1      OPC=nop              
  andl $0xffffffe0, %r11d     #  15    0x134980  7      OPC=andl_r32_imm32   
  nop                         #  16    0x134987  1      OPC=nop              
  nop                         #  17    0x134988  1      OPC=nop              
  nop                         #  18    0x134989  1      OPC=nop              
  nop                         #  19    0x13498a  1      OPC=nop              
  addq %r15, %r11             #  20    0x13498b  3      OPC=addq_r64_r64     
  jmpq %r11                   #  21    0x13498e  3      OPC=jmpq_r64         
  nop                         #  22    0x134991  1      OPC=nop              
  nop                         #  23    0x134992  1      OPC=nop              
  nop                         #  24    0x134993  1      OPC=nop              
  nop                         #  25    0x134994  1      OPC=nop              
  nop                         #  26    0x134995  1      OPC=nop              
  nop                         #  27    0x134996  1      OPC=nop              
  nop                         #  28    0x134997  1      OPC=nop              
  nop                         #  29    0x134998  1      OPC=nop              
  nop                         #  30    0x134999  1      OPC=nop              
  nop                         #  31    0x13499a  1      OPC=nop              
  nop                         #  32    0x13499b  1      OPC=nop              
  nop                         #  33    0x13499c  1      OPC=nop              
  nop                         #  34    0x13499d  1      OPC=nop              
  nop                         #  35    0x13499e  1      OPC=nop              
  nop                         #  36    0x13499f  1      OPC=nop              
  nop                         #  37    0x1349a0  1      OPC=nop              
  nop                         #  38    0x1349a1  1      OPC=nop              
  nop                         #  39    0x1349a2  1      OPC=nop              
  nop                         #  40    0x1349a3  1      OPC=nop              
  nop                         #  41    0x1349a4  1      OPC=nop              
  nop                         #  42    0x1349a5  1      OPC=nop              
  nop                         #  43    0x1349a6  1      OPC=nop              
                                                                             
.size __get_current_time_locale, .-__get_current_time_locale

