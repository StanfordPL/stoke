  .text
  .globl wcsxfrm
  .type wcsxfrm, @function

#! file-offset 0x183340
#! rip-offset  0x143340
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.wcsxfrm:          #        0x143340  0      OPC=<label>       
  movl %edi, %edi  #  1     0x143340  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x143342  2      OPC=movl_r32_r32  
  jmpq .wcslcpy    #  3     0x143344  5      OPC=jmpq_label_1  
  nop              #  4     0x143349  1      OPC=nop           
  nop              #  5     0x14334a  1      OPC=nop           
  nop              #  6     0x14334b  1      OPC=nop           
  nop              #  7     0x14334c  1      OPC=nop           
  nop              #  8     0x14334d  1      OPC=nop           
  nop              #  9     0x14334e  1      OPC=nop           
  nop              #  10    0x14334f  1      OPC=nop           
  nop              #  11    0x143350  1      OPC=nop           
  nop              #  12    0x143351  1      OPC=nop           
  nop              #  13    0x143352  1      OPC=nop           
  nop              #  14    0x143353  1      OPC=nop           
  nop              #  15    0x143354  1      OPC=nop           
  nop              #  16    0x143355  1      OPC=nop           
  nop              #  17    0x143356  1      OPC=nop           
  nop              #  18    0x143357  1      OPC=nop           
  nop              #  19    0x143358  1      OPC=nop           
  nop              #  20    0x143359  1      OPC=nop           
  nop              #  21    0x14335a  1      OPC=nop           
  nop              #  22    0x14335b  1      OPC=nop           
  nop              #  23    0x14335c  1      OPC=nop           
  nop              #  24    0x14335d  1      OPC=nop           
  nop              #  25    0x14335e  1      OPC=nop           
  nop              #  26    0x14335f  1      OPC=nop           
                                                               
.size wcsxfrm, .-wcsxfrm

