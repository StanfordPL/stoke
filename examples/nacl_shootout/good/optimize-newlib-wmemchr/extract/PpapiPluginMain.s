  .text
  .globl PpapiPluginMain
  .type PpapiPluginMain, @function

#! file-offset 0x6d060
#! rip-offset  0x2d060
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.PpapiPluginMain:         #        0x2d060  0      OPC=<label>         
  movl $0x10039d58, %edi  #  1     0x2d060  5      OPC=movl_r32_imm32  
  jmpq .PpapiPluginStart  #  2     0x2d065  5      OPC=jmpq_label_1    
  nop                     #  3     0x2d06a  1      OPC=nop             
  nop                     #  4     0x2d06b  1      OPC=nop             
  nop                     #  5     0x2d06c  1      OPC=nop             
  nop                     #  6     0x2d06d  1      OPC=nop             
  nop                     #  7     0x2d06e  1      OPC=nop             
  nop                     #  8     0x2d06f  1      OPC=nop             
  nop                     #  9     0x2d070  1      OPC=nop             
  nop                     #  10    0x2d071  1      OPC=nop             
  nop                     #  11    0x2d072  1      OPC=nop             
  nop                     #  12    0x2d073  1      OPC=nop             
  nop                     #  13    0x2d074  1      OPC=nop             
  nop                     #  14    0x2d075  1      OPC=nop             
  nop                     #  15    0x2d076  1      OPC=nop             
  nop                     #  16    0x2d077  1      OPC=nop             
  nop                     #  17    0x2d078  1      OPC=nop             
  nop                     #  18    0x2d079  1      OPC=nop             
  nop                     #  19    0x2d07a  1      OPC=nop             
  nop                     #  20    0x2d07b  1      OPC=nop             
  nop                     #  21    0x2d07c  1      OPC=nop             
  nop                     #  22    0x2d07d  1      OPC=nop             
  nop                     #  23    0x2d07e  1      OPC=nop             
  nop                     #  24    0x2d07f  1      OPC=nop             
                                                                       
.size PpapiPluginMain, .-PpapiPluginMain

