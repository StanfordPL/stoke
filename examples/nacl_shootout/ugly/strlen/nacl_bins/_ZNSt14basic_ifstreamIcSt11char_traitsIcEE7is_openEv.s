  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv, @function

#! file-offset 0x12c500
#! rip-offset  0xec500
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv:  #        0xec500  0      OPC=0     
  subl $0x8, %esp                                       #  1     0xec500  3      OPC=2384  
  addq %r15, %rsp                                       #  2     0xec503  3      OPC=72    
  addl $0x3c, %edi                                      #  3     0xec506  3      OPC=65    
  nop                                                   #  4     0xec509  1      OPC=1343  
  nop                                                   #  5     0xec50a  1      OPC=1343  
  nop                                                   #  6     0xec50b  1      OPC=1343  
  nop                                                   #  7     0xec50c  1      OPC=1343  
  nop                                                   #  8     0xec50d  1      OPC=1343  
  nop                                                   #  9     0xec50e  1      OPC=1343  
  nop                                                   #  10    0xec50f  1      OPC=1343  
  nop                                                   #  11    0xec510  1      OPC=1343  
  nop                                                   #  12    0xec511  1      OPC=1343  
  nop                                                   #  13    0xec512  1      OPC=1343  
  nop                                                   #  14    0xec513  1      OPC=1343  
  nop                                                   #  15    0xec514  1      OPC=1343  
  nop                                                   #  16    0xec515  1      OPC=1343  
  nop                                                   #  17    0xec516  1      OPC=1343  
  nop                                                   #  18    0xec517  1      OPC=1343  
  nop                                                   #  19    0xec518  1      OPC=1343  
  nop                                                   #  20    0xec519  1      OPC=1343  
  nop                                                   #  21    0xec51a  1      OPC=1343  
  callq ._ZNKSt12__basic_fileIcE7is_openEv              #  22    0xec51b  5      OPC=260   
  addl $0x8, %esp                                       #  23    0xec520  3      OPC=65    
  addq %r15, %rsp                                       #  24    0xec523  3      OPC=72    
  popq %r11                                             #  25    0xec526  2      OPC=1694  
  andl $0xffffffe0, %r11d                               #  26    0xec528  7      OPC=131   
  nop                                                   #  27    0xec52f  1      OPC=1343  
  nop                                                   #  28    0xec530  1      OPC=1343  
  nop                                                   #  29    0xec531  1      OPC=1343  
  nop                                                   #  30    0xec532  1      OPC=1343  
  addq %r15, %r11                                       #  31    0xec533  3      OPC=72    
  jmpq %r11                                             #  32    0xec536  3      OPC=928   
  nop                                                   #  33    0xec539  1      OPC=1343  
  nop                                                   #  34    0xec53a  1      OPC=1343  
  nop                                                   #  35    0xec53b  1      OPC=1343  
  nop                                                   #  36    0xec53c  1      OPC=1343  
  nop                                                   #  37    0xec53d  1      OPC=1343  
  nop                                                   #  38    0xec53e  1      OPC=1343  
  nop                                                   #  39    0xec53f  1      OPC=1343  
  nop                                                   #  40    0xec540  1      OPC=1343  
  nop                                                   #  41    0xec541  1      OPC=1343  
  nop                                                   #  42    0xec542  1      OPC=1343  
  nop                                                   #  43    0xec543  1      OPC=1343  
  nop                                                   #  44    0xec544  1      OPC=1343  
  nop                                                   #  45    0xec545  1      OPC=1343  
  nop                                                   #  46    0xec546  1      OPC=1343  
  cmpq $0xff, %rdx                                      #  47    0xec547  4      OPC=475   
  movl %eax, %edi                                       #  48    0xec54b  2      OPC=1157  
  je .L_ec560                                           #  49    0xec54d  6      OPC=893   
  nop                                                   #  50    0xec553  1      OPC=1343  
  nop                                                   #  51    0xec554  1      OPC=1343  
  nop                                                   #  52    0xec555  1      OPC=1343  
  nop                                                   #  53    0xec556  1      OPC=1343  
  nop                                                   #  54    0xec557  1      OPC=1343  
  nop                                                   #  55    0xec558  1      OPC=1343  
  nop                                                   #  56    0xec559  1      OPC=1343  
  nop                                                   #  57    0xec55a  1      OPC=1343  
  nop                                                   #  58    0xec55b  1      OPC=1343  
  nop                                                   #  59    0xec55c  1      OPC=1343  
  nop                                                   #  60    0xec55d  1      OPC=1343  
  nop                                                   #  61    0xec55e  1      OPC=1343  
  nop                                                   #  62    0xec55f  1      OPC=1343  
  nop                                                   #  63    0xec560  1      OPC=1343  
  nop                                                   #  64    0xec561  1      OPC=1343  
  nop                                                   #  65    0xec562  1      OPC=1343  
  nop                                                   #  66    0xec563  1      OPC=1343  
  nop                                                   #  67    0xec564  1      OPC=1343  
  nop                                                   #  68    0xec565  1      OPC=1343  
  nop                                                   #  69    0xec566  1      OPC=1343  
  nop                                                   #  70    0xec567  1      OPC=1343  
  callq ._Unwind_Resume                                 #  71    0xec568  5      OPC=260   
.L_ec560:                                               #        0xec56d  0      OPC=0     
  nop                                                   #  72    0xec56d  1      OPC=1343  
  nop                                                   #  73    0xec56e  1      OPC=1343  
  nop                                                   #  74    0xec56f  1      OPC=1343  
  nop                                                   #  75    0xec570  1      OPC=1343  
  nop                                                   #  76    0xec571  1      OPC=1343  
  nop                                                   #  77    0xec572  1      OPC=1343  
  nop                                                   #  78    0xec573  1      OPC=1343  
  nop                                                   #  79    0xec574  1      OPC=1343  
  nop                                                   #  80    0xec575  1      OPC=1343  
  nop                                                   #  81    0xec576  1      OPC=1343  
  nop                                                   #  82    0xec577  1      OPC=1343  
  nop                                                   #  83    0xec578  1      OPC=1343  
  nop                                                   #  84    0xec579  1      OPC=1343  
  nop                                                   #  85    0xec57a  1      OPC=1343  
  nop                                                   #  86    0xec57b  1      OPC=1343  
  nop                                                   #  87    0xec57c  1      OPC=1343  
  nop                                                   #  88    0xec57d  1      OPC=1343  
  nop                                                   #  89    0xec57e  1      OPC=1343  
  nop                                                   #  90    0xec57f  1      OPC=1343  
  nop                                                   #  91    0xec580  1      OPC=1343  
  nop                                                   #  92    0xec581  1      OPC=1343  
  nop                                                   #  93    0xec582  1      OPC=1343  
  nop                                                   #  94    0xec583  1      OPC=1343  
  nop                                                   #  95    0xec584  1      OPC=1343  
  nop                                                   #  96    0xec585  1      OPC=1343  
  nop                                                   #  97    0xec586  1      OPC=1343  
  nop                                                   #  98    0xec587  1      OPC=1343  
  callq .__cxa_call_unexpected                          #  99    0xec588  5      OPC=260   
                                                                                           
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv

