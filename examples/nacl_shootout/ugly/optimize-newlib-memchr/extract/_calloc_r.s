  .text
  .globl _calloc_r
  .type _calloc_r, @function

#! file-offset 0x157520
#! rip-offset  0x117520
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._calloc_r:        #        0x117520  0      OPC=<label>       
  movl %esi, %edi  #  1     0x117520  2      OPC=movl_r32_r32  
  movl %edx, %esi  #  2     0x117522  2      OPC=movl_r32_r32  
  jmpq .calloc     #  3     0x117524  5      OPC=jmpq_label_1  
  nop              #  4     0x117529  1      OPC=nop           
  nop              #  5     0x11752a  1      OPC=nop           
  nop              #  6     0x11752b  1      OPC=nop           
  nop              #  7     0x11752c  1      OPC=nop           
  nop              #  8     0x11752d  1      OPC=nop           
  nop              #  9     0x11752e  1      OPC=nop           
  nop              #  10    0x11752f  1      OPC=nop           
  nop              #  11    0x117530  1      OPC=nop           
  nop              #  12    0x117531  1      OPC=nop           
  nop              #  13    0x117532  1      OPC=nop           
  nop              #  14    0x117533  1      OPC=nop           
  nop              #  15    0x117534  1      OPC=nop           
  nop              #  16    0x117535  1      OPC=nop           
  nop              #  17    0x117536  1      OPC=nop           
  nop              #  18    0x117537  1      OPC=nop           
  nop              #  19    0x117538  1      OPC=nop           
  nop              #  20    0x117539  1      OPC=nop           
  nop              #  21    0x11753a  1      OPC=nop           
  nop              #  22    0x11753b  1      OPC=nop           
  nop              #  23    0x11753c  1      OPC=nop           
  nop              #  24    0x11753d  1      OPC=nop           
  nop              #  25    0x11753e  1      OPC=nop           
  nop              #  26    0x11753f  1      OPC=nop           
                                                               
.size _calloc_r, .-_calloc_r

