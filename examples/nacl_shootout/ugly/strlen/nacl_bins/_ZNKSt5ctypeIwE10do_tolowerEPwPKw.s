  .text
  .globl _ZNKSt5ctypeIwE10do_tolowerEPwPKw
  .type _ZNKSt5ctypeIwE10do_tolowerEPwPKw, @function

#! file-offset 0x13c900
#! rip-offset  0xfc900
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode    
._ZNKSt5ctypeIwE10do_tolowerEPwPKw:  #        0xfc900  0      OPC=0     
  pushq %r12                         #  1     0xfc900  2      OPC=1861  
  movl %edx, %r12d                   #  2     0xfc902  3      OPC=1157  
  pushq %rbx                         #  3     0xfc905  1      OPC=1861  
  movl %esi, %ebx                    #  4     0xfc906  2      OPC=1157  
  subl $0x8, %esp                    #  5     0xfc908  3      OPC=2384  
  addq %r15, %rsp                    #  6     0xfc90b  3      OPC=72    
  cmpl %r12d, %ebx                   #  7     0xfc90e  3      OPC=472   
  jae .L_fc960                       #  8     0xfc911  6      OPC=869   
  nop                                #  9     0xfc917  1      OPC=1343  
  nop                                #  10    0xfc918  1      OPC=1343  
  nop                                #  11    0xfc919  1      OPC=1343  
  nop                                #  12    0xfc91a  1      OPC=1343  
  nop                                #  13    0xfc91b  1      OPC=1343  
  nop                                #  14    0xfc91c  1      OPC=1343  
  nop                                #  15    0xfc91d  1      OPC=1343  
  nop                                #  16    0xfc91e  1      OPC=1343  
  nop                                #  17    0xfc91f  1      OPC=1343  
  nop                                #  18    0xfc920  1      OPC=1343  
  nop                                #  19    0xfc921  1      OPC=1343  
  nop                                #  20    0xfc922  1      OPC=1343  
  nop                                #  21    0xfc923  1      OPC=1343  
  nop                                #  22    0xfc924  1      OPC=1343  
  nop                                #  23    0xfc925  1      OPC=1343  
.L_fc920:                            #        0xfc926  0      OPC=0     
  movl %ebx, %ebx                    #  24    0xfc926  2      OPC=1157  
  movl (%r15,%rbx,1), %edi           #  25    0xfc928  4      OPC=1156  
  nop                                #  26    0xfc92c  1      OPC=1343  
  nop                                #  27    0xfc92d  1      OPC=1343  
  nop                                #  28    0xfc92e  1      OPC=1343  
  nop                                #  29    0xfc92f  1      OPC=1343  
  nop                                #  30    0xfc930  1      OPC=1343  
  nop                                #  31    0xfc931  1      OPC=1343  
  nop                                #  32    0xfc932  1      OPC=1343  
  nop                                #  33    0xfc933  1      OPC=1343  
  nop                                #  34    0xfc934  1      OPC=1343  
  nop                                #  35    0xfc935  1      OPC=1343  
  nop                                #  36    0xfc936  1      OPC=1343  
  nop                                #  37    0xfc937  1      OPC=1343  
  nop                                #  38    0xfc938  1      OPC=1343  
  nop                                #  39    0xfc939  1      OPC=1343  
  nop                                #  40    0xfc93a  1      OPC=1343  
  nop                                #  41    0xfc93b  1      OPC=1343  
  nop                                #  42    0xfc93c  1      OPC=1343  
  nop                                #  43    0xfc93d  1      OPC=1343  
  nop                                #  44    0xfc93e  1      OPC=1343  
  nop                                #  45    0xfc93f  1      OPC=1343  
  nop                                #  46    0xfc940  1      OPC=1343  
  callq .towlower                    #  47    0xfc941  5      OPC=260   
  movl %ebx, %ebx                    #  48    0xfc946  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)           #  49    0xfc948  4      OPC=1136  
  addl $0x4, %ebx                    #  50    0xfc94c  3      OPC=65    
  cmpl %ebx, %r12d                   #  51    0xfc94f  3      OPC=472   
  ja .L_fc920                        #  52    0xfc952  6      OPC=863   
  nop                                #  53    0xfc958  1      OPC=1343  
  nop                                #  54    0xfc959  1      OPC=1343  
  nop                                #  55    0xfc95a  1      OPC=1343  
  nop                                #  56    0xfc95b  1      OPC=1343  
  nop                                #  57    0xfc95c  1      OPC=1343  
  nop                                #  58    0xfc95d  1      OPC=1343  
  nop                                #  59    0xfc95e  1      OPC=1343  
  nop                                #  60    0xfc95f  1      OPC=1343  
  nop                                #  61    0xfc960  1      OPC=1343  
  nop                                #  62    0xfc961  1      OPC=1343  
  nop                                #  63    0xfc962  1      OPC=1343  
  nop                                #  64    0xfc963  1      OPC=1343  
  nop                                #  65    0xfc964  1      OPC=1343  
  nop                                #  66    0xfc965  1      OPC=1343  
  nop                                #  67    0xfc966  1      OPC=1343  
  nop                                #  68    0xfc967  1      OPC=1343  
  nop                                #  69    0xfc968  1      OPC=1343  
  nop                                #  70    0xfc969  1      OPC=1343  
  nop                                #  71    0xfc96a  1      OPC=1343  
  nop                                #  72    0xfc96b  1      OPC=1343  
.L_fc960:                            #        0xfc96c  0      OPC=0     
  addl $0x8, %esp                    #  73    0xfc96c  3      OPC=65    
  addq %r15, %rsp                    #  74    0xfc96f  3      OPC=72    
  movl %r12d, %eax                   #  75    0xfc972  3      OPC=1157  
  popq %rbx                          #  76    0xfc975  1      OPC=1694  
  popq %r12                          #  77    0xfc976  2      OPC=1694  
  popq %r11                          #  78    0xfc978  2      OPC=1694  
  andl $0xffffffe0, %r11d            #  79    0xfc97a  7      OPC=131   
  nop                                #  80    0xfc981  1      OPC=1343  
  nop                                #  81    0xfc982  1      OPC=1343  
  nop                                #  82    0xfc983  1      OPC=1343  
  nop                                #  83    0xfc984  1      OPC=1343  
  addq %r15, %r11                    #  84    0xfc985  3      OPC=72    
  jmpq %r11                          #  85    0xfc988  3      OPC=928   
  nop                                #  86    0xfc98b  1      OPC=1343  
  nop                                #  87    0xfc98c  1      OPC=1343  
  nop                                #  88    0xfc98d  1      OPC=1343  
  nop                                #  89    0xfc98e  1      OPC=1343  
  nop                                #  90    0xfc98f  1      OPC=1343  
  nop                                #  91    0xfc990  1      OPC=1343  
  nop                                #  92    0xfc991  1      OPC=1343  
  nop                                #  93    0xfc992  1      OPC=1343  
                                                                        
.size _ZNKSt5ctypeIwE10do_tolowerEPwPKw, .-_ZNKSt5ctypeIwE10do_tolowerEPwPKw

