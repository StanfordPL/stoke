  .text
  .globl pthread_cond_broadcast
  .type pthread_cond_broadcast, @function

#! file-offset 0x6f8c0
#! rip-offset  0x2f8c0
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.pthread_cond_broadcast:  #        0x2f8c0  0      OPC=<label>         
  movl %edi, %edi         #  1     0x2f8c0  2      OPC=movl_r32_r32    
  movl $0x7fffffff, %esi  #  2     0x2f8c2  5      OPC=movl_r32_imm32  
  jmpq .pulse             #  3     0x2f8c7  2      OPC=jmpq_label      
  nop                     #  4     0x2f8c9  1      OPC=nop             
  nop                     #  5     0x2f8ca  1      OPC=nop             
  nop                     #  6     0x2f8cb  1      OPC=nop             
  nop                     #  7     0x2f8cc  1      OPC=nop             
  nop                     #  8     0x2f8cd  1      OPC=nop             
  nop                     #  9     0x2f8ce  1      OPC=nop             
  nop                     #  10    0x2f8cf  1      OPC=nop             
  nop                     #  11    0x2f8d0  1      OPC=nop             
  nop                     #  12    0x2f8d1  1      OPC=nop             
  nop                     #  13    0x2f8d2  1      OPC=nop             
  nop                     #  14    0x2f8d3  1      OPC=nop             
  nop                     #  15    0x2f8d4  1      OPC=nop             
  nop                     #  16    0x2f8d5  1      OPC=nop             
  nop                     #  17    0x2f8d6  1      OPC=nop             
  nop                     #  18    0x2f8d7  1      OPC=nop             
  nop                     #  19    0x2f8d8  1      OPC=nop             
  nop                     #  20    0x2f8d9  1      OPC=nop             
  nop                     #  21    0x2f8da  1      OPC=nop             
  nop                     #  22    0x2f8db  1      OPC=nop             
  nop                     #  23    0x2f8dc  1      OPC=nop             
  nop                     #  24    0x2f8dd  1      OPC=nop             
  nop                     #  25    0x2f8de  1      OPC=nop             
  nop                     #  26    0x2f8df  1      OPC=nop             
                                                                       
.size pthread_cond_broadcast, .-pthread_cond_broadcast

