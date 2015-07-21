  .text
  .globl _ZNSt6localeC2Ev
  .type _ZNSt6localeC2Ev, @function

#! file-offset 0xa2400
#! rip-offset  0x62400
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode    
._ZNSt6localeC2Ev:                              #        0x62400  0      OPC=0     
  pushq %rbx                                    #  1     0x62400  1      OPC=1861  
  movl %edi, %ebx                               #  2     0x62401  2      OPC=1157  
  movl %ebx, %ebx                               #  3     0x62403  2      OPC=1157  
  movl $0x0, (%r15,%rbx,1)                      #  4     0x62405  8      OPC=1135  
  nop                                           #  5     0x6240d  1      OPC=1343  
  nop                                           #  6     0x6240e  1      OPC=1343  
  nop                                           #  7     0x6240f  1      OPC=1343  
  nop                                           #  8     0x62410  1      OPC=1343  
  nop                                           #  9     0x62411  1      OPC=1343  
  nop                                           #  10    0x62412  1      OPC=1343  
  nop                                           #  11    0x62413  1      OPC=1343  
  nop                                           #  12    0x62414  1      OPC=1343  
  nop                                           #  13    0x62415  1      OPC=1343  
  nop                                           #  14    0x62416  1      OPC=1343  
  nop                                           #  15    0x62417  1      OPC=1343  
  nop                                           #  16    0x62418  1      OPC=1343  
  nop                                           #  17    0x62419  1      OPC=1343  
  nop                                           #  18    0x6241a  1      OPC=1343  
  callq ._ZNSt6locale13_S_initializeEv          #  19    0x6241b  5      OPC=260   
  nop                                           #  20    0x62420  1      OPC=1343  
  nop                                           #  21    0x62421  1      OPC=1343  
  nop                                           #  22    0x62422  1      OPC=1343  
  nop                                           #  23    0x62423  1      OPC=1343  
  nop                                           #  24    0x62424  1      OPC=1343  
  nop                                           #  25    0x62425  1      OPC=1343  
  nop                                           #  26    0x62426  1      OPC=1343  
  nop                                           #  27    0x62427  1      OPC=1343  
  nop                                           #  28    0x62428  1      OPC=1343  
  nop                                           #  29    0x62429  1      OPC=1343  
  nop                                           #  30    0x6242a  1      OPC=1343  
  nop                                           #  31    0x6242b  1      OPC=1343  
  nop                                           #  32    0x6242c  1      OPC=1343  
  nop                                           #  33    0x6242d  1      OPC=1343  
  nop                                           #  34    0x6242e  1      OPC=1343  
  nop                                           #  35    0x6242f  1      OPC=1343  
  nop                                           #  36    0x62430  1      OPC=1343  
  nop                                           #  37    0x62431  1      OPC=1343  
  nop                                           #  38    0x62432  1      OPC=1343  
  nop                                           #  39    0x62433  1      OPC=1343  
  nop                                           #  40    0x62434  1      OPC=1343  
  nop                                           #  41    0x62435  1      OPC=1343  
  nop                                           #  42    0x62436  1      OPC=1343  
  nop                                           #  43    0x62437  1      OPC=1343  
  nop                                           #  44    0x62438  1      OPC=1343  
  nop                                           #  45    0x62439  1      OPC=1343  
  nop                                           #  46    0x6243a  1      OPC=1343  
  callq ._ZN12_GLOBAL__N_116get_locale_mutexEv  #  47    0x6243b  5      OPC=260   
  movl 0x100101e2(%rip), %eax                   #  48    0x62440  6      OPC=1156  
  movl %eax, %eax                               #  49    0x62446  2      OPC=1157  
  addl $0x1, (%r15,%rax,1)                      #  50    0x62448  5      OPC=51    
  movl %ebx, %ebx                               #  51    0x6244d  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                      #  52    0x6244f  4      OPC=1136  
  popq %rbx                                     #  53    0x62453  1      OPC=1694  
  popq %r11                                     #  54    0x62454  2      OPC=1694  
  andl $0xffffffe0, %r11d                       #  55    0x62456  7      OPC=131   
  nop                                           #  56    0x6245d  1      OPC=1343  
  nop                                           #  57    0x6245e  1      OPC=1343  
  nop                                           #  58    0x6245f  1      OPC=1343  
  nop                                           #  59    0x62460  1      OPC=1343  
  addq %r15, %r11                               #  60    0x62461  3      OPC=72    
  jmpq %r11                                     #  61    0x62464  3      OPC=928   
  cmpq $0xff, %rdx                              #  62    0x62467  4      OPC=475   
  movl %eax, %edi                               #  63    0x6246b  2      OPC=1157  
  je .L_62480                                   #  64    0x6246d  6      OPC=893   
  nop                                           #  65    0x62473  1      OPC=1343  
  nop                                           #  66    0x62474  1      OPC=1343  
  nop                                           #  67    0x62475  1      OPC=1343  
  nop                                           #  68    0x62476  1      OPC=1343  
  nop                                           #  69    0x62477  1      OPC=1343  
  nop                                           #  70    0x62478  1      OPC=1343  
  nop                                           #  71    0x62479  1      OPC=1343  
  nop                                           #  72    0x6247a  1      OPC=1343  
  nop                                           #  73    0x6247b  1      OPC=1343  
  nop                                           #  74    0x6247c  1      OPC=1343  
  nop                                           #  75    0x6247d  1      OPC=1343  
  nop                                           #  76    0x6247e  1      OPC=1343  
  nop                                           #  77    0x6247f  1      OPC=1343  
  nop                                           #  78    0x62480  1      OPC=1343  
  nop                                           #  79    0x62481  1      OPC=1343  
  nop                                           #  80    0x62482  1      OPC=1343  
  nop                                           #  81    0x62483  1      OPC=1343  
  nop                                           #  82    0x62484  1      OPC=1343  
  nop                                           #  83    0x62485  1      OPC=1343  
  nop                                           #  84    0x62486  1      OPC=1343  
  nop                                           #  85    0x62487  1      OPC=1343  
  callq ._Unwind_Resume                         #  86    0x62488  5      OPC=260   
.L_62480:                                       #        0x6248d  0      OPC=0     
  nop                                           #  87    0x6248d  1      OPC=1343  
  nop                                           #  88    0x6248e  1      OPC=1343  
  nop                                           #  89    0x6248f  1      OPC=1343  
  nop                                           #  90    0x62490  1      OPC=1343  
  nop                                           #  91    0x62491  1      OPC=1343  
  nop                                           #  92    0x62492  1      OPC=1343  
  nop                                           #  93    0x62493  1      OPC=1343  
  nop                                           #  94    0x62494  1      OPC=1343  
  nop                                           #  95    0x62495  1      OPC=1343  
  nop                                           #  96    0x62496  1      OPC=1343  
  nop                                           #  97    0x62497  1      OPC=1343  
  nop                                           #  98    0x62498  1      OPC=1343  
  nop                                           #  99    0x62499  1      OPC=1343  
  nop                                           #  100   0x6249a  1      OPC=1343  
  nop                                           #  101   0x6249b  1      OPC=1343  
  nop                                           #  102   0x6249c  1      OPC=1343  
  nop                                           #  103   0x6249d  1      OPC=1343  
  nop                                           #  104   0x6249e  1      OPC=1343  
  nop                                           #  105   0x6249f  1      OPC=1343  
  nop                                           #  106   0x624a0  1      OPC=1343  
  nop                                           #  107   0x624a1  1      OPC=1343  
  nop                                           #  108   0x624a2  1      OPC=1343  
  nop                                           #  109   0x624a3  1      OPC=1343  
  nop                                           #  110   0x624a4  1      OPC=1343  
  nop                                           #  111   0x624a5  1      OPC=1343  
  nop                                           #  112   0x624a6  1      OPC=1343  
  nop                                           #  113   0x624a7  1      OPC=1343  
  callq .__cxa_call_unexpected                  #  114   0x624a8  5      OPC=260   
                                                                                   
.size _ZNSt6localeC2Ev, .-_ZNSt6localeC2Ev

