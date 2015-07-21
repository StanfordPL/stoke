  .text
  .globl __tz_unlock
  .type __tz_unlock, @function

#! file-offset 0x1764c0
#! rip-offset  0x1364c0
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.__tz_unlock:                 #        0x1364c0  0      OPC=0     
  movl $0x10070ff0, %edi      #  1     0x1364c0  5      OPC=1154  
  jmpq .__local_lock_release  #  2     0x1364c5  5      OPC=930   
  nop                         #  3     0x1364ca  1      OPC=1343  
  nop                         #  4     0x1364cb  1      OPC=1343  
  nop                         #  5     0x1364cc  1      OPC=1343  
  nop                         #  6     0x1364cd  1      OPC=1343  
  nop                         #  7     0x1364ce  1      OPC=1343  
  nop                         #  8     0x1364cf  1      OPC=1343  
  nop                         #  9     0x1364d0  1      OPC=1343  
  nop                         #  10    0x1364d1  1      OPC=1343  
  nop                         #  11    0x1364d2  1      OPC=1343  
  nop                         #  12    0x1364d3  1      OPC=1343  
  nop                         #  13    0x1364d4  1      OPC=1343  
  nop                         #  14    0x1364d5  1      OPC=1343  
  nop                         #  15    0x1364d6  1      OPC=1343  
  nop                         #  16    0x1364d7  1      OPC=1343  
  nop                         #  17    0x1364d8  1      OPC=1343  
  nop                         #  18    0x1364d9  1      OPC=1343  
  nop                         #  19    0x1364da  1      OPC=1343  
  nop                         #  20    0x1364db  1      OPC=1343  
  nop                         #  21    0x1364dc  1      OPC=1343  
  nop                         #  22    0x1364dd  1      OPC=1343  
  nop                         #  23    0x1364de  1      OPC=1343  
  nop                         #  24    0x1364df  1      OPC=1343  
                                                                  
.size __tz_unlock, .-__tz_unlock

