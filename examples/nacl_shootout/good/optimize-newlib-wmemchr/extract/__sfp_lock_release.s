  .text
  .globl __sfp_lock_release
  .type __sfp_lock_release, @function

#! file-offset 0x15a600
#! rip-offset  0x11a600
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__sfp_lock_release:                    #        0x11a600  0      OPC=<label>         
  movl $0x10070990, %edi                #  1     0x11a600  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_release_recursive  #  2     0x11a605  5      OPC=jmpq_label_1    
  nop                                   #  3     0x11a60a  1      OPC=nop             
  nop                                   #  4     0x11a60b  1      OPC=nop             
  nop                                   #  5     0x11a60c  1      OPC=nop             
  nop                                   #  6     0x11a60d  1      OPC=nop             
  nop                                   #  7     0x11a60e  1      OPC=nop             
  nop                                   #  8     0x11a60f  1      OPC=nop             
  nop                                   #  9     0x11a610  1      OPC=nop             
  nop                                   #  10    0x11a611  1      OPC=nop             
  nop                                   #  11    0x11a612  1      OPC=nop             
  nop                                   #  12    0x11a613  1      OPC=nop             
  nop                                   #  13    0x11a614  1      OPC=nop             
  nop                                   #  14    0x11a615  1      OPC=nop             
  nop                                   #  15    0x11a616  1      OPC=nop             
  nop                                   #  16    0x11a617  1      OPC=nop             
  nop                                   #  17    0x11a618  1      OPC=nop             
  nop                                   #  18    0x11a619  1      OPC=nop             
  nop                                   #  19    0x11a61a  1      OPC=nop             
  nop                                   #  20    0x11a61b  1      OPC=nop             
  nop                                   #  21    0x11a61c  1      OPC=nop             
  nop                                   #  22    0x11a61d  1      OPC=nop             
  nop                                   #  23    0x11a61e  1      OPC=nop             
  nop                                   #  24    0x11a61f  1      OPC=nop             
                                                                                      
.size __sfp_lock_release, .-__sfp_lock_release

