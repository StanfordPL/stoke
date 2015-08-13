  .text
  .globl _putchar_r
  .type _putchar_r, @function

#! file-offset 0x163600
#! rip-offset  0x123600
#! capacity    32 bytes

# Text                         #  Line  RIP       Bytes  Opcode            
._putchar_r:                   #        0x123600  0      OPC=<label>       
  movl %edi, %edi              #  1     0x123600  2      OPC=movl_r32_r32  
  movl %edi, %edi              #  2     0x123602  2      OPC=movl_r32_r32  
  movl 0x8(%r15,%rdi,1), %edx  #  3     0x123604  5      OPC=movl_r32_m32  
  jmpq ._putc_r                #  4     0x123609  5      OPC=jmpq_label_1  
  nop                          #  5     0x12360e  1      OPC=nop           
  nop                          #  6     0x12360f  1      OPC=nop           
  nop                          #  7     0x123610  1      OPC=nop           
  nop                          #  8     0x123611  1      OPC=nop           
  nop                          #  9     0x123612  1      OPC=nop           
  nop                          #  10    0x123613  1      OPC=nop           
  nop                          #  11    0x123614  1      OPC=nop           
  nop                          #  12    0x123615  1      OPC=nop           
  nop                          #  13    0x123616  1      OPC=nop           
  nop                          #  14    0x123617  1      OPC=nop           
  nop                          #  15    0x123618  1      OPC=nop           
  nop                          #  16    0x123619  1      OPC=nop           
  nop                          #  17    0x12361a  1      OPC=nop           
  nop                          #  18    0x12361b  1      OPC=nop           
  nop                          #  19    0x12361c  1      OPC=nop           
  nop                          #  20    0x12361d  1      OPC=nop           
  nop                          #  21    0x12361e  1      OPC=nop           
  nop                          #  22    0x12361f  1      OPC=nop           
                                                                           
.size _putchar_r, .-_putchar_r

