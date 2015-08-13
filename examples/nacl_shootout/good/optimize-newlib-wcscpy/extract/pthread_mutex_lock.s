  .text
  .globl pthread_mutex_lock
  .type pthread_mutex_lock, @function

#! file-offset 0x6d580
#! rip-offset  0x2d580
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  Opcode            
.pthread_mutex_lock:  #        0x2d580  0      OPC=<label>       
  movl %edi, %edi     #  1     0x2d580  2      OPC=movl_r32_r32  
  xorl %edx, %edx     #  2     0x2d582  2      OPC=xorl_r32_r32  
  xorl %esi, %esi     #  3     0x2d584  2      OPC=xorl_r32_r32  
  jmpq .mutex_lock    #  4     0x2d586  5      OPC=jmpq_label_1  
  nop                 #  5     0x2d58b  1      OPC=nop           
  nop                 #  6     0x2d58c  1      OPC=nop           
  nop                 #  7     0x2d58d  1      OPC=nop           
  nop                 #  8     0x2d58e  1      OPC=nop           
  nop                 #  9     0x2d58f  1      OPC=nop           
  nop                 #  10    0x2d590  1      OPC=nop           
  nop                 #  11    0x2d591  1      OPC=nop           
  nop                 #  12    0x2d592  1      OPC=nop           
  nop                 #  13    0x2d593  1      OPC=nop           
  nop                 #  14    0x2d594  1      OPC=nop           
  nop                 #  15    0x2d595  1      OPC=nop           
  nop                 #  16    0x2d596  1      OPC=nop           
  nop                 #  17    0x2d597  1      OPC=nop           
  nop                 #  18    0x2d598  1      OPC=nop           
  nop                 #  19    0x2d599  1      OPC=nop           
  nop                 #  20    0x2d59a  1      OPC=nop           
  nop                 #  21    0x2d59b  1      OPC=nop           
  nop                 #  22    0x2d59c  1      OPC=nop           
  nop                 #  23    0x2d59d  1      OPC=nop           
  nop                 #  24    0x2d59e  1      OPC=nop           
  nop                 #  25    0x2d59f  1      OPC=nop           
                                                                 
.size pthread_mutex_lock, .-pthread_mutex_lock

