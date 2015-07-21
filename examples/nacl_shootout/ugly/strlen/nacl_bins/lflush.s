  .text
  .globl lflush
  .type lflush, @function

#! file-offset 0x164d60
#! rip-offset  0x124d60
#! capacity    64 bytes

# Text                           #  Line  RIP       Bytes  Opcode    
.lflush:                         #        0x124d60  0      OPC=0     
  movl %edi, %edi                #  1     0x124d60  2      OPC=1157  
  movl %edi, %edi                #  2     0x124d62  2      OPC=1157  
  movswl 0xc(%r15,%rdi,1), %eax  #  3     0x124d64  6      OPC=1279  
  andl $0x9, %eax                #  4     0x124d6a  3      OPC=132   
  cmpl $0x9, %eax                #  5     0x124d6d  3      OPC=470   
  je .L_124d80                   #  6     0x124d70  6      OPC=893   
  nop                            #  7     0x124d76  1      OPC=1343  
  nop                            #  8     0x124d77  1      OPC=1343  
  popq %r11                      #  9     0x124d78  2      OPC=1694  
  xorl %eax, %eax                #  10    0x124d7a  2      OPC=3758  
  andl $0xffffffe0, %r11d        #  11    0x124d7c  7      OPC=131   
  nop                            #  12    0x124d83  1      OPC=1343  
  nop                            #  13    0x124d84  1      OPC=1343  
  nop                            #  14    0x124d85  1      OPC=1343  
  nop                            #  15    0x124d86  1      OPC=1343  
  addq %r15, %r11                #  16    0x124d87  3      OPC=72    
  jmpq %r11                      #  17    0x124d8a  3      OPC=928   
.L_124d80:                       #        0x124d8d  0      OPC=0     
  jmpq .fflush                   #  18    0x124d8d  5      OPC=930   
  nop                            #  19    0x124d92  1      OPC=1343  
  nop                            #  20    0x124d93  1      OPC=1343  
  nop                            #  21    0x124d94  1      OPC=1343  
  nop                            #  22    0x124d95  1      OPC=1343  
  nop                            #  23    0x124d96  1      OPC=1343  
  nop                            #  24    0x124d97  1      OPC=1343  
  nop                            #  25    0x124d98  1      OPC=1343  
  nop                            #  26    0x124d99  1      OPC=1343  
  nop                            #  27    0x124d9a  1      OPC=1343  
  nop                            #  28    0x124d9b  1      OPC=1343  
  nop                            #  29    0x124d9c  1      OPC=1343  
  nop                            #  30    0x124d9d  1      OPC=1343  
  nop                            #  31    0x124d9e  1      OPC=1343  
  nop                            #  32    0x124d9f  1      OPC=1343  
  nop                            #  33    0x124da0  1      OPC=1343  
  nop                            #  34    0x124da1  1      OPC=1343  
  nop                            #  35    0x124da2  1      OPC=1343  
  nop                            #  36    0x124da3  1      OPC=1343  
  nop                            #  37    0x124da4  1      OPC=1343  
  nop                            #  38    0x124da5  1      OPC=1343  
  nop                            #  39    0x124da6  1      OPC=1343  
  nop                            #  40    0x124da7  1      OPC=1343  
  nop                            #  41    0x124da8  1      OPC=1343  
  nop                            #  42    0x124da9  1      OPC=1343  
  nop                            #  43    0x124daa  1      OPC=1343  
  nop                            #  44    0x124dab  1      OPC=1343  
  nop                            #  45    0x124dac  1      OPC=1343  
                                                                     
.size lflush, .-lflush

