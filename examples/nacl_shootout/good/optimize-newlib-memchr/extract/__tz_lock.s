  .text
  .globl __tz_lock
  .type __tz_lock, @function

#! file-offset 0x177440
#! rip-offset  0x137440
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__tz_lock:                   #        0x137440  0      OPC=<label>         
  movl $0x10070ff0, %edi      #  1     0x137440  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_acquire  #  2     0x137445  5      OPC=jmpq_label_1    
  nop                         #  3     0x13744a  1      OPC=nop             
  nop                         #  4     0x13744b  1      OPC=nop             
  nop                         #  5     0x13744c  1      OPC=nop             
  nop                         #  6     0x13744d  1      OPC=nop             
  nop                         #  7     0x13744e  1      OPC=nop             
  nop                         #  8     0x13744f  1      OPC=nop             
  nop                         #  9     0x137450  1      OPC=nop             
  nop                         #  10    0x137451  1      OPC=nop             
  nop                         #  11    0x137452  1      OPC=nop             
  nop                         #  12    0x137453  1      OPC=nop             
  nop                         #  13    0x137454  1      OPC=nop             
  nop                         #  14    0x137455  1      OPC=nop             
  nop                         #  15    0x137456  1      OPC=nop             
  nop                         #  16    0x137457  1      OPC=nop             
  nop                         #  17    0x137458  1      OPC=nop             
  nop                         #  18    0x137459  1      OPC=nop             
  nop                         #  19    0x13745a  1      OPC=nop             
  nop                         #  20    0x13745b  1      OPC=nop             
  nop                         #  21    0x13745c  1      OPC=nop             
  nop                         #  22    0x13745d  1      OPC=nop             
  nop                         #  23    0x13745e  1      OPC=nop             
  nop                         #  24    0x13745f  1      OPC=nop             
                                                                            
.size __tz_lock, .-__tz_lock

