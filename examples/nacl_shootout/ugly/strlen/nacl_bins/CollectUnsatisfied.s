  .text
  .globl CollectUnsatisfied
  .type CollectUnsatisfied, @function

#! file-offset 0x673e0
#! rip-offset  0x273e0
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.CollectUnsatisfied:            #        0x273e0  0      OPC=0     
  movl %edi, %esi               #  1     0x273e0  2      OPC=1157  
  movl %esi, %esi               #  2     0x273e2  2      OPC=1157  
  cmpb $0xff, 0xc(%r15,%rsi,1)  #  3     0x273e4  6      OPC=461   
  je .L_27400                   #  4     0x273ea  6      OPC=893   
  nop                           #  5     0x273f0  1      OPC=1343  
  nop                           #  6     0x273f1  1      OPC=1343  
  popq %r11                     #  7     0x273f2  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  8     0x273f4  7      OPC=131   
  nop                           #  9     0x273fb  1      OPC=1343  
  nop                           #  10    0x273fc  1      OPC=1343  
  nop                           #  11    0x273fd  1      OPC=1343  
  nop                           #  12    0x273fe  1      OPC=1343  
  addq %r15, %r11               #  13    0x273ff  3      OPC=72    
  jmpq %r11                     #  14    0x27402  3      OPC=928   
  nop                           #  15    0x27405  1      OPC=1343  
  nop                           #  16    0x27406  1      OPC=1343  
  nop                           #  17    0x27407  1      OPC=1343  
  nop                           #  18    0x27408  1      OPC=1343  
  nop                           #  19    0x27409  1      OPC=1343  
  nop                           #  20    0x2740a  1      OPC=1343  
  nop                           #  21    0x2740b  1      OPC=1343  
  nop                           #  22    0x2740c  1      OPC=1343  
.L_27400:                       #        0x2740d  0      OPC=0     
  movl 0x10051db2(%rip), %edi   #  23    0x2740d  6      OPC=1156  
  jmpq .List_Add                #  24    0x27413  5      OPC=930   
  nop                           #  25    0x27418  1      OPC=1343  
  nop                           #  26    0x27419  1      OPC=1343  
  nop                           #  27    0x2741a  1      OPC=1343  
  nop                           #  28    0x2741b  1      OPC=1343  
  nop                           #  29    0x2741c  1      OPC=1343  
  nop                           #  30    0x2741d  1      OPC=1343  
  nop                           #  31    0x2741e  1      OPC=1343  
  nop                           #  32    0x2741f  1      OPC=1343  
  nop                           #  33    0x27420  1      OPC=1343  
  nop                           #  34    0x27421  1      OPC=1343  
  nop                           #  35    0x27422  1      OPC=1343  
  nop                           #  36    0x27423  1      OPC=1343  
  nop                           #  37    0x27424  1      OPC=1343  
  nop                           #  38    0x27425  1      OPC=1343  
  nop                           #  39    0x27426  1      OPC=1343  
  nop                           #  40    0x27427  1      OPC=1343  
  nop                           #  41    0x27428  1      OPC=1343  
  nop                           #  42    0x27429  1      OPC=1343  
  nop                           #  43    0x2742a  1      OPC=1343  
  nop                           #  44    0x2742b  1      OPC=1343  
  nop                           #  45    0x2742c  1      OPC=1343  
                                                                   
.size CollectUnsatisfied, .-CollectUnsatisfied

