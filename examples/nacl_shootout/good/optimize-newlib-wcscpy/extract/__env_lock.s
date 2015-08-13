  .text
  .globl __env_lock
  .type __env_lock, @function

#! file-offset 0x186d80
#! rip-offset  0x146d80
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__env_lock:                            #        0x146d80  0      OPC=<label>         
  movl $0x10071030, %edi                #  1     0x146d80  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_acquire_recursive  #  2     0x146d85  5      OPC=jmpq_label_1    
  nop                                   #  3     0x146d8a  1      OPC=nop             
  nop                                   #  4     0x146d8b  1      OPC=nop             
  nop                                   #  5     0x146d8c  1      OPC=nop             
  nop                                   #  6     0x146d8d  1      OPC=nop             
  nop                                   #  7     0x146d8e  1      OPC=nop             
  nop                                   #  8     0x146d8f  1      OPC=nop             
  nop                                   #  9     0x146d90  1      OPC=nop             
  nop                                   #  10    0x146d91  1      OPC=nop             
  nop                                   #  11    0x146d92  1      OPC=nop             
  nop                                   #  12    0x146d93  1      OPC=nop             
  nop                                   #  13    0x146d94  1      OPC=nop             
  nop                                   #  14    0x146d95  1      OPC=nop             
  nop                                   #  15    0x146d96  1      OPC=nop             
  nop                                   #  16    0x146d97  1      OPC=nop             
  nop                                   #  17    0x146d98  1      OPC=nop             
  nop                                   #  18    0x146d99  1      OPC=nop             
  nop                                   #  19    0x146d9a  1      OPC=nop             
  nop                                   #  20    0x146d9b  1      OPC=nop             
  nop                                   #  21    0x146d9c  1      OPC=nop             
  nop                                   #  22    0x146d9d  1      OPC=nop             
  nop                                   #  23    0x146d9e  1      OPC=nop             
  nop                                   #  24    0x146d9f  1      OPC=nop             
                                                                                      
.size __env_lock, .-__env_lock

