  .text
  .globl _ZNSt5ctypeIcED2Ev
  .type _ZNSt5ctypeIcED2Ev, @function

#! file-offset 0x125320
#! rip-offset  0xe5320
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode    
._ZNSt5ctypeIcED2Ev:                                  #        0xe5320  0      OPC=0     
  pushq %rbx                                          #  1     0xe5320  1      OPC=1861  
  movl %edi, %ebx                                     #  2     0xe5321  2      OPC=1157  
  leal 0x8(%rbx), %edi                                #  3     0xe5323  3      OPC=1066  
  subl $0x10, %esp                                    #  4     0xe5326  3      OPC=2384  
  addq %r15, %rsp                                     #  5     0xe5329  3      OPC=72    
  movl %ebx, %ebx                                     #  6     0xe532c  2      OPC=1157  
  movl $0x1003d608, (%r15,%rbx,1)                     #  7     0xe532e  8      OPC=1135  
  nop                                                 #  8     0xe5336  1      OPC=1343  
  nop                                                 #  9     0xe5337  1      OPC=1343  
  nop                                                 #  10    0xe5338  1      OPC=1343  
  nop                                                 #  11    0xe5339  1      OPC=1343  
  nop                                                 #  12    0xe533a  1      OPC=1343  
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe533b  5      OPC=260   
  movl %ebx, %ebx                                     #  14    0xe5340  2      OPC=1157  
  cmpb $0x0, 0xc(%r15,%rbx,1)                         #  15    0xe5342  6      OPC=461   
  je .L_e5360                                         #  16    0xe5348  6      OPC=893   
  nop                                                 #  17    0xe534e  1      OPC=1343  
  nop                                                 #  18    0xe534f  1      OPC=1343  
  movl %ebx, %ebx                                     #  19    0xe5350  2      OPC=1157  
  movl 0x18(%r15,%rbx,1), %edi                        #  20    0xe5352  5      OPC=1156  
  testq %rdi, %rdi                                    #  21    0xe5357  3      OPC=2438  
  je .L_e5360                                         #  22    0xe535a  6      OPC=893   
  nop                                                 #  23    0xe5360  1      OPC=1343  
  nop                                                 #  24    0xe5361  1      OPC=1343  
  nop                                                 #  25    0xe5362  1      OPC=1343  
  nop                                                 #  26    0xe5363  1      OPC=1343  
  nop                                                 #  27    0xe5364  1      OPC=1343  
  nop                                                 #  28    0xe5365  1      OPC=1343  
  nop                                                 #  29    0xe5366  1      OPC=1343  
  callq ._ZdaPv                                       #  30    0xe5367  5      OPC=260   
.L_e5360:                                             #        0xe536c  0      OPC=0     
  movl %ebx, %edi                                     #  31    0xe536c  2      OPC=1157  
  addl $0x10, %esp                                    #  32    0xe536e  3      OPC=65    
  addq %r15, %rsp                                     #  33    0xe5371  3      OPC=72    
  popq %rbx                                           #  34    0xe5374  1      OPC=1694  
  jmpq ._ZNSt6locale5facetD2Ev                        #  35    0xe5375  5      OPC=930   
  nop                                                 #  36    0xe537a  1      OPC=1343  
  nop                                                 #  37    0xe537b  1      OPC=1343  
  nop                                                 #  38    0xe537c  1      OPC=1343  
  nop                                                 #  39    0xe537d  1      OPC=1343  
  nop                                                 #  40    0xe537e  1      OPC=1343  
  nop                                                 #  41    0xe537f  1      OPC=1343  
  nop                                                 #  42    0xe5380  1      OPC=1343  
  nop                                                 #  43    0xe5381  1      OPC=1343  
  nop                                                 #  44    0xe5382  1      OPC=1343  
  nop                                                 #  45    0xe5383  1      OPC=1343  
  nop                                                 #  46    0xe5384  1      OPC=1343  
  nop                                                 #  47    0xe5385  1      OPC=1343  
  nop                                                 #  48    0xe5386  1      OPC=1343  
  nop                                                 #  49    0xe5387  1      OPC=1343  
  nop                                                 #  50    0xe5388  1      OPC=1343  
  nop                                                 #  51    0xe5389  1      OPC=1343  
  nop                                                 #  52    0xe538a  1      OPC=1343  
  nop                                                 #  53    0xe538b  1      OPC=1343  
  movl %ebx, %edi                                     #  54    0xe538c  2      OPC=1157  
  movl %eax, 0x8(%rsp)                                #  55    0xe538e  4      OPC=1136  
  nop                                                 #  56    0xe5392  1      OPC=1343  
  nop                                                 #  57    0xe5393  1      OPC=1343  
  nop                                                 #  58    0xe5394  1      OPC=1343  
  nop                                                 #  59    0xe5395  1      OPC=1343  
  nop                                                 #  60    0xe5396  1      OPC=1343  
  nop                                                 #  61    0xe5397  1      OPC=1343  
  nop                                                 #  62    0xe5398  1      OPC=1343  
  nop                                                 #  63    0xe5399  1      OPC=1343  
  nop                                                 #  64    0xe539a  1      OPC=1343  
  nop                                                 #  65    0xe539b  1      OPC=1343  
  nop                                                 #  66    0xe539c  1      OPC=1343  
  nop                                                 #  67    0xe539d  1      OPC=1343  
  nop                                                 #  68    0xe539e  1      OPC=1343  
  nop                                                 #  69    0xe539f  1      OPC=1343  
  nop                                                 #  70    0xe53a0  1      OPC=1343  
  nop                                                 #  71    0xe53a1  1      OPC=1343  
  nop                                                 #  72    0xe53a2  1      OPC=1343  
  nop                                                 #  73    0xe53a3  1      OPC=1343  
  nop                                                 #  74    0xe53a4  1      OPC=1343  
  nop                                                 #  75    0xe53a5  1      OPC=1343  
  nop                                                 #  76    0xe53a6  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                       #  77    0xe53a7  5      OPC=260   
  movl 0x8(%rsp), %eax                                #  78    0xe53ac  4      OPC=1156  
  movl %eax, %edi                                     #  79    0xe53b0  2      OPC=1157  
  nop                                                 #  80    0xe53b2  1      OPC=1343  
  nop                                                 #  81    0xe53b3  1      OPC=1343  
  nop                                                 #  82    0xe53b4  1      OPC=1343  
  nop                                                 #  83    0xe53b5  1      OPC=1343  
  nop                                                 #  84    0xe53b6  1      OPC=1343  
  nop                                                 #  85    0xe53b7  1      OPC=1343  
  nop                                                 #  86    0xe53b8  1      OPC=1343  
  nop                                                 #  87    0xe53b9  1      OPC=1343  
  nop                                                 #  88    0xe53ba  1      OPC=1343  
  nop                                                 #  89    0xe53bb  1      OPC=1343  
  nop                                                 #  90    0xe53bc  1      OPC=1343  
  nop                                                 #  91    0xe53bd  1      OPC=1343  
  nop                                                 #  92    0xe53be  1      OPC=1343  
  nop                                                 #  93    0xe53bf  1      OPC=1343  
  nop                                                 #  94    0xe53c0  1      OPC=1343  
  nop                                                 #  95    0xe53c1  1      OPC=1343  
  nop                                                 #  96    0xe53c2  1      OPC=1343  
  nop                                                 #  97    0xe53c3  1      OPC=1343  
  nop                                                 #  98    0xe53c4  1      OPC=1343  
  nop                                                 #  99    0xe53c5  1      OPC=1343  
  nop                                                 #  100   0xe53c6  1      OPC=1343  
  callq ._Unwind_Resume                               #  101   0xe53c7  5      OPC=260   
                                                                                         
.size _ZNSt5ctypeIcED2Ev, .-_ZNSt5ctypeIcED2Ev

