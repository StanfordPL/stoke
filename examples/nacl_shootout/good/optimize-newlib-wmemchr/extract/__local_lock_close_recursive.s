  .text
  .globl __local_lock_close_recursive
  .type __local_lock_close_recursive, @function

#! file-offset 0x6e500
#! rip-offset  0x2e500
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode            
.__local_lock_close_recursive:  #        0x2e500  0      OPC=<label>       
  movl %edi, %edi               #  1     0x2e500  2      OPC=movl_r32_r32  
  jmpq .__local_lock_close      #  2     0x2e502  5      OPC=jmpq_label_1  
  nop                           #  3     0x2e507  1      OPC=nop           
  nop                           #  4     0x2e508  1      OPC=nop           
  nop                           #  5     0x2e509  1      OPC=nop           
  nop                           #  6     0x2e50a  1      OPC=nop           
  nop                           #  7     0x2e50b  1      OPC=nop           
  nop                           #  8     0x2e50c  1      OPC=nop           
  nop                           #  9     0x2e50d  1      OPC=nop           
  nop                           #  10    0x2e50e  1      OPC=nop           
  nop                           #  11    0x2e50f  1      OPC=nop           
  nop                           #  12    0x2e510  1      OPC=nop           
  nop                           #  13    0x2e511  1      OPC=nop           
  nop                           #  14    0x2e512  1      OPC=nop           
  nop                           #  15    0x2e513  1      OPC=nop           
  nop                           #  16    0x2e514  1      OPC=nop           
  nop                           #  17    0x2e515  1      OPC=nop           
  nop                           #  18    0x2e516  1      OPC=nop           
  nop                           #  19    0x2e517  1      OPC=nop           
  nop                           #  20    0x2e518  1      OPC=nop           
  nop                           #  21    0x2e519  1      OPC=nop           
  nop                           #  22    0x2e51a  1      OPC=nop           
  nop                           #  23    0x2e51b  1      OPC=nop           
  nop                           #  24    0x2e51c  1      OPC=nop           
  nop                           #  25    0x2e51d  1      OPC=nop           
  nop                           #  26    0x2e51e  1      OPC=nop           
  nop                           #  27    0x2e51f  1      OPC=nop           
                                                                           
.size __local_lock_close_recursive, .-__local_lock_close_recursive

