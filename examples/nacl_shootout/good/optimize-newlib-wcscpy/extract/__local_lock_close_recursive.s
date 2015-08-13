  .text
  .globl __local_lock_close_recursive
  .type __local_lock_close_recursive, @function

#! file-offset 0x6e200
#! rip-offset  0x2e200
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode            
.__local_lock_close_recursive:  #        0x2e200  0      OPC=<label>       
  movl %edi, %edi               #  1     0x2e200  2      OPC=movl_r32_r32  
  jmpq .__local_lock_close      #  2     0x2e202  5      OPC=jmpq_label_1  
  nop                           #  3     0x2e207  1      OPC=nop           
  nop                           #  4     0x2e208  1      OPC=nop           
  nop                           #  5     0x2e209  1      OPC=nop           
  nop                           #  6     0x2e20a  1      OPC=nop           
  nop                           #  7     0x2e20b  1      OPC=nop           
  nop                           #  8     0x2e20c  1      OPC=nop           
  nop                           #  9     0x2e20d  1      OPC=nop           
  nop                           #  10    0x2e20e  1      OPC=nop           
  nop                           #  11    0x2e20f  1      OPC=nop           
  nop                           #  12    0x2e210  1      OPC=nop           
  nop                           #  13    0x2e211  1      OPC=nop           
  nop                           #  14    0x2e212  1      OPC=nop           
  nop                           #  15    0x2e213  1      OPC=nop           
  nop                           #  16    0x2e214  1      OPC=nop           
  nop                           #  17    0x2e215  1      OPC=nop           
  nop                           #  18    0x2e216  1      OPC=nop           
  nop                           #  19    0x2e217  1      OPC=nop           
  nop                           #  20    0x2e218  1      OPC=nop           
  nop                           #  21    0x2e219  1      OPC=nop           
  nop                           #  22    0x2e21a  1      OPC=nop           
  nop                           #  23    0x2e21b  1      OPC=nop           
  nop                           #  24    0x2e21c  1      OPC=nop           
  nop                           #  25    0x2e21d  1      OPC=nop           
  nop                           #  26    0x2e21e  1      OPC=nop           
  nop                           #  27    0x2e21f  1      OPC=nop           
                                                                           
.size __local_lock_close_recursive, .-__local_lock_close_recursive

