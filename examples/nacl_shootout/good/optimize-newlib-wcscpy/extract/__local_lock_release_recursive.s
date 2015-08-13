  .text
  .globl __local_lock_release_recursive
  .type __local_lock_release_recursive, @function

#! file-offset 0x6e0e0
#! rip-offset  0x2e0e0
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode            
.__local_lock_release_recursive:  #        0x2e0e0  0      OPC=<label>       
  movl %edi, %edi                 #  1     0x2e0e0  2      OPC=movl_r32_r32  
  jmpq .__local_lock_release      #  2     0x2e0e2  5      OPC=jmpq_label_1  
  nop                             #  3     0x2e0e7  1      OPC=nop           
  nop                             #  4     0x2e0e8  1      OPC=nop           
  nop                             #  5     0x2e0e9  1      OPC=nop           
  nop                             #  6     0x2e0ea  1      OPC=nop           
  nop                             #  7     0x2e0eb  1      OPC=nop           
  nop                             #  8     0x2e0ec  1      OPC=nop           
  nop                             #  9     0x2e0ed  1      OPC=nop           
  nop                             #  10    0x2e0ee  1      OPC=nop           
  nop                             #  11    0x2e0ef  1      OPC=nop           
  nop                             #  12    0x2e0f0  1      OPC=nop           
  nop                             #  13    0x2e0f1  1      OPC=nop           
  nop                             #  14    0x2e0f2  1      OPC=nop           
  nop                             #  15    0x2e0f3  1      OPC=nop           
  nop                             #  16    0x2e0f4  1      OPC=nop           
  nop                             #  17    0x2e0f5  1      OPC=nop           
  nop                             #  18    0x2e0f6  1      OPC=nop           
  nop                             #  19    0x2e0f7  1      OPC=nop           
  nop                             #  20    0x2e0f8  1      OPC=nop           
  nop                             #  21    0x2e0f9  1      OPC=nop           
  nop                             #  22    0x2e0fa  1      OPC=nop           
  nop                             #  23    0x2e0fb  1      OPC=nop           
  nop                             #  24    0x2e0fc  1      OPC=nop           
  nop                             #  25    0x2e0fd  1      OPC=nop           
  nop                             #  26    0x2e0fe  1      OPC=nop           
  nop                             #  27    0x2e0ff  1      OPC=nop           
                                                                             
.size __local_lock_release_recursive, .-__local_lock_release_recursive

