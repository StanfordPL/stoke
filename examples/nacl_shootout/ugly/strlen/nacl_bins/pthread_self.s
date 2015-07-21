  .text
  .globl pthread_self
  .type pthread_self, @function

#! file-offset 0x6dde0
#! rip-offset  0x2dde0
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.pthread_self:                  #        0x2dde0  0      OPC=0     
  subl $0x8, %esp               #  1     0x2dde0  3      OPC=2384  
  addq %r15, %rsp               #  2     0x2dde3  3      OPC=72    
  nop                           #  3     0x2dde6  1      OPC=1343  
  nop                           #  4     0x2dde7  1      OPC=1343  
  nop                           #  5     0x2dde8  1      OPC=1343  
  nop                           #  6     0x2dde9  1      OPC=1343  
  nop                           #  7     0x2ddea  1      OPC=1343  
  nop                           #  8     0x2ddeb  1      OPC=1343  
  nop                           #  9     0x2ddec  1      OPC=1343  
  nop                           #  10    0x2dded  1      OPC=1343  
  nop                           #  11    0x2ddee  1      OPC=1343  
  nop                           #  12    0x2ddef  1      OPC=1343  
  nop                           #  13    0x2ddf0  1      OPC=1343  
  nop                           #  14    0x2ddf1  1      OPC=1343  
  nop                           #  15    0x2ddf2  1      OPC=1343  
  nop                           #  16    0x2ddf3  1      OPC=1343  
  nop                           #  17    0x2ddf4  1      OPC=1343  
  nop                           #  18    0x2ddf5  1      OPC=1343  
  nop                           #  19    0x2ddf6  1      OPC=1343  
  nop                           #  20    0x2ddf7  1      OPC=1343  
  nop                           #  21    0x2ddf8  1      OPC=1343  
  nop                           #  22    0x2ddf9  1      OPC=1343  
  nop                           #  23    0x2ddfa  1      OPC=1343  
  callq .__nacl_read_tp         #  24    0x2ddfb  5      OPC=260   
  movl %eax, %eax               #  25    0x2de00  2      OPC=1157  
  movl %eax, %eax               #  26    0x2de02  2      OPC=1157  
  movl 0x24(%r15,%rax,1), %eax  #  27    0x2de04  5      OPC=1156  
  addl $0x8, %esp               #  28    0x2de09  3      OPC=65    
  addq %r15, %rsp               #  29    0x2de0c  3      OPC=72    
  popq %r11                     #  30    0x2de0f  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  31    0x2de11  7      OPC=131   
  nop                           #  32    0x2de18  1      OPC=1343  
  nop                           #  33    0x2de19  1      OPC=1343  
  nop                           #  34    0x2de1a  1      OPC=1343  
  nop                           #  35    0x2de1b  1      OPC=1343  
  addq %r15, %r11               #  36    0x2de1c  3      OPC=72    
  jmpq %r11                     #  37    0x2de1f  3      OPC=928   
  nop                           #  38    0x2de22  1      OPC=1343  
  nop                           #  39    0x2de23  1      OPC=1343  
  nop                           #  40    0x2de24  1      OPC=1343  
  nop                           #  41    0x2de25  1      OPC=1343  
  nop                           #  42    0x2de26  1      OPC=1343  
                                                                   
.size pthread_self, .-pthread_self

