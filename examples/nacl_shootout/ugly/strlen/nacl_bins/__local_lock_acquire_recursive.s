  .text
  .globl __local_lock_acquire_recursive
  .type __local_lock_acquire_recursive, @function

#! file-offset 0x6dc60
#! rip-offset  0x2dc60
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode    
.__local_lock_acquire_recursive:  #        0x2dc60  0      OPC=0     
  movl %edi, %edi                 #  1     0x2dc60  2      OPC=1157  
  jmpq .__local_lock_acquire      #  2     0x2dc62  5      OPC=930   
  nop                             #  3     0x2dc67  1      OPC=1343  
  nop                             #  4     0x2dc68  1      OPC=1343  
  nop                             #  5     0x2dc69  1      OPC=1343  
  nop                             #  6     0x2dc6a  1      OPC=1343  
  nop                             #  7     0x2dc6b  1      OPC=1343  
  nop                             #  8     0x2dc6c  1      OPC=1343  
  nop                             #  9     0x2dc6d  1      OPC=1343  
  nop                             #  10    0x2dc6e  1      OPC=1343  
  nop                             #  11    0x2dc6f  1      OPC=1343  
  nop                             #  12    0x2dc70  1      OPC=1343  
  nop                             #  13    0x2dc71  1      OPC=1343  
  nop                             #  14    0x2dc72  1      OPC=1343  
  nop                             #  15    0x2dc73  1      OPC=1343  
  nop                             #  16    0x2dc74  1      OPC=1343  
  nop                             #  17    0x2dc75  1      OPC=1343  
  nop                             #  18    0x2dc76  1      OPC=1343  
  nop                             #  19    0x2dc77  1      OPC=1343  
  nop                             #  20    0x2dc78  1      OPC=1343  
  nop                             #  21    0x2dc79  1      OPC=1343  
  nop                             #  22    0x2dc7a  1      OPC=1343  
  nop                             #  23    0x2dc7b  1      OPC=1343  
  nop                             #  24    0x2dc7c  1      OPC=1343  
  nop                             #  25    0x2dc7d  1      OPC=1343  
  nop                             #  26    0x2dc7e  1      OPC=1343  
  nop                             #  27    0x2dc7f  1      OPC=1343  
                                                                     
.size __local_lock_acquire_recursive, .-__local_lock_acquire_recursive

