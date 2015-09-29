  .text
  .globl __sinit_lock_acquire
  .type __sinit_lock_acquire, @function

#! file-offset 0x15ade0
#! rip-offset  0x11ade0
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__sinit_lock_acquire:                  #        0x11ade0  0      OPC=<label>         
  movl $0x10070970, %edi                #  1     0x11ade0  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_acquire_recursive  #  2     0x11ade5  5      OPC=jmpq_label_1    
  nop                                   #  3     0x11adea  1      OPC=nop             
  nop                                   #  4     0x11adeb  1      OPC=nop             
  nop                                   #  5     0x11adec  1      OPC=nop             
  nop                                   #  6     0x11aded  1      OPC=nop             
  nop                                   #  7     0x11adee  1      OPC=nop             
  nop                                   #  8     0x11adef  1      OPC=nop             
  nop                                   #  9     0x11adf0  1      OPC=nop             
  nop                                   #  10    0x11adf1  1      OPC=nop             
  nop                                   #  11    0x11adf2  1      OPC=nop             
  nop                                   #  12    0x11adf3  1      OPC=nop             
  nop                                   #  13    0x11adf4  1      OPC=nop             
  nop                                   #  14    0x11adf5  1      OPC=nop             
  nop                                   #  15    0x11adf6  1      OPC=nop             
  nop                                   #  16    0x11adf7  1      OPC=nop             
  nop                                   #  17    0x11adf8  1      OPC=nop             
  nop                                   #  18    0x11adf9  1      OPC=nop             
  nop                                   #  19    0x11adfa  1      OPC=nop             
  nop                                   #  20    0x11adfb  1      OPC=nop             
  nop                                   #  21    0x11adfc  1      OPC=nop             
  nop                                   #  22    0x11adfd  1      OPC=nop             
  nop                                   #  23    0x11adfe  1      OPC=nop             
  nop                                   #  24    0x11adff  1      OPC=nop             
                                                                                      
.size __sinit_lock_acquire, .-__sinit_lock_acquire

