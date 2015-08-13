  .text
  .globl pthread_mutex_timedlock
  .type pthread_mutex_timedlock, @function

#! file-offset 0x6d560
#! rip-offset  0x2d560
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode            
.pthread_mutex_timedlock:  #        0x2d560  0      OPC=<label>       
  movl %esi, %edx          #  1     0x2d560  2      OPC=movl_r32_r32  
  movl %edi, %edi          #  2     0x2d562  2      OPC=movl_r32_r32  
  xorl %esi, %esi          #  3     0x2d564  2      OPC=xorl_r32_r32  
  jmpq .mutex_lock         #  4     0x2d566  5      OPC=jmpq_label_1  
  nop                      #  5     0x2d56b  1      OPC=nop           
  nop                      #  6     0x2d56c  1      OPC=nop           
  nop                      #  7     0x2d56d  1      OPC=nop           
  nop                      #  8     0x2d56e  1      OPC=nop           
  nop                      #  9     0x2d56f  1      OPC=nop           
  nop                      #  10    0x2d570  1      OPC=nop           
  nop                      #  11    0x2d571  1      OPC=nop           
  nop                      #  12    0x2d572  1      OPC=nop           
  nop                      #  13    0x2d573  1      OPC=nop           
  nop                      #  14    0x2d574  1      OPC=nop           
  nop                      #  15    0x2d575  1      OPC=nop           
  nop                      #  16    0x2d576  1      OPC=nop           
  nop                      #  17    0x2d577  1      OPC=nop           
  nop                      #  18    0x2d578  1      OPC=nop           
  nop                      #  19    0x2d579  1      OPC=nop           
  nop                      #  20    0x2d57a  1      OPC=nop           
  nop                      #  21    0x2d57b  1      OPC=nop           
  nop                      #  22    0x2d57c  1      OPC=nop           
  nop                      #  23    0x2d57d  1      OPC=nop           
  nop                      #  24    0x2d57e  1      OPC=nop           
  nop                      #  25    0x2d57f  1      OPC=nop           
                                                                      
.size pthread_mutex_timedlock, .-pthread_mutex_timedlock

