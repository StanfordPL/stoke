  .text
  .globl __sfp_lock_acquire
  .type __sfp_lock_acquire, @function

#! file-offset 0x15a3e0
#! rip-offset  0x11a3e0
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__sfp_lock_acquire:                    #        0x11a3e0  0      OPC=<label>         
  movl $0x10070990, %edi                #  1     0x11a3e0  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_acquire_recursive  #  2     0x11a3e5  5      OPC=jmpq_label_1    
  nop                                   #  3     0x11a3ea  1      OPC=nop             
  nop                                   #  4     0x11a3eb  1      OPC=nop             
  nop                                   #  5     0x11a3ec  1      OPC=nop             
  nop                                   #  6     0x11a3ed  1      OPC=nop             
  nop                                   #  7     0x11a3ee  1      OPC=nop             
  nop                                   #  8     0x11a3ef  1      OPC=nop             
  nop                                   #  9     0x11a3f0  1      OPC=nop             
  nop                                   #  10    0x11a3f1  1      OPC=nop             
  nop                                   #  11    0x11a3f2  1      OPC=nop             
  nop                                   #  12    0x11a3f3  1      OPC=nop             
  nop                                   #  13    0x11a3f4  1      OPC=nop             
  nop                                   #  14    0x11a3f5  1      OPC=nop             
  nop                                   #  15    0x11a3f6  1      OPC=nop             
  nop                                   #  16    0x11a3f7  1      OPC=nop             
  nop                                   #  17    0x11a3f8  1      OPC=nop             
  nop                                   #  18    0x11a3f9  1      OPC=nop             
  nop                                   #  19    0x11a3fa  1      OPC=nop             
  nop                                   #  20    0x11a3fb  1      OPC=nop             
  nop                                   #  21    0x11a3fc  1      OPC=nop             
  nop                                   #  22    0x11a3fd  1      OPC=nop             
  nop                                   #  23    0x11a3fe  1      OPC=nop             
  nop                                   #  24    0x11a3ff  1      OPC=nop             
                                                                                      
.size __sfp_lock_acquire, .-__sfp_lock_acquire

