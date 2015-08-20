  .text
  .globl _cleanup_r
  .type _cleanup_r, @function

#! file-offset 0x15aa00
#! rip-offset  0x11aa00
#! capacity    32 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
._cleanup_r:            #        0x11aa00  0      OPC=<label>         
  movl %edi, %edi       #  1     0x11aa00  2      OPC=movl_r32_r32    
  movl $0x119860, %esi  #  2     0x11aa02  5      OPC=movl_r32_imm32  
  jmpq ._fwalk_reent    #  3     0x11aa07  5      OPC=jmpq_label_1    
  nop                   #  4     0x11aa0c  1      OPC=nop             
  nop                   #  5     0x11aa0d  1      OPC=nop             
  nop                   #  6     0x11aa0e  1      OPC=nop             
  nop                   #  7     0x11aa0f  1      OPC=nop             
  nop                   #  8     0x11aa10  1      OPC=nop             
  nop                   #  9     0x11aa11  1      OPC=nop             
  nop                   #  10    0x11aa12  1      OPC=nop             
  nop                   #  11    0x11aa13  1      OPC=nop             
  nop                   #  12    0x11aa14  1      OPC=nop             
  nop                   #  13    0x11aa15  1      OPC=nop             
  nop                   #  14    0x11aa16  1      OPC=nop             
  nop                   #  15    0x11aa17  1      OPC=nop             
  nop                   #  16    0x11aa18  1      OPC=nop             
  nop                   #  17    0x11aa19  1      OPC=nop             
  nop                   #  18    0x11aa1a  1      OPC=nop             
  nop                   #  19    0x11aa1b  1      OPC=nop             
  nop                   #  20    0x11aa1c  1      OPC=nop             
  nop                   #  21    0x11aa1d  1      OPC=nop             
  nop                   #  22    0x11aa1e  1      OPC=nop             
  nop                   #  23    0x11aa1f  1      OPC=nop             
                                                                      
.size _cleanup_r, .-_cleanup_r

