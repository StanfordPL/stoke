  .text
  .globl strcoll
  .type strcoll, @function

#! file-offset 0x1672a0
#! rip-offset  0x1272a0
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.strcoll:          #        0x1272a0  0      OPC=<label>       
  movl %edi, %edi  #  1     0x1272a0  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x1272a2  2      OPC=movl_r32_r32  
  jmpq .strcmp     #  3     0x1272a4  5      OPC=jmpq_label_1  
  nop              #  4     0x1272a9  1      OPC=nop           
  nop              #  5     0x1272aa  1      OPC=nop           
  nop              #  6     0x1272ab  1      OPC=nop           
  nop              #  7     0x1272ac  1      OPC=nop           
  nop              #  8     0x1272ad  1      OPC=nop           
  nop              #  9     0x1272ae  1      OPC=nop           
  nop              #  10    0x1272af  1      OPC=nop           
  nop              #  11    0x1272b0  1      OPC=nop           
  nop              #  12    0x1272b1  1      OPC=nop           
  nop              #  13    0x1272b2  1      OPC=nop           
  nop              #  14    0x1272b3  1      OPC=nop           
  nop              #  15    0x1272b4  1      OPC=nop           
  nop              #  16    0x1272b5  1      OPC=nop           
  nop              #  17    0x1272b6  1      OPC=nop           
  nop              #  18    0x1272b7  1      OPC=nop           
  nop              #  19    0x1272b8  1      OPC=nop           
  nop              #  20    0x1272b9  1      OPC=nop           
  nop              #  21    0x1272ba  1      OPC=nop           
  nop              #  22    0x1272bb  1      OPC=nop           
  nop              #  23    0x1272bc  1      OPC=nop           
  nop              #  24    0x1272bd  1      OPC=nop           
  nop              #  25    0x1272be  1      OPC=nop           
  nop              #  26    0x1272bf  1      OPC=nop           
                                                               
.size strcoll, .-strcoll

