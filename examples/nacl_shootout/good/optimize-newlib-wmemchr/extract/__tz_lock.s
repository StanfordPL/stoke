  .text
  .globl __tz_lock
  .type __tz_lock, @function

#! file-offset 0x176d20
#! rip-offset  0x136d20
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__tz_lock:                   #        0x136d20  0      OPC=<label>         
  movl $0x10070ff0, %edi      #  1     0x136d20  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_acquire  #  2     0x136d25  5      OPC=jmpq_label_1    
  nop                         #  3     0x136d2a  1      OPC=nop             
  nop                         #  4     0x136d2b  1      OPC=nop             
  nop                         #  5     0x136d2c  1      OPC=nop             
  nop                         #  6     0x136d2d  1      OPC=nop             
  nop                         #  7     0x136d2e  1      OPC=nop             
  nop                         #  8     0x136d2f  1      OPC=nop             
  nop                         #  9     0x136d30  1      OPC=nop             
  nop                         #  10    0x136d31  1      OPC=nop             
  nop                         #  11    0x136d32  1      OPC=nop             
  nop                         #  12    0x136d33  1      OPC=nop             
  nop                         #  13    0x136d34  1      OPC=nop             
  nop                         #  14    0x136d35  1      OPC=nop             
  nop                         #  15    0x136d36  1      OPC=nop             
  nop                         #  16    0x136d37  1      OPC=nop             
  nop                         #  17    0x136d38  1      OPC=nop             
  nop                         #  18    0x136d39  1      OPC=nop             
  nop                         #  19    0x136d3a  1      OPC=nop             
  nop                         #  20    0x136d3b  1      OPC=nop             
  nop                         #  21    0x136d3c  1      OPC=nop             
  nop                         #  22    0x136d3d  1      OPC=nop             
  nop                         #  23    0x136d3e  1      OPC=nop             
  nop                         #  24    0x136d3f  1      OPC=nop             
                                                                            
.size __tz_lock, .-__tz_lock

