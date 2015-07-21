  .text
  .globl __tz_lock
  .type __tz_lock, @function

#! file-offset 0x1764e0
#! rip-offset  0x1364e0
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.__tz_lock:                   #        0x1364e0  0      OPC=0     
  movl $0x10070ff0, %edi      #  1     0x1364e0  5      OPC=1154  
  jmpq .__local_lock_acquire  #  2     0x1364e5  5      OPC=930   
  nop                         #  3     0x1364ea  1      OPC=1343  
  nop                         #  4     0x1364eb  1      OPC=1343  
  nop                         #  5     0x1364ec  1      OPC=1343  
  nop                         #  6     0x1364ed  1      OPC=1343  
  nop                         #  7     0x1364ee  1      OPC=1343  
  nop                         #  8     0x1364ef  1      OPC=1343  
  nop                         #  9     0x1364f0  1      OPC=1343  
  nop                         #  10    0x1364f1  1      OPC=1343  
  nop                         #  11    0x1364f2  1      OPC=1343  
  nop                         #  12    0x1364f3  1      OPC=1343  
  nop                         #  13    0x1364f4  1      OPC=1343  
  nop                         #  14    0x1364f5  1      OPC=1343  
  nop                         #  15    0x1364f6  1      OPC=1343  
  nop                         #  16    0x1364f7  1      OPC=1343  
  nop                         #  17    0x1364f8  1      OPC=1343  
  nop                         #  18    0x1364f9  1      OPC=1343  
  nop                         #  19    0x1364fa  1      OPC=1343  
  nop                         #  20    0x1364fb  1      OPC=1343  
  nop                         #  21    0x1364fc  1      OPC=1343  
  nop                         #  22    0x1364fd  1      OPC=1343  
  nop                         #  23    0x1364fe  1      OPC=1343  
  nop                         #  24    0x1364ff  1      OPC=1343  
                                                                  
.size __tz_lock, .-__tz_lock

