  .text
  .globl __local_lock_release_recursive
  .type __local_lock_release_recursive, @function

#! file-offset 0x6e3e0
#! rip-offset  0x2e3e0
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode            
.__local_lock_release_recursive:  #        0x2e3e0  0      OPC=<label>       
  movl %edi, %edi                 #  1     0x2e3e0  2      OPC=movl_r32_r32  
  jmpq .__local_lock_release      #  2     0x2e3e2  5      OPC=jmpq_label_1  
  nop                             #  3     0x2e3e7  1      OPC=nop           
  nop                             #  4     0x2e3e8  1      OPC=nop           
  nop                             #  5     0x2e3e9  1      OPC=nop           
  nop                             #  6     0x2e3ea  1      OPC=nop           
  nop                             #  7     0x2e3eb  1      OPC=nop           
  nop                             #  8     0x2e3ec  1      OPC=nop           
  nop                             #  9     0x2e3ed  1      OPC=nop           
  nop                             #  10    0x2e3ee  1      OPC=nop           
  nop                             #  11    0x2e3ef  1      OPC=nop           
  nop                             #  12    0x2e3f0  1      OPC=nop           
  nop                             #  13    0x2e3f1  1      OPC=nop           
  nop                             #  14    0x2e3f2  1      OPC=nop           
  nop                             #  15    0x2e3f3  1      OPC=nop           
  nop                             #  16    0x2e3f4  1      OPC=nop           
  nop                             #  17    0x2e3f5  1      OPC=nop           
  nop                             #  18    0x2e3f6  1      OPC=nop           
  nop                             #  19    0x2e3f7  1      OPC=nop           
  nop                             #  20    0x2e3f8  1      OPC=nop           
  nop                             #  21    0x2e3f9  1      OPC=nop           
  nop                             #  22    0x2e3fa  1      OPC=nop           
  nop                             #  23    0x2e3fb  1      OPC=nop           
  nop                             #  24    0x2e3fc  1      OPC=nop           
  nop                             #  25    0x2e3fd  1      OPC=nop           
  nop                             #  26    0x2e3fe  1      OPC=nop           
  nop                             #  27    0x2e3ff  1      OPC=nop           
                                                                             
.size __local_lock_release_recursive, .-__local_lock_release_recursive

