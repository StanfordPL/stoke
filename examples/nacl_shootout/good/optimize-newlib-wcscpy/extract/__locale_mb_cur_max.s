  .text
  .globl __locale_mb_cur_max
  .type __locale_mb_cur_max, @function

#! file-offset 0x160040
#! rip-offset  0x120040
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__locale_mb_cur_max:         #        0x120040  0      OPC=<label>         
  popq %r11                   #  1     0x120040  2      OPC=popq_r64_1      
  movl 0xff50df8(%rip), %eax  #  2     0x120042  6      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d     #  3     0x120048  7      OPC=andl_r32_imm32  
  nop                         #  4     0x12004f  1      OPC=nop             
  nop                         #  5     0x120050  1      OPC=nop             
  nop                         #  6     0x120051  1      OPC=nop             
  nop                         #  7     0x120052  1      OPC=nop             
  addq %r15, %r11             #  8     0x120053  3      OPC=addq_r64_r64    
  jmpq %r11                   #  9     0x120056  3      OPC=jmpq_r64        
  nop                         #  10    0x120059  1      OPC=nop             
  nop                         #  11    0x12005a  1      OPC=nop             
  nop                         #  12    0x12005b  1      OPC=nop             
  nop                         #  13    0x12005c  1      OPC=nop             
  nop                         #  14    0x12005d  1      OPC=nop             
  nop                         #  15    0x12005e  1      OPC=nop             
  nop                         #  16    0x12005f  1      OPC=nop             
  nop                         #  17    0x120060  1      OPC=nop             
  nop                         #  18    0x120061  1      OPC=nop             
  nop                         #  19    0x120062  1      OPC=nop             
  nop                         #  20    0x120063  1      OPC=nop             
  nop                         #  21    0x120064  1      OPC=nop             
  nop                         #  22    0x120065  1      OPC=nop             
  nop                         #  23    0x120066  1      OPC=nop             
                                                                            
.size __locale_mb_cur_max, .-__locale_mb_cur_max

