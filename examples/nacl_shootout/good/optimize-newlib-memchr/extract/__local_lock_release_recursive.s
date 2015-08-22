  .text
  .globl __local_lock_release_recursive
  .type __local_lock_release_recursive, @function

#! file-offset 0x6eb00
#! rip-offset  0x2eb00
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode            
.__local_lock_release_recursive:  #        0x2eb00  0      OPC=<label>       
  movl %edi, %edi                 #  1     0x2eb00  2      OPC=movl_r32_r32  
  jmpq .__local_lock_release      #  2     0x2eb02  5      OPC=jmpq_label_1  
  nop                             #  3     0x2eb07  1      OPC=nop           
  nop                             #  4     0x2eb08  1      OPC=nop           
  nop                             #  5     0x2eb09  1      OPC=nop           
  nop                             #  6     0x2eb0a  1      OPC=nop           
  nop                             #  7     0x2eb0b  1      OPC=nop           
  nop                             #  8     0x2eb0c  1      OPC=nop           
  nop                             #  9     0x2eb0d  1      OPC=nop           
  nop                             #  10    0x2eb0e  1      OPC=nop           
  nop                             #  11    0x2eb0f  1      OPC=nop           
  nop                             #  12    0x2eb10  1      OPC=nop           
  nop                             #  13    0x2eb11  1      OPC=nop           
  nop                             #  14    0x2eb12  1      OPC=nop           
  nop                             #  15    0x2eb13  1      OPC=nop           
  nop                             #  16    0x2eb14  1      OPC=nop           
  nop                             #  17    0x2eb15  1      OPC=nop           
  nop                             #  18    0x2eb16  1      OPC=nop           
  nop                             #  19    0x2eb17  1      OPC=nop           
  nop                             #  20    0x2eb18  1      OPC=nop           
  nop                             #  21    0x2eb19  1      OPC=nop           
  nop                             #  22    0x2eb1a  1      OPC=nop           
  nop                             #  23    0x2eb1b  1      OPC=nop           
  nop                             #  24    0x2eb1c  1      OPC=nop           
  nop                             #  25    0x2eb1d  1      OPC=nop           
  nop                             #  26    0x2eb1e  1      OPC=nop           
  nop                             #  27    0x2eb1f  1      OPC=nop           
                                                                             
.size __local_lock_release_recursive, .-__local_lock_release_recursive

