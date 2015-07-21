  .text
  .globl __locale_mb_cur_max
  .type __locale_mb_cur_max, @function

#! file-offset 0x15fb00
#! rip-offset  0x11fb00
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.__locale_mb_cur_max:         #        0x11fb00  0      OPC=0     
  popq %r11                   #  1     0x11fb00  2      OPC=1694  
  movl 0xff51338(%rip), %eax  #  2     0x11fb02  6      OPC=1156  
  andl $0xffffffe0, %r11d     #  3     0x11fb08  7      OPC=131   
  nop                         #  4     0x11fb0f  1      OPC=1343  
  nop                         #  5     0x11fb10  1      OPC=1343  
  nop                         #  6     0x11fb11  1      OPC=1343  
  nop                         #  7     0x11fb12  1      OPC=1343  
  addq %r15, %r11             #  8     0x11fb13  3      OPC=72    
  jmpq %r11                   #  9     0x11fb16  3      OPC=928   
  nop                         #  10    0x11fb19  1      OPC=1343  
  nop                         #  11    0x11fb1a  1      OPC=1343  
  nop                         #  12    0x11fb1b  1      OPC=1343  
  nop                         #  13    0x11fb1c  1      OPC=1343  
  nop                         #  14    0x11fb1d  1      OPC=1343  
  nop                         #  15    0x11fb1e  1      OPC=1343  
  nop                         #  16    0x11fb1f  1      OPC=1343  
  nop                         #  17    0x11fb20  1      OPC=1343  
  nop                         #  18    0x11fb21  1      OPC=1343  
  nop                         #  19    0x11fb22  1      OPC=1343  
  nop                         #  20    0x11fb23  1      OPC=1343  
  nop                         #  21    0x11fb24  1      OPC=1343  
  nop                         #  22    0x11fb25  1      OPC=1343  
  nop                         #  23    0x11fb26  1      OPC=1343  
                                                                  
.size __locale_mb_cur_max, .-__locale_mb_cur_max

