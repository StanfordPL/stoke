  .text
  .globl __seofread
  .type __seofread, @function

#! file-offset 0x166200
#! rip-offset  0x126200
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__seofread:               #        0x126200  0      OPC=<label>         
  popq %r11                #  1     0x126200  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x126202  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d  #  3     0x126204  7      OPC=andl_r32_imm32  
  nop                      #  4     0x12620b  1      OPC=nop             
  nop                      #  5     0x12620c  1      OPC=nop             
  nop                      #  6     0x12620d  1      OPC=nop             
  nop                      #  7     0x12620e  1      OPC=nop             
  addq %r15, %r11          #  8     0x12620f  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x126212  3      OPC=jmpq_r64        
  nop                      #  10    0x126215  1      OPC=nop             
  nop                      #  11    0x126216  1      OPC=nop             
  nop                      #  12    0x126217  1      OPC=nop             
  nop                      #  13    0x126218  1      OPC=nop             
  nop                      #  14    0x126219  1      OPC=nop             
  nop                      #  15    0x12621a  1      OPC=nop             
  nop                      #  16    0x12621b  1      OPC=nop             
  nop                      #  17    0x12621c  1      OPC=nop             
  nop                      #  18    0x12621d  1      OPC=nop             
  nop                      #  19    0x12621e  1      OPC=nop             
  nop                      #  20    0x12621f  1      OPC=nop             
  nop                      #  21    0x126220  1      OPC=nop             
  nop                      #  22    0x126221  1      OPC=nop             
  nop                      #  23    0x126222  1      OPC=nop             
  nop                      #  24    0x126223  1      OPC=nop             
  nop                      #  25    0x126224  1      OPC=nop             
  nop                      #  26    0x126225  1      OPC=nop             
  nop                      #  27    0x126226  1      OPC=nop             
                                                                         
.size __seofread, .-__seofread

