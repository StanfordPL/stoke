  .text
  .globl List_RemoveAll
  .type List_RemoveAll, @function

#! file-offset 0x66140
#! rip-offset  0x26140
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode    
.List_RemoveAll:                      #        0x26140  0      OPC=0     
  movl %edi, %edi                     #  1     0x26140  2      OPC=1157  
  movl %edi, %edi                     #  2     0x26142  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rdi,1)         #  3     0x26144  9      OPC=1135  
  movl %edi, %edi                     #  4     0x2614d  2      OPC=1157  
  movl $0xffffffff, 0xc(%r15,%rdi,1)  #  5     0x2614f  9      OPC=1135  
  popq %r11                           #  6     0x26158  2      OPC=1694  
  nop                                 #  7     0x2615a  1      OPC=1343  
  nop                                 #  8     0x2615b  1      OPC=1343  
  nop                                 #  9     0x2615c  1      OPC=1343  
  nop                                 #  10    0x2615d  1      OPC=1343  
  nop                                 #  11    0x2615e  1      OPC=1343  
  nop                                 #  12    0x2615f  1      OPC=1343  
  andl $0xffffffe0, %r11d             #  13    0x26160  7      OPC=131   
  nop                                 #  14    0x26167  1      OPC=1343  
  nop                                 #  15    0x26168  1      OPC=1343  
  nop                                 #  16    0x26169  1      OPC=1343  
  nop                                 #  17    0x2616a  1      OPC=1343  
  addq %r15, %r11                     #  18    0x2616b  3      OPC=72    
  jmpq %r11                           #  19    0x2616e  3      OPC=928   
  nop                                 #  20    0x26171  1      OPC=1343  
  nop                                 #  21    0x26172  1      OPC=1343  
  nop                                 #  22    0x26173  1      OPC=1343  
  nop                                 #  23    0x26174  1      OPC=1343  
  nop                                 #  24    0x26175  1      OPC=1343  
  nop                                 #  25    0x26176  1      OPC=1343  
  nop                                 #  26    0x26177  1      OPC=1343  
  nop                                 #  27    0x26178  1      OPC=1343  
  nop                                 #  28    0x26179  1      OPC=1343  
  nop                                 #  29    0x2617a  1      OPC=1343  
  nop                                 #  30    0x2617b  1      OPC=1343  
  nop                                 #  31    0x2617c  1      OPC=1343  
  nop                                 #  32    0x2617d  1      OPC=1343  
  nop                                 #  33    0x2617e  1      OPC=1343  
  nop                                 #  34    0x2617f  1      OPC=1343  
  nop                                 #  35    0x26180  1      OPC=1343  
  nop                                 #  36    0x26181  1      OPC=1343  
  nop                                 #  37    0x26182  1      OPC=1343  
  nop                                 #  38    0x26183  1      OPC=1343  
  nop                                 #  39    0x26184  1      OPC=1343  
  nop                                 #  40    0x26185  1      OPC=1343  
  nop                                 #  41    0x26186  1      OPC=1343  
                                                                         
.size List_RemoveAll, .-List_RemoveAll

