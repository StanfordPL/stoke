  .text
  .globl __env_unlock
  .type __env_unlock, @function

#! file-offset 0x1867c0
#! rip-offset  0x1467c0
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode    
.__env_unlock:                          #        0x1467c0  0      OPC=0     
  movl $0x10071030, %edi                #  1     0x1467c0  5      OPC=1154  
  jmpq .__local_lock_release_recursive  #  2     0x1467c5  5      OPC=930   
  nop                                   #  3     0x1467ca  1      OPC=1343  
  nop                                   #  4     0x1467cb  1      OPC=1343  
  nop                                   #  5     0x1467cc  1      OPC=1343  
  nop                                   #  6     0x1467cd  1      OPC=1343  
  nop                                   #  7     0x1467ce  1      OPC=1343  
  nop                                   #  8     0x1467cf  1      OPC=1343  
  nop                                   #  9     0x1467d0  1      OPC=1343  
  nop                                   #  10    0x1467d1  1      OPC=1343  
  nop                                   #  11    0x1467d2  1      OPC=1343  
  nop                                   #  12    0x1467d3  1      OPC=1343  
  nop                                   #  13    0x1467d4  1      OPC=1343  
  nop                                   #  14    0x1467d5  1      OPC=1343  
  nop                                   #  15    0x1467d6  1      OPC=1343  
  nop                                   #  16    0x1467d7  1      OPC=1343  
  nop                                   #  17    0x1467d8  1      OPC=1343  
  nop                                   #  18    0x1467d9  1      OPC=1343  
  nop                                   #  19    0x1467da  1      OPC=1343  
  nop                                   #  20    0x1467db  1      OPC=1343  
  nop                                   #  21    0x1467dc  1      OPC=1343  
  nop                                   #  22    0x1467dd  1      OPC=1343  
  nop                                   #  23    0x1467de  1      OPC=1343  
  nop                                   #  24    0x1467df  1      OPC=1343  
                                                                            
.size __env_unlock, .-__env_unlock

