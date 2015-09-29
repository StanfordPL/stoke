  .text
  .globl PpapiPluginMain
  .type PpapiPluginMain, @function

#! file-offset 0x6d780
#! rip-offset  0x2d780
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.PpapiPluginMain:         #        0x2d780  0      OPC=<label>         
  movl $0x10039d58, %edi  #  1     0x2d780  5      OPC=movl_r32_imm32  
  jmpq .PpapiPluginStart  #  2     0x2d785  5      OPC=jmpq_label_1    
  nop                     #  3     0x2d78a  1      OPC=nop             
  nop                     #  4     0x2d78b  1      OPC=nop             
  nop                     #  5     0x2d78c  1      OPC=nop             
  nop                     #  6     0x2d78d  1      OPC=nop             
  nop                     #  7     0x2d78e  1      OPC=nop             
  nop                     #  8     0x2d78f  1      OPC=nop             
  nop                     #  9     0x2d790  1      OPC=nop             
  nop                     #  10    0x2d791  1      OPC=nop             
  nop                     #  11    0x2d792  1      OPC=nop             
  nop                     #  12    0x2d793  1      OPC=nop             
  nop                     #  13    0x2d794  1      OPC=nop             
  nop                     #  14    0x2d795  1      OPC=nop             
  nop                     #  15    0x2d796  1      OPC=nop             
  nop                     #  16    0x2d797  1      OPC=nop             
  nop                     #  17    0x2d798  1      OPC=nop             
  nop                     #  18    0x2d799  1      OPC=nop             
  nop                     #  19    0x2d79a  1      OPC=nop             
  nop                     #  20    0x2d79b  1      OPC=nop             
  nop                     #  21    0x2d79c  1      OPC=nop             
  nop                     #  22    0x2d79d  1      OPC=nop             
  nop                     #  23    0x2d79e  1      OPC=nop             
  nop                     #  24    0x2d79f  1      OPC=nop             
                                                                       
.size PpapiPluginMain, .-PpapiPluginMain

