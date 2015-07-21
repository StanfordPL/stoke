  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tEC1EPij
  .type _ZNSt7codecvtIwc10_mbstate_tEC1EPij, @function

#! file-offset 0x123500
#! rip-offset  0xe3500
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode    
._ZNSt7codecvtIwc10_mbstate_tEC1EPij:               #        0xe3500  0      OPC=0     
  pushq %rbx                                        #  1     0xe3500  1      OPC=1861  
  xorl %eax, %eax                                   #  2     0xe3501  2      OPC=3758  
  movl %edi, %ebx                                   #  3     0xe3503  2      OPC=1157  
  subl $0x10, %esp                                  #  4     0xe3505  3      OPC=2384  
  addq %r15, %rsp                                   #  5     0xe3508  3      OPC=72    
  testl %edx, %edx                                  #  6     0xe350b  2      OPC=2436  
  movl %ebx, %ebx                                   #  7     0xe350d  2      OPC=1157  
  movl $0x1003d4a8, (%r15,%rbx,1)                   #  8     0xe350f  8      OPC=1135  
  setne %al                                         #  9     0xe3517  3      OPC=2208  
  leal 0xc(%rsp), %edi                              #  10    0xe351a  4      OPC=1066  
  xchgw %ax, %ax                                    #  11    0xe351e  2      OPC=3700  
  movl %esi, 0xc(%rsp)                              #  12    0xe3520  4      OPC=1136  
  movl %ebx, %ebx                                   #  13    0xe3524  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe3526  5      OPC=1136  
  nop                                               #  15    0xe352b  1      OPC=1343  
  nop                                               #  16    0xe352c  1      OPC=1343  
  nop                                               #  17    0xe352d  1      OPC=1343  
  nop                                               #  18    0xe352e  1      OPC=1343  
  nop                                               #  19    0xe352f  1      OPC=1343  
  nop                                               #  20    0xe3530  1      OPC=1343  
  nop                                               #  21    0xe3531  1      OPC=1343  
  nop                                               #  22    0xe3532  1      OPC=1343  
  nop                                               #  23    0xe3533  1      OPC=1343  
  nop                                               #  24    0xe3534  1      OPC=1343  
  nop                                               #  25    0xe3535  1      OPC=1343  
  nop                                               #  26    0xe3536  1      OPC=1343  
  nop                                               #  27    0xe3537  1      OPC=1343  
  nop                                               #  28    0xe3538  1      OPC=1343  
  nop                                               #  29    0xe3539  1      OPC=1343  
  nop                                               #  30    0xe353a  1      OPC=1343  
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe353b  5      OPC=260   
  movl %ebx, %ebx                                   #  32    0xe3540  2      OPC=1157  
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe3542  5      OPC=1136  
  addl $0x10, %esp                                  #  34    0xe3547  3      OPC=65    
  addq %r15, %rsp                                   #  35    0xe354a  3      OPC=72    
  popq %rbx                                         #  36    0xe354d  1      OPC=1694  
  popq %r11                                         #  37    0xe354e  2      OPC=1694  
  andl $0xffffffe0, %r11d                           #  38    0xe3550  7      OPC=131   
  nop                                               #  39    0xe3557  1      OPC=1343  
  nop                                               #  40    0xe3558  1      OPC=1343  
  nop                                               #  41    0xe3559  1      OPC=1343  
  nop                                               #  42    0xe355a  1      OPC=1343  
  addq %r15, %r11                                   #  43    0xe355b  3      OPC=72    
  jmpq %r11                                         #  44    0xe355e  3      OPC=928   
  nop                                               #  45    0xe3561  1      OPC=1343  
  nop                                               #  46    0xe3562  1      OPC=1343  
  nop                                               #  47    0xe3563  1      OPC=1343  
  nop                                               #  48    0xe3564  1      OPC=1343  
  nop                                               #  49    0xe3565  1      OPC=1343  
  nop                                               #  50    0xe3566  1      OPC=1343  
  movl %ebx, %edi                                   #  51    0xe3567  2      OPC=1157  
  movl %ebx, %ebx                                   #  52    0xe3569  2      OPC=1157  
  movl $0x1003c068, (%r15,%rbx,1)                   #  53    0xe356b  8      OPC=1135  
  movl %eax, (%rsp)                                 #  54    0xe3573  3      OPC=1136  
  nop                                               #  55    0xe3576  1      OPC=1343  
  nop                                               #  56    0xe3577  1      OPC=1343  
  nop                                               #  57    0xe3578  1      OPC=1343  
  nop                                               #  58    0xe3579  1      OPC=1343  
  nop                                               #  59    0xe357a  1      OPC=1343  
  nop                                               #  60    0xe357b  1      OPC=1343  
  nop                                               #  61    0xe357c  1      OPC=1343  
  nop                                               #  62    0xe357d  1      OPC=1343  
  nop                                               #  63    0xe357e  1      OPC=1343  
  nop                                               #  64    0xe357f  1      OPC=1343  
  nop                                               #  65    0xe3580  1      OPC=1343  
  nop                                               #  66    0xe3581  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe3582  5      OPC=260   
  movl (%rsp), %eax                                 #  68    0xe3587  3      OPC=1156  
  movl %eax, %edi                                   #  69    0xe358a  2      OPC=1157  
  nop                                               #  70    0xe358c  1      OPC=1343  
  nop                                               #  71    0xe358d  1      OPC=1343  
  nop                                               #  72    0xe358e  1      OPC=1343  
  nop                                               #  73    0xe358f  1      OPC=1343  
  nop                                               #  74    0xe3590  1      OPC=1343  
  nop                                               #  75    0xe3591  1      OPC=1343  
  nop                                               #  76    0xe3592  1      OPC=1343  
  nop                                               #  77    0xe3593  1      OPC=1343  
  nop                                               #  78    0xe3594  1      OPC=1343  
  nop                                               #  79    0xe3595  1      OPC=1343  
  nop                                               #  80    0xe3596  1      OPC=1343  
  nop                                               #  81    0xe3597  1      OPC=1343  
  nop                                               #  82    0xe3598  1      OPC=1343  
  nop                                               #  83    0xe3599  1      OPC=1343  
  nop                                               #  84    0xe359a  1      OPC=1343  
  nop                                               #  85    0xe359b  1      OPC=1343  
  nop                                               #  86    0xe359c  1      OPC=1343  
  nop                                               #  87    0xe359d  1      OPC=1343  
  nop                                               #  88    0xe359e  1      OPC=1343  
  nop                                               #  89    0xe359f  1      OPC=1343  
  nop                                               #  90    0xe35a0  1      OPC=1343  
  nop                                               #  91    0xe35a1  1      OPC=1343  
  callq ._Unwind_Resume                             #  92    0xe35a2  5      OPC=260   
                                                                                       
.size _ZNSt7codecvtIwc10_mbstate_tEC1EPij, .-_ZNSt7codecvtIwc10_mbstate_tEC1EPij

