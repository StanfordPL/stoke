  .text
  .globl __sfp_lock_release
  .type __sfp_lock_release, @function

#! file-offset 0x15a300
#! rip-offset  0x11a300
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__sfp_lock_release:                    #        0x11a300  0      OPC=<label>         
  movl $0x10070990, %edi                #  1     0x11a300  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_release_recursive  #  2     0x11a305  5      OPC=jmpq_label_1    
  nop                                   #  3     0x11a30a  1      OPC=nop             
  nop                                   #  4     0x11a30b  1      OPC=nop             
  nop                                   #  5     0x11a30c  1      OPC=nop             
  nop                                   #  6     0x11a30d  1      OPC=nop             
  nop                                   #  7     0x11a30e  1      OPC=nop             
  nop                                   #  8     0x11a30f  1      OPC=nop             
  nop                                   #  9     0x11a310  1      OPC=nop             
  nop                                   #  10    0x11a311  1      OPC=nop             
  nop                                   #  11    0x11a312  1      OPC=nop             
  nop                                   #  12    0x11a313  1      OPC=nop             
  nop                                   #  13    0x11a314  1      OPC=nop             
  nop                                   #  14    0x11a315  1      OPC=nop             
  nop                                   #  15    0x11a316  1      OPC=nop             
  nop                                   #  16    0x11a317  1      OPC=nop             
  nop                                   #  17    0x11a318  1      OPC=nop             
  nop                                   #  18    0x11a319  1      OPC=nop             
  nop                                   #  19    0x11a31a  1      OPC=nop             
  nop                                   #  20    0x11a31b  1      OPC=nop             
  nop                                   #  21    0x11a31c  1      OPC=nop             
  nop                                   #  22    0x11a31d  1      OPC=nop             
  nop                                   #  23    0x11a31e  1      OPC=nop             
  nop                                   #  24    0x11a31f  1      OPC=nop             
                                                                                      
.size __sfp_lock_release, .-__sfp_lock_release

