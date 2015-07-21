  .text
  .globl arrayfile_set_keep_output
  .type arrayfile_set_keep_output, @function

#! file-offset 0x6a680
#! rip-offset  0x2a680
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.arrayfile_set_keep_output:     #        0x2a680  0      OPC=0     
  movl %edi, %edi               #  1     0x2a680  2      OPC=1157  
  movl %edi, %edi               #  2     0x2a682  2      OPC=1157  
  movl %esi, 0x14(%r15,%rdi,1)  #  3     0x2a684  5      OPC=1136  
  popq %r11                     #  4     0x2a689  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  5     0x2a68b  7      OPC=131   
  nop                           #  6     0x2a692  1      OPC=1343  
  nop                           #  7     0x2a693  1      OPC=1343  
  nop                           #  8     0x2a694  1      OPC=1343  
  nop                           #  9     0x2a695  1      OPC=1343  
  addq %r15, %r11               #  10    0x2a696  3      OPC=72    
  jmpq %r11                     #  11    0x2a699  3      OPC=928   
  nop                           #  12    0x2a69c  1      OPC=1343  
  nop                           #  13    0x2a69d  1      OPC=1343  
  nop                           #  14    0x2a69e  1      OPC=1343  
  nop                           #  15    0x2a69f  1      OPC=1343  
  nop                           #  16    0x2a6a0  1      OPC=1343  
  nop                           #  17    0x2a6a1  1      OPC=1343  
  nop                           #  18    0x2a6a2  1      OPC=1343  
  nop                           #  19    0x2a6a3  1      OPC=1343  
  nop                           #  20    0x2a6a4  1      OPC=1343  
  nop                           #  21    0x2a6a5  1      OPC=1343  
  nop                           #  22    0x2a6a6  1      OPC=1343  
                                                                   
.size arrayfile_set_keep_output, .-arrayfile_set_keep_output

