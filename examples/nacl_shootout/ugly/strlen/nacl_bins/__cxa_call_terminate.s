  .text
  .globl __cxa_call_terminate
  .type __cxa_call_terminate, @function

#! file-offset 0x120760
#! rip-offset  0xe0760
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  Opcode    
.__cxa_call_terminate:                       #        0xe0760  0      OPC=0     
  pushq %rbx                                 #  1     0xe0760  1      OPC=1861  
  movl %edi, %ebx                            #  2     0xe0761  2      OPC=1157  
  testq %rbx, %rbx                           #  3     0xe0763  3      OPC=2438  
  je .L_e07a0                                #  4     0xe0766  6      OPC=893   
  nop                                        #  5     0xe076c  1      OPC=1343  
  nop                                        #  6     0xe076d  1      OPC=1343  
  movl %ebx, %edi                            #  7     0xe076e  2      OPC=1157  
  xchgw %ax, %ax                             #  8     0xe0770  2      OPC=3700  
  nop                                        #  9     0xe0772  1      OPC=1343  
  nop                                        #  10    0xe0773  1      OPC=1343  
  nop                                        #  11    0xe0774  1      OPC=1343  
  nop                                        #  12    0xe0775  1      OPC=1343  
  nop                                        #  13    0xe0776  1      OPC=1343  
  nop                                        #  14    0xe0777  1      OPC=1343  
  nop                                        #  15    0xe0778  1      OPC=1343  
  nop                                        #  16    0xe0779  1      OPC=1343  
  nop                                        #  17    0xe077a  1      OPC=1343  
  nop                                        #  18    0xe077b  1      OPC=1343  
  nop                                        #  19    0xe077c  1      OPC=1343  
  nop                                        #  20    0xe077d  1      OPC=1343  
  nop                                        #  21    0xe077e  1      OPC=1343  
  nop                                        #  22    0xe077f  1      OPC=1343  
  nop                                        #  23    0xe0780  1      OPC=1343  
  callq .__cxa_begin_catch                   #  24    0xe0781  5      OPC=260   
  movq $0xb8b1aabcbcd4d500, %rax             #  25    0xe0786  10     OPC=1160  
  movl %ebx, %ebx                            #  26    0xe0790  2      OPC=1157  
  addq (%r15,%rbx,1), %rax                   #  27    0xe0792  4      OPC=71    
  cmpq $0x1, %rax                            #  28    0xe0796  4      OPC=475   
  jbe .L_e07c0                               #  29    0xe079a  6      OPC=881   
  nop                                        #  30    0xe07a0  1      OPC=1343  
  nop                                        #  31    0xe07a1  1      OPC=1343  
  nop                                        #  32    0xe07a2  1      OPC=1343  
  nop                                        #  33    0xe07a3  1      OPC=1343  
  nop                                        #  34    0xe07a4  1      OPC=1343  
  nop                                        #  35    0xe07a5  1      OPC=1343  
  nop                                        #  36    0xe07a6  1      OPC=1343  
  nop                                        #  37    0xe07a7  1      OPC=1343  
  nop                                        #  38    0xe07a8  1      OPC=1343  
  nop                                        #  39    0xe07a9  1      OPC=1343  
  nop                                        #  40    0xe07aa  1      OPC=1343  
  nop                                        #  41    0xe07ab  1      OPC=1343  
.L_e07a0:                                    #        0xe07ac  0      OPC=0     
  nop                                        #  42    0xe07ac  1      OPC=1343  
  nop                                        #  43    0xe07ad  1      OPC=1343  
  nop                                        #  44    0xe07ae  1      OPC=1343  
  nop                                        #  45    0xe07af  1      OPC=1343  
  nop                                        #  46    0xe07b0  1      OPC=1343  
  nop                                        #  47    0xe07b1  1      OPC=1343  
  nop                                        #  48    0xe07b2  1      OPC=1343  
  nop                                        #  49    0xe07b3  1      OPC=1343  
  nop                                        #  50    0xe07b4  1      OPC=1343  
  nop                                        #  51    0xe07b5  1      OPC=1343  
  nop                                        #  52    0xe07b6  1      OPC=1343  
  nop                                        #  53    0xe07b7  1      OPC=1343  
  nop                                        #  54    0xe07b8  1      OPC=1343  
  nop                                        #  55    0xe07b9  1      OPC=1343  
  nop                                        #  56    0xe07ba  1      OPC=1343  
  nop                                        #  57    0xe07bb  1      OPC=1343  
  nop                                        #  58    0xe07bc  1      OPC=1343  
  nop                                        #  59    0xe07bd  1      OPC=1343  
  nop                                        #  60    0xe07be  1      OPC=1343  
  nop                                        #  61    0xe07bf  1      OPC=1343  
  nop                                        #  62    0xe07c0  1      OPC=1343  
  nop                                        #  63    0xe07c1  1      OPC=1343  
  nop                                        #  64    0xe07c2  1      OPC=1343  
  nop                                        #  65    0xe07c3  1      OPC=1343  
  nop                                        #  66    0xe07c4  1      OPC=1343  
  nop                                        #  67    0xe07c5  1      OPC=1343  
  nop                                        #  68    0xe07c6  1      OPC=1343  
  callq ._ZSt9terminatev                     #  69    0xe07c7  5      OPC=260   
.L_e07c0:                                    #        0xe07cc  0      OPC=0     
  subl $0x30, %ebx                           #  70    0xe07cc  3      OPC=2384  
  movl %ebx, %ebx                            #  71    0xe07cf  2      OPC=1157  
  movl 0xc(%r15,%rbx,1), %edi                #  72    0xe07d1  5      OPC=1156  
  xchgw %ax, %ax                             #  73    0xe07d6  2      OPC=3700  
  nop                                        #  74    0xe07d8  1      OPC=1343  
  nop                                        #  75    0xe07d9  1      OPC=1343  
  nop                                        #  76    0xe07da  1      OPC=1343  
  nop                                        #  77    0xe07db  1      OPC=1343  
  nop                                        #  78    0xe07dc  1      OPC=1343  
  nop                                        #  79    0xe07dd  1      OPC=1343  
  nop                                        #  80    0xe07de  1      OPC=1343  
  nop                                        #  81    0xe07df  1      OPC=1343  
  nop                                        #  82    0xe07e0  1      OPC=1343  
  nop                                        #  83    0xe07e1  1      OPC=1343  
  nop                                        #  84    0xe07e2  1      OPC=1343  
  nop                                        #  85    0xe07e3  1      OPC=1343  
  nop                                        #  86    0xe07e4  1      OPC=1343  
  nop                                        #  87    0xe07e5  1      OPC=1343  
  nop                                        #  88    0xe07e6  1      OPC=1343  
  callq ._ZN10__cxxabiv111__terminateEPFvvE  #  89    0xe07e7  5      OPC=260   
                                                                                
.size __cxa_call_terminate, .-__cxa_call_terminate

