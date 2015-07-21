  .text
  .globl pthread_cond_init
  .type pthread_cond_init, @function

#! file-offset 0x6f1c0
#! rip-offset  0x2f1c0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
.pthread_cond_init:         #        0x2f1c0  0      OPC=0     
  popq %r11                 #  1     0x2f1c0  2      OPC=1694  
  movl %edi, %edi           #  2     0x2f1c2  2      OPC=1157  
  xorl %eax, %eax           #  3     0x2f1c4  2      OPC=3758  
  movl %edi, %edi           #  4     0x2f1c6  2      OPC=1157  
  movl $0x0, (%r15,%rdi,1)  #  5     0x2f1c8  8      OPC=1135  
  andl $0xffffffe0, %r11d   #  6     0x2f1d0  7      OPC=131   
  nop                       #  7     0x2f1d7  1      OPC=1343  
  nop                       #  8     0x2f1d8  1      OPC=1343  
  nop                       #  9     0x2f1d9  1      OPC=1343  
  nop                       #  10    0x2f1da  1      OPC=1343  
  addq %r15, %r11           #  11    0x2f1db  3      OPC=72    
  jmpq %r11                 #  12    0x2f1de  3      OPC=928   
  nop                       #  13    0x2f1e1  1      OPC=1343  
  nop                       #  14    0x2f1e2  1      OPC=1343  
  nop                       #  15    0x2f1e3  1      OPC=1343  
  nop                       #  16    0x2f1e4  1      OPC=1343  
  nop                       #  17    0x2f1e5  1      OPC=1343  
  nop                       #  18    0x2f1e6  1      OPC=1343  
                                                               
.size pthread_cond_init, .-pthread_cond_init

