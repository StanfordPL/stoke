  .text
  .globl __env_lock
  .type __env_lock, @function

#! file-offset 0x187840
#! rip-offset  0x147840
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__env_lock:                            #        0x147840  0      OPC=<label>         
  movl $0x10071030, %edi                #  1     0x147840  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_acquire_recursive  #  2     0x147845  5      OPC=jmpq_label_1    
  nop                                   #  3     0x14784a  1      OPC=nop             
  nop                                   #  4     0x14784b  1      OPC=nop             
  nop                                   #  5     0x14784c  1      OPC=nop             
  nop                                   #  6     0x14784d  1      OPC=nop             
  nop                                   #  7     0x14784e  1      OPC=nop             
  nop                                   #  8     0x14784f  1      OPC=nop             
  nop                                   #  9     0x147850  1      OPC=nop             
  nop                                   #  10    0x147851  1      OPC=nop             
  nop                                   #  11    0x147852  1      OPC=nop             
  nop                                   #  12    0x147853  1      OPC=nop             
  nop                                   #  13    0x147854  1      OPC=nop             
  nop                                   #  14    0x147855  1      OPC=nop             
  nop                                   #  15    0x147856  1      OPC=nop             
  nop                                   #  16    0x147857  1      OPC=nop             
  nop                                   #  17    0x147858  1      OPC=nop             
  nop                                   #  18    0x147859  1      OPC=nop             
  nop                                   #  19    0x14785a  1      OPC=nop             
  nop                                   #  20    0x14785b  1      OPC=nop             
  nop                                   #  21    0x14785c  1      OPC=nop             
  nop                                   #  22    0x14785d  1      OPC=nop             
  nop                                   #  23    0x14785e  1      OPC=nop             
  nop                                   #  24    0x14785f  1      OPC=nop             
                                                                                      
.size __env_lock, .-__env_lock

