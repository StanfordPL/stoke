  .text
  .globl _putchar_r
  .type _putchar_r, @function

#! file-offset 0x163900
#! rip-offset  0x123900
#! capacity    32 bytes

# Text                         #  Line  RIP       Bytes  Opcode            
._putchar_r:                   #        0x123900  0      OPC=<label>       
  movl %edi, %edi              #  1     0x123900  2      OPC=movl_r32_r32  
  movl %edi, %edi              #  2     0x123902  2      OPC=movl_r32_r32  
  movl 0x8(%r15,%rdi,1), %edx  #  3     0x123904  5      OPC=movl_r32_m32  
  jmpq ._putc_r                #  4     0x123909  5      OPC=jmpq_label_1  
  nop                          #  5     0x12390e  1      OPC=nop           
  nop                          #  6     0x12390f  1      OPC=nop           
  nop                          #  7     0x123910  1      OPC=nop           
  nop                          #  8     0x123911  1      OPC=nop           
  nop                          #  9     0x123912  1      OPC=nop           
  nop                          #  10    0x123913  1      OPC=nop           
  nop                          #  11    0x123914  1      OPC=nop           
  nop                          #  12    0x123915  1      OPC=nop           
  nop                          #  13    0x123916  1      OPC=nop           
  nop                          #  14    0x123917  1      OPC=nop           
  nop                          #  15    0x123918  1      OPC=nop           
  nop                          #  16    0x123919  1      OPC=nop           
  nop                          #  17    0x12391a  1      OPC=nop           
  nop                          #  18    0x12391b  1      OPC=nop           
  nop                          #  19    0x12391c  1      OPC=nop           
  nop                          #  20    0x12391d  1      OPC=nop           
  nop                          #  21    0x12391e  1      OPC=nop           
  nop                          #  22    0x12391f  1      OPC=nop           
                                                                           
.size _putchar_r, .-_putchar_r

