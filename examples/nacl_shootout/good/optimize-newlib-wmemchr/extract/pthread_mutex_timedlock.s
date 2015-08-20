  .text
  .globl pthread_mutex_timedlock
  .type pthread_mutex_timedlock, @function

#! file-offset 0x6d860
#! rip-offset  0x2d860
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode            
.pthread_mutex_timedlock:  #        0x2d860  0      OPC=<label>       
  movl %esi, %edx          #  1     0x2d860  2      OPC=movl_r32_r32  
  movl %edi, %edi          #  2     0x2d862  2      OPC=movl_r32_r32  
  xorl %esi, %esi          #  3     0x2d864  2      OPC=xorl_r32_r32  
  jmpq .mutex_lock         #  4     0x2d866  5      OPC=jmpq_label_1  
  nop                      #  5     0x2d86b  1      OPC=nop           
  nop                      #  6     0x2d86c  1      OPC=nop           
  nop                      #  7     0x2d86d  1      OPC=nop           
  nop                      #  8     0x2d86e  1      OPC=nop           
  nop                      #  9     0x2d86f  1      OPC=nop           
  nop                      #  10    0x2d870  1      OPC=nop           
  nop                      #  11    0x2d871  1      OPC=nop           
  nop                      #  12    0x2d872  1      OPC=nop           
  nop                      #  13    0x2d873  1      OPC=nop           
  nop                      #  14    0x2d874  1      OPC=nop           
  nop                      #  15    0x2d875  1      OPC=nop           
  nop                      #  16    0x2d876  1      OPC=nop           
  nop                      #  17    0x2d877  1      OPC=nop           
  nop                      #  18    0x2d878  1      OPC=nop           
  nop                      #  19    0x2d879  1      OPC=nop           
  nop                      #  20    0x2d87a  1      OPC=nop           
  nop                      #  21    0x2d87b  1      OPC=nop           
  nop                      #  22    0x2d87c  1      OPC=nop           
  nop                      #  23    0x2d87d  1      OPC=nop           
  nop                      #  24    0x2d87e  1      OPC=nop           
  nop                      #  25    0x2d87f  1      OPC=nop           
                                                                      
.size pthread_mutex_timedlock, .-pthread_mutex_timedlock

