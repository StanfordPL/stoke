  .text
  .globl __locale_cjk_lang
  .type __locale_cjk_lang, @function

#! file-offset 0x160080
#! rip-offset  0x120080
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__locale_cjk_lang:           #        0x120080  0      OPC=<label>         
  popq %r11                   #  1     0x120080  2      OPC=popq_r64_1      
  movl 0xff58d04(%rip), %eax  #  2     0x120082  6      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d     #  3     0x120088  7      OPC=andl_r32_imm32  
  nop                         #  4     0x12008f  1      OPC=nop             
  nop                         #  5     0x120090  1      OPC=nop             
  nop                         #  6     0x120091  1      OPC=nop             
  nop                         #  7     0x120092  1      OPC=nop             
  addq %r15, %r11             #  8     0x120093  3      OPC=addq_r64_r64    
  jmpq %r11                   #  9     0x120096  3      OPC=jmpq_r64        
  nop                         #  10    0x120099  1      OPC=nop             
  nop                         #  11    0x12009a  1      OPC=nop             
  nop                         #  12    0x12009b  1      OPC=nop             
  nop                         #  13    0x12009c  1      OPC=nop             
  nop                         #  14    0x12009d  1      OPC=nop             
  nop                         #  15    0x12009e  1      OPC=nop             
  nop                         #  16    0x12009f  1      OPC=nop             
  nop                         #  17    0x1200a0  1      OPC=nop             
  nop                         #  18    0x1200a1  1      OPC=nop             
  nop                         #  19    0x1200a2  1      OPC=nop             
  nop                         #  20    0x1200a3  1      OPC=nop             
  nop                         #  21    0x1200a4  1      OPC=nop             
  nop                         #  22    0x1200a5  1      OPC=nop             
  nop                         #  23    0x1200a6  1      OPC=nop             
                                                                            
.size __locale_cjk_lang, .-__locale_cjk_lang

