  .text
  .globl pthread_cond_broadcast
  .type pthread_cond_broadcast, @function

#! file-offset 0x6fbc0
#! rip-offset  0x2fbc0
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.pthread_cond_broadcast:  #        0x2fbc0  0      OPC=<label>         
  movl %edi, %edi         #  1     0x2fbc0  2      OPC=movl_r32_r32    
  movl $0x7fffffff, %esi  #  2     0x2fbc2  5      OPC=movl_r32_imm32  
  jmpq .pulse             #  3     0x2fbc7  2      OPC=jmpq_label      
  nop                     #  4     0x2fbc9  1      OPC=nop             
  nop                     #  5     0x2fbca  1      OPC=nop             
  nop                     #  6     0x2fbcb  1      OPC=nop             
  nop                     #  7     0x2fbcc  1      OPC=nop             
  nop                     #  8     0x2fbcd  1      OPC=nop             
  nop                     #  9     0x2fbce  1      OPC=nop             
  nop                     #  10    0x2fbcf  1      OPC=nop             
  nop                     #  11    0x2fbd0  1      OPC=nop             
  nop                     #  12    0x2fbd1  1      OPC=nop             
  nop                     #  13    0x2fbd2  1      OPC=nop             
  nop                     #  14    0x2fbd3  1      OPC=nop             
  nop                     #  15    0x2fbd4  1      OPC=nop             
  nop                     #  16    0x2fbd5  1      OPC=nop             
  nop                     #  17    0x2fbd6  1      OPC=nop             
  nop                     #  18    0x2fbd7  1      OPC=nop             
  nop                     #  19    0x2fbd8  1      OPC=nop             
  nop                     #  20    0x2fbd9  1      OPC=nop             
  nop                     #  21    0x2fbda  1      OPC=nop             
  nop                     #  22    0x2fbdb  1      OPC=nop             
  nop                     #  23    0x2fbdc  1      OPC=nop             
  nop                     #  24    0x2fbdd  1      OPC=nop             
  nop                     #  25    0x2fbde  1      OPC=nop             
  nop                     #  26    0x2fbdf  1      OPC=nop             
                                                                       
.size pthread_cond_broadcast, .-pthread_cond_broadcast

