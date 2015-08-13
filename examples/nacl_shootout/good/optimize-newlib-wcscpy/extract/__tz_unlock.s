  .text
  .globl __tz_unlock
  .type __tz_unlock, @function

#! file-offset 0x176a00
#! rip-offset  0x136a00
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__tz_unlock:                 #        0x136a00  0      OPC=<label>         
  movl $0x10070ff0, %edi      #  1     0x136a00  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_release  #  2     0x136a05  5      OPC=jmpq_label_1    
  nop                         #  3     0x136a0a  1      OPC=nop             
  nop                         #  4     0x136a0b  1      OPC=nop             
  nop                         #  5     0x136a0c  1      OPC=nop             
  nop                         #  6     0x136a0d  1      OPC=nop             
  nop                         #  7     0x136a0e  1      OPC=nop             
  nop                         #  8     0x136a0f  1      OPC=nop             
  nop                         #  9     0x136a10  1      OPC=nop             
  nop                         #  10    0x136a11  1      OPC=nop             
  nop                         #  11    0x136a12  1      OPC=nop             
  nop                         #  12    0x136a13  1      OPC=nop             
  nop                         #  13    0x136a14  1      OPC=nop             
  nop                         #  14    0x136a15  1      OPC=nop             
  nop                         #  15    0x136a16  1      OPC=nop             
  nop                         #  16    0x136a17  1      OPC=nop             
  nop                         #  17    0x136a18  1      OPC=nop             
  nop                         #  18    0x136a19  1      OPC=nop             
  nop                         #  19    0x136a1a  1      OPC=nop             
  nop                         #  20    0x136a1b  1      OPC=nop             
  nop                         #  21    0x136a1c  1      OPC=nop             
  nop                         #  22    0x136a1d  1      OPC=nop             
  nop                         #  23    0x136a1e  1      OPC=nop             
  nop                         #  24    0x136a1f  1      OPC=nop             
                                                                            
.size __tz_unlock, .-__tz_unlock

