  .text
  .globl __sfp_lock_acquire
  .type __sfp_lock_acquire, @function

#! file-offset 0x15ae00
#! rip-offset  0x11ae00
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__sfp_lock_acquire:                    #        0x11ae00  0      OPC=<label>         
  movl $0x10070990, %edi                #  1     0x11ae00  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_acquire_recursive  #  2     0x11ae05  5      OPC=jmpq_label_1    
  nop                                   #  3     0x11ae0a  1      OPC=nop             
  nop                                   #  4     0x11ae0b  1      OPC=nop             
  nop                                   #  5     0x11ae0c  1      OPC=nop             
  nop                                   #  6     0x11ae0d  1      OPC=nop             
  nop                                   #  7     0x11ae0e  1      OPC=nop             
  nop                                   #  8     0x11ae0f  1      OPC=nop             
  nop                                   #  9     0x11ae10  1      OPC=nop             
  nop                                   #  10    0x11ae11  1      OPC=nop             
  nop                                   #  11    0x11ae12  1      OPC=nop             
  nop                                   #  12    0x11ae13  1      OPC=nop             
  nop                                   #  13    0x11ae14  1      OPC=nop             
  nop                                   #  14    0x11ae15  1      OPC=nop             
  nop                                   #  15    0x11ae16  1      OPC=nop             
  nop                                   #  16    0x11ae17  1      OPC=nop             
  nop                                   #  17    0x11ae18  1      OPC=nop             
  nop                                   #  18    0x11ae19  1      OPC=nop             
  nop                                   #  19    0x11ae1a  1      OPC=nop             
  nop                                   #  20    0x11ae1b  1      OPC=nop             
  nop                                   #  21    0x11ae1c  1      OPC=nop             
  nop                                   #  22    0x11ae1d  1      OPC=nop             
  nop                                   #  23    0x11ae1e  1      OPC=nop             
  nop                                   #  24    0x11ae1f  1      OPC=nop             
                                                                                      
.size __sfp_lock_acquire, .-__sfp_lock_acquire

