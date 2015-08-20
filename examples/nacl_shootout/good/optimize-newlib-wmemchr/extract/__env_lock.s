  .text
  .globl __env_lock
  .type __env_lock, @function

#! file-offset 0x187120
#! rip-offset  0x147120
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__env_lock:                            #        0x147120  0      OPC=<label>         
  movl $0x10071030, %edi                #  1     0x147120  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_acquire_recursive  #  2     0x147125  5      OPC=jmpq_label_1    
  nop                                   #  3     0x14712a  1      OPC=nop             
  nop                                   #  4     0x14712b  1      OPC=nop             
  nop                                   #  5     0x14712c  1      OPC=nop             
  nop                                   #  6     0x14712d  1      OPC=nop             
  nop                                   #  7     0x14712e  1      OPC=nop             
  nop                                   #  8     0x14712f  1      OPC=nop             
  nop                                   #  9     0x147130  1      OPC=nop             
  nop                                   #  10    0x147131  1      OPC=nop             
  nop                                   #  11    0x147132  1      OPC=nop             
  nop                                   #  12    0x147133  1      OPC=nop             
  nop                                   #  13    0x147134  1      OPC=nop             
  nop                                   #  14    0x147135  1      OPC=nop             
  nop                                   #  15    0x147136  1      OPC=nop             
  nop                                   #  16    0x147137  1      OPC=nop             
  nop                                   #  17    0x147138  1      OPC=nop             
  nop                                   #  18    0x147139  1      OPC=nop             
  nop                                   #  19    0x14713a  1      OPC=nop             
  nop                                   #  20    0x14713b  1      OPC=nop             
  nop                                   #  21    0x14713c  1      OPC=nop             
  nop                                   #  22    0x14713d  1      OPC=nop             
  nop                                   #  23    0x14713e  1      OPC=nop             
  nop                                   #  24    0x14713f  1      OPC=nop             
                                                                                      
.size __env_lock, .-__env_lock

