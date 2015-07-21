  .text
  .globl __env_lock
  .type __env_lock, @function

#! file-offset 0x1867e0
#! rip-offset  0x1467e0
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode    
.__env_lock:                            #        0x1467e0  0      OPC=0     
  movl $0x10071030, %edi                #  1     0x1467e0  5      OPC=1154  
  jmpq .__local_lock_acquire_recursive  #  2     0x1467e5  5      OPC=930   
  nop                                   #  3     0x1467ea  1      OPC=1343  
  nop                                   #  4     0x1467eb  1      OPC=1343  
  nop                                   #  5     0x1467ec  1      OPC=1343  
  nop                                   #  6     0x1467ed  1      OPC=1343  
  nop                                   #  7     0x1467ee  1      OPC=1343  
  nop                                   #  8     0x1467ef  1      OPC=1343  
  nop                                   #  9     0x1467f0  1      OPC=1343  
  nop                                   #  10    0x1467f1  1      OPC=1343  
  nop                                   #  11    0x1467f2  1      OPC=1343  
  nop                                   #  12    0x1467f3  1      OPC=1343  
  nop                                   #  13    0x1467f4  1      OPC=1343  
  nop                                   #  14    0x1467f5  1      OPC=1343  
  nop                                   #  15    0x1467f6  1      OPC=1343  
  nop                                   #  16    0x1467f7  1      OPC=1343  
  nop                                   #  17    0x1467f8  1      OPC=1343  
  nop                                   #  18    0x1467f9  1      OPC=1343  
  nop                                   #  19    0x1467fa  1      OPC=1343  
  nop                                   #  20    0x1467fb  1      OPC=1343  
  nop                                   #  21    0x1467fc  1      OPC=1343  
  nop                                   #  22    0x1467fd  1      OPC=1343  
  nop                                   #  23    0x1467fe  1      OPC=1343  
  nop                                   #  24    0x1467ff  1      OPC=1343  
                                                                            
.size __env_lock, .-__env_lock

