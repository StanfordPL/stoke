  .text
  .globl strcoll
  .type strcoll, @function

#! file-offset 0x166880
#! rip-offset  0x126880
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.strcoll:          #        0x126880  0      OPC=<label>       
  movl %edi, %edi  #  1     0x126880  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x126882  2      OPC=movl_r32_r32  
  jmpq .strcmp     #  3     0x126884  5      OPC=jmpq_label_1  
  nop              #  4     0x126889  1      OPC=nop           
  nop              #  5     0x12688a  1      OPC=nop           
  nop              #  6     0x12688b  1      OPC=nop           
  nop              #  7     0x12688c  1      OPC=nop           
  nop              #  8     0x12688d  1      OPC=nop           
  nop              #  9     0x12688e  1      OPC=nop           
  nop              #  10    0x12688f  1      OPC=nop           
  nop              #  11    0x126890  1      OPC=nop           
  nop              #  12    0x126891  1      OPC=nop           
  nop              #  13    0x126892  1      OPC=nop           
  nop              #  14    0x126893  1      OPC=nop           
  nop              #  15    0x126894  1      OPC=nop           
  nop              #  16    0x126895  1      OPC=nop           
  nop              #  17    0x126896  1      OPC=nop           
  nop              #  18    0x126897  1      OPC=nop           
  nop              #  19    0x126898  1      OPC=nop           
  nop              #  20    0x126899  1      OPC=nop           
  nop              #  21    0x12689a  1      OPC=nop           
  nop              #  22    0x12689b  1      OPC=nop           
  nop              #  23    0x12689c  1      OPC=nop           
  nop              #  24    0x12689d  1      OPC=nop           
  nop              #  25    0x12689e  1      OPC=nop           
  nop              #  26    0x12689f  1      OPC=nop           
                                                               
.size strcoll, .-strcoll

