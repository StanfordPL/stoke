  .text
  .globl _cleanup_r
  .type _cleanup_r, @function

#! file-offset 0x15a700
#! rip-offset  0x11a700
#! capacity    32 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
._cleanup_r:            #        0x11a700  0      OPC=<label>         
  movl %edi, %edi       #  1     0x11a700  2      OPC=movl_r32_r32    
  movl $0x119560, %esi  #  2     0x11a702  5      OPC=movl_r32_imm32  
  jmpq ._fwalk_reent    #  3     0x11a707  5      OPC=jmpq_label_1    
  nop                   #  4     0x11a70c  1      OPC=nop             
  nop                   #  5     0x11a70d  1      OPC=nop             
  nop                   #  6     0x11a70e  1      OPC=nop             
  nop                   #  7     0x11a70f  1      OPC=nop             
  nop                   #  8     0x11a710  1      OPC=nop             
  nop                   #  9     0x11a711  1      OPC=nop             
  nop                   #  10    0x11a712  1      OPC=nop             
  nop                   #  11    0x11a713  1      OPC=nop             
  nop                   #  12    0x11a714  1      OPC=nop             
  nop                   #  13    0x11a715  1      OPC=nop             
  nop                   #  14    0x11a716  1      OPC=nop             
  nop                   #  15    0x11a717  1      OPC=nop             
  nop                   #  16    0x11a718  1      OPC=nop             
  nop                   #  17    0x11a719  1      OPC=nop             
  nop                   #  18    0x11a71a  1      OPC=nop             
  nop                   #  19    0x11a71b  1      OPC=nop             
  nop                   #  20    0x11a71c  1      OPC=nop             
  nop                   #  21    0x11a71d  1      OPC=nop             
  nop                   #  22    0x11a71e  1      OPC=nop             
  nop                   #  23    0x11a71f  1      OPC=nop             
                                                                      
.size _cleanup_r, .-_cleanup_r

