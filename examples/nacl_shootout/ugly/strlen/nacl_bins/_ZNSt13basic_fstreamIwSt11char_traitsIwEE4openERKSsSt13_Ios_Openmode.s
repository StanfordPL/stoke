  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x132c80
#! rip-offset  0xf2c80
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode:        #        0xf2c80  0      OPC=0     
  movl %esi, %esi                                                             #  1     0xf2c80  2      OPC=1157  
  pushq %rbx                                                                  #  2     0xf2c82  1      OPC=1861  
  movl %edi, %ebx                                                             #  3     0xf2c83  2      OPC=1157  
  movl %esi, %esi                                                             #  4     0xf2c85  2      OPC=1157  
  movl (%r15,%rsi,1), %esi                                                    #  5     0xf2c87  4      OPC=1156  
  leal 0xc(%rbx), %edi                                                        #  6     0xf2c8b  3      OPC=1066  
  nop                                                                         #  7     0xf2c8e  1      OPC=1343  
  nop                                                                         #  8     0xf2c8f  1      OPC=1343  
  nop                                                                         #  9     0xf2c90  1      OPC=1343  
  nop                                                                         #  10    0xf2c91  1      OPC=1343  
  nop                                                                         #  11    0xf2c92  1      OPC=1343  
  nop                                                                         #  12    0xf2c93  1      OPC=1343  
  nop                                                                         #  13    0xf2c94  1      OPC=1343  
  nop                                                                         #  14    0xf2c95  1      OPC=1343  
  nop                                                                         #  15    0xf2c96  1      OPC=1343  
  nop                                                                         #  16    0xf2c97  1      OPC=1343  
  nop                                                                         #  17    0xf2c98  1      OPC=1343  
  nop                                                                         #  18    0xf2c99  1      OPC=1343  
  nop                                                                         #  19    0xf2c9a  1      OPC=1343  
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  20    0xf2c9b  5      OPC=260   
  testl %eax, %eax                                                            #  21    0xf2ca0  2      OPC=2436  
  je .L_f2cc0                                                                 #  22    0xf2ca2  6      OPC=893   
  nop                                                                         #  23    0xf2ca8  1      OPC=1343  
  nop                                                                         #  24    0xf2ca9  1      OPC=1343  
  movl %ebx, %ebx                                                             #  25    0xf2caa  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  26    0xf2cac  4      OPC=1156  
  xorl %esi, %esi                                                             #  27    0xf2cb0  2      OPC=3758  
  subl $0xc, %eax                                                             #  28    0xf2cb2  3      OPC=2384  
  movl %eax, %eax                                                             #  29    0xf2cb5  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  30    0xf2cb7  4      OPC=1156  
  addl %ebx, %edi                                                             #  31    0xf2cbb  2      OPC=67    
  popq %rbx                                                                   #  32    0xf2cbd  1      OPC=1694  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  33    0xf2cbe  5      OPC=930   
  nop                                                                         #  34    0xf2cc3  1      OPC=1343  
  nop                                                                         #  35    0xf2cc4  1      OPC=1343  
  nop                                                                         #  36    0xf2cc5  1      OPC=1343  
.L_f2cc0:                                                                     #        0xf2cc6  0      OPC=0     
  movl %ebx, %ebx                                                             #  37    0xf2cc6  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  38    0xf2cc8  4      OPC=1156  
  subl $0xc, %eax                                                             #  39    0xf2ccc  3      OPC=2384  
  movl %eax, %eax                                                             #  40    0xf2ccf  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  41    0xf2cd1  4      OPC=1156  
  addl %ebx, %edi                                                             #  42    0xf2cd5  2      OPC=67    
  movl %edi, %edi                                                             #  43    0xf2cd7  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xf2cd9  5      OPC=1156  
  popq %rbx                                                                   #  45    0xf2cde  1      OPC=1694  
  orl $0x4, %esi                                                              #  46    0xf2cdf  3      OPC=1378  
  nop                                                                         #  47    0xf2ce2  1      OPC=1343  
  nop                                                                         #  48    0xf2ce3  1      OPC=1343  
  nop                                                                         #  49    0xf2ce4  1      OPC=1343  
  nop                                                                         #  50    0xf2ce5  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  51    0xf2ce6  5      OPC=930   
  nop                                                                         #  52    0xf2ceb  1      OPC=1343  
  nop                                                                         #  53    0xf2cec  1      OPC=1343  
  nop                                                                         #  54    0xf2ced  1      OPC=1343  
  nop                                                                         #  55    0xf2cee  1      OPC=1343  
  nop                                                                         #  56    0xf2cef  1      OPC=1343  
  nop                                                                         #  57    0xf2cf0  1      OPC=1343  
  nop                                                                         #  58    0xf2cf1  1      OPC=1343  
  nop                                                                         #  59    0xf2cf2  1      OPC=1343  
  nop                                                                         #  60    0xf2cf3  1      OPC=1343  
  nop                                                                         #  61    0xf2cf4  1      OPC=1343  
  nop                                                                         #  62    0xf2cf5  1      OPC=1343  
  nop                                                                         #  63    0xf2cf6  1      OPC=1343  
  nop                                                                         #  64    0xf2cf7  1      OPC=1343  
  nop                                                                         #  65    0xf2cf8  1      OPC=1343  
  nop                                                                         #  66    0xf2cf9  1      OPC=1343  
  nop                                                                         #  67    0xf2cfa  1      OPC=1343  
  nop                                                                         #  68    0xf2cfb  1      OPC=1343  
  nop                                                                         #  69    0xf2cfc  1      OPC=1343  
  nop                                                                         #  70    0xf2cfd  1      OPC=1343  
  nop                                                                         #  71    0xf2cfe  1      OPC=1343  
  nop                                                                         #  72    0xf2cff  1      OPC=1343  
  nop                                                                         #  73    0xf2d00  1      OPC=1343  
  nop                                                                         #  74    0xf2d01  1      OPC=1343  
  nop                                                                         #  75    0xf2d02  1      OPC=1343  
  nop                                                                         #  76    0xf2d03  1      OPC=1343  
  nop                                                                         #  77    0xf2d04  1      OPC=1343  
  nop                                                                         #  78    0xf2d05  1      OPC=1343  
                                                                                                                 
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode

