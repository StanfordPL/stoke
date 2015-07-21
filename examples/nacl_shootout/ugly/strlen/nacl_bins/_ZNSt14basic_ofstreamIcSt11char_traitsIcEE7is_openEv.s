  .text
  .globl _ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv
  .type _ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv, @function

#! file-offset 0x12c400
#! rip-offset  0xec400
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv:  #        0xec400  0      OPC=0     
  subl $0x8, %esp                                       #  1     0xec400  3      OPC=2384  
  addq %r15, %rsp                                       #  2     0xec403  3      OPC=72    
  addl $0x38, %edi                                      #  3     0xec406  3      OPC=65    
  nop                                                   #  4     0xec409  1      OPC=1343  
  nop                                                   #  5     0xec40a  1      OPC=1343  
  nop                                                   #  6     0xec40b  1      OPC=1343  
  nop                                                   #  7     0xec40c  1      OPC=1343  
  nop                                                   #  8     0xec40d  1      OPC=1343  
  nop                                                   #  9     0xec40e  1      OPC=1343  
  nop                                                   #  10    0xec40f  1      OPC=1343  
  nop                                                   #  11    0xec410  1      OPC=1343  
  nop                                                   #  12    0xec411  1      OPC=1343  
  nop                                                   #  13    0xec412  1      OPC=1343  
  nop                                                   #  14    0xec413  1      OPC=1343  
  nop                                                   #  15    0xec414  1      OPC=1343  
  nop                                                   #  16    0xec415  1      OPC=1343  
  nop                                                   #  17    0xec416  1      OPC=1343  
  nop                                                   #  18    0xec417  1      OPC=1343  
  nop                                                   #  19    0xec418  1      OPC=1343  
  nop                                                   #  20    0xec419  1      OPC=1343  
  nop                                                   #  21    0xec41a  1      OPC=1343  
  callq ._ZNKSt12__basic_fileIcE7is_openEv              #  22    0xec41b  5      OPC=260   
  addl $0x8, %esp                                       #  23    0xec420  3      OPC=65    
  addq %r15, %rsp                                       #  24    0xec423  3      OPC=72    
  popq %r11                                             #  25    0xec426  2      OPC=1694  
  andl $0xffffffe0, %r11d                               #  26    0xec428  7      OPC=131   
  nop                                                   #  27    0xec42f  1      OPC=1343  
  nop                                                   #  28    0xec430  1      OPC=1343  
  nop                                                   #  29    0xec431  1      OPC=1343  
  nop                                                   #  30    0xec432  1      OPC=1343  
  addq %r15, %r11                                       #  31    0xec433  3      OPC=72    
  jmpq %r11                                             #  32    0xec436  3      OPC=928   
  nop                                                   #  33    0xec439  1      OPC=1343  
  nop                                                   #  34    0xec43a  1      OPC=1343  
  nop                                                   #  35    0xec43b  1      OPC=1343  
  nop                                                   #  36    0xec43c  1      OPC=1343  
  nop                                                   #  37    0xec43d  1      OPC=1343  
  nop                                                   #  38    0xec43e  1      OPC=1343  
  nop                                                   #  39    0xec43f  1      OPC=1343  
  nop                                                   #  40    0xec440  1      OPC=1343  
  nop                                                   #  41    0xec441  1      OPC=1343  
  nop                                                   #  42    0xec442  1      OPC=1343  
  nop                                                   #  43    0xec443  1      OPC=1343  
  nop                                                   #  44    0xec444  1      OPC=1343  
  nop                                                   #  45    0xec445  1      OPC=1343  
  nop                                                   #  46    0xec446  1      OPC=1343  
  cmpq $0xff, %rdx                                      #  47    0xec447  4      OPC=475   
  movl %eax, %edi                                       #  48    0xec44b  2      OPC=1157  
  je .L_ec460                                           #  49    0xec44d  6      OPC=893   
  nop                                                   #  50    0xec453  1      OPC=1343  
  nop                                                   #  51    0xec454  1      OPC=1343  
  nop                                                   #  52    0xec455  1      OPC=1343  
  nop                                                   #  53    0xec456  1      OPC=1343  
  nop                                                   #  54    0xec457  1      OPC=1343  
  nop                                                   #  55    0xec458  1      OPC=1343  
  nop                                                   #  56    0xec459  1      OPC=1343  
  nop                                                   #  57    0xec45a  1      OPC=1343  
  nop                                                   #  58    0xec45b  1      OPC=1343  
  nop                                                   #  59    0xec45c  1      OPC=1343  
  nop                                                   #  60    0xec45d  1      OPC=1343  
  nop                                                   #  61    0xec45e  1      OPC=1343  
  nop                                                   #  62    0xec45f  1      OPC=1343  
  nop                                                   #  63    0xec460  1      OPC=1343  
  nop                                                   #  64    0xec461  1      OPC=1343  
  nop                                                   #  65    0xec462  1      OPC=1343  
  nop                                                   #  66    0xec463  1      OPC=1343  
  nop                                                   #  67    0xec464  1      OPC=1343  
  nop                                                   #  68    0xec465  1      OPC=1343  
  nop                                                   #  69    0xec466  1      OPC=1343  
  nop                                                   #  70    0xec467  1      OPC=1343  
  callq ._Unwind_Resume                                 #  71    0xec468  5      OPC=260   
.L_ec460:                                               #        0xec46d  0      OPC=0     
  nop                                                   #  72    0xec46d  1      OPC=1343  
  nop                                                   #  73    0xec46e  1      OPC=1343  
  nop                                                   #  74    0xec46f  1      OPC=1343  
  nop                                                   #  75    0xec470  1      OPC=1343  
  nop                                                   #  76    0xec471  1      OPC=1343  
  nop                                                   #  77    0xec472  1      OPC=1343  
  nop                                                   #  78    0xec473  1      OPC=1343  
  nop                                                   #  79    0xec474  1      OPC=1343  
  nop                                                   #  80    0xec475  1      OPC=1343  
  nop                                                   #  81    0xec476  1      OPC=1343  
  nop                                                   #  82    0xec477  1      OPC=1343  
  nop                                                   #  83    0xec478  1      OPC=1343  
  nop                                                   #  84    0xec479  1      OPC=1343  
  nop                                                   #  85    0xec47a  1      OPC=1343  
  nop                                                   #  86    0xec47b  1      OPC=1343  
  nop                                                   #  87    0xec47c  1      OPC=1343  
  nop                                                   #  88    0xec47d  1      OPC=1343  
  nop                                                   #  89    0xec47e  1      OPC=1343  
  nop                                                   #  90    0xec47f  1      OPC=1343  
  nop                                                   #  91    0xec480  1      OPC=1343  
  nop                                                   #  92    0xec481  1      OPC=1343  
  nop                                                   #  93    0xec482  1      OPC=1343  
  nop                                                   #  94    0xec483  1      OPC=1343  
  nop                                                   #  95    0xec484  1      OPC=1343  
  nop                                                   #  96    0xec485  1      OPC=1343  
  nop                                                   #  97    0xec486  1      OPC=1343  
  nop                                                   #  98    0xec487  1      OPC=1343  
  callq .__cxa_call_unexpected                          #  99    0xec488  5      OPC=260   
                                                                                           
.size _ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv, .-_ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv

