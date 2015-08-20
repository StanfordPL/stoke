  .text
  .globl pthread_mutex_lock
  .type pthread_mutex_lock, @function

#! file-offset 0x6d880
#! rip-offset  0x2d880
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  Opcode            
.pthread_mutex_lock:  #        0x2d880  0      OPC=<label>       
  movl %edi, %edi     #  1     0x2d880  2      OPC=movl_r32_r32  
  xorl %edx, %edx     #  2     0x2d882  2      OPC=xorl_r32_r32  
  xorl %esi, %esi     #  3     0x2d884  2      OPC=xorl_r32_r32  
  jmpq .mutex_lock    #  4     0x2d886  5      OPC=jmpq_label_1  
  nop                 #  5     0x2d88b  1      OPC=nop           
  nop                 #  6     0x2d88c  1      OPC=nop           
  nop                 #  7     0x2d88d  1      OPC=nop           
  nop                 #  8     0x2d88e  1      OPC=nop           
  nop                 #  9     0x2d88f  1      OPC=nop           
  nop                 #  10    0x2d890  1      OPC=nop           
  nop                 #  11    0x2d891  1      OPC=nop           
  nop                 #  12    0x2d892  1      OPC=nop           
  nop                 #  13    0x2d893  1      OPC=nop           
  nop                 #  14    0x2d894  1      OPC=nop           
  nop                 #  15    0x2d895  1      OPC=nop           
  nop                 #  16    0x2d896  1      OPC=nop           
  nop                 #  17    0x2d897  1      OPC=nop           
  nop                 #  18    0x2d898  1      OPC=nop           
  nop                 #  19    0x2d899  1      OPC=nop           
  nop                 #  20    0x2d89a  1      OPC=nop           
  nop                 #  21    0x2d89b  1      OPC=nop           
  nop                 #  22    0x2d89c  1      OPC=nop           
  nop                 #  23    0x2d89d  1      OPC=nop           
  nop                 #  24    0x2d89e  1      OPC=nop           
  nop                 #  25    0x2d89f  1      OPC=nop           
                                                                 
.size pthread_mutex_lock, .-pthread_mutex_lock

