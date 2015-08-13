  .text
  .globl __local_lock_try_acquire_recursive
  .type __local_lock_try_acquire_recursive, @function

#! file-offset 0x6e140
#! rip-offset  0x2e140
#! capacity    32 bytes

# Text                                #  Line  RIP      Bytes  Opcode            
.__local_lock_try_acquire_recursive:  #        0x2e140  0      OPC=<label>       
  movl %edi, %edi                     #  1     0x2e140  2      OPC=movl_r32_r32  
  jmpq .__local_lock_try_acquire      #  2     0x2e142  5      OPC=jmpq_label_1  
  nop                                 #  3     0x2e147  1      OPC=nop           
  nop                                 #  4     0x2e148  1      OPC=nop           
  nop                                 #  5     0x2e149  1      OPC=nop           
  nop                                 #  6     0x2e14a  1      OPC=nop           
  nop                                 #  7     0x2e14b  1      OPC=nop           
  nop                                 #  8     0x2e14c  1      OPC=nop           
  nop                                 #  9     0x2e14d  1      OPC=nop           
  nop                                 #  10    0x2e14e  1      OPC=nop           
  nop                                 #  11    0x2e14f  1      OPC=nop           
  nop                                 #  12    0x2e150  1      OPC=nop           
  nop                                 #  13    0x2e151  1      OPC=nop           
  nop                                 #  14    0x2e152  1      OPC=nop           
  nop                                 #  15    0x2e153  1      OPC=nop           
  nop                                 #  16    0x2e154  1      OPC=nop           
  nop                                 #  17    0x2e155  1      OPC=nop           
  nop                                 #  18    0x2e156  1      OPC=nop           
  nop                                 #  19    0x2e157  1      OPC=nop           
  nop                                 #  20    0x2e158  1      OPC=nop           
  nop                                 #  21    0x2e159  1      OPC=nop           
  nop                                 #  22    0x2e15a  1      OPC=nop           
  nop                                 #  23    0x2e15b  1      OPC=nop           
  nop                                 #  24    0x2e15c  1      OPC=nop           
  nop                                 #  25    0x2e15d  1      OPC=nop           
  nop                                 #  26    0x2e15e  1      OPC=nop           
  nop                                 #  27    0x2e15f  1      OPC=nop           
                                                                                 
.size __local_lock_try_acquire_recursive, .-__local_lock_try_acquire_recursive

