  .text
  .globl __cxa_free_dependent_exception
  .type __cxa_free_dependent_exception, @function

#! file-offset 0x122460
#! rip-offset  0xe2460
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  Opcode    
.__cxa_free_dependent_exception:  #        0xe2460  0      OPC=0     
  movl %edi, %edi                 #  1     0xe2460  2      OPC=1157  
  movl $0x10073680, %edx          #  2     0xe2462  5      OPC=1154  
  cmpl %edi, %edx                 #  3     0xe2467  2      OPC=472   
  ja .L_e2480                     #  4     0xe2469  6      OPC=863   
  nop                             #  5     0xe246f  1      OPC=1343  
  nop                             #  6     0xe2470  1      OPC=1343  
  leal 0xa00(%rdx), %eax          #  7     0xe2471  6      OPC=1066  
  cmpl %edi, %eax                 #  8     0xe2477  2      OPC=472   
  ja .L_e24a0                     #  9     0xe2479  6      OPC=863   
  nop                             #  10    0xe247f  1      OPC=1343  
  nop                             #  11    0xe2480  1      OPC=1343  
  nop                             #  12    0xe2481  1      OPC=1343  
  nop                             #  13    0xe2482  1      OPC=1343  
  nop                             #  14    0xe2483  1      OPC=1343  
  nop                             #  15    0xe2484  1      OPC=1343  
  nop                             #  16    0xe2485  1      OPC=1343  
  nop                             #  17    0xe2486  1      OPC=1343  
  nop                             #  18    0xe2487  1      OPC=1343  
  nop                             #  19    0xe2488  1      OPC=1343  
  nop                             #  20    0xe2489  1      OPC=1343  
  nop                             #  21    0xe248a  1      OPC=1343  
  nop                             #  22    0xe248b  1      OPC=1343  
.L_e2480:                         #        0xe248c  0      OPC=0     
  jmpq .free                      #  23    0xe248c  5      OPC=930   
  nop                             #  24    0xe2491  1      OPC=1343  
  nop                             #  25    0xe2492  1      OPC=1343  
  nop                             #  26    0xe2493  1      OPC=1343  
  nop                             #  27    0xe2494  1      OPC=1343  
  nop                             #  28    0xe2495  1      OPC=1343  
  nop                             #  29    0xe2496  1      OPC=1343  
  nop                             #  30    0xe2497  1      OPC=1343  
  nop                             #  31    0xe2498  1      OPC=1343  
  nop                             #  32    0xe2499  1      OPC=1343  
  nop                             #  33    0xe249a  1      OPC=1343  
  nop                             #  34    0xe249b  1      OPC=1343  
  nop                             #  35    0xe249c  1      OPC=1343  
  nop                             #  36    0xe249d  1      OPC=1343  
  nop                             #  37    0xe249e  1      OPC=1343  
  nop                             #  38    0xe249f  1      OPC=1343  
  nop                             #  39    0xe24a0  1      OPC=1343  
  nop                             #  40    0xe24a1  1      OPC=1343  
  nop                             #  41    0xe24a2  1      OPC=1343  
  nop                             #  42    0xe24a3  1      OPC=1343  
  nop                             #  43    0xe24a4  1      OPC=1343  
  nop                             #  44    0xe24a5  1      OPC=1343  
  nop                             #  45    0xe24a6  1      OPC=1343  
  nop                             #  46    0xe24a7  1      OPC=1343  
  nop                             #  47    0xe24a8  1      OPC=1343  
  nop                             #  48    0xe24a9  1      OPC=1343  
  nop                             #  49    0xe24aa  1      OPC=1343  
  nop                             #  50    0xe24ab  1      OPC=1343  
.L_e24a0:                         #        0xe24ac  0      OPC=0     
  subl %edx, %edi                 #  51    0xe24ac  2      OPC=2386  
  movl $0xcccccccd, %ecx          #  52    0xe24ae  6      OPC=1155  
  movl $0xfffffffe, %esi          #  53    0xe24b4  6      OPC=1155  
  movl %edi, %eax                 #  54    0xe24ba  2      OPC=1157  
  mull %ecx                       #  55    0xe24bc  2      OPC=1317  
  popq %r11                       #  56    0xe24be  2      OPC=1694  
  shrl $0x6, %edx                 #  57    0xe24c0  3      OPC=2312  
  movl %edx, %ecx                 #  58    0xe24c3  2      OPC=1157  
  roll %cl, %esi                  #  59    0xe24c5  2      OPC=1997  
  andl %esi, 0xff91bc1(%rip)      #  60    0xe24c7  6      OPC=119   
  nop                             #  61    0xe24cd  1      OPC=1343  
  andl $0xffffffe0, %r11d         #  62    0xe24ce  7      OPC=131   
  nop                             #  63    0xe24d5  1      OPC=1343  
  nop                             #  64    0xe24d6  1      OPC=1343  
  nop                             #  65    0xe24d7  1      OPC=1343  
  nop                             #  66    0xe24d8  1      OPC=1343  
  addq %r15, %r11                 #  67    0xe24d9  3      OPC=72    
  jmpq %r11                       #  68    0xe24dc  3      OPC=928   
  nop                             #  69    0xe24df  1      OPC=1343  
  nop                             #  70    0xe24e0  1      OPC=1343  
  nop                             #  71    0xe24e1  1      OPC=1343  
  nop                             #  72    0xe24e2  1      OPC=1343  
  nop                             #  73    0xe24e3  1      OPC=1343  
  nop                             #  74    0xe24e4  1      OPC=1343  
  nop                             #  75    0xe24e5  1      OPC=1343  
  nop                             #  76    0xe24e6  1      OPC=1343  
  nop                             #  77    0xe24e7  1      OPC=1343  
  nop                             #  78    0xe24e8  1      OPC=1343  
  nop                             #  79    0xe24e9  1      OPC=1343  
  nop                             #  80    0xe24ea  1      OPC=1343  
  nop                             #  81    0xe24eb  1      OPC=1343  
  nop                             #  82    0xe24ec  1      OPC=1343  
  nop                             #  83    0xe24ed  1      OPC=1343  
  nop                             #  84    0xe24ee  1      OPC=1343  
  nop                             #  85    0xe24ef  1      OPC=1343  
  nop                             #  86    0xe24f0  1      OPC=1343  
  nop                             #  87    0xe24f1  1      OPC=1343  
  nop                             #  88    0xe24f2  1      OPC=1343  
  nop                             #  89    0xe24f3  1      OPC=1343  
  nop                             #  90    0xe24f4  1      OPC=1343  
                                                                     
.size __cxa_free_dependent_exception, .-__cxa_free_dependent_exception

