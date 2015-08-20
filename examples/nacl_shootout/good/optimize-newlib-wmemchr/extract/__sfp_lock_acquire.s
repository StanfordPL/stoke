  .text
  .globl __sfp_lock_acquire
  .type __sfp_lock_acquire, @function

#! file-offset 0x15a6e0
#! rip-offset  0x11a6e0
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__sfp_lock_acquire:                    #        0x11a6e0  0      OPC=<label>         
  movl $0x10070990, %edi                #  1     0x11a6e0  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_acquire_recursive  #  2     0x11a6e5  5      OPC=jmpq_label_1    
  nop                                   #  3     0x11a6ea  1      OPC=nop             
  nop                                   #  4     0x11a6eb  1      OPC=nop             
  nop                                   #  5     0x11a6ec  1      OPC=nop             
  nop                                   #  6     0x11a6ed  1      OPC=nop             
  nop                                   #  7     0x11a6ee  1      OPC=nop             
  nop                                   #  8     0x11a6ef  1      OPC=nop             
  nop                                   #  9     0x11a6f0  1      OPC=nop             
  nop                                   #  10    0x11a6f1  1      OPC=nop             
  nop                                   #  11    0x11a6f2  1      OPC=nop             
  nop                                   #  12    0x11a6f3  1      OPC=nop             
  nop                                   #  13    0x11a6f4  1      OPC=nop             
  nop                                   #  14    0x11a6f5  1      OPC=nop             
  nop                                   #  15    0x11a6f6  1      OPC=nop             
  nop                                   #  16    0x11a6f7  1      OPC=nop             
  nop                                   #  17    0x11a6f8  1      OPC=nop             
  nop                                   #  18    0x11a6f9  1      OPC=nop             
  nop                                   #  19    0x11a6fa  1      OPC=nop             
  nop                                   #  20    0x11a6fb  1      OPC=nop             
  nop                                   #  21    0x11a6fc  1      OPC=nop             
  nop                                   #  22    0x11a6fd  1      OPC=nop             
  nop                                   #  23    0x11a6fe  1      OPC=nop             
  nop                                   #  24    0x11a6ff  1      OPC=nop             
                                                                                      
.size __sfp_lock_acquire, .-__sfp_lock_acquire

