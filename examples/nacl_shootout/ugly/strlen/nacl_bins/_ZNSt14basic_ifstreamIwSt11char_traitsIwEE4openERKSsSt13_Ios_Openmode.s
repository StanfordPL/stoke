  .text
  .globl _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x132d80
#! rip-offset  0xf2d80
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode:       #        0xf2d80  0      OPC=0     
  movl %esi, %esi                                                             #  1     0xf2d80  2      OPC=1157  
  pushq %rbx                                                                  #  2     0xf2d82  1      OPC=1861  
  movl %edi, %ebx                                                             #  3     0xf2d83  2      OPC=1157  
  movl %esi, %esi                                                             #  4     0xf2d85  2      OPC=1157  
  movl (%r15,%rsi,1), %esi                                                    #  5     0xf2d87  4      OPC=1156  
  leal 0x8(%rbx), %edi                                                        #  6     0xf2d8b  3      OPC=1066  
  orl $0x8, %edx                                                              #  7     0xf2d8e  3      OPC=1378  
  nop                                                                         #  8     0xf2d91  1      OPC=1343  
  nop                                                                         #  9     0xf2d92  1      OPC=1343  
  nop                                                                         #  10    0xf2d93  1      OPC=1343  
  nop                                                                         #  11    0xf2d94  1      OPC=1343  
  nop                                                                         #  12    0xf2d95  1      OPC=1343  
  nop                                                                         #  13    0xf2d96  1      OPC=1343  
  nop                                                                         #  14    0xf2d97  1      OPC=1343  
  nop                                                                         #  15    0xf2d98  1      OPC=1343  
  nop                                                                         #  16    0xf2d99  1      OPC=1343  
  nop                                                                         #  17    0xf2d9a  1      OPC=1343  
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  18    0xf2d9b  5      OPC=260   
  testl %eax, %eax                                                            #  19    0xf2da0  2      OPC=2436  
  je .L_f2dc0                                                                 #  20    0xf2da2  6      OPC=893   
  nop                                                                         #  21    0xf2da8  1      OPC=1343  
  nop                                                                         #  22    0xf2da9  1      OPC=1343  
  movl %ebx, %ebx                                                             #  23    0xf2daa  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  24    0xf2dac  4      OPC=1156  
  xorl %esi, %esi                                                             #  25    0xf2db0  2      OPC=3758  
  subl $0xc, %eax                                                             #  26    0xf2db2  3      OPC=2384  
  movl %eax, %eax                                                             #  27    0xf2db5  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  28    0xf2db7  4      OPC=1156  
  addl %ebx, %edi                                                             #  29    0xf2dbb  2      OPC=67    
  popq %rbx                                                                   #  30    0xf2dbd  1      OPC=1694  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  31    0xf2dbe  5      OPC=930   
  nop                                                                         #  32    0xf2dc3  1      OPC=1343  
  nop                                                                         #  33    0xf2dc4  1      OPC=1343  
  nop                                                                         #  34    0xf2dc5  1      OPC=1343  
.L_f2dc0:                                                                     #        0xf2dc6  0      OPC=0     
  movl %ebx, %ebx                                                             #  35    0xf2dc6  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  36    0xf2dc8  4      OPC=1156  
  subl $0xc, %eax                                                             #  37    0xf2dcc  3      OPC=2384  
  movl %eax, %eax                                                             #  38    0xf2dcf  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  39    0xf2dd1  4      OPC=1156  
  addl %ebx, %edi                                                             #  40    0xf2dd5  2      OPC=67    
  movl %edi, %edi                                                             #  41    0xf2dd7  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                                #  42    0xf2dd9  5      OPC=1156  
  popq %rbx                                                                   #  43    0xf2dde  1      OPC=1694  
  orl $0x4, %esi                                                              #  44    0xf2ddf  3      OPC=1378  
  nop                                                                         #  45    0xf2de2  1      OPC=1343  
  nop                                                                         #  46    0xf2de3  1      OPC=1343  
  nop                                                                         #  47    0xf2de4  1      OPC=1343  
  nop                                                                         #  48    0xf2de5  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  49    0xf2de6  5      OPC=930   
  nop                                                                         #  50    0xf2deb  1      OPC=1343  
  nop                                                                         #  51    0xf2dec  1      OPC=1343  
  nop                                                                         #  52    0xf2ded  1      OPC=1343  
  nop                                                                         #  53    0xf2dee  1      OPC=1343  
  nop                                                                         #  54    0xf2def  1      OPC=1343  
  nop                                                                         #  55    0xf2df0  1      OPC=1343  
  nop                                                                         #  56    0xf2df1  1      OPC=1343  
  nop                                                                         #  57    0xf2df2  1      OPC=1343  
  nop                                                                         #  58    0xf2df3  1      OPC=1343  
  nop                                                                         #  59    0xf2df4  1      OPC=1343  
  nop                                                                         #  60    0xf2df5  1      OPC=1343  
  nop                                                                         #  61    0xf2df6  1      OPC=1343  
  nop                                                                         #  62    0xf2df7  1      OPC=1343  
  nop                                                                         #  63    0xf2df8  1      OPC=1343  
  nop                                                                         #  64    0xf2df9  1      OPC=1343  
  nop                                                                         #  65    0xf2dfa  1      OPC=1343  
  nop                                                                         #  66    0xf2dfb  1      OPC=1343  
  nop                                                                         #  67    0xf2dfc  1      OPC=1343  
  nop                                                                         #  68    0xf2dfd  1      OPC=1343  
  nop                                                                         #  69    0xf2dfe  1      OPC=1343  
  nop                                                                         #  70    0xf2dff  1      OPC=1343  
  nop                                                                         #  71    0xf2e00  1      OPC=1343  
  nop                                                                         #  72    0xf2e01  1      OPC=1343  
  nop                                                                         #  73    0xf2e02  1      OPC=1343  
  nop                                                                         #  74    0xf2e03  1      OPC=1343  
  nop                                                                         #  75    0xf2e04  1      OPC=1343  
  nop                                                                         #  76    0xf2e05  1      OPC=1343  
                                                                                                                 
.size _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode

