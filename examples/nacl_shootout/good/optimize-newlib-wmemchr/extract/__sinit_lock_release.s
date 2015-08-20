  .text
  .globl __sinit_lock_release
  .type __sinit_lock_release, @function

#! file-offset 0x15a5e0
#! rip-offset  0x11a5e0
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__sinit_lock_release:                  #        0x11a5e0  0      OPC=<label>         
  movl $0x10070970, %edi                #  1     0x11a5e0  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_release_recursive  #  2     0x11a5e5  5      OPC=jmpq_label_1    
  nop                                   #  3     0x11a5ea  1      OPC=nop             
  nop                                   #  4     0x11a5eb  1      OPC=nop             
  nop                                   #  5     0x11a5ec  1      OPC=nop             
  nop                                   #  6     0x11a5ed  1      OPC=nop             
  nop                                   #  7     0x11a5ee  1      OPC=nop             
  nop                                   #  8     0x11a5ef  1      OPC=nop             
  nop                                   #  9     0x11a5f0  1      OPC=nop             
  nop                                   #  10    0x11a5f1  1      OPC=nop             
  nop                                   #  11    0x11a5f2  1      OPC=nop             
  nop                                   #  12    0x11a5f3  1      OPC=nop             
  nop                                   #  13    0x11a5f4  1      OPC=nop             
  nop                                   #  14    0x11a5f5  1      OPC=nop             
  nop                                   #  15    0x11a5f6  1      OPC=nop             
  nop                                   #  16    0x11a5f7  1      OPC=nop             
  nop                                   #  17    0x11a5f8  1      OPC=nop             
  nop                                   #  18    0x11a5f9  1      OPC=nop             
  nop                                   #  19    0x11a5fa  1      OPC=nop             
  nop                                   #  20    0x11a5fb  1      OPC=nop             
  nop                                   #  21    0x11a5fc  1      OPC=nop             
  nop                                   #  22    0x11a5fd  1      OPC=nop             
  nop                                   #  23    0x11a5fe  1      OPC=nop             
  nop                                   #  24    0x11a5ff  1      OPC=nop             
                                                                                      
.size __sinit_lock_release, .-__sinit_lock_release

