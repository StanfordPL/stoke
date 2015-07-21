  .text
  .globl _ZNKSt7collateIcE7do_hashEPKcS2_
  .type _ZNKSt7collateIcE7do_hashEPKcS2_, @function

#! file-offset 0xb89a0
#! rip-offset  0x789a0
#! capacity    96 bytes

# Text                              #  Line  RIP      Bytes  Opcode    
._ZNKSt7collateIcE7do_hashEPKcS2_:  #        0x789a0  0      OPC=0     
  movl %esi, %esi                   #  1     0x789a0  2      OPC=1157  
  movl %edx, %edx                   #  2     0x789a2  2      OPC=1157  
  xorl %ecx, %ecx                   #  3     0x789a4  2      OPC=3758  
  xorl %eax, %eax                   #  4     0x789a6  2      OPC=3758  
  cmpl %edx, %esi                   #  5     0x789a8  2      OPC=472   
  jae .L_789e0                      #  6     0x789aa  6      OPC=869   
  nop                               #  7     0x789b0  1      OPC=1343  
  nop                               #  8     0x789b1  1      OPC=1343  
  nop                               #  9     0x789b2  1      OPC=1343  
  nop                               #  10    0x789b3  1      OPC=1343  
  nop                               #  11    0x789b4  1      OPC=1343  
  nop                               #  12    0x789b5  1      OPC=1343  
  nop                               #  13    0x789b6  1      OPC=1343  
  nop                               #  14    0x789b7  1      OPC=1343  
  nop                               #  15    0x789b8  1      OPC=1343  
  nop                               #  16    0x789b9  1      OPC=1343  
  nop                               #  17    0x789ba  1      OPC=1343  
  nop                               #  18    0x789bb  1      OPC=1343  
  nop                               #  19    0x789bc  1      OPC=1343  
  nop                               #  20    0x789bd  1      OPC=1343  
  nop                               #  21    0x789be  1      OPC=1343  
  nop                               #  22    0x789bf  1      OPC=1343  
  nop                               #  23    0x789c0  1      OPC=1343  
  nop                               #  24    0x789c1  1      OPC=1343  
  nop                               #  25    0x789c2  1      OPC=1343  
  nop                               #  26    0x789c3  1      OPC=1343  
  nop                               #  27    0x789c4  1      OPC=1343  
  nop                               #  28    0x789c5  1      OPC=1343  
.L_789c0:                           #        0x789c6  0      OPC=0     
  movl %esi, %esi                   #  29    0x789c6  2      OPC=1157  
  movsbl (%r15,%rsi,1), %eax        #  30    0x789c8  5      OPC=1280  
  rorl $0x19, %ecx                  #  31    0x789cd  3      OPC=2025  
  addl $0x1, %esi                   #  32    0x789d0  3      OPC=65    
  addl %eax, %ecx                   #  33    0x789d3  2      OPC=67    
  cmpl %esi, %edx                   #  34    0x789d5  2      OPC=472   
  ja .L_789c0                       #  35    0x789d7  6      OPC=863   
  nop                               #  36    0x789dd  1      OPC=1343  
  nop                               #  37    0x789de  1      OPC=1343  
  movl %ecx, %eax                   #  38    0x789df  2      OPC=1157  
  nop                               #  39    0x789e1  1      OPC=1343  
  nop                               #  40    0x789e2  1      OPC=1343  
  nop                               #  41    0x789e3  1      OPC=1343  
  nop                               #  42    0x789e4  1      OPC=1343  
  nop                               #  43    0x789e5  1      OPC=1343  
  nop                               #  44    0x789e6  1      OPC=1343  
  nop                               #  45    0x789e7  1      OPC=1343  
  nop                               #  46    0x789e8  1      OPC=1343  
  nop                               #  47    0x789e9  1      OPC=1343  
  nop                               #  48    0x789ea  1      OPC=1343  
  nop                               #  49    0x789eb  1      OPC=1343  
.L_789e0:                           #        0x789ec  0      OPC=0     
  popq %r11                         #  50    0x789ec  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  51    0x789ee  7      OPC=131   
  nop                               #  52    0x789f5  1      OPC=1343  
  nop                               #  53    0x789f6  1      OPC=1343  
  nop                               #  54    0x789f7  1      OPC=1343  
  nop                               #  55    0x789f8  1      OPC=1343  
  addq %r15, %r11                   #  56    0x789f9  3      OPC=72    
  jmpq %r11                         #  57    0x789fc  3      OPC=928   
  nop                               #  58    0x789ff  1      OPC=1343  
  nop                               #  59    0x78a00  1      OPC=1343  
  nop                               #  60    0x78a01  1      OPC=1343  
  nop                               #  61    0x78a02  1      OPC=1343  
  nop                               #  62    0x78a03  1      OPC=1343  
  nop                               #  63    0x78a04  1      OPC=1343  
  nop                               #  64    0x78a05  1      OPC=1343  
  nop                               #  65    0x78a06  1      OPC=1343  
  nop                               #  66    0x78a07  1      OPC=1343  
  nop                               #  67    0x78a08  1      OPC=1343  
  nop                               #  68    0x78a09  1      OPC=1343  
  nop                               #  69    0x78a0a  1      OPC=1343  
  nop                               #  70    0x78a0b  1      OPC=1343  
  nop                               #  71    0x78a0c  1      OPC=1343  
  nop                               #  72    0x78a0d  1      OPC=1343  
  nop                               #  73    0x78a0e  1      OPC=1343  
  nop                               #  74    0x78a0f  1      OPC=1343  
  nop                               #  75    0x78a10  1      OPC=1343  
  nop                               #  76    0x78a11  1      OPC=1343  
  nop                               #  77    0x78a12  1      OPC=1343  
                                                                       
.size _ZNKSt7collateIcE7do_hashEPKcS2_, .-_ZNKSt7collateIcE7do_hashEPKcS2_

