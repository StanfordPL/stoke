  .text
  .globl __sfp_lock_release
  .type __sfp_lock_release, @function

#! file-offset 0x15ad20
#! rip-offset  0x11ad20
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__sfp_lock_release:                    #        0x11ad20  0      OPC=<label>         
  movl $0x10070990, %edi                #  1     0x11ad20  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_release_recursive  #  2     0x11ad25  5      OPC=jmpq_label_1    
  nop                                   #  3     0x11ad2a  1      OPC=nop             
  nop                                   #  4     0x11ad2b  1      OPC=nop             
  nop                                   #  5     0x11ad2c  1      OPC=nop             
  nop                                   #  6     0x11ad2d  1      OPC=nop             
  nop                                   #  7     0x11ad2e  1      OPC=nop             
  nop                                   #  8     0x11ad2f  1      OPC=nop             
  nop                                   #  9     0x11ad30  1      OPC=nop             
  nop                                   #  10    0x11ad31  1      OPC=nop             
  nop                                   #  11    0x11ad32  1      OPC=nop             
  nop                                   #  12    0x11ad33  1      OPC=nop             
  nop                                   #  13    0x11ad34  1      OPC=nop             
  nop                                   #  14    0x11ad35  1      OPC=nop             
  nop                                   #  15    0x11ad36  1      OPC=nop             
  nop                                   #  16    0x11ad37  1      OPC=nop             
  nop                                   #  17    0x11ad38  1      OPC=nop             
  nop                                   #  18    0x11ad39  1      OPC=nop             
  nop                                   #  19    0x11ad3a  1      OPC=nop             
  nop                                   #  20    0x11ad3b  1      OPC=nop             
  nop                                   #  21    0x11ad3c  1      OPC=nop             
  nop                                   #  22    0x11ad3d  1      OPC=nop             
  nop                                   #  23    0x11ad3e  1      OPC=nop             
  nop                                   #  24    0x11ad3f  1      OPC=nop             
                                                                                      
.size __sfp_lock_release, .-__sfp_lock_release

