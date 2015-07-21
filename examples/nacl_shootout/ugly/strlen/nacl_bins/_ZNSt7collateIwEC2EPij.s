  .text
  .globl _ZNSt7collateIwEC2EPij
  .type _ZNSt7collateIwEC2EPij, @function

#! file-offset 0xf4920
#! rip-offset  0xb4920
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode    
._ZNSt7collateIwEC2EPij:                            #        0xb4920  0      OPC=0     
  pushq %rbx                                        #  1     0xb4920  1      OPC=1861  
  xorl %eax, %eax                                   #  2     0xb4921  2      OPC=3758  
  movl %edi, %ebx                                   #  3     0xb4923  2      OPC=1157  
  subl $0x10, %esp                                  #  4     0xb4925  3      OPC=2384  
  addq %r15, %rsp                                   #  5     0xb4928  3      OPC=72    
  testl %edx, %edx                                  #  6     0xb492b  2      OPC=2436  
  movl %ebx, %ebx                                   #  7     0xb492d  2      OPC=1157  
  movl $0x1003c2c8, (%r15,%rbx,1)                   #  8     0xb492f  8      OPC=1135  
  setne %al                                         #  9     0xb4937  3      OPC=2208  
  leal 0xc(%rsp), %edi                              #  10    0xb493a  4      OPC=1066  
  xchgw %ax, %ax                                    #  11    0xb493e  2      OPC=3700  
  movl %esi, 0xc(%rsp)                              #  12    0xb4940  4      OPC=1136  
  movl %ebx, %ebx                                   #  13    0xb4944  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xb4946  5      OPC=1136  
  nop                                               #  15    0xb494b  1      OPC=1343  
  nop                                               #  16    0xb494c  1      OPC=1343  
  nop                                               #  17    0xb494d  1      OPC=1343  
  nop                                               #  18    0xb494e  1      OPC=1343  
  nop                                               #  19    0xb494f  1      OPC=1343  
  nop                                               #  20    0xb4950  1      OPC=1343  
  nop                                               #  21    0xb4951  1      OPC=1343  
  nop                                               #  22    0xb4952  1      OPC=1343  
  nop                                               #  23    0xb4953  1      OPC=1343  
  nop                                               #  24    0xb4954  1      OPC=1343  
  nop                                               #  25    0xb4955  1      OPC=1343  
  nop                                               #  26    0xb4956  1      OPC=1343  
  nop                                               #  27    0xb4957  1      OPC=1343  
  nop                                               #  28    0xb4958  1      OPC=1343  
  nop                                               #  29    0xb4959  1      OPC=1343  
  nop                                               #  30    0xb495a  1      OPC=1343  
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xb495b  5      OPC=260   
  movl %ebx, %ebx                                   #  32    0xb4960  2      OPC=1157  
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xb4962  5      OPC=1136  
  addl $0x10, %esp                                  #  34    0xb4967  3      OPC=65    
  addq %r15, %rsp                                   #  35    0xb496a  3      OPC=72    
  popq %rbx                                         #  36    0xb496d  1      OPC=1694  
  popq %r11                                         #  37    0xb496e  2      OPC=1694  
  andl $0xffffffe0, %r11d                           #  38    0xb4970  7      OPC=131   
  nop                                               #  39    0xb4977  1      OPC=1343  
  nop                                               #  40    0xb4978  1      OPC=1343  
  nop                                               #  41    0xb4979  1      OPC=1343  
  nop                                               #  42    0xb497a  1      OPC=1343  
  addq %r15, %r11                                   #  43    0xb497b  3      OPC=72    
  jmpq %r11                                         #  44    0xb497e  3      OPC=928   
  nop                                               #  45    0xb4981  1      OPC=1343  
  nop                                               #  46    0xb4982  1      OPC=1343  
  nop                                               #  47    0xb4983  1      OPC=1343  
  nop                                               #  48    0xb4984  1      OPC=1343  
  nop                                               #  49    0xb4985  1      OPC=1343  
  nop                                               #  50    0xb4986  1      OPC=1343  
  movl %ebx, %edi                                   #  51    0xb4987  2      OPC=1157  
  movl %eax, (%rsp)                                 #  52    0xb4989  3      OPC=1136  
  nop                                               #  53    0xb498c  1      OPC=1343  
  nop                                               #  54    0xb498d  1      OPC=1343  
  nop                                               #  55    0xb498e  1      OPC=1343  
  nop                                               #  56    0xb498f  1      OPC=1343  
  nop                                               #  57    0xb4990  1      OPC=1343  
  nop                                               #  58    0xb4991  1      OPC=1343  
  nop                                               #  59    0xb4992  1      OPC=1343  
  nop                                               #  60    0xb4993  1      OPC=1343  
  nop                                               #  61    0xb4994  1      OPC=1343  
  nop                                               #  62    0xb4995  1      OPC=1343  
  nop                                               #  63    0xb4996  1      OPC=1343  
  nop                                               #  64    0xb4997  1      OPC=1343  
  nop                                               #  65    0xb4998  1      OPC=1343  
  nop                                               #  66    0xb4999  1      OPC=1343  
  nop                                               #  67    0xb499a  1      OPC=1343  
  nop                                               #  68    0xb499b  1      OPC=1343  
  nop                                               #  69    0xb499c  1      OPC=1343  
  nop                                               #  70    0xb499d  1      OPC=1343  
  nop                                               #  71    0xb499e  1      OPC=1343  
  nop                                               #  72    0xb499f  1      OPC=1343  
  nop                                               #  73    0xb49a0  1      OPC=1343  
  nop                                               #  74    0xb49a1  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                     #  75    0xb49a2  5      OPC=260   
  movl (%rsp), %eax                                 #  76    0xb49a7  3      OPC=1156  
  movl %eax, %edi                                   #  77    0xb49aa  2      OPC=1157  
  nop                                               #  78    0xb49ac  1      OPC=1343  
  nop                                               #  79    0xb49ad  1      OPC=1343  
  nop                                               #  80    0xb49ae  1      OPC=1343  
  nop                                               #  81    0xb49af  1      OPC=1343  
  nop                                               #  82    0xb49b0  1      OPC=1343  
  nop                                               #  83    0xb49b1  1      OPC=1343  
  nop                                               #  84    0xb49b2  1      OPC=1343  
  nop                                               #  85    0xb49b3  1      OPC=1343  
  nop                                               #  86    0xb49b4  1      OPC=1343  
  nop                                               #  87    0xb49b5  1      OPC=1343  
  nop                                               #  88    0xb49b6  1      OPC=1343  
  nop                                               #  89    0xb49b7  1      OPC=1343  
  nop                                               #  90    0xb49b8  1      OPC=1343  
  nop                                               #  91    0xb49b9  1      OPC=1343  
  nop                                               #  92    0xb49ba  1      OPC=1343  
  nop                                               #  93    0xb49bb  1      OPC=1343  
  nop                                               #  94    0xb49bc  1      OPC=1343  
  nop                                               #  95    0xb49bd  1      OPC=1343  
  nop                                               #  96    0xb49be  1      OPC=1343  
  nop                                               #  97    0xb49bf  1      OPC=1343  
  nop                                               #  98    0xb49c0  1      OPC=1343  
  nop                                               #  99    0xb49c1  1      OPC=1343  
  callq ._Unwind_Resume                             #  100   0xb49c2  5      OPC=260   
                                                                                       
.size _ZNSt7collateIwEC2EPij, .-_ZNSt7collateIwEC2EPij

