  .text
  .globl __sinit_lock_acquire
  .type __sinit_lock_acquire, @function

#! file-offset 0x159e80
#! rip-offset  0x119e80
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode    
.__sinit_lock_acquire:                  #        0x119e80  0      OPC=0     
  movl $0x10070970, %edi                #  1     0x119e80  5      OPC=1154  
  jmpq .__local_lock_acquire_recursive  #  2     0x119e85  5      OPC=930   
  nop                                   #  3     0x119e8a  1      OPC=1343  
  nop                                   #  4     0x119e8b  1      OPC=1343  
  nop                                   #  5     0x119e8c  1      OPC=1343  
  nop                                   #  6     0x119e8d  1      OPC=1343  
  nop                                   #  7     0x119e8e  1      OPC=1343  
  nop                                   #  8     0x119e8f  1      OPC=1343  
  nop                                   #  9     0x119e90  1      OPC=1343  
  nop                                   #  10    0x119e91  1      OPC=1343  
  nop                                   #  11    0x119e92  1      OPC=1343  
  nop                                   #  12    0x119e93  1      OPC=1343  
  nop                                   #  13    0x119e94  1      OPC=1343  
  nop                                   #  14    0x119e95  1      OPC=1343  
  nop                                   #  15    0x119e96  1      OPC=1343  
  nop                                   #  16    0x119e97  1      OPC=1343  
  nop                                   #  17    0x119e98  1      OPC=1343  
  nop                                   #  18    0x119e99  1      OPC=1343  
  nop                                   #  19    0x119e9a  1      OPC=1343  
  nop                                   #  20    0x119e9b  1      OPC=1343  
  nop                                   #  21    0x119e9c  1      OPC=1343  
  nop                                   #  22    0x119e9d  1      OPC=1343  
  nop                                   #  23    0x119e9e  1      OPC=1343  
  nop                                   #  24    0x119e9f  1      OPC=1343  
                                                                            
.size __sinit_lock_acquire, .-__sinit_lock_acquire

