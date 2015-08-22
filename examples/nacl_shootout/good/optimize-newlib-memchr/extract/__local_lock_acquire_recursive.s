  .text
  .globl __local_lock_acquire_recursive
  .type __local_lock_acquire_recursive, @function

#! file-offset 0x6ebc0
#! rip-offset  0x2ebc0
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode            
.__local_lock_acquire_recursive:  #        0x2ebc0  0      OPC=<label>       
  movl %edi, %edi                 #  1     0x2ebc0  2      OPC=movl_r32_r32  
  jmpq .__local_lock_acquire      #  2     0x2ebc2  5      OPC=jmpq_label_1  
  nop                             #  3     0x2ebc7  1      OPC=nop           
  nop                             #  4     0x2ebc8  1      OPC=nop           
  nop                             #  5     0x2ebc9  1      OPC=nop           
  nop                             #  6     0x2ebca  1      OPC=nop           
  nop                             #  7     0x2ebcb  1      OPC=nop           
  nop                             #  8     0x2ebcc  1      OPC=nop           
  nop                             #  9     0x2ebcd  1      OPC=nop           
  nop                             #  10    0x2ebce  1      OPC=nop           
  nop                             #  11    0x2ebcf  1      OPC=nop           
  nop                             #  12    0x2ebd0  1      OPC=nop           
  nop                             #  13    0x2ebd1  1      OPC=nop           
  nop                             #  14    0x2ebd2  1      OPC=nop           
  nop                             #  15    0x2ebd3  1      OPC=nop           
  nop                             #  16    0x2ebd4  1      OPC=nop           
  nop                             #  17    0x2ebd5  1      OPC=nop           
  nop                             #  18    0x2ebd6  1      OPC=nop           
  nop                             #  19    0x2ebd7  1      OPC=nop           
  nop                             #  20    0x2ebd8  1      OPC=nop           
  nop                             #  21    0x2ebd9  1      OPC=nop           
  nop                             #  22    0x2ebda  1      OPC=nop           
  nop                             #  23    0x2ebdb  1      OPC=nop           
  nop                             #  24    0x2ebdc  1      OPC=nop           
  nop                             #  25    0x2ebdd  1      OPC=nop           
  nop                             #  26    0x2ebde  1      OPC=nop           
  nop                             #  27    0x2ebdf  1      OPC=nop           
                                                                             
.size __local_lock_acquire_recursive, .-__local_lock_acquire_recursive

