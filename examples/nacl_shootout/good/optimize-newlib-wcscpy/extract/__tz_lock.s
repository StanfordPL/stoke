  .text
  .globl __tz_lock
  .type __tz_lock, @function

#! file-offset 0x176a20
#! rip-offset  0x136a20
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__tz_lock:                   #        0x136a20  0      OPC=<label>         
  movl $0x10070ff0, %edi      #  1     0x136a20  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_acquire  #  2     0x136a25  5      OPC=jmpq_label_1    
  nop                         #  3     0x136a2a  1      OPC=nop             
  nop                         #  4     0x136a2b  1      OPC=nop             
  nop                         #  5     0x136a2c  1      OPC=nop             
  nop                         #  6     0x136a2d  1      OPC=nop             
  nop                         #  7     0x136a2e  1      OPC=nop             
  nop                         #  8     0x136a2f  1      OPC=nop             
  nop                         #  9     0x136a30  1      OPC=nop             
  nop                         #  10    0x136a31  1      OPC=nop             
  nop                         #  11    0x136a32  1      OPC=nop             
  nop                         #  12    0x136a33  1      OPC=nop             
  nop                         #  13    0x136a34  1      OPC=nop             
  nop                         #  14    0x136a35  1      OPC=nop             
  nop                         #  15    0x136a36  1      OPC=nop             
  nop                         #  16    0x136a37  1      OPC=nop             
  nop                         #  17    0x136a38  1      OPC=nop             
  nop                         #  18    0x136a39  1      OPC=nop             
  nop                         #  19    0x136a3a  1      OPC=nop             
  nop                         #  20    0x136a3b  1      OPC=nop             
  nop                         #  21    0x136a3c  1      OPC=nop             
  nop                         #  22    0x136a3d  1      OPC=nop             
  nop                         #  23    0x136a3e  1      OPC=nop             
  nop                         #  24    0x136a3f  1      OPC=nop             
                                                                            
.size __tz_lock, .-__tz_lock

