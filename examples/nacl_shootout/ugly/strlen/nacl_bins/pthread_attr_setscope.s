  .text
  .globl pthread_attr_setscope
  .type pthread_attr_setscope, @function

#! file-offset 0x6d340
#! rip-offset  0x2d340
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.pthread_attr_setscope:    #        0x2d340  0      OPC=0     
  testl %esi, %esi         #  1     0x2d340  2      OPC=2436  
  movl $0x5f, %eax         #  2     0x2d342  5      OPC=1154  
  je .L_2d360              #  3     0x2d347  6      OPC=893   
  nop                      #  4     0x2d34d  1      OPC=1343  
  nop                      #  5     0x2d34e  1      OPC=1343  
  xorb %al, %al            #  6     0x2d34f  2      OPC=3767  
  movl $0x16, %edx         #  7     0x2d351  5      OPC=1154  
  cmpl $0x1, %esi          #  8     0x2d356  3      OPC=470   
  cmovnel %edx, %eax       #  9     0x2d359  3      OPC=362   
  nop                      #  10    0x2d35c  1      OPC=1343  
  nop                      #  11    0x2d35d  1      OPC=1343  
  nop                      #  12    0x2d35e  1      OPC=1343  
  nop                      #  13    0x2d35f  1      OPC=1343  
  nop                      #  14    0x2d360  1      OPC=1343  
  nop                      #  15    0x2d361  1      OPC=1343  
  nop                      #  16    0x2d362  1      OPC=1343  
  nop                      #  17    0x2d363  1      OPC=1343  
  nop                      #  18    0x2d364  1      OPC=1343  
  nop                      #  19    0x2d365  1      OPC=1343  
.L_2d360:                  #        0x2d366  0      OPC=0     
  popq %r11                #  20    0x2d366  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  21    0x2d368  7      OPC=131   
  nop                      #  22    0x2d36f  1      OPC=1343  
  nop                      #  23    0x2d370  1      OPC=1343  
  nop                      #  24    0x2d371  1      OPC=1343  
  nop                      #  25    0x2d372  1      OPC=1343  
  addq %r15, %r11          #  26    0x2d373  3      OPC=72    
  jmpq %r11                #  27    0x2d376  3      OPC=928   
  nop                      #  28    0x2d379  1      OPC=1343  
  nop                      #  29    0x2d37a  1      OPC=1343  
  nop                      #  30    0x2d37b  1      OPC=1343  
  nop                      #  31    0x2d37c  1      OPC=1343  
  nop                      #  32    0x2d37d  1      OPC=1343  
  nop                      #  33    0x2d37e  1      OPC=1343  
  nop                      #  34    0x2d37f  1      OPC=1343  
  nop                      #  35    0x2d380  1      OPC=1343  
  nop                      #  36    0x2d381  1      OPC=1343  
  nop                      #  37    0x2d382  1      OPC=1343  
  nop                      #  38    0x2d383  1      OPC=1343  
  nop                      #  39    0x2d384  1      OPC=1343  
  nop                      #  40    0x2d385  1      OPC=1343  
  nop                      #  41    0x2d386  1      OPC=1343  
  nop                      #  42    0x2d387  1      OPC=1343  
  nop                      #  43    0x2d388  1      OPC=1343  
  nop                      #  44    0x2d389  1      OPC=1343  
  nop                      #  45    0x2d38a  1      OPC=1343  
  nop                      #  46    0x2d38b  1      OPC=1343  
  nop                      #  47    0x2d38c  1      OPC=1343  
                                                              
.size pthread_attr_setscope, .-pthread_attr_setscope

