  .text
  .globl __local_lock_close_recursive
  .type __local_lock_close_recursive, @function

#! file-offset 0x6ec20
#! rip-offset  0x2ec20
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode            
.__local_lock_close_recursive:  #        0x2ec20  0      OPC=<label>       
  movl %edi, %edi               #  1     0x2ec20  2      OPC=movl_r32_r32  
  jmpq .__local_lock_close      #  2     0x2ec22  5      OPC=jmpq_label_1  
  nop                           #  3     0x2ec27  1      OPC=nop           
  nop                           #  4     0x2ec28  1      OPC=nop           
  nop                           #  5     0x2ec29  1      OPC=nop           
  nop                           #  6     0x2ec2a  1      OPC=nop           
  nop                           #  7     0x2ec2b  1      OPC=nop           
  nop                           #  8     0x2ec2c  1      OPC=nop           
  nop                           #  9     0x2ec2d  1      OPC=nop           
  nop                           #  10    0x2ec2e  1      OPC=nop           
  nop                           #  11    0x2ec2f  1      OPC=nop           
  nop                           #  12    0x2ec30  1      OPC=nop           
  nop                           #  13    0x2ec31  1      OPC=nop           
  nop                           #  14    0x2ec32  1      OPC=nop           
  nop                           #  15    0x2ec33  1      OPC=nop           
  nop                           #  16    0x2ec34  1      OPC=nop           
  nop                           #  17    0x2ec35  1      OPC=nop           
  nop                           #  18    0x2ec36  1      OPC=nop           
  nop                           #  19    0x2ec37  1      OPC=nop           
  nop                           #  20    0x2ec38  1      OPC=nop           
  nop                           #  21    0x2ec39  1      OPC=nop           
  nop                           #  22    0x2ec3a  1      OPC=nop           
  nop                           #  23    0x2ec3b  1      OPC=nop           
  nop                           #  24    0x2ec3c  1      OPC=nop           
  nop                           #  25    0x2ec3d  1      OPC=nop           
  nop                           #  26    0x2ec3e  1      OPC=nop           
  nop                           #  27    0x2ec3f  1      OPC=nop           
                                                                           
.size __local_lock_close_recursive, .-__local_lock_close_recursive

