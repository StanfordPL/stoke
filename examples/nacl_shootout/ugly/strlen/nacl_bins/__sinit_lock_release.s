  .text
  .globl __sinit_lock_release
  .type __sinit_lock_release, @function

#! file-offset 0x159da0
#! rip-offset  0x119da0
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode    
.__sinit_lock_release:                  #        0x119da0  0      OPC=0     
  movl $0x10070970, %edi                #  1     0x119da0  5      OPC=1154  
  jmpq .__local_lock_release_recursive  #  2     0x119da5  5      OPC=930   
  nop                                   #  3     0x119daa  1      OPC=1343  
  nop                                   #  4     0x119dab  1      OPC=1343  
  nop                                   #  5     0x119dac  1      OPC=1343  
  nop                                   #  6     0x119dad  1      OPC=1343  
  nop                                   #  7     0x119dae  1      OPC=1343  
  nop                                   #  8     0x119daf  1      OPC=1343  
  nop                                   #  9     0x119db0  1      OPC=1343  
  nop                                   #  10    0x119db1  1      OPC=1343  
  nop                                   #  11    0x119db2  1      OPC=1343  
  nop                                   #  12    0x119db3  1      OPC=1343  
  nop                                   #  13    0x119db4  1      OPC=1343  
  nop                                   #  14    0x119db5  1      OPC=1343  
  nop                                   #  15    0x119db6  1      OPC=1343  
  nop                                   #  16    0x119db7  1      OPC=1343  
  nop                                   #  17    0x119db8  1      OPC=1343  
  nop                                   #  18    0x119db9  1      OPC=1343  
  nop                                   #  19    0x119dba  1      OPC=1343  
  nop                                   #  20    0x119dbb  1      OPC=1343  
  nop                                   #  21    0x119dbc  1      OPC=1343  
  nop                                   #  22    0x119dbd  1      OPC=1343  
  nop                                   #  23    0x119dbe  1      OPC=1343  
  nop                                   #  24    0x119dbf  1      OPC=1343  
                                                                            
.size __sinit_lock_release, .-__sinit_lock_release

