  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tEC2EPij
  .type _ZNSt7codecvtIcc10_mbstate_tEC2EPij, @function

#! file-offset 0x1236e0
#! rip-offset  0xe36e0
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode    
._ZNSt7codecvtIcc10_mbstate_tEC2EPij:               #        0xe36e0  0      OPC=0     
  pushq %rbx                                        #  1     0xe36e0  1      OPC=1861  
  xorl %eax, %eax                                   #  2     0xe36e1  2      OPC=3758  
  movl %edi, %ebx                                   #  3     0xe36e3  2      OPC=1157  
  subl $0x10, %esp                                  #  4     0xe36e5  3      OPC=2384  
  addq %r15, %rsp                                   #  5     0xe36e8  3      OPC=72    
  testl %edx, %edx                                  #  6     0xe36eb  2      OPC=2436  
  movl %ebx, %ebx                                   #  7     0xe36ed  2      OPC=1157  
  movl $0x1003d4e8, (%r15,%rbx,1)                   #  8     0xe36ef  8      OPC=1135  
  setne %al                                         #  9     0xe36f7  3      OPC=2208  
  leal 0xc(%rsp), %edi                              #  10    0xe36fa  4      OPC=1066  
  xchgw %ax, %ax                                    #  11    0xe36fe  2      OPC=3700  
  movl %esi, 0xc(%rsp)                              #  12    0xe3700  4      OPC=1136  
  movl %ebx, %ebx                                   #  13    0xe3704  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe3706  5      OPC=1136  
  nop                                               #  15    0xe370b  1      OPC=1343  
  nop                                               #  16    0xe370c  1      OPC=1343  
  nop                                               #  17    0xe370d  1      OPC=1343  
  nop                                               #  18    0xe370e  1      OPC=1343  
  nop                                               #  19    0xe370f  1      OPC=1343  
  nop                                               #  20    0xe3710  1      OPC=1343  
  nop                                               #  21    0xe3711  1      OPC=1343  
  nop                                               #  22    0xe3712  1      OPC=1343  
  nop                                               #  23    0xe3713  1      OPC=1343  
  nop                                               #  24    0xe3714  1      OPC=1343  
  nop                                               #  25    0xe3715  1      OPC=1343  
  nop                                               #  26    0xe3716  1      OPC=1343  
  nop                                               #  27    0xe3717  1      OPC=1343  
  nop                                               #  28    0xe3718  1      OPC=1343  
  nop                                               #  29    0xe3719  1      OPC=1343  
  nop                                               #  30    0xe371a  1      OPC=1343  
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe371b  5      OPC=260   
  movl %ebx, %ebx                                   #  32    0xe3720  2      OPC=1157  
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe3722  5      OPC=1136  
  addl $0x10, %esp                                  #  34    0xe3727  3      OPC=65    
  addq %r15, %rsp                                   #  35    0xe372a  3      OPC=72    
  popq %rbx                                         #  36    0xe372d  1      OPC=1694  
  popq %r11                                         #  37    0xe372e  2      OPC=1694  
  andl $0xffffffe0, %r11d                           #  38    0xe3730  7      OPC=131   
  nop                                               #  39    0xe3737  1      OPC=1343  
  nop                                               #  40    0xe3738  1      OPC=1343  
  nop                                               #  41    0xe3739  1      OPC=1343  
  nop                                               #  42    0xe373a  1      OPC=1343  
  addq %r15, %r11                                   #  43    0xe373b  3      OPC=72    
  jmpq %r11                                         #  44    0xe373e  3      OPC=928   
  nop                                               #  45    0xe3741  1      OPC=1343  
  nop                                               #  46    0xe3742  1      OPC=1343  
  nop                                               #  47    0xe3743  1      OPC=1343  
  nop                                               #  48    0xe3744  1      OPC=1343  
  nop                                               #  49    0xe3745  1      OPC=1343  
  nop                                               #  50    0xe3746  1      OPC=1343  
  movl %ebx, %edi                                   #  51    0xe3747  2      OPC=1157  
  movl %ebx, %ebx                                   #  52    0xe3749  2      OPC=1157  
  movl $0x1003ade8, (%r15,%rbx,1)                   #  53    0xe374b  8      OPC=1135  
  movl %eax, (%rsp)                                 #  54    0xe3753  3      OPC=1136  
  nop                                               #  55    0xe3756  1      OPC=1343  
  nop                                               #  56    0xe3757  1      OPC=1343  
  nop                                               #  57    0xe3758  1      OPC=1343  
  nop                                               #  58    0xe3759  1      OPC=1343  
  nop                                               #  59    0xe375a  1      OPC=1343  
  nop                                               #  60    0xe375b  1      OPC=1343  
  nop                                               #  61    0xe375c  1      OPC=1343  
  nop                                               #  62    0xe375d  1      OPC=1343  
  nop                                               #  63    0xe375e  1      OPC=1343  
  nop                                               #  64    0xe375f  1      OPC=1343  
  nop                                               #  65    0xe3760  1      OPC=1343  
  nop                                               #  66    0xe3761  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe3762  5      OPC=260   
  movl (%rsp), %eax                                 #  68    0xe3767  3      OPC=1156  
  movl %eax, %edi                                   #  69    0xe376a  2      OPC=1157  
  nop                                               #  70    0xe376c  1      OPC=1343  
  nop                                               #  71    0xe376d  1      OPC=1343  
  nop                                               #  72    0xe376e  1      OPC=1343  
  nop                                               #  73    0xe376f  1      OPC=1343  
  nop                                               #  74    0xe3770  1      OPC=1343  
  nop                                               #  75    0xe3771  1      OPC=1343  
  nop                                               #  76    0xe3772  1      OPC=1343  
  nop                                               #  77    0xe3773  1      OPC=1343  
  nop                                               #  78    0xe3774  1      OPC=1343  
  nop                                               #  79    0xe3775  1      OPC=1343  
  nop                                               #  80    0xe3776  1      OPC=1343  
  nop                                               #  81    0xe3777  1      OPC=1343  
  nop                                               #  82    0xe3778  1      OPC=1343  
  nop                                               #  83    0xe3779  1      OPC=1343  
  nop                                               #  84    0xe377a  1      OPC=1343  
  nop                                               #  85    0xe377b  1      OPC=1343  
  nop                                               #  86    0xe377c  1      OPC=1343  
  nop                                               #  87    0xe377d  1      OPC=1343  
  nop                                               #  88    0xe377e  1      OPC=1343  
  nop                                               #  89    0xe377f  1      OPC=1343  
  nop                                               #  90    0xe3780  1      OPC=1343  
  nop                                               #  91    0xe3781  1      OPC=1343  
  callq ._Unwind_Resume                             #  92    0xe3782  5      OPC=260   
                                                                                       
.size _ZNSt7codecvtIcc10_mbstate_tEC2EPij, .-_ZNSt7codecvtIcc10_mbstate_tEC2EPij

