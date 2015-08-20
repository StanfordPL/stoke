  .text
  .globl strcoll
  .type strcoll, @function

#! file-offset 0x166b80
#! rip-offset  0x126b80
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.strcoll:          #        0x126b80  0      OPC=<label>       
  movl %edi, %edi  #  1     0x126b80  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x126b82  2      OPC=movl_r32_r32  
  jmpq .strcmp     #  3     0x126b84  5      OPC=jmpq_label_1  
  nop              #  4     0x126b89  1      OPC=nop           
  nop              #  5     0x126b8a  1      OPC=nop           
  nop              #  6     0x126b8b  1      OPC=nop           
  nop              #  7     0x126b8c  1      OPC=nop           
  nop              #  8     0x126b8d  1      OPC=nop           
  nop              #  9     0x126b8e  1      OPC=nop           
  nop              #  10    0x126b8f  1      OPC=nop           
  nop              #  11    0x126b90  1      OPC=nop           
  nop              #  12    0x126b91  1      OPC=nop           
  nop              #  13    0x126b92  1      OPC=nop           
  nop              #  14    0x126b93  1      OPC=nop           
  nop              #  15    0x126b94  1      OPC=nop           
  nop              #  16    0x126b95  1      OPC=nop           
  nop              #  17    0x126b96  1      OPC=nop           
  nop              #  18    0x126b97  1      OPC=nop           
  nop              #  19    0x126b98  1      OPC=nop           
  nop              #  20    0x126b99  1      OPC=nop           
  nop              #  21    0x126b9a  1      OPC=nop           
  nop              #  22    0x126b9b  1      OPC=nop           
  nop              #  23    0x126b9c  1      OPC=nop           
  nop              #  24    0x126b9d  1      OPC=nop           
  nop              #  25    0x126b9e  1      OPC=nop           
  nop              #  26    0x126b9f  1      OPC=nop           
                                                               
.size strcoll, .-strcoll

