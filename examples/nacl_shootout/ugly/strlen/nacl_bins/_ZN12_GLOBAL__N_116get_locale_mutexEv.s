  .text
  .globl _ZN12_GLOBAL__N_116get_locale_mutexEv
  .type _ZN12_GLOBAL__N_116get_locale_mutexEv, @function

#! file-offset 0x9f420
#! rip-offset  0x5f420
#! capacity    160 bytes

# Text                                   #  Line  RIP      Bytes  Opcode    
._ZN12_GLOBAL__N_116get_locale_mutexEv:  #        0x5f420  0      OPC=0     
  subl $0x8, %esp                        #  1     0x5f420  3      OPC=2384  
  addq %r15, %rsp                        #  2     0x5f423  3      OPC=72    
  cmpb $0x0, 0x1001409b(%rip)            #  3     0x5f426  7      OPC=461   
  je .L_5f460                            #  4     0x5f42d  6      OPC=893   
  nop                                    #  5     0x5f433  1      OPC=1343  
  nop                                    #  6     0x5f434  1      OPC=1343  
  xchgw %ax, %ax                         #  7     0x5f435  2      OPC=3700  
  nop                                    #  8     0x5f437  1      OPC=1343  
  nop                                    #  9     0x5f438  1      OPC=1343  
  nop                                    #  10    0x5f439  1      OPC=1343  
  nop                                    #  11    0x5f43a  1      OPC=1343  
  nop                                    #  12    0x5f43b  1      OPC=1343  
  nop                                    #  13    0x5f43c  1      OPC=1343  
  nop                                    #  14    0x5f43d  1      OPC=1343  
  nop                                    #  15    0x5f43e  1      OPC=1343  
  nop                                    #  16    0x5f43f  1      OPC=1343  
  nop                                    #  17    0x5f440  1      OPC=1343  
  nop                                    #  18    0x5f441  1      OPC=1343  
  nop                                    #  19    0x5f442  1      OPC=1343  
  nop                                    #  20    0x5f443  1      OPC=1343  
  nop                                    #  21    0x5f444  1      OPC=1343  
  nop                                    #  22    0x5f445  1      OPC=1343  
.L_5f440:                                #        0x5f446  0      OPC=0     
  addl $0x8, %esp                        #  23    0x5f446  3      OPC=65    
  addq %r15, %rsp                        #  24    0x5f449  3      OPC=72    
  movl $0x100734d0, %eax                 #  25    0x5f44c  5      OPC=1154  
  popq %r11                              #  26    0x5f451  2      OPC=1694  
  andl $0xffffffe0, %r11d                #  27    0x5f453  7      OPC=131   
  nop                                    #  28    0x5f45a  1      OPC=1343  
  nop                                    #  29    0x5f45b  1      OPC=1343  
  nop                                    #  30    0x5f45c  1      OPC=1343  
  nop                                    #  31    0x5f45d  1      OPC=1343  
  addq %r15, %r11                        #  32    0x5f45e  3      OPC=72    
  jmpq %r11                              #  33    0x5f461  3      OPC=928   
  nop                                    #  34    0x5f464  1      OPC=1343  
  nop                                    #  35    0x5f465  1      OPC=1343  
  nop                                    #  36    0x5f466  1      OPC=1343  
  nop                                    #  37    0x5f467  1      OPC=1343  
  nop                                    #  38    0x5f468  1      OPC=1343  
  nop                                    #  39    0x5f469  1      OPC=1343  
  nop                                    #  40    0x5f46a  1      OPC=1343  
  nop                                    #  41    0x5f46b  1      OPC=1343  
  nop                                    #  42    0x5f46c  1      OPC=1343  
.L_5f460:                                #        0x5f46d  0      OPC=0     
  movl $0x100734c8, %edi                 #  43    0x5f46d  5      OPC=1154  
  nop                                    #  44    0x5f472  1      OPC=1343  
  nop                                    #  45    0x5f473  1      OPC=1343  
  nop                                    #  46    0x5f474  1      OPC=1343  
  nop                                    #  47    0x5f475  1      OPC=1343  
  nop                                    #  48    0x5f476  1      OPC=1343  
  nop                                    #  49    0x5f477  1      OPC=1343  
  nop                                    #  50    0x5f478  1      OPC=1343  
  nop                                    #  51    0x5f479  1      OPC=1343  
  nop                                    #  52    0x5f47a  1      OPC=1343  
  nop                                    #  53    0x5f47b  1      OPC=1343  
  nop                                    #  54    0x5f47c  1      OPC=1343  
  nop                                    #  55    0x5f47d  1      OPC=1343  
  nop                                    #  56    0x5f47e  1      OPC=1343  
  nop                                    #  57    0x5f47f  1      OPC=1343  
  nop                                    #  58    0x5f480  1      OPC=1343  
  nop                                    #  59    0x5f481  1      OPC=1343  
  nop                                    #  60    0x5f482  1      OPC=1343  
  nop                                    #  61    0x5f483  1      OPC=1343  
  nop                                    #  62    0x5f484  1      OPC=1343  
  nop                                    #  63    0x5f485  1      OPC=1343  
  nop                                    #  64    0x5f486  1      OPC=1343  
  nop                                    #  65    0x5f487  1      OPC=1343  
  callq .__cxa_guard_acquire             #  66    0x5f488  5      OPC=260   
  testl %eax, %eax                       #  67    0x5f48d  2      OPC=2436  
  je .L_5f440                            #  68    0x5f48f  6      OPC=893   
  nop                                    #  69    0x5f495  1      OPC=1343  
  nop                                    #  70    0x5f496  1      OPC=1343  
  movl $0x100734c8, %edi                 #  71    0x5f497  5      OPC=1154  
  nop                                    #  72    0x5f49c  1      OPC=1343  
  nop                                    #  73    0x5f49d  1      OPC=1343  
  nop                                    #  74    0x5f49e  1      OPC=1343  
  nop                                    #  75    0x5f49f  1      OPC=1343  
  nop                                    #  76    0x5f4a0  1      OPC=1343  
  nop                                    #  77    0x5f4a1  1      OPC=1343  
  nop                                    #  78    0x5f4a2  1      OPC=1343  
  nop                                    #  79    0x5f4a3  1      OPC=1343  
  nop                                    #  80    0x5f4a4  1      OPC=1343  
  nop                                    #  81    0x5f4a5  1      OPC=1343  
  nop                                    #  82    0x5f4a6  1      OPC=1343  
  nop                                    #  83    0x5f4a7  1      OPC=1343  
  nop                                    #  84    0x5f4a8  1      OPC=1343  
  nop                                    #  85    0x5f4a9  1      OPC=1343  
  nop                                    #  86    0x5f4aa  1      OPC=1343  
  nop                                    #  87    0x5f4ab  1      OPC=1343  
  nop                                    #  88    0x5f4ac  1      OPC=1343  
  nop                                    #  89    0x5f4ad  1      OPC=1343  
  callq .__cxa_guard_release             #  90    0x5f4ae  5      OPC=260   
  addl $0x8, %esp                        #  91    0x5f4b3  3      OPC=65    
  addq %r15, %rsp                        #  92    0x5f4b6  3      OPC=72    
  movl $0x100734d0, %eax                 #  93    0x5f4b9  5      OPC=1154  
  popq %r11                              #  94    0x5f4be  2      OPC=1694  
  andl $0xffffffe0, %r11d                #  95    0x5f4c0  7      OPC=131   
  nop                                    #  96    0x5f4c7  1      OPC=1343  
  nop                                    #  97    0x5f4c8  1      OPC=1343  
  nop                                    #  98    0x5f4c9  1      OPC=1343  
  nop                                    #  99    0x5f4ca  1      OPC=1343  
  addq %r15, %r11                        #  100   0x5f4cb  3      OPC=72    
  jmpq %r11                              #  101   0x5f4ce  3      OPC=928   
  nop                                    #  102   0x5f4d1  1      OPC=1343  
  nop                                    #  103   0x5f4d2  1      OPC=1343  
  nop                                    #  104   0x5f4d3  1      OPC=1343  
  nop                                    #  105   0x5f4d4  1      OPC=1343  
  nop                                    #  106   0x5f4d5  1      OPC=1343  
  nop                                    #  107   0x5f4d6  1      OPC=1343  
  nop                                    #  108   0x5f4d7  1      OPC=1343  
  nop                                    #  109   0x5f4d8  1      OPC=1343  
  nop                                    #  110   0x5f4d9  1      OPC=1343  
                                                                            
.size _ZN12_GLOBAL__N_116get_locale_mutexEv, .-_ZN12_GLOBAL__N_116get_locale_mutexEv

