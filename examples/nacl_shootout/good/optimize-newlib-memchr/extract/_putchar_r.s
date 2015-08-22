  .text
  .globl _putchar_r
  .type _putchar_r, @function

#! file-offset 0x164020
#! rip-offset  0x124020
#! capacity    32 bytes

# Text                         #  Line  RIP       Bytes  Opcode            
._putchar_r:                   #        0x124020  0      OPC=<label>       
  movl %edi, %edi              #  1     0x124020  2      OPC=movl_r32_r32  
  movl %edi, %edi              #  2     0x124022  2      OPC=movl_r32_r32  
  movl 0x8(%r15,%rdi,1), %edx  #  3     0x124024  5      OPC=movl_r32_m32  
  jmpq ._putc_r                #  4     0x124029  5      OPC=jmpq_label_1  
  nop                          #  5     0x12402e  1      OPC=nop           
  nop                          #  6     0x12402f  1      OPC=nop           
  nop                          #  7     0x124030  1      OPC=nop           
  nop                          #  8     0x124031  1      OPC=nop           
  nop                          #  9     0x124032  1      OPC=nop           
  nop                          #  10    0x124033  1      OPC=nop           
  nop                          #  11    0x124034  1      OPC=nop           
  nop                          #  12    0x124035  1      OPC=nop           
  nop                          #  13    0x124036  1      OPC=nop           
  nop                          #  14    0x124037  1      OPC=nop           
  nop                          #  15    0x124038  1      OPC=nop           
  nop                          #  16    0x124039  1      OPC=nop           
  nop                          #  17    0x12403a  1      OPC=nop           
  nop                          #  18    0x12403b  1      OPC=nop           
  nop                          #  19    0x12403c  1      OPC=nop           
  nop                          #  20    0x12403d  1      OPC=nop           
  nop                          #  21    0x12403e  1      OPC=nop           
  nop                          #  22    0x12403f  1      OPC=nop           
                                                                           
.size _putchar_r, .-_putchar_r

