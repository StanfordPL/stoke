  .text
  .globl __pthread_initialize
  .type __pthread_initialize, @function

#! file-offset 0x6f140
#! rip-offset  0x2f140
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  Opcode    
.__pthread_initialize:                 #        0x2f140  0      OPC=0     
  pushq %rbx                           #  1     0x2f140  1      OPC=1861  
  movl $0x3c, %edi                     #  2     0x2f141  5      OPC=1154  
  nop                                  #  3     0x2f146  1      OPC=1343  
  nop                                  #  4     0x2f147  1      OPC=1343  
  nop                                  #  5     0x2f148  1      OPC=1343  
  nop                                  #  6     0x2f149  1      OPC=1343  
  nop                                  #  7     0x2f14a  1      OPC=1343  
  nop                                  #  8     0x2f14b  1      OPC=1343  
  nop                                  #  9     0x2f14c  1      OPC=1343  
  nop                                  #  10    0x2f14d  1      OPC=1343  
  nop                                  #  11    0x2f14e  1      OPC=1343  
  nop                                  #  12    0x2f14f  1      OPC=1343  
  nop                                  #  13    0x2f150  1      OPC=1343  
  nop                                  #  14    0x2f151  1      OPC=1343  
  nop                                  #  15    0x2f152  1      OPC=1343  
  nop                                  #  16    0x2f153  1      OPC=1343  
  nop                                  #  17    0x2f154  1      OPC=1343  
  nop                                  #  18    0x2f155  1      OPC=1343  
  nop                                  #  19    0x2f156  1      OPC=1343  
  nop                                  #  20    0x2f157  1      OPC=1343  
  nop                                  #  21    0x2f158  1      OPC=1343  
  nop                                  #  22    0x2f159  1      OPC=1343  
  nop                                  #  23    0x2f15a  1      OPC=1343  
  callq .__pthread_initialize_minimal  #  24    0x2f15b  5      OPC=260   
  nop                                  #  25    0x2f160  1      OPC=1343  
  nop                                  #  26    0x2f161  1      OPC=1343  
  nop                                  #  27    0x2f162  1      OPC=1343  
  nop                                  #  28    0x2f163  1      OPC=1343  
  nop                                  #  29    0x2f164  1      OPC=1343  
  nop                                  #  30    0x2f165  1      OPC=1343  
  nop                                  #  31    0x2f166  1      OPC=1343  
  nop                                  #  32    0x2f167  1      OPC=1343  
  nop                                  #  33    0x2f168  1      OPC=1343  
  nop                                  #  34    0x2f169  1      OPC=1343  
  nop                                  #  35    0x2f16a  1      OPC=1343  
  nop                                  #  36    0x2f16b  1      OPC=1343  
  nop                                  #  37    0x2f16c  1      OPC=1343  
  nop                                  #  38    0x2f16d  1      OPC=1343  
  nop                                  #  39    0x2f16e  1      OPC=1343  
  nop                                  #  40    0x2f16f  1      OPC=1343  
  nop                                  #  41    0x2f170  1      OPC=1343  
  nop                                  #  42    0x2f171  1      OPC=1343  
  nop                                  #  43    0x2f172  1      OPC=1343  
  nop                                  #  44    0x2f173  1      OPC=1343  
  nop                                  #  45    0x2f174  1      OPC=1343  
  nop                                  #  46    0x2f175  1      OPC=1343  
  nop                                  #  47    0x2f176  1      OPC=1343  
  nop                                  #  48    0x2f177  1      OPC=1343  
  nop                                  #  49    0x2f178  1      OPC=1343  
  nop                                  #  50    0x2f179  1      OPC=1343  
  nop                                  #  51    0x2f17a  1      OPC=1343  
  callq .__nacl_read_tp                #  52    0x2f17b  5      OPC=260   
  movl %eax, %edi                      #  53    0x2f180  2      OPC=1157  
  leal 0x28(%rdi), %ebx                #  54    0x2f182  3      OPC=1066  
  movl %ebx, %esi                      #  55    0x2f185  2      OPC=1157  
  nop                                  #  56    0x2f187  1      OPC=1343  
  nop                                  #  57    0x2f188  1      OPC=1343  
  nop                                  #  58    0x2f189  1      OPC=1343  
  nop                                  #  59    0x2f18a  1      OPC=1343  
  nop                                  #  60    0x2f18b  1      OPC=1343  
  nop                                  #  61    0x2f18c  1      OPC=1343  
  nop                                  #  62    0x2f18d  1      OPC=1343  
  nop                                  #  63    0x2f18e  1      OPC=1343  
  nop                                  #  64    0x2f18f  1      OPC=1343  
  nop                                  #  65    0x2f190  1      OPC=1343  
  nop                                  #  66    0x2f191  1      OPC=1343  
  nop                                  #  67    0x2f192  1      OPC=1343  
  nop                                  #  68    0x2f193  1      OPC=1343  
  nop                                  #  69    0x2f194  1      OPC=1343  
  nop                                  #  70    0x2f195  1      OPC=1343  
  nop                                  #  71    0x2f196  1      OPC=1343  
  nop                                  #  72    0x2f197  1      OPC=1343  
  nop                                  #  73    0x2f198  1      OPC=1343  
  nop                                  #  74    0x2f199  1      OPC=1343  
  nop                                  #  75    0x2f19a  1      OPC=1343  
  callq .nc_tdb_init                   #  76    0x2f19b  5      OPC=260   
  movl %ebx, 0x1004a04a(%rip)          #  77    0x2f1a0  6      OPC=1136  
  popq %rbx                            #  78    0x2f1a6  1      OPC=1694  
  jmpq .__nc_initialize_globals        #  79    0x2f1a7  5      OPC=930   
  nop                                  #  80    0x2f1ac  1      OPC=1343  
  nop                                  #  81    0x2f1ad  1      OPC=1343  
  nop                                  #  82    0x2f1ae  1      OPC=1343  
  nop                                  #  83    0x2f1af  1      OPC=1343  
  nop                                  #  84    0x2f1b0  1      OPC=1343  
  nop                                  #  85    0x2f1b1  1      OPC=1343  
  nop                                  #  86    0x2f1b2  1      OPC=1343  
  nop                                  #  87    0x2f1b3  1      OPC=1343  
  nop                                  #  88    0x2f1b4  1      OPC=1343  
  nop                                  #  89    0x2f1b5  1      OPC=1343  
  nop                                  #  90    0x2f1b6  1      OPC=1343  
  nop                                  #  91    0x2f1b7  1      OPC=1343  
  nop                                  #  92    0x2f1b8  1      OPC=1343  
  nop                                  #  93    0x2f1b9  1      OPC=1343  
  nop                                  #  94    0x2f1ba  1      OPC=1343  
  nop                                  #  95    0x2f1bb  1      OPC=1343  
  nop                                  #  96    0x2f1bc  1      OPC=1343  
  nop                                  #  97    0x2f1bd  1      OPC=1343  
  nop                                  #  98    0x2f1be  1      OPC=1343  
  nop                                  #  99    0x2f1bf  1      OPC=1343  
                                                                          
.size __pthread_initialize, .-__pthread_initialize

