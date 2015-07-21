  .text
  .globl my_strlen
  .type my_strlen, @function

#! file-offset 0x69ac0
#! rip-offset  0x29ac0
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  Opcode    
.my_strlen:                   #        0x29ac0  0      OPC=0     
  movl %edi, %edx             #  1     0x29ac0  2      OPC=1157  
  movl %edx, %edx             #  2     0x29ac2  2      OPC=1157  
  cmpb $0x0, (%r15,%rdx,1)    #  3     0x29ac4  5      OPC=461   
  je .L_29b00                 #  4     0x29ac9  6      OPC=893   
  nop                         #  5     0x29acf  1      OPC=1343  
  nop                         #  6     0x29ad0  1      OPC=1343  
  addl $0x1, %edx             #  7     0x29ad1  3      OPC=65    
  xorl %eax, %eax             #  8     0x29ad4  2      OPC=3758  
  nop                         #  9     0x29ad6  1      OPC=1343  
  nop                         #  10    0x29ad7  1      OPC=1343  
  nop                         #  11    0x29ad8  1      OPC=1343  
  nop                         #  12    0x29ad9  1      OPC=1343  
  nop                         #  13    0x29ada  1      OPC=1343  
  nop                         #  14    0x29adb  1      OPC=1343  
  nop                         #  15    0x29adc  1      OPC=1343  
  nop                         #  16    0x29add  1      OPC=1343  
  nop                         #  17    0x29ade  1      OPC=1343  
  nop                         #  18    0x29adf  1      OPC=1343  
  nop                         #  19    0x29ae0  1      OPC=1343  
  nop                         #  20    0x29ae1  1      OPC=1343  
  nop                         #  21    0x29ae2  1      OPC=1343  
  nop                         #  22    0x29ae3  1      OPC=1343  
  nop                         #  23    0x29ae4  1      OPC=1343  
  nop                         #  24    0x29ae5  1      OPC=1343  
.L_29ae0:                     #        0x29ae6  0      OPC=0     
  addl $0x1, %eax             #  25    0x29ae6  3      OPC=65    
  movl %edx, %edx             #  26    0x29ae9  2      OPC=1157  
  movzbl (%r15,%rdx,1), %ecx  #  27    0x29aeb  5      OPC=1302  
  addl $0x1, %edx             #  28    0x29af0  3      OPC=65    
  testb %cl, %cl              #  29    0x29af3  2      OPC=2440  
  jne .L_29ae0                #  30    0x29af5  6      OPC=963   
  nop                         #  31    0x29afb  1      OPC=1343  
  nop                         #  32    0x29afc  1      OPC=1343  
  popq %r11                   #  33    0x29afd  2      OPC=1694  
  andl $0xffffffe0, %r11d     #  34    0x29aff  7      OPC=131   
  nop                         #  35    0x29b06  1      OPC=1343  
  nop                         #  36    0x29b07  1      OPC=1343  
  nop                         #  37    0x29b08  1      OPC=1343  
  nop                         #  38    0x29b09  1      OPC=1343  
  addq %r15, %r11             #  39    0x29b0a  3      OPC=72    
  jmpq %r11                   #  40    0x29b0d  3      OPC=928   
  nop                         #  41    0x29b10  1      OPC=1343  
  nop                         #  42    0x29b11  1      OPC=1343  
  nop                         #  43    0x29b12  1      OPC=1343  
.L_29b00:                     #        0x29b13  0      OPC=0     
  xorl %eax, %eax             #  44    0x29b13  2      OPC=3758  
  popq %r11                   #  45    0x29b15  2      OPC=1694  
  andl $0xffffffe0, %r11d     #  46    0x29b17  7      OPC=131   
  nop                         #  47    0x29b1e  1      OPC=1343  
  nop                         #  48    0x29b1f  1      OPC=1343  
  nop                         #  49    0x29b20  1      OPC=1343  
  nop                         #  50    0x29b21  1      OPC=1343  
  addq %r15, %r11             #  51    0x29b22  3      OPC=72    
  jmpq %r11                   #  52    0x29b25  3      OPC=928   
  nop                         #  53    0x29b28  1      OPC=1343  
  nop                         #  54    0x29b29  1      OPC=1343  
  nop                         #  55    0x29b2a  1      OPC=1343  
  nop                         #  56    0x29b2b  1      OPC=1343  
  nop                         #  57    0x29b2c  1      OPC=1343  
  nop                         #  58    0x29b2d  1      OPC=1343  
  nop                         #  59    0x29b2e  1      OPC=1343  
  nop                         #  60    0x29b2f  1      OPC=1343  
  nop                         #  61    0x29b30  1      OPC=1343  
  nop                         #  62    0x29b31  1      OPC=1343  
  nop                         #  63    0x29b32  1      OPC=1343  
  nop                         #  64    0x29b33  1      OPC=1343  
  nop                         #  65    0x29b34  1      OPC=1343  
  nop                         #  66    0x29b35  1      OPC=1343  
  nop                         #  67    0x29b36  1      OPC=1343  
  nop                         #  68    0x29b37  1      OPC=1343  
  nop                         #  69    0x29b38  1      OPC=1343  
  nop                         #  70    0x29b39  1      OPC=1343  
                                                                 
.size my_strlen, .-my_strlen

