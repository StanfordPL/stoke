  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE7is_openEv
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE7is_openEv, @function

#! file-offset 0x12c700
#! rip-offset  0xec700
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_fstreamIwSt11char_traitsIwEE7is_openEv:  #        0xec700  0      OPC=0     
  subl $0x8, %esp                                      #  1     0xec700  3      OPC=2384  
  addq %r15, %rsp                                      #  2     0xec703  3      OPC=72    
  addl $0x40, %edi                                     #  3     0xec706  3      OPC=65    
  nop                                                  #  4     0xec709  1      OPC=1343  
  nop                                                  #  5     0xec70a  1      OPC=1343  
  nop                                                  #  6     0xec70b  1      OPC=1343  
  nop                                                  #  7     0xec70c  1      OPC=1343  
  nop                                                  #  8     0xec70d  1      OPC=1343  
  nop                                                  #  9     0xec70e  1      OPC=1343  
  nop                                                  #  10    0xec70f  1      OPC=1343  
  nop                                                  #  11    0xec710  1      OPC=1343  
  nop                                                  #  12    0xec711  1      OPC=1343  
  nop                                                  #  13    0xec712  1      OPC=1343  
  nop                                                  #  14    0xec713  1      OPC=1343  
  nop                                                  #  15    0xec714  1      OPC=1343  
  nop                                                  #  16    0xec715  1      OPC=1343  
  nop                                                  #  17    0xec716  1      OPC=1343  
  nop                                                  #  18    0xec717  1      OPC=1343  
  nop                                                  #  19    0xec718  1      OPC=1343  
  nop                                                  #  20    0xec719  1      OPC=1343  
  nop                                                  #  21    0xec71a  1      OPC=1343  
  callq ._ZNKSt12__basic_fileIcE7is_openEv             #  22    0xec71b  5      OPC=260   
  addl $0x8, %esp                                      #  23    0xec720  3      OPC=65    
  addq %r15, %rsp                                      #  24    0xec723  3      OPC=72    
  popq %r11                                            #  25    0xec726  2      OPC=1694  
  andl $0xffffffe0, %r11d                              #  26    0xec728  7      OPC=131   
  nop                                                  #  27    0xec72f  1      OPC=1343  
  nop                                                  #  28    0xec730  1      OPC=1343  
  nop                                                  #  29    0xec731  1      OPC=1343  
  nop                                                  #  30    0xec732  1      OPC=1343  
  addq %r15, %r11                                      #  31    0xec733  3      OPC=72    
  jmpq %r11                                            #  32    0xec736  3      OPC=928   
  nop                                                  #  33    0xec739  1      OPC=1343  
  nop                                                  #  34    0xec73a  1      OPC=1343  
  nop                                                  #  35    0xec73b  1      OPC=1343  
  nop                                                  #  36    0xec73c  1      OPC=1343  
  nop                                                  #  37    0xec73d  1      OPC=1343  
  nop                                                  #  38    0xec73e  1      OPC=1343  
  nop                                                  #  39    0xec73f  1      OPC=1343  
  nop                                                  #  40    0xec740  1      OPC=1343  
  nop                                                  #  41    0xec741  1      OPC=1343  
  nop                                                  #  42    0xec742  1      OPC=1343  
  nop                                                  #  43    0xec743  1      OPC=1343  
  nop                                                  #  44    0xec744  1      OPC=1343  
  nop                                                  #  45    0xec745  1      OPC=1343  
  nop                                                  #  46    0xec746  1      OPC=1343  
  cmpq $0xff, %rdx                                     #  47    0xec747  4      OPC=475   
  movl %eax, %edi                                      #  48    0xec74b  2      OPC=1157  
  je .L_ec760                                          #  49    0xec74d  6      OPC=893   
  nop                                                  #  50    0xec753  1      OPC=1343  
  nop                                                  #  51    0xec754  1      OPC=1343  
  nop                                                  #  52    0xec755  1      OPC=1343  
  nop                                                  #  53    0xec756  1      OPC=1343  
  nop                                                  #  54    0xec757  1      OPC=1343  
  nop                                                  #  55    0xec758  1      OPC=1343  
  nop                                                  #  56    0xec759  1      OPC=1343  
  nop                                                  #  57    0xec75a  1      OPC=1343  
  nop                                                  #  58    0xec75b  1      OPC=1343  
  nop                                                  #  59    0xec75c  1      OPC=1343  
  nop                                                  #  60    0xec75d  1      OPC=1343  
  nop                                                  #  61    0xec75e  1      OPC=1343  
  nop                                                  #  62    0xec75f  1      OPC=1343  
  nop                                                  #  63    0xec760  1      OPC=1343  
  nop                                                  #  64    0xec761  1      OPC=1343  
  nop                                                  #  65    0xec762  1      OPC=1343  
  nop                                                  #  66    0xec763  1      OPC=1343  
  nop                                                  #  67    0xec764  1      OPC=1343  
  nop                                                  #  68    0xec765  1      OPC=1343  
  nop                                                  #  69    0xec766  1      OPC=1343  
  nop                                                  #  70    0xec767  1      OPC=1343  
  callq ._Unwind_Resume                                #  71    0xec768  5      OPC=260   
.L_ec760:                                              #        0xec76d  0      OPC=0     
  nop                                                  #  72    0xec76d  1      OPC=1343  
  nop                                                  #  73    0xec76e  1      OPC=1343  
  nop                                                  #  74    0xec76f  1      OPC=1343  
  nop                                                  #  75    0xec770  1      OPC=1343  
  nop                                                  #  76    0xec771  1      OPC=1343  
  nop                                                  #  77    0xec772  1      OPC=1343  
  nop                                                  #  78    0xec773  1      OPC=1343  
  nop                                                  #  79    0xec774  1      OPC=1343  
  nop                                                  #  80    0xec775  1      OPC=1343  
  nop                                                  #  81    0xec776  1      OPC=1343  
  nop                                                  #  82    0xec777  1      OPC=1343  
  nop                                                  #  83    0xec778  1      OPC=1343  
  nop                                                  #  84    0xec779  1      OPC=1343  
  nop                                                  #  85    0xec77a  1      OPC=1343  
  nop                                                  #  86    0xec77b  1      OPC=1343  
  nop                                                  #  87    0xec77c  1      OPC=1343  
  nop                                                  #  88    0xec77d  1      OPC=1343  
  nop                                                  #  89    0xec77e  1      OPC=1343  
  nop                                                  #  90    0xec77f  1      OPC=1343  
  nop                                                  #  91    0xec780  1      OPC=1343  
  nop                                                  #  92    0xec781  1      OPC=1343  
  nop                                                  #  93    0xec782  1      OPC=1343  
  nop                                                  #  94    0xec783  1      OPC=1343  
  nop                                                  #  95    0xec784  1      OPC=1343  
  nop                                                  #  96    0xec785  1      OPC=1343  
  nop                                                  #  97    0xec786  1      OPC=1343  
  nop                                                  #  98    0xec787  1      OPC=1343  
  callq .__cxa_call_unexpected                         #  99    0xec788  5      OPC=260   
                                                                                          
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE7is_openEv, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE7is_openEv

