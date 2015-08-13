  .text
  .globl __local_lock_acquire_recursive
  .type __local_lock_acquire_recursive, @function

#! file-offset 0x6e1a0
#! rip-offset  0x2e1a0
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode            
.__local_lock_acquire_recursive:  #        0x2e1a0  0      OPC=<label>       
  movl %edi, %edi                 #  1     0x2e1a0  2      OPC=movl_r32_r32  
  jmpq .__local_lock_acquire      #  2     0x2e1a2  5      OPC=jmpq_label_1  
  nop                             #  3     0x2e1a7  1      OPC=nop           
  nop                             #  4     0x2e1a8  1      OPC=nop           
  nop                             #  5     0x2e1a9  1      OPC=nop           
  nop                             #  6     0x2e1aa  1      OPC=nop           
  nop                             #  7     0x2e1ab  1      OPC=nop           
  nop                             #  8     0x2e1ac  1      OPC=nop           
  nop                             #  9     0x2e1ad  1      OPC=nop           
  nop                             #  10    0x2e1ae  1      OPC=nop           
  nop                             #  11    0x2e1af  1      OPC=nop           
  nop                             #  12    0x2e1b0  1      OPC=nop           
  nop                             #  13    0x2e1b1  1      OPC=nop           
  nop                             #  14    0x2e1b2  1      OPC=nop           
  nop                             #  15    0x2e1b3  1      OPC=nop           
  nop                             #  16    0x2e1b4  1      OPC=nop           
  nop                             #  17    0x2e1b5  1      OPC=nop           
  nop                             #  18    0x2e1b6  1      OPC=nop           
  nop                             #  19    0x2e1b7  1      OPC=nop           
  nop                             #  20    0x2e1b8  1      OPC=nop           
  nop                             #  21    0x2e1b9  1      OPC=nop           
  nop                             #  22    0x2e1ba  1      OPC=nop           
  nop                             #  23    0x2e1bb  1      OPC=nop           
  nop                             #  24    0x2e1bc  1      OPC=nop           
  nop                             #  25    0x2e1bd  1      OPC=nop           
  nop                             #  26    0x2e1be  1      OPC=nop           
  nop                             #  27    0x2e1bf  1      OPC=nop           
                                                                             
.size __local_lock_acquire_recursive, .-__local_lock_acquire_recursive

