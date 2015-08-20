  .text
  .globl __sinit_lock_acquire
  .type __sinit_lock_acquire, @function

#! file-offset 0x15a6c0
#! rip-offset  0x11a6c0
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__sinit_lock_acquire:                  #        0x11a6c0  0      OPC=<label>         
  movl $0x10070970, %edi                #  1     0x11a6c0  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_acquire_recursive  #  2     0x11a6c5  5      OPC=jmpq_label_1    
  nop                                   #  3     0x11a6ca  1      OPC=nop             
  nop                                   #  4     0x11a6cb  1      OPC=nop             
  nop                                   #  5     0x11a6cc  1      OPC=nop             
  nop                                   #  6     0x11a6cd  1      OPC=nop             
  nop                                   #  7     0x11a6ce  1      OPC=nop             
  nop                                   #  8     0x11a6cf  1      OPC=nop             
  nop                                   #  9     0x11a6d0  1      OPC=nop             
  nop                                   #  10    0x11a6d1  1      OPC=nop             
  nop                                   #  11    0x11a6d2  1      OPC=nop             
  nop                                   #  12    0x11a6d3  1      OPC=nop             
  nop                                   #  13    0x11a6d4  1      OPC=nop             
  nop                                   #  14    0x11a6d5  1      OPC=nop             
  nop                                   #  15    0x11a6d6  1      OPC=nop             
  nop                                   #  16    0x11a6d7  1      OPC=nop             
  nop                                   #  17    0x11a6d8  1      OPC=nop             
  nop                                   #  18    0x11a6d9  1      OPC=nop             
  nop                                   #  19    0x11a6da  1      OPC=nop             
  nop                                   #  20    0x11a6db  1      OPC=nop             
  nop                                   #  21    0x11a6dc  1      OPC=nop             
  nop                                   #  22    0x11a6dd  1      OPC=nop             
  nop                                   #  23    0x11a6de  1      OPC=nop             
  nop                                   #  24    0x11a6df  1      OPC=nop             
                                                                                      
.size __sinit_lock_acquire, .-__sinit_lock_acquire

