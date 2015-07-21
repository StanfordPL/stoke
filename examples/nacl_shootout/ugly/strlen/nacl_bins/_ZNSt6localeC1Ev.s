  .text
  .globl _ZNSt6localeC1Ev
  .type _ZNSt6localeC1Ev, @function

#! file-offset 0xa2360
#! rip-offset  0x62360
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode    
._ZNSt6localeC1Ev:                              #        0x62360  0      OPC=0     
  pushq %rbx                                    #  1     0x62360  1      OPC=1861  
  movl %edi, %ebx                               #  2     0x62361  2      OPC=1157  
  movl %ebx, %ebx                               #  3     0x62363  2      OPC=1157  
  movl $0x0, (%r15,%rbx,1)                      #  4     0x62365  8      OPC=1135  
  nop                                           #  5     0x6236d  1      OPC=1343  
  nop                                           #  6     0x6236e  1      OPC=1343  
  nop                                           #  7     0x6236f  1      OPC=1343  
  nop                                           #  8     0x62370  1      OPC=1343  
  nop                                           #  9     0x62371  1      OPC=1343  
  nop                                           #  10    0x62372  1      OPC=1343  
  nop                                           #  11    0x62373  1      OPC=1343  
  nop                                           #  12    0x62374  1      OPC=1343  
  nop                                           #  13    0x62375  1      OPC=1343  
  nop                                           #  14    0x62376  1      OPC=1343  
  nop                                           #  15    0x62377  1      OPC=1343  
  nop                                           #  16    0x62378  1      OPC=1343  
  nop                                           #  17    0x62379  1      OPC=1343  
  nop                                           #  18    0x6237a  1      OPC=1343  
  callq ._ZNSt6locale13_S_initializeEv          #  19    0x6237b  5      OPC=260   
  nop                                           #  20    0x62380  1      OPC=1343  
  nop                                           #  21    0x62381  1      OPC=1343  
  nop                                           #  22    0x62382  1      OPC=1343  
  nop                                           #  23    0x62383  1      OPC=1343  
  nop                                           #  24    0x62384  1      OPC=1343  
  nop                                           #  25    0x62385  1      OPC=1343  
  nop                                           #  26    0x62386  1      OPC=1343  
  nop                                           #  27    0x62387  1      OPC=1343  
  nop                                           #  28    0x62388  1      OPC=1343  
  nop                                           #  29    0x62389  1      OPC=1343  
  nop                                           #  30    0x6238a  1      OPC=1343  
  nop                                           #  31    0x6238b  1      OPC=1343  
  nop                                           #  32    0x6238c  1      OPC=1343  
  nop                                           #  33    0x6238d  1      OPC=1343  
  nop                                           #  34    0x6238e  1      OPC=1343  
  nop                                           #  35    0x6238f  1      OPC=1343  
  nop                                           #  36    0x62390  1      OPC=1343  
  nop                                           #  37    0x62391  1      OPC=1343  
  nop                                           #  38    0x62392  1      OPC=1343  
  nop                                           #  39    0x62393  1      OPC=1343  
  nop                                           #  40    0x62394  1      OPC=1343  
  nop                                           #  41    0x62395  1      OPC=1343  
  nop                                           #  42    0x62396  1      OPC=1343  
  nop                                           #  43    0x62397  1      OPC=1343  
  nop                                           #  44    0x62398  1      OPC=1343  
  nop                                           #  45    0x62399  1      OPC=1343  
  nop                                           #  46    0x6239a  1      OPC=1343  
  callq ._ZN12_GLOBAL__N_116get_locale_mutexEv  #  47    0x6239b  5      OPC=260   
  movl 0x10010282(%rip), %eax                   #  48    0x623a0  6      OPC=1156  
  movl %eax, %eax                               #  49    0x623a6  2      OPC=1157  
  addl $0x1, (%r15,%rax,1)                      #  50    0x623a8  5      OPC=51    
  movl %ebx, %ebx                               #  51    0x623ad  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                      #  52    0x623af  4      OPC=1136  
  popq %rbx                                     #  53    0x623b3  1      OPC=1694  
  popq %r11                                     #  54    0x623b4  2      OPC=1694  
  andl $0xffffffe0, %r11d                       #  55    0x623b6  7      OPC=131   
  nop                                           #  56    0x623bd  1      OPC=1343  
  nop                                           #  57    0x623be  1      OPC=1343  
  nop                                           #  58    0x623bf  1      OPC=1343  
  nop                                           #  59    0x623c0  1      OPC=1343  
  addq %r15, %r11                               #  60    0x623c1  3      OPC=72    
  jmpq %r11                                     #  61    0x623c4  3      OPC=928   
  cmpq $0xff, %rdx                              #  62    0x623c7  4      OPC=475   
  movl %eax, %edi                               #  63    0x623cb  2      OPC=1157  
  je .L_623e0                                   #  64    0x623cd  6      OPC=893   
  nop                                           #  65    0x623d3  1      OPC=1343  
  nop                                           #  66    0x623d4  1      OPC=1343  
  nop                                           #  67    0x623d5  1      OPC=1343  
  nop                                           #  68    0x623d6  1      OPC=1343  
  nop                                           #  69    0x623d7  1      OPC=1343  
  nop                                           #  70    0x623d8  1      OPC=1343  
  nop                                           #  71    0x623d9  1      OPC=1343  
  nop                                           #  72    0x623da  1      OPC=1343  
  nop                                           #  73    0x623db  1      OPC=1343  
  nop                                           #  74    0x623dc  1      OPC=1343  
  nop                                           #  75    0x623dd  1      OPC=1343  
  nop                                           #  76    0x623de  1      OPC=1343  
  nop                                           #  77    0x623df  1      OPC=1343  
  nop                                           #  78    0x623e0  1      OPC=1343  
  nop                                           #  79    0x623e1  1      OPC=1343  
  nop                                           #  80    0x623e2  1      OPC=1343  
  nop                                           #  81    0x623e3  1      OPC=1343  
  nop                                           #  82    0x623e4  1      OPC=1343  
  nop                                           #  83    0x623e5  1      OPC=1343  
  nop                                           #  84    0x623e6  1      OPC=1343  
  nop                                           #  85    0x623e7  1      OPC=1343  
  callq ._Unwind_Resume                         #  86    0x623e8  5      OPC=260   
.L_623e0:                                       #        0x623ed  0      OPC=0     
  nop                                           #  87    0x623ed  1      OPC=1343  
  nop                                           #  88    0x623ee  1      OPC=1343  
  nop                                           #  89    0x623ef  1      OPC=1343  
  nop                                           #  90    0x623f0  1      OPC=1343  
  nop                                           #  91    0x623f1  1      OPC=1343  
  nop                                           #  92    0x623f2  1      OPC=1343  
  nop                                           #  93    0x623f3  1      OPC=1343  
  nop                                           #  94    0x623f4  1      OPC=1343  
  nop                                           #  95    0x623f5  1      OPC=1343  
  nop                                           #  96    0x623f6  1      OPC=1343  
  nop                                           #  97    0x623f7  1      OPC=1343  
  nop                                           #  98    0x623f8  1      OPC=1343  
  nop                                           #  99    0x623f9  1      OPC=1343  
  nop                                           #  100   0x623fa  1      OPC=1343  
  nop                                           #  101   0x623fb  1      OPC=1343  
  nop                                           #  102   0x623fc  1      OPC=1343  
  nop                                           #  103   0x623fd  1      OPC=1343  
  nop                                           #  104   0x623fe  1      OPC=1343  
  nop                                           #  105   0x623ff  1      OPC=1343  
  nop                                           #  106   0x62400  1      OPC=1343  
  nop                                           #  107   0x62401  1      OPC=1343  
  nop                                           #  108   0x62402  1      OPC=1343  
  nop                                           #  109   0x62403  1      OPC=1343  
  nop                                           #  110   0x62404  1      OPC=1343  
  nop                                           #  111   0x62405  1      OPC=1343  
  nop                                           #  112   0x62406  1      OPC=1343  
  nop                                           #  113   0x62407  1      OPC=1343  
  callq .__cxa_call_unexpected                  #  114   0x62408  5      OPC=260   
                                                                                   
.size _ZNSt6localeC1Ev, .-_ZNSt6localeC1Ev

