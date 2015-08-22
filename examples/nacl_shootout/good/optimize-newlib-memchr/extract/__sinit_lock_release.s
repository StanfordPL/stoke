  .text
  .globl __sinit_lock_release
  .type __sinit_lock_release, @function

#! file-offset 0x15ad00
#! rip-offset  0x11ad00
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__sinit_lock_release:                  #        0x11ad00  0      OPC=<label>         
  movl $0x10070970, %edi                #  1     0x11ad00  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_release_recursive  #  2     0x11ad05  5      OPC=jmpq_label_1    
  nop                                   #  3     0x11ad0a  1      OPC=nop             
  nop                                   #  4     0x11ad0b  1      OPC=nop             
  nop                                   #  5     0x11ad0c  1      OPC=nop             
  nop                                   #  6     0x11ad0d  1      OPC=nop             
  nop                                   #  7     0x11ad0e  1      OPC=nop             
  nop                                   #  8     0x11ad0f  1      OPC=nop             
  nop                                   #  9     0x11ad10  1      OPC=nop             
  nop                                   #  10    0x11ad11  1      OPC=nop             
  nop                                   #  11    0x11ad12  1      OPC=nop             
  nop                                   #  12    0x11ad13  1      OPC=nop             
  nop                                   #  13    0x11ad14  1      OPC=nop             
  nop                                   #  14    0x11ad15  1      OPC=nop             
  nop                                   #  15    0x11ad16  1      OPC=nop             
  nop                                   #  16    0x11ad17  1      OPC=nop             
  nop                                   #  17    0x11ad18  1      OPC=nop             
  nop                                   #  18    0x11ad19  1      OPC=nop             
  nop                                   #  19    0x11ad1a  1      OPC=nop             
  nop                                   #  20    0x11ad1b  1      OPC=nop             
  nop                                   #  21    0x11ad1c  1      OPC=nop             
  nop                                   #  22    0x11ad1d  1      OPC=nop             
  nop                                   #  23    0x11ad1e  1      OPC=nop             
  nop                                   #  24    0x11ad1f  1      OPC=nop             
                                                                                      
.size __sinit_lock_release, .-__sinit_lock_release

