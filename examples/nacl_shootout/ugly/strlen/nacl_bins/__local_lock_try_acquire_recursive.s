  .text
  .globl __local_lock_try_acquire_recursive
  .type __local_lock_try_acquire_recursive, @function

#! file-offset 0x6dc00
#! rip-offset  0x2dc00
#! capacity    32 bytes

# Text                                #  Line  RIP      Bytes  Opcode    
.__local_lock_try_acquire_recursive:  #        0x2dc00  0      OPC=0     
  movl %edi, %edi                     #  1     0x2dc00  2      OPC=1157  
  jmpq .__local_lock_try_acquire      #  2     0x2dc02  5      OPC=930   
  nop                                 #  3     0x2dc07  1      OPC=1343  
  nop                                 #  4     0x2dc08  1      OPC=1343  
  nop                                 #  5     0x2dc09  1      OPC=1343  
  nop                                 #  6     0x2dc0a  1      OPC=1343  
  nop                                 #  7     0x2dc0b  1      OPC=1343  
  nop                                 #  8     0x2dc0c  1      OPC=1343  
  nop                                 #  9     0x2dc0d  1      OPC=1343  
  nop                                 #  10    0x2dc0e  1      OPC=1343  
  nop                                 #  11    0x2dc0f  1      OPC=1343  
  nop                                 #  12    0x2dc10  1      OPC=1343  
  nop                                 #  13    0x2dc11  1      OPC=1343  
  nop                                 #  14    0x2dc12  1      OPC=1343  
  nop                                 #  15    0x2dc13  1      OPC=1343  
  nop                                 #  16    0x2dc14  1      OPC=1343  
  nop                                 #  17    0x2dc15  1      OPC=1343  
  nop                                 #  18    0x2dc16  1      OPC=1343  
  nop                                 #  19    0x2dc17  1      OPC=1343  
  nop                                 #  20    0x2dc18  1      OPC=1343  
  nop                                 #  21    0x2dc19  1      OPC=1343  
  nop                                 #  22    0x2dc1a  1      OPC=1343  
  nop                                 #  23    0x2dc1b  1      OPC=1343  
  nop                                 #  24    0x2dc1c  1      OPC=1343  
  nop                                 #  25    0x2dc1d  1      OPC=1343  
  nop                                 #  26    0x2dc1e  1      OPC=1343  
  nop                                 #  27    0x2dc1f  1      OPC=1343  
                                                                         
.size __local_lock_try_acquire_recursive, .-__local_lock_try_acquire_recursive

