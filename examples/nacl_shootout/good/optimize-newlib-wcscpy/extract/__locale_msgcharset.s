  .text
  .globl __locale_msgcharset
  .type __locale_msgcharset, @function

#! file-offset 0x160060
#! rip-offset  0x120060
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__locale_msgcharset:      #        0x120060  0      OPC=<label>         
  popq %r11                #  1     0x120060  2      OPC=popq_r64_1      
  movl $0x10070ec0, %eax   #  2     0x120062  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x120067  7      OPC=andl_r32_imm32  
  nop                      #  4     0x12006e  1      OPC=nop             
  nop                      #  5     0x12006f  1      OPC=nop             
  nop                      #  6     0x120070  1      OPC=nop             
  nop                      #  7     0x120071  1      OPC=nop             
  addq %r15, %r11          #  8     0x120072  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x120075  3      OPC=jmpq_r64        
  nop                      #  10    0x120078  1      OPC=nop             
  nop                      #  11    0x120079  1      OPC=nop             
  nop                      #  12    0x12007a  1      OPC=nop             
  nop                      #  13    0x12007b  1      OPC=nop             
  nop                      #  14    0x12007c  1      OPC=nop             
  nop                      #  15    0x12007d  1      OPC=nop             
  nop                      #  16    0x12007e  1      OPC=nop             
  nop                      #  17    0x12007f  1      OPC=nop             
  nop                      #  18    0x120080  1      OPC=nop             
  nop                      #  19    0x120081  1      OPC=nop             
  nop                      #  20    0x120082  1      OPC=nop             
  nop                      #  21    0x120083  1      OPC=nop             
  nop                      #  22    0x120084  1      OPC=nop             
  nop                      #  23    0x120085  1      OPC=nop             
  nop                      #  24    0x120086  1      OPC=nop             
                                                                         
.size __locale_msgcharset, .-__locale_msgcharset

