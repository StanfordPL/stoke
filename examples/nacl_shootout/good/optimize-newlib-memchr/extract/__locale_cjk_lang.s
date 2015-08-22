  .text
  .globl __locale_cjk_lang
  .type __locale_cjk_lang, @function

#! file-offset 0x160aa0
#! rip-offset  0x120aa0
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__locale_cjk_lang:           #        0x120aa0  0      OPC=<label>         
  popq %r11                   #  1     0x120aa0  2      OPC=popq_r64_1      
  movl 0xff582e4(%rip), %eax  #  2     0x120aa2  6      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d     #  3     0x120aa8  7      OPC=andl_r32_imm32  
  nop                         #  4     0x120aaf  1      OPC=nop             
  nop                         #  5     0x120ab0  1      OPC=nop             
  nop                         #  6     0x120ab1  1      OPC=nop             
  nop                         #  7     0x120ab2  1      OPC=nop             
  addq %r15, %r11             #  8     0x120ab3  3      OPC=addq_r64_r64    
  jmpq %r11                   #  9     0x120ab6  3      OPC=jmpq_r64        
  nop                         #  10    0x120ab9  1      OPC=nop             
  nop                         #  11    0x120aba  1      OPC=nop             
  nop                         #  12    0x120abb  1      OPC=nop             
  nop                         #  13    0x120abc  1      OPC=nop             
  nop                         #  14    0x120abd  1      OPC=nop             
  nop                         #  15    0x120abe  1      OPC=nop             
  nop                         #  16    0x120abf  1      OPC=nop             
  nop                         #  17    0x120ac0  1      OPC=nop             
  nop                         #  18    0x120ac1  1      OPC=nop             
  nop                         #  19    0x120ac2  1      OPC=nop             
  nop                         #  20    0x120ac3  1      OPC=nop             
  nop                         #  21    0x120ac4  1      OPC=nop             
  nop                         #  22    0x120ac5  1      OPC=nop             
  nop                         #  23    0x120ac6  1      OPC=nop             
                                                                            
.size __locale_cjk_lang, .-__locale_cjk_lang

