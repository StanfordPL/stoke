  .text
  .globl __sinit_lock_acquire
  .type __sinit_lock_acquire, @function

#! file-offset 0x15a3c0
#! rip-offset  0x11a3c0
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__sinit_lock_acquire:                  #        0x11a3c0  0      OPC=<label>         
  movl $0x10070970, %edi                #  1     0x11a3c0  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_acquire_recursive  #  2     0x11a3c5  5      OPC=jmpq_label_1    
  nop                                   #  3     0x11a3ca  1      OPC=nop             
  nop                                   #  4     0x11a3cb  1      OPC=nop             
  nop                                   #  5     0x11a3cc  1      OPC=nop             
  nop                                   #  6     0x11a3cd  1      OPC=nop             
  nop                                   #  7     0x11a3ce  1      OPC=nop             
  nop                                   #  8     0x11a3cf  1      OPC=nop             
  nop                                   #  9     0x11a3d0  1      OPC=nop             
  nop                                   #  10    0x11a3d1  1      OPC=nop             
  nop                                   #  11    0x11a3d2  1      OPC=nop             
  nop                                   #  12    0x11a3d3  1      OPC=nop             
  nop                                   #  13    0x11a3d4  1      OPC=nop             
  nop                                   #  14    0x11a3d5  1      OPC=nop             
  nop                                   #  15    0x11a3d6  1      OPC=nop             
  nop                                   #  16    0x11a3d7  1      OPC=nop             
  nop                                   #  17    0x11a3d8  1      OPC=nop             
  nop                                   #  18    0x11a3d9  1      OPC=nop             
  nop                                   #  19    0x11a3da  1      OPC=nop             
  nop                                   #  20    0x11a3db  1      OPC=nop             
  nop                                   #  21    0x11a3dc  1      OPC=nop             
  nop                                   #  22    0x11a3dd  1      OPC=nop             
  nop                                   #  23    0x11a3de  1      OPC=nop             
  nop                                   #  24    0x11a3df  1      OPC=nop             
                                                                                      
.size __sinit_lock_acquire, .-__sinit_lock_acquire

