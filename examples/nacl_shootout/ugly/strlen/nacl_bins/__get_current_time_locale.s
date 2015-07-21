  .text
  .globl __get_current_time_locale
  .type __get_current_time_locale, @function

#! file-offset 0x174120
#! rip-offset  0x134120
#! capacity    64 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.__get_current_time_locale:   #        0x134120  0      OPC=0     
  movl 0xff45036(%rip), %edx  #  1     0x134120  6      OPC=1156  
  movl $0x100468a0, %eax      #  2     0x134126  5      OPC=1154  
  popq %r11                   #  3     0x13412b  2      OPC=1694  
  testl %edx, %edx            #  4     0x13412d  2      OPC=2436  
  movl $0x10079060, %edx      #  5     0x13412f  5      OPC=1154  
  cmovneq %rdx, %rax          #  6     0x134134  4      OPC=364   
  nop                         #  7     0x134138  1      OPC=1343  
  nop                         #  8     0x134139  1      OPC=1343  
  nop                         #  9     0x13413a  1      OPC=1343  
  nop                         #  10    0x13413b  1      OPC=1343  
  nop                         #  11    0x13413c  1      OPC=1343  
  nop                         #  12    0x13413d  1      OPC=1343  
  nop                         #  13    0x13413e  1      OPC=1343  
  nop                         #  14    0x13413f  1      OPC=1343  
  andl $0xffffffe0, %r11d     #  15    0x134140  7      OPC=131   
  nop                         #  16    0x134147  1      OPC=1343  
  nop                         #  17    0x134148  1      OPC=1343  
  nop                         #  18    0x134149  1      OPC=1343  
  nop                         #  19    0x13414a  1      OPC=1343  
  addq %r15, %r11             #  20    0x13414b  3      OPC=72    
  jmpq %r11                   #  21    0x13414e  3      OPC=928   
  nop                         #  22    0x134151  1      OPC=1343  
  nop                         #  23    0x134152  1      OPC=1343  
  nop                         #  24    0x134153  1      OPC=1343  
  nop                         #  25    0x134154  1      OPC=1343  
  nop                         #  26    0x134155  1      OPC=1343  
  nop                         #  27    0x134156  1      OPC=1343  
  nop                         #  28    0x134157  1      OPC=1343  
  nop                         #  29    0x134158  1      OPC=1343  
  nop                         #  30    0x134159  1      OPC=1343  
  nop                         #  31    0x13415a  1      OPC=1343  
  nop                         #  32    0x13415b  1      OPC=1343  
  nop                         #  33    0x13415c  1      OPC=1343  
  nop                         #  34    0x13415d  1      OPC=1343  
  nop                         #  35    0x13415e  1      OPC=1343  
  nop                         #  36    0x13415f  1      OPC=1343  
  nop                         #  37    0x134160  1      OPC=1343  
  nop                         #  38    0x134161  1      OPC=1343  
  nop                         #  39    0x134162  1      OPC=1343  
  nop                         #  40    0x134163  1      OPC=1343  
  nop                         #  41    0x134164  1      OPC=1343  
  nop                         #  42    0x134165  1      OPC=1343  
  nop                         #  43    0x134166  1      OPC=1343  
                                                                  
.size __get_current_time_locale, .-__get_current_time_locale

