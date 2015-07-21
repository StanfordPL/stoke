  .text
  .globl append
  .type append, @function

#! file-offset 0x65140
#! rip-offset  0x25140
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
.append:                    #        0x25140  0      OPC=0     
  movl %edi, %edi           #  1     0x25140  2      OPC=1157  
  movl %esi, %esi           #  2     0x25142  2      OPC=1157  
  movl %edi, %edi           #  3     0x25144  2      OPC=1157  
  movl $0x0, (%r15,%rdi,1)  #  4     0x25146  8      OPC=1135  
  nop                       #  5     0x2514e  1      OPC=1343  
  nop                       #  6     0x2514f  1      OPC=1343  
  nop                       #  7     0x25150  1      OPC=1343  
  nop                       #  8     0x25151  1      OPC=1343  
  nop                       #  9     0x25152  1      OPC=1343  
  nop                       #  10    0x25153  1      OPC=1343  
  nop                       #  11    0x25154  1      OPC=1343  
  nop                       #  12    0x25155  1      OPC=1343  
  nop                       #  13    0x25156  1      OPC=1343  
  nop                       #  14    0x25157  1      OPC=1343  
  nop                       #  15    0x25158  1      OPC=1343  
  nop                       #  16    0x25159  1      OPC=1343  
  nop                       #  17    0x2515a  1      OPC=1343  
  nop                       #  18    0x2515b  1      OPC=1343  
  nop                       #  19    0x2515c  1      OPC=1343  
  nop                       #  20    0x2515d  1      OPC=1343  
  nop                       #  21    0x2515e  1      OPC=1343  
  nop                       #  22    0x2515f  1      OPC=1343  
.L_25160:                   #        0x25160  0      OPC=0     
  movq %rsi, %rax           #  23    0x25160  3      OPC=1162  
  movl %esi, %esi           #  24    0x25163  2      OPC=1157  
  movl (%r15,%rsi,1), %esi  #  25    0x25165  4      OPC=1156  
  testq %rsi, %rsi          #  26    0x25169  3      OPC=2438  
  jne .L_25160              #  27    0x2516c  6      OPC=963   
  nop                       #  28    0x25172  1      OPC=1343  
  nop                       #  29    0x25173  1      OPC=1343  
  movl %eax, %eax           #  30    0x25174  2      OPC=1157  
  movl %edi, (%r15,%rax,1)  #  31    0x25176  4      OPC=1136  
  popq %r11                 #  32    0x2517a  2      OPC=1694  
  andl $0xffffffe0, %r11d   #  33    0x2517c  7      OPC=131   
  nop                       #  34    0x25183  1      OPC=1343  
  nop                       #  35    0x25184  1      OPC=1343  
  nop                       #  36    0x25185  1      OPC=1343  
  nop                       #  37    0x25186  1      OPC=1343  
  addq %r15, %r11           #  38    0x25187  3      OPC=72    
  jmpq %r11                 #  39    0x2518a  3      OPC=928   
                                                               
.size append, .-append

