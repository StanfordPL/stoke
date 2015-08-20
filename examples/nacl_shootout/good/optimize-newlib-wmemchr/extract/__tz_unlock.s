  .text
  .globl __tz_unlock
  .type __tz_unlock, @function

#! file-offset 0x176d00
#! rip-offset  0x136d00
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__tz_unlock:                 #        0x136d00  0      OPC=<label>         
  movl $0x10070ff0, %edi      #  1     0x136d00  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_release  #  2     0x136d05  5      OPC=jmpq_label_1    
  nop                         #  3     0x136d0a  1      OPC=nop             
  nop                         #  4     0x136d0b  1      OPC=nop             
  nop                         #  5     0x136d0c  1      OPC=nop             
  nop                         #  6     0x136d0d  1      OPC=nop             
  nop                         #  7     0x136d0e  1      OPC=nop             
  nop                         #  8     0x136d0f  1      OPC=nop             
  nop                         #  9     0x136d10  1      OPC=nop             
  nop                         #  10    0x136d11  1      OPC=nop             
  nop                         #  11    0x136d12  1      OPC=nop             
  nop                         #  12    0x136d13  1      OPC=nop             
  nop                         #  13    0x136d14  1      OPC=nop             
  nop                         #  14    0x136d15  1      OPC=nop             
  nop                         #  15    0x136d16  1      OPC=nop             
  nop                         #  16    0x136d17  1      OPC=nop             
  nop                         #  17    0x136d18  1      OPC=nop             
  nop                         #  18    0x136d19  1      OPC=nop             
  nop                         #  19    0x136d1a  1      OPC=nop             
  nop                         #  20    0x136d1b  1      OPC=nop             
  nop                         #  21    0x136d1c  1      OPC=nop             
  nop                         #  22    0x136d1d  1      OPC=nop             
  nop                         #  23    0x136d1e  1      OPC=nop             
  nop                         #  24    0x136d1f  1      OPC=nop             
                                                                            
.size __tz_unlock, .-__tz_unlock

