  .text
  .globl __local_lock_try_acquire_recursive
  .type __local_lock_try_acquire_recursive, @function

#! file-offset 0x6e440
#! rip-offset  0x2e440
#! capacity    32 bytes

# Text                                #  Line  RIP      Bytes  Opcode            
.__local_lock_try_acquire_recursive:  #        0x2e440  0      OPC=<label>       
  movl %edi, %edi                     #  1     0x2e440  2      OPC=movl_r32_r32  
  jmpq .__local_lock_try_acquire      #  2     0x2e442  5      OPC=jmpq_label_1  
  nop                                 #  3     0x2e447  1      OPC=nop           
  nop                                 #  4     0x2e448  1      OPC=nop           
  nop                                 #  5     0x2e449  1      OPC=nop           
  nop                                 #  6     0x2e44a  1      OPC=nop           
  nop                                 #  7     0x2e44b  1      OPC=nop           
  nop                                 #  8     0x2e44c  1      OPC=nop           
  nop                                 #  9     0x2e44d  1      OPC=nop           
  nop                                 #  10    0x2e44e  1      OPC=nop           
  nop                                 #  11    0x2e44f  1      OPC=nop           
  nop                                 #  12    0x2e450  1      OPC=nop           
  nop                                 #  13    0x2e451  1      OPC=nop           
  nop                                 #  14    0x2e452  1      OPC=nop           
  nop                                 #  15    0x2e453  1      OPC=nop           
  nop                                 #  16    0x2e454  1      OPC=nop           
  nop                                 #  17    0x2e455  1      OPC=nop           
  nop                                 #  18    0x2e456  1      OPC=nop           
  nop                                 #  19    0x2e457  1      OPC=nop           
  nop                                 #  20    0x2e458  1      OPC=nop           
  nop                                 #  21    0x2e459  1      OPC=nop           
  nop                                 #  22    0x2e45a  1      OPC=nop           
  nop                                 #  23    0x2e45b  1      OPC=nop           
  nop                                 #  24    0x2e45c  1      OPC=nop           
  nop                                 #  25    0x2e45d  1      OPC=nop           
  nop                                 #  26    0x2e45e  1      OPC=nop           
  nop                                 #  27    0x2e45f  1      OPC=nop           
                                                                                 
.size __local_lock_try_acquire_recursive, .-__local_lock_try_acquire_recursive

