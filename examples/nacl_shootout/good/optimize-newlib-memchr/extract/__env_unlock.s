  .text
  .globl __env_unlock
  .type __env_unlock, @function

#! file-offset 0x187820
#! rip-offset  0x147820
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
.__env_unlock:                          #        0x147820  0      OPC=<label>         
  movl $0x10071030, %edi                #  1     0x147820  5      OPC=movl_r32_imm32  
  jmpq .__local_lock_release_recursive  #  2     0x147825  5      OPC=jmpq_label_1    
  nop                                   #  3     0x14782a  1      OPC=nop             
  nop                                   #  4     0x14782b  1      OPC=nop             
  nop                                   #  5     0x14782c  1      OPC=nop             
  nop                                   #  6     0x14782d  1      OPC=nop             
  nop                                   #  7     0x14782e  1      OPC=nop             
  nop                                   #  8     0x14782f  1      OPC=nop             
  nop                                   #  9     0x147830  1      OPC=nop             
  nop                                   #  10    0x147831  1      OPC=nop             
  nop                                   #  11    0x147832  1      OPC=nop             
  nop                                   #  12    0x147833  1      OPC=nop             
  nop                                   #  13    0x147834  1      OPC=nop             
  nop                                   #  14    0x147835  1      OPC=nop             
  nop                                   #  15    0x147836  1      OPC=nop             
  nop                                   #  16    0x147837  1      OPC=nop             
  nop                                   #  17    0x147838  1      OPC=nop             
  nop                                   #  18    0x147839  1      OPC=nop             
  nop                                   #  19    0x14783a  1      OPC=nop             
  nop                                   #  20    0x14783b  1      OPC=nop             
  nop                                   #  21    0x14783c  1      OPC=nop             
  nop                                   #  22    0x14783d  1      OPC=nop             
  nop                                   #  23    0x14783e  1      OPC=nop             
  nop                                   #  24    0x14783f  1      OPC=nop             
                                                                                      
.size __env_unlock, .-__env_unlock

