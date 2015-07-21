  .text
  .globl _ZNKSs11_M_disjunctEPKc
  .type _ZNKSs11_M_disjunctEPKc, @function

#! file-offset 0xe9dc0
#! rip-offset  0xa9dc0
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNKSs11_M_disjunctEPKc:   #        0xa9dc0  0      OPC=0     
  movl %edi, %edi           #  1     0xa9dc0  2      OPC=1157  
  movl %esi, %esi           #  2     0xa9dc2  2      OPC=1157  
  movl $0x1, %eax           #  3     0xa9dc4  5      OPC=1154  
  movl %edi, %edi           #  4     0xa9dc9  2      OPC=1157  
  movl (%r15,%rdi,1), %edx  #  5     0xa9dcb  4      OPC=1156  
  cmpl %esi, %edx           #  6     0xa9dcf  2      OPC=472   
  ja .L_a9e00               #  7     0xa9dd1  6      OPC=863   
  nop                       #  8     0xa9dd7  1      OPC=1343  
  nop                       #  9     0xa9dd8  1      OPC=1343  
  leal -0xc(%rdx), %eax     #  10    0xa9dd9  3      OPC=1066  
  movl %eax, %eax           #  11    0xa9ddc  2      OPC=1157  
  addl (%r15,%rax,1), %edx  #  12    0xa9dde  4      OPC=66    
  cmpl %esi, %edx           #  13    0xa9de2  2      OPC=472   
  xchgw %ax, %ax            #  14    0xa9de4  2      OPC=3700  
  setb %al                  #  15    0xa9de6  3      OPC=2169  
  nop                       #  16    0xa9de9  1      OPC=1343  
  nop                       #  17    0xa9dea  1      OPC=1343  
  nop                       #  18    0xa9deb  1      OPC=1343  
  nop                       #  19    0xa9dec  1      OPC=1343  
  nop                       #  20    0xa9ded  1      OPC=1343  
  nop                       #  21    0xa9dee  1      OPC=1343  
  nop                       #  22    0xa9def  1      OPC=1343  
  nop                       #  23    0xa9df0  1      OPC=1343  
  nop                       #  24    0xa9df1  1      OPC=1343  
  nop                       #  25    0xa9df2  1      OPC=1343  
  nop                       #  26    0xa9df3  1      OPC=1343  
  nop                       #  27    0xa9df4  1      OPC=1343  
  nop                       #  28    0xa9df5  1      OPC=1343  
  nop                       #  29    0xa9df6  1      OPC=1343  
  nop                       #  30    0xa9df7  1      OPC=1343  
  nop                       #  31    0xa9df8  1      OPC=1343  
  nop                       #  32    0xa9df9  1      OPC=1343  
  nop                       #  33    0xa9dfa  1      OPC=1343  
  nop                       #  34    0xa9dfb  1      OPC=1343  
  nop                       #  35    0xa9dfc  1      OPC=1343  
  nop                       #  36    0xa9dfd  1      OPC=1343  
  nop                       #  37    0xa9dfe  1      OPC=1343  
  nop                       #  38    0xa9dff  1      OPC=1343  
  nop                       #  39    0xa9e00  1      OPC=1343  
  nop                       #  40    0xa9e01  1      OPC=1343  
  nop                       #  41    0xa9e02  1      OPC=1343  
  nop                       #  42    0xa9e03  1      OPC=1343  
  nop                       #  43    0xa9e04  1      OPC=1343  
  nop                       #  44    0xa9e05  1      OPC=1343  
.L_a9e00:                   #        0xa9e06  0      OPC=0     
  popq %r11                 #  45    0xa9e06  2      OPC=1694  
  andl $0xffffffe0, %r11d   #  46    0xa9e08  7      OPC=131   
  nop                       #  47    0xa9e0f  1      OPC=1343  
  nop                       #  48    0xa9e10  1      OPC=1343  
  nop                       #  49    0xa9e11  1      OPC=1343  
  nop                       #  50    0xa9e12  1      OPC=1343  
  addq %r15, %r11           #  51    0xa9e13  3      OPC=72    
  jmpq %r11                 #  52    0xa9e16  3      OPC=928   
  nop                       #  53    0xa9e19  1      OPC=1343  
  nop                       #  54    0xa9e1a  1      OPC=1343  
  nop                       #  55    0xa9e1b  1      OPC=1343  
  nop                       #  56    0xa9e1c  1      OPC=1343  
  nop                       #  57    0xa9e1d  1      OPC=1343  
  nop                       #  58    0xa9e1e  1      OPC=1343  
  nop                       #  59    0xa9e1f  1      OPC=1343  
  nop                       #  60    0xa9e20  1      OPC=1343  
  nop                       #  61    0xa9e21  1      OPC=1343  
  nop                       #  62    0xa9e22  1      OPC=1343  
  nop                       #  63    0xa9e23  1      OPC=1343  
  nop                       #  64    0xa9e24  1      OPC=1343  
  nop                       #  65    0xa9e25  1      OPC=1343  
  nop                       #  66    0xa9e26  1      OPC=1343  
  nop                       #  67    0xa9e27  1      OPC=1343  
  nop                       #  68    0xa9e28  1      OPC=1343  
  nop                       #  69    0xa9e29  1      OPC=1343  
  nop                       #  70    0xa9e2a  1      OPC=1343  
  nop                       #  71    0xa9e2b  1      OPC=1343  
  nop                       #  72    0xa9e2c  1      OPC=1343  
                                                               
.size _ZNKSs11_M_disjunctEPKc, .-_ZNKSs11_M_disjunctEPKc

