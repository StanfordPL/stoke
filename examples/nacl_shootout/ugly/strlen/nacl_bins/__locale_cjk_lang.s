  .text
  .globl __locale_cjk_lang
  .type __locale_cjk_lang, @function

#! file-offset 0x15fb40
#! rip-offset  0x11fb40
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.__locale_cjk_lang:           #        0x11fb40  0      OPC=0     
  popq %r11                   #  1     0x11fb40  2      OPC=1694  
  movl 0xff59244(%rip), %eax  #  2     0x11fb42  6      OPC=1156  
  andl $0xffffffe0, %r11d     #  3     0x11fb48  7      OPC=131   
  nop                         #  4     0x11fb4f  1      OPC=1343  
  nop                         #  5     0x11fb50  1      OPC=1343  
  nop                         #  6     0x11fb51  1      OPC=1343  
  nop                         #  7     0x11fb52  1      OPC=1343  
  addq %r15, %r11             #  8     0x11fb53  3      OPC=72    
  jmpq %r11                   #  9     0x11fb56  3      OPC=928   
  nop                         #  10    0x11fb59  1      OPC=1343  
  nop                         #  11    0x11fb5a  1      OPC=1343  
  nop                         #  12    0x11fb5b  1      OPC=1343  
  nop                         #  13    0x11fb5c  1      OPC=1343  
  nop                         #  14    0x11fb5d  1      OPC=1343  
  nop                         #  15    0x11fb5e  1      OPC=1343  
  nop                         #  16    0x11fb5f  1      OPC=1343  
  nop                         #  17    0x11fb60  1      OPC=1343  
  nop                         #  18    0x11fb61  1      OPC=1343  
  nop                         #  19    0x11fb62  1      OPC=1343  
  nop                         #  20    0x11fb63  1      OPC=1343  
  nop                         #  21    0x11fb64  1      OPC=1343  
  nop                         #  22    0x11fb65  1      OPC=1343  
  nop                         #  23    0x11fb66  1      OPC=1343  
                                                                  
.size __locale_cjk_lang, .-__locale_cjk_lang

