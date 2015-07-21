  .text
  .globl __sfp_lock_acquire
  .type __sfp_lock_acquire, @function

#! file-offset 0x159ea0
#! rip-offset  0x119ea0
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode    
.__sfp_lock_acquire:                    #        0x119ea0  0      OPC=0     
  movl $0x10070990, %edi                #  1     0x119ea0  5      OPC=1154  
  jmpq .__local_lock_acquire_recursive  #  2     0x119ea5  5      OPC=930   
  nop                                   #  3     0x119eaa  1      OPC=1343  
  nop                                   #  4     0x119eab  1      OPC=1343  
  nop                                   #  5     0x119eac  1      OPC=1343  
  nop                                   #  6     0x119ead  1      OPC=1343  
  nop                                   #  7     0x119eae  1      OPC=1343  
  nop                                   #  8     0x119eaf  1      OPC=1343  
  nop                                   #  9     0x119eb0  1      OPC=1343  
  nop                                   #  10    0x119eb1  1      OPC=1343  
  nop                                   #  11    0x119eb2  1      OPC=1343  
  nop                                   #  12    0x119eb3  1      OPC=1343  
  nop                                   #  13    0x119eb4  1      OPC=1343  
  nop                                   #  14    0x119eb5  1      OPC=1343  
  nop                                   #  15    0x119eb6  1      OPC=1343  
  nop                                   #  16    0x119eb7  1      OPC=1343  
  nop                                   #  17    0x119eb8  1      OPC=1343  
  nop                                   #  18    0x119eb9  1      OPC=1343  
  nop                                   #  19    0x119eba  1      OPC=1343  
  nop                                   #  20    0x119ebb  1      OPC=1343  
  nop                                   #  21    0x119ebc  1      OPC=1343  
  nop                                   #  22    0x119ebd  1      OPC=1343  
  nop                                   #  23    0x119ebe  1      OPC=1343  
  nop                                   #  24    0x119ebf  1      OPC=1343  
                                                                            
.size __sfp_lock_acquire, .-__sfp_lock_acquire

