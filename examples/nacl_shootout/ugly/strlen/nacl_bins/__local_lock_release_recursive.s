  .text
  .globl __local_lock_release_recursive
  .type __local_lock_release_recursive, @function

#! file-offset 0x6dba0
#! rip-offset  0x2dba0
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode    
.__local_lock_release_recursive:  #        0x2dba0  0      OPC=0     
  movl %edi, %edi                 #  1     0x2dba0  2      OPC=1157  
  jmpq .__local_lock_release      #  2     0x2dba2  5      OPC=930   
  nop                             #  3     0x2dba7  1      OPC=1343  
  nop                             #  4     0x2dba8  1      OPC=1343  
  nop                             #  5     0x2dba9  1      OPC=1343  
  nop                             #  6     0x2dbaa  1      OPC=1343  
  nop                             #  7     0x2dbab  1      OPC=1343  
  nop                             #  8     0x2dbac  1      OPC=1343  
  nop                             #  9     0x2dbad  1      OPC=1343  
  nop                             #  10    0x2dbae  1      OPC=1343  
  nop                             #  11    0x2dbaf  1      OPC=1343  
  nop                             #  12    0x2dbb0  1      OPC=1343  
  nop                             #  13    0x2dbb1  1      OPC=1343  
  nop                             #  14    0x2dbb2  1      OPC=1343  
  nop                             #  15    0x2dbb3  1      OPC=1343  
  nop                             #  16    0x2dbb4  1      OPC=1343  
  nop                             #  17    0x2dbb5  1      OPC=1343  
  nop                             #  18    0x2dbb6  1      OPC=1343  
  nop                             #  19    0x2dbb7  1      OPC=1343  
  nop                             #  20    0x2dbb8  1      OPC=1343  
  nop                             #  21    0x2dbb9  1      OPC=1343  
  nop                             #  22    0x2dbba  1      OPC=1343  
  nop                             #  23    0x2dbbb  1      OPC=1343  
  nop                             #  24    0x2dbbc  1      OPC=1343  
  nop                             #  25    0x2dbbd  1      OPC=1343  
  nop                             #  26    0x2dbbe  1      OPC=1343  
  nop                             #  27    0x2dbbf  1      OPC=1343  
                                                                     
.size __local_lock_release_recursive, .-__local_lock_release_recursive

