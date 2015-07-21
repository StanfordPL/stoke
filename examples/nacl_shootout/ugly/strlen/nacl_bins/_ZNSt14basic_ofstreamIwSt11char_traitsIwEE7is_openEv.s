  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEE7is_openEv
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEE7is_openEv, @function

#! file-offset 0x12c800
#! rip-offset  0xec800
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ofstreamIwSt11char_traitsIwEE7is_openEv:  #        0xec800  0      OPC=0     
  subl $0x8, %esp                                       #  1     0xec800  3      OPC=2384  
  addq %r15, %rsp                                       #  2     0xec803  3      OPC=72    
  addl $0x38, %edi                                      #  3     0xec806  3      OPC=65    
  nop                                                   #  4     0xec809  1      OPC=1343  
  nop                                                   #  5     0xec80a  1      OPC=1343  
  nop                                                   #  6     0xec80b  1      OPC=1343  
  nop                                                   #  7     0xec80c  1      OPC=1343  
  nop                                                   #  8     0xec80d  1      OPC=1343  
  nop                                                   #  9     0xec80e  1      OPC=1343  
  nop                                                   #  10    0xec80f  1      OPC=1343  
  nop                                                   #  11    0xec810  1      OPC=1343  
  nop                                                   #  12    0xec811  1      OPC=1343  
  nop                                                   #  13    0xec812  1      OPC=1343  
  nop                                                   #  14    0xec813  1      OPC=1343  
  nop                                                   #  15    0xec814  1      OPC=1343  
  nop                                                   #  16    0xec815  1      OPC=1343  
  nop                                                   #  17    0xec816  1      OPC=1343  
  nop                                                   #  18    0xec817  1      OPC=1343  
  nop                                                   #  19    0xec818  1      OPC=1343  
  nop                                                   #  20    0xec819  1      OPC=1343  
  nop                                                   #  21    0xec81a  1      OPC=1343  
  callq ._ZNKSt12__basic_fileIcE7is_openEv              #  22    0xec81b  5      OPC=260   
  addl $0x8, %esp                                       #  23    0xec820  3      OPC=65    
  addq %r15, %rsp                                       #  24    0xec823  3      OPC=72    
  popq %r11                                             #  25    0xec826  2      OPC=1694  
  andl $0xffffffe0, %r11d                               #  26    0xec828  7      OPC=131   
  nop                                                   #  27    0xec82f  1      OPC=1343  
  nop                                                   #  28    0xec830  1      OPC=1343  
  nop                                                   #  29    0xec831  1      OPC=1343  
  nop                                                   #  30    0xec832  1      OPC=1343  
  addq %r15, %r11                                       #  31    0xec833  3      OPC=72    
  jmpq %r11                                             #  32    0xec836  3      OPC=928   
  nop                                                   #  33    0xec839  1      OPC=1343  
  nop                                                   #  34    0xec83a  1      OPC=1343  
  nop                                                   #  35    0xec83b  1      OPC=1343  
  nop                                                   #  36    0xec83c  1      OPC=1343  
  nop                                                   #  37    0xec83d  1      OPC=1343  
  nop                                                   #  38    0xec83e  1      OPC=1343  
  nop                                                   #  39    0xec83f  1      OPC=1343  
  nop                                                   #  40    0xec840  1      OPC=1343  
  nop                                                   #  41    0xec841  1      OPC=1343  
  nop                                                   #  42    0xec842  1      OPC=1343  
  nop                                                   #  43    0xec843  1      OPC=1343  
  nop                                                   #  44    0xec844  1      OPC=1343  
  nop                                                   #  45    0xec845  1      OPC=1343  
  nop                                                   #  46    0xec846  1      OPC=1343  
  cmpq $0xff, %rdx                                      #  47    0xec847  4      OPC=475   
  movl %eax, %edi                                       #  48    0xec84b  2      OPC=1157  
  je .L_ec860                                           #  49    0xec84d  6      OPC=893   
  nop                                                   #  50    0xec853  1      OPC=1343  
  nop                                                   #  51    0xec854  1      OPC=1343  
  nop                                                   #  52    0xec855  1      OPC=1343  
  nop                                                   #  53    0xec856  1      OPC=1343  
  nop                                                   #  54    0xec857  1      OPC=1343  
  nop                                                   #  55    0xec858  1      OPC=1343  
  nop                                                   #  56    0xec859  1      OPC=1343  
  nop                                                   #  57    0xec85a  1      OPC=1343  
  nop                                                   #  58    0xec85b  1      OPC=1343  
  nop                                                   #  59    0xec85c  1      OPC=1343  
  nop                                                   #  60    0xec85d  1      OPC=1343  
  nop                                                   #  61    0xec85e  1      OPC=1343  
  nop                                                   #  62    0xec85f  1      OPC=1343  
  nop                                                   #  63    0xec860  1      OPC=1343  
  nop                                                   #  64    0xec861  1      OPC=1343  
  nop                                                   #  65    0xec862  1      OPC=1343  
  nop                                                   #  66    0xec863  1      OPC=1343  
  nop                                                   #  67    0xec864  1      OPC=1343  
  nop                                                   #  68    0xec865  1      OPC=1343  
  nop                                                   #  69    0xec866  1      OPC=1343  
  nop                                                   #  70    0xec867  1      OPC=1343  
  callq ._Unwind_Resume                                 #  71    0xec868  5      OPC=260   
.L_ec860:                                               #        0xec86d  0      OPC=0     
  nop                                                   #  72    0xec86d  1      OPC=1343  
  nop                                                   #  73    0xec86e  1      OPC=1343  
  nop                                                   #  74    0xec86f  1      OPC=1343  
  nop                                                   #  75    0xec870  1      OPC=1343  
  nop                                                   #  76    0xec871  1      OPC=1343  
  nop                                                   #  77    0xec872  1      OPC=1343  
  nop                                                   #  78    0xec873  1      OPC=1343  
  nop                                                   #  79    0xec874  1      OPC=1343  
  nop                                                   #  80    0xec875  1      OPC=1343  
  nop                                                   #  81    0xec876  1      OPC=1343  
  nop                                                   #  82    0xec877  1      OPC=1343  
  nop                                                   #  83    0xec878  1      OPC=1343  
  nop                                                   #  84    0xec879  1      OPC=1343  
  nop                                                   #  85    0xec87a  1      OPC=1343  
  nop                                                   #  86    0xec87b  1      OPC=1343  
  nop                                                   #  87    0xec87c  1      OPC=1343  
  nop                                                   #  88    0xec87d  1      OPC=1343  
  nop                                                   #  89    0xec87e  1      OPC=1343  
  nop                                                   #  90    0xec87f  1      OPC=1343  
  nop                                                   #  91    0xec880  1      OPC=1343  
  nop                                                   #  92    0xec881  1      OPC=1343  
  nop                                                   #  93    0xec882  1      OPC=1343  
  nop                                                   #  94    0xec883  1      OPC=1343  
  nop                                                   #  95    0xec884  1      OPC=1343  
  nop                                                   #  96    0xec885  1      OPC=1343  
  nop                                                   #  97    0xec886  1      OPC=1343  
  nop                                                   #  98    0xec887  1      OPC=1343  
  callq .__cxa_call_unexpected                          #  99    0xec888  5      OPC=260   
                                                                                           
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEE7is_openEv, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEE7is_openEv

