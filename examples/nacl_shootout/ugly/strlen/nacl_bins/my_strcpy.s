  .text
  .globl my_strcpy
  .type my_strcpy, @function

#! file-offset 0x69960
#! rip-offset  0x29960
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  Opcode    
.my_strcpy:                   #        0x29960  0      OPC=0     
  movl %edi, %eax             #  1     0x29960  2      OPC=1157  
  movl %esi, %esi             #  2     0x29962  2      OPC=1157  
  movl %esi, %esi             #  3     0x29964  2      OPC=1157  
  movzbl (%r15,%rsi,1), %edx  #  4     0x29966  5      OPC=1302  
  testb %dl, %dl              #  5     0x2996b  2      OPC=2440  
  je .L_299a0                 #  6     0x2996d  6      OPC=893   
  nop                         #  7     0x29973  1      OPC=1343  
  nop                         #  8     0x29974  1      OPC=1343  
  movq %rax, %rcx             #  9     0x29975  3      OPC=1162  
  nop                         #  10    0x29978  1      OPC=1343  
  nop                         #  11    0x29979  1      OPC=1343  
  nop                         #  12    0x2997a  1      OPC=1343  
  nop                         #  13    0x2997b  1      OPC=1343  
  nop                         #  14    0x2997c  1      OPC=1343  
  nop                         #  15    0x2997d  1      OPC=1343  
  nop                         #  16    0x2997e  1      OPC=1343  
  nop                         #  17    0x2997f  1      OPC=1343  
  nop                         #  18    0x29980  1      OPC=1343  
  nop                         #  19    0x29981  1      OPC=1343  
  nop                         #  20    0x29982  1      OPC=1343  
  nop                         #  21    0x29983  1      OPC=1343  
  nop                         #  22    0x29984  1      OPC=1343  
  nop                         #  23    0x29985  1      OPC=1343  
.L_29980:                     #        0x29986  0      OPC=0     
  movl %ecx, %ecx             #  24    0x29986  2      OPC=1157  
  movb %dl, (%r15,%rcx,1)     #  25    0x29988  4      OPC=1141  
  addl $0x1, %ecx             #  26    0x2998c  3      OPC=65    
  addl $0x1, %esi             #  27    0x2998f  3      OPC=65    
  movl %esi, %esi             #  28    0x29992  2      OPC=1157  
  movzbl (%r15,%rsi,1), %edx  #  29    0x29994  5      OPC=1302  
  testb %dl, %dl              #  30    0x29999  2      OPC=2440  
  jne .L_29980                #  31    0x2999b  6      OPC=963   
  nop                         #  32    0x299a1  1      OPC=1343  
  nop                         #  33    0x299a2  1      OPC=1343  
  nop                         #  34    0x299a3  1      OPC=1343  
  nop                         #  35    0x299a4  1      OPC=1343  
  nop                         #  36    0x299a5  1      OPC=1343  
  nop                         #  37    0x299a6  1      OPC=1343  
  nop                         #  38    0x299a7  1      OPC=1343  
  nop                         #  39    0x299a8  1      OPC=1343  
  nop                         #  40    0x299a9  1      OPC=1343  
  nop                         #  41    0x299aa  1      OPC=1343  
  nop                         #  42    0x299ab  1      OPC=1343  
.L_299a0:                     #        0x299ac  0      OPC=0     
  popq %r11                   #  43    0x299ac  2      OPC=1694  
  andl $0xffffffe0, %r11d     #  44    0x299ae  7      OPC=131   
  nop                         #  45    0x299b5  1      OPC=1343  
  nop                         #  46    0x299b6  1      OPC=1343  
  nop                         #  47    0x299b7  1      OPC=1343  
  nop                         #  48    0x299b8  1      OPC=1343  
  addq %r15, %r11             #  49    0x299b9  3      OPC=72    
  jmpq %r11                   #  50    0x299bc  3      OPC=928   
  nop                         #  51    0x299bf  1      OPC=1343  
  nop                         #  52    0x299c0  1      OPC=1343  
  nop                         #  53    0x299c1  1      OPC=1343  
  nop                         #  54    0x299c2  1      OPC=1343  
  nop                         #  55    0x299c3  1      OPC=1343  
  nop                         #  56    0x299c4  1      OPC=1343  
  nop                         #  57    0x299c5  1      OPC=1343  
  nop                         #  58    0x299c6  1      OPC=1343  
  nop                         #  59    0x299c7  1      OPC=1343  
  nop                         #  60    0x299c8  1      OPC=1343  
  nop                         #  61    0x299c9  1      OPC=1343  
  nop                         #  62    0x299ca  1      OPC=1343  
  nop                         #  63    0x299cb  1      OPC=1343  
  nop                         #  64    0x299cc  1      OPC=1343  
  nop                         #  65    0x299cd  1      OPC=1343  
  nop                         #  66    0x299ce  1      OPC=1343  
  nop                         #  67    0x299cf  1      OPC=1343  
  nop                         #  68    0x299d0  1      OPC=1343  
  nop                         #  69    0x299d1  1      OPC=1343  
  nop                         #  70    0x299d2  1      OPC=1343  
                                                                 
.size my_strcpy, .-my_strcpy

