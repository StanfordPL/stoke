  .text
  .globl _putchar_r
  .type _putchar_r, @function

#! file-offset 0x1630c0
#! rip-offset  0x1230c0
#! capacity    32 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
._putchar_r:                   #        0x1230c0  0      OPC=0     
  movl %edi, %edi              #  1     0x1230c0  2      OPC=1157  
  movl %edi, %edi              #  2     0x1230c2  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %edx  #  3     0x1230c4  5      OPC=1156  
  jmpq ._putc_r                #  4     0x1230c9  5      OPC=930   
  nop                          #  5     0x1230ce  1      OPC=1343  
  nop                          #  6     0x1230cf  1      OPC=1343  
  nop                          #  7     0x1230d0  1      OPC=1343  
  nop                          #  8     0x1230d1  1      OPC=1343  
  nop                          #  9     0x1230d2  1      OPC=1343  
  nop                          #  10    0x1230d3  1      OPC=1343  
  nop                          #  11    0x1230d4  1      OPC=1343  
  nop                          #  12    0x1230d5  1      OPC=1343  
  nop                          #  13    0x1230d6  1      OPC=1343  
  nop                          #  14    0x1230d7  1      OPC=1343  
  nop                          #  15    0x1230d8  1      OPC=1343  
  nop                          #  16    0x1230d9  1      OPC=1343  
  nop                          #  17    0x1230da  1      OPC=1343  
  nop                          #  18    0x1230db  1      OPC=1343  
  nop                          #  19    0x1230dc  1      OPC=1343  
  nop                          #  20    0x1230dd  1      OPC=1343  
  nop                          #  21    0x1230de  1      OPC=1343  
  nop                          #  22    0x1230df  1      OPC=1343  
                                                                   
.size _putchar_r, .-_putchar_r

