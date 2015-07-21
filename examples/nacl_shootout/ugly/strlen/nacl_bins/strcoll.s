  .text
  .globl strcoll
  .type strcoll, @function

#! file-offset 0x166340
#! rip-offset  0x126340
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode    
.strcoll:          #        0x126340  0      OPC=0     
  movl %edi, %edi  #  1     0x126340  2      OPC=1157  
  movl %esi, %esi  #  2     0x126342  2      OPC=1157  
  jmpq .strcmp     #  3     0x126344  5      OPC=930   
  nop              #  4     0x126349  1      OPC=1343  
  nop              #  5     0x12634a  1      OPC=1343  
  nop              #  6     0x12634b  1      OPC=1343  
  nop              #  7     0x12634c  1      OPC=1343  
  nop              #  8     0x12634d  1      OPC=1343  
  nop              #  9     0x12634e  1      OPC=1343  
  nop              #  10    0x12634f  1      OPC=1343  
  nop              #  11    0x126350  1      OPC=1343  
  nop              #  12    0x126351  1      OPC=1343  
  nop              #  13    0x126352  1      OPC=1343  
  nop              #  14    0x126353  1      OPC=1343  
  nop              #  15    0x126354  1      OPC=1343  
  nop              #  16    0x126355  1      OPC=1343  
  nop              #  17    0x126356  1      OPC=1343  
  nop              #  18    0x126357  1      OPC=1343  
  nop              #  19    0x126358  1      OPC=1343  
  nop              #  20    0x126359  1      OPC=1343  
  nop              #  21    0x12635a  1      OPC=1343  
  nop              #  22    0x12635b  1      OPC=1343  
  nop              #  23    0x12635c  1      OPC=1343  
  nop              #  24    0x12635d  1      OPC=1343  
  nop              #  25    0x12635e  1      OPC=1343  
  nop              #  26    0x12635f  1      OPC=1343  
                                                       
.size strcoll, .-strcoll

