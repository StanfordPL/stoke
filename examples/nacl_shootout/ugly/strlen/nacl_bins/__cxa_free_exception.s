  .text
  .globl __cxa_free_exception
  .type __cxa_free_exception, @function

#! file-offset 0x1224e0
#! rip-offset  0xe24e0
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  Opcode    
.__cxa_free_exception:        #        0xe24e0  0      OPC=0     
  movl %edi, %edi             #  1     0xe24e0  2      OPC=1157  
  movl $0x100740a0, %ecx      #  2     0xe24e2  5      OPC=1154  
  cmpl %edi, %ecx             #  3     0xe24e7  2      OPC=472   
  ja .L_e2500                 #  4     0xe24e9  6      OPC=863   
  nop                         #  5     0xe24ef  1      OPC=1343  
  nop                         #  6     0xe24f0  1      OPC=1343  
  leal 0x4000(%rcx), %eax     #  7     0xe24f1  6      OPC=1066  
  cmpl %edi, %eax             #  8     0xe24f7  2      OPC=472   
  ja .L_e2520                 #  9     0xe24f9  6      OPC=863   
  nop                         #  10    0xe24ff  1      OPC=1343  
  nop                         #  11    0xe2500  1      OPC=1343  
  nop                         #  12    0xe2501  1      OPC=1343  
  nop                         #  13    0xe2502  1      OPC=1343  
  nop                         #  14    0xe2503  1      OPC=1343  
  nop                         #  15    0xe2504  1      OPC=1343  
  nop                         #  16    0xe2505  1      OPC=1343  
  nop                         #  17    0xe2506  1      OPC=1343  
  nop                         #  18    0xe2507  1      OPC=1343  
  nop                         #  19    0xe2508  1      OPC=1343  
  nop                         #  20    0xe2509  1      OPC=1343  
  nop                         #  21    0xe250a  1      OPC=1343  
  nop                         #  22    0xe250b  1      OPC=1343  
.L_e2500:                     #        0xe250c  0      OPC=0     
  subl $0x60, %edi            #  23    0xe250c  3      OPC=2384  
  jmpq .free                  #  24    0xe250f  5      OPC=930   
  nop                         #  25    0xe2514  1      OPC=1343  
  nop                         #  26    0xe2515  1      OPC=1343  
  nop                         #  27    0xe2516  1      OPC=1343  
  nop                         #  28    0xe2517  1      OPC=1343  
  nop                         #  29    0xe2518  1      OPC=1343  
  nop                         #  30    0xe2519  1      OPC=1343  
  nop                         #  31    0xe251a  1      OPC=1343  
  nop                         #  32    0xe251b  1      OPC=1343  
  nop                         #  33    0xe251c  1      OPC=1343  
  nop                         #  34    0xe251d  1      OPC=1343  
  nop                         #  35    0xe251e  1      OPC=1343  
  nop                         #  36    0xe251f  1      OPC=1343  
  nop                         #  37    0xe2520  1      OPC=1343  
  nop                         #  38    0xe2521  1      OPC=1343  
  nop                         #  39    0xe2522  1      OPC=1343  
  nop                         #  40    0xe2523  1      OPC=1343  
  nop                         #  41    0xe2524  1      OPC=1343  
  nop                         #  42    0xe2525  1      OPC=1343  
  nop                         #  43    0xe2526  1      OPC=1343  
  nop                         #  44    0xe2527  1      OPC=1343  
  nop                         #  45    0xe2528  1      OPC=1343  
  nop                         #  46    0xe2529  1      OPC=1343  
  nop                         #  47    0xe252a  1      OPC=1343  
  nop                         #  48    0xe252b  1      OPC=1343  
.L_e2520:                     #        0xe252c  0      OPC=0     
  popq %r11                   #  49    0xe252c  2      OPC=1694  
  subl %ecx, %edi             #  50    0xe252e  2      OPC=2386  
  movl $0xfffffffe, %eax      #  51    0xe2530  6      OPC=1155  
  movl %edi, %ecx             #  52    0xe2536  2      OPC=1157  
  shrl $0x9, %ecx             #  53    0xe2538  3      OPC=2312  
  roll %cl, %eax              #  54    0xe253b  2      OPC=1997  
  andl %eax, 0xff95b6a(%rip)  #  55    0xe253d  6      OPC=119   
  andl $0xffffffe0, %r11d     #  56    0xe2543  7      OPC=131   
  nop                         #  57    0xe254a  1      OPC=1343  
  nop                         #  58    0xe254b  1      OPC=1343  
  nop                         #  59    0xe254c  1      OPC=1343  
  nop                         #  60    0xe254d  1      OPC=1343  
  addq %r15, %r11             #  61    0xe254e  3      OPC=72    
  jmpq %r11                   #  62    0xe2551  3      OPC=928   
                                                                 
.size __cxa_free_exception, .-__cxa_free_exception

