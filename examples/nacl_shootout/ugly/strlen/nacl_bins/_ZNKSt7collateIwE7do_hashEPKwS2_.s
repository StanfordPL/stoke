  .text
  .globl _ZNKSt7collateIwE7do_hashEPKwS2_
  .type _ZNKSt7collateIwE7do_hashEPKwS2_, @function

#! file-offset 0xf1940
#! rip-offset  0xb1940
#! capacity    96 bytes

# Text                              #  Line  RIP      Bytes  Opcode    
._ZNKSt7collateIwE7do_hashEPKwS2_:  #        0xb1940  0      OPC=0     
  movl %esi, %esi                   #  1     0xb1940  2      OPC=1157  
  movl %edx, %edx                   #  2     0xb1942  2      OPC=1157  
  xorl %ecx, %ecx                   #  3     0xb1944  2      OPC=3758  
  xorl %eax, %eax                   #  4     0xb1946  2      OPC=3758  
  cmpl %edx, %esi                   #  5     0xb1948  2      OPC=472   
  jae .L_b1980                      #  6     0xb194a  6      OPC=869   
  nop                               #  7     0xb1950  1      OPC=1343  
  nop                               #  8     0xb1951  1      OPC=1343  
  nop                               #  9     0xb1952  1      OPC=1343  
  nop                               #  10    0xb1953  1      OPC=1343  
  nop                               #  11    0xb1954  1      OPC=1343  
  nop                               #  12    0xb1955  1      OPC=1343  
  nop                               #  13    0xb1956  1      OPC=1343  
  nop                               #  14    0xb1957  1      OPC=1343  
  nop                               #  15    0xb1958  1      OPC=1343  
  nop                               #  16    0xb1959  1      OPC=1343  
  nop                               #  17    0xb195a  1      OPC=1343  
  nop                               #  18    0xb195b  1      OPC=1343  
  nop                               #  19    0xb195c  1      OPC=1343  
  nop                               #  20    0xb195d  1      OPC=1343  
  nop                               #  21    0xb195e  1      OPC=1343  
  nop                               #  22    0xb195f  1      OPC=1343  
  nop                               #  23    0xb1960  1      OPC=1343  
  nop                               #  24    0xb1961  1      OPC=1343  
  nop                               #  25    0xb1962  1      OPC=1343  
  nop                               #  26    0xb1963  1      OPC=1343  
  nop                               #  27    0xb1964  1      OPC=1343  
  nop                               #  28    0xb1965  1      OPC=1343  
.L_b1960:                           #        0xb1966  0      OPC=0     
  rorl $0x19, %ecx                  #  29    0xb1966  3      OPC=2025  
  movl %esi, %esi                   #  30    0xb1969  2      OPC=1157  
  addl (%r15,%rsi,1), %ecx          #  31    0xb196b  4      OPC=66    
  addl $0x4, %esi                   #  32    0xb196f  3      OPC=65    
  cmpl %esi, %edx                   #  33    0xb1972  2      OPC=472   
  ja .L_b1960                       #  34    0xb1974  6      OPC=863   
  nop                               #  35    0xb197a  1      OPC=1343  
  nop                               #  36    0xb197b  1      OPC=1343  
  movl %ecx, %eax                   #  37    0xb197c  2      OPC=1157  
  nop                               #  38    0xb197e  1      OPC=1343  
  nop                               #  39    0xb197f  1      OPC=1343  
  nop                               #  40    0xb1980  1      OPC=1343  
  nop                               #  41    0xb1981  1      OPC=1343  
  nop                               #  42    0xb1982  1      OPC=1343  
  nop                               #  43    0xb1983  1      OPC=1343  
  nop                               #  44    0xb1984  1      OPC=1343  
  nop                               #  45    0xb1985  1      OPC=1343  
  nop                               #  46    0xb1986  1      OPC=1343  
  nop                               #  47    0xb1987  1      OPC=1343  
  nop                               #  48    0xb1988  1      OPC=1343  
  nop                               #  49    0xb1989  1      OPC=1343  
  nop                               #  50    0xb198a  1      OPC=1343  
  nop                               #  51    0xb198b  1      OPC=1343  
.L_b1980:                           #        0xb198c  0      OPC=0     
  popq %r11                         #  52    0xb198c  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  53    0xb198e  7      OPC=131   
  nop                               #  54    0xb1995  1      OPC=1343  
  nop                               #  55    0xb1996  1      OPC=1343  
  nop                               #  56    0xb1997  1      OPC=1343  
  nop                               #  57    0xb1998  1      OPC=1343  
  addq %r15, %r11                   #  58    0xb1999  3      OPC=72    
  jmpq %r11                         #  59    0xb199c  3      OPC=928   
  nop                               #  60    0xb199f  1      OPC=1343  
  nop                               #  61    0xb19a0  1      OPC=1343  
  nop                               #  62    0xb19a1  1      OPC=1343  
  nop                               #  63    0xb19a2  1      OPC=1343  
  nop                               #  64    0xb19a3  1      OPC=1343  
  nop                               #  65    0xb19a4  1      OPC=1343  
  nop                               #  66    0xb19a5  1      OPC=1343  
  nop                               #  67    0xb19a6  1      OPC=1343  
  nop                               #  68    0xb19a7  1      OPC=1343  
  nop                               #  69    0xb19a8  1      OPC=1343  
  nop                               #  70    0xb19a9  1      OPC=1343  
  nop                               #  71    0xb19aa  1      OPC=1343  
  nop                               #  72    0xb19ab  1      OPC=1343  
  nop                               #  73    0xb19ac  1      OPC=1343  
  nop                               #  74    0xb19ad  1      OPC=1343  
  nop                               #  75    0xb19ae  1      OPC=1343  
  nop                               #  76    0xb19af  1      OPC=1343  
  nop                               #  77    0xb19b0  1      OPC=1343  
  nop                               #  78    0xb19b1  1      OPC=1343  
  nop                               #  79    0xb19b2  1      OPC=1343  
                                                                       
.size _ZNKSt7collateIwE7do_hashEPKwS2_, .-_ZNKSt7collateIwE7do_hashEPKwS2_

