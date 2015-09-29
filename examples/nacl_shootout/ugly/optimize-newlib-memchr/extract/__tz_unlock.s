  .text
  .globl __tz_unlock
  .type __tz_unlock, @function

#! file-offset 0x177420
#! rip-offset  0x137420
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__tz_unlock:                 #        0x137420  0      OPC=<label>         
  movl $0x10070ff0, %edi      #  1     0x137420  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_release  #  2     0x137425  5      OPC=jmpq_label_1    
  nop                         #  3     0x13742a  1      OPC=nop             
  nop                         #  4     0x13742b  1      OPC=nop             
  nop                         #  5     0x13742c  1      OPC=nop             
  nop                         #  6     0x13742d  1      OPC=nop             
  nop                         #  7     0x13742e  1      OPC=nop             
  nop                         #  8     0x13742f  1      OPC=nop             
  nop                         #  9     0x137430  1      OPC=nop             
  nop                         #  10    0x137431  1      OPC=nop             
  nop                         #  11    0x137432  1      OPC=nop             
  nop                         #  12    0x137433  1      OPC=nop             
  nop                         #  13    0x137434  1      OPC=nop             
  nop                         #  14    0x137435  1      OPC=nop             
  nop                         #  15    0x137436  1      OPC=nop             
  nop                         #  16    0x137437  1      OPC=nop             
  nop                         #  17    0x137438  1      OPC=nop             
  nop                         #  18    0x137439  1      OPC=nop             
  nop                         #  19    0x13743a  1      OPC=nop             
  nop                         #  20    0x13743b  1      OPC=nop             
  nop                         #  21    0x13743c  1      OPC=nop             
  nop                         #  22    0x13743d  1      OPC=nop             
  nop                         #  23    0x13743e  1      OPC=nop             
  nop                         #  24    0x13743f  1      OPC=nop             
                                                                            
.size __tz_unlock, .-__tz_unlock

