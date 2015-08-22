  .text
  .globl wmemmove
  .type wmemmove, @function

#! file-offset 0x184a40
#! rip-offset  0x144a40
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode             
.wmemmove:         #        0x144a40  0      OPC=<label>        
  movl %edi, %edi  #  1     0x144a40  2      OPC=movl_r32_r32   
  movl %esi, %esi  #  2     0x144a42  2      OPC=movl_r32_r32   
  shll $0x2, %edx  #  3     0x144a44  3      OPC=shll_r32_imm8  
  jmpq .memmove    #  4     0x144a47  5      OPC=jmpq_label_1   
  nop              #  5     0x144a4c  1      OPC=nop            
  nop              #  6     0x144a4d  1      OPC=nop            
  nop              #  7     0x144a4e  1      OPC=nop            
  nop              #  8     0x144a4f  1      OPC=nop            
  nop              #  9     0x144a50  1      OPC=nop            
  nop              #  10    0x144a51  1      OPC=nop            
  nop              #  11    0x144a52  1      OPC=nop            
  nop              #  12    0x144a53  1      OPC=nop            
  nop              #  13    0x144a54  1      OPC=nop            
  nop              #  14    0x144a55  1      OPC=nop            
  nop              #  15    0x144a56  1      OPC=nop            
  nop              #  16    0x144a57  1      OPC=nop            
  nop              #  17    0x144a58  1      OPC=nop            
  nop              #  18    0x144a59  1      OPC=nop            
  nop              #  19    0x144a5a  1      OPC=nop            
  nop              #  20    0x144a5b  1      OPC=nop            
  nop              #  21    0x144a5c  1      OPC=nop            
  nop              #  22    0x144a5d  1      OPC=nop            
  nop              #  23    0x144a5e  1      OPC=nop            
  nop              #  24    0x144a5f  1      OPC=nop            
                                                                
.size wmemmove, .-wmemmove

