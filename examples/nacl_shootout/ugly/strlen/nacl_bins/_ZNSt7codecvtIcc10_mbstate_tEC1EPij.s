  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tEC1EPij
  .type _ZNSt7codecvtIcc10_mbstate_tEC1EPij, @function

#! file-offset 0x123640
#! rip-offset  0xe3640
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode    
._ZNSt7codecvtIcc10_mbstate_tEC1EPij:               #        0xe3640  0      OPC=0     
  pushq %rbx                                        #  1     0xe3640  1      OPC=1861  
  xorl %eax, %eax                                   #  2     0xe3641  2      OPC=3758  
  movl %edi, %ebx                                   #  3     0xe3643  2      OPC=1157  
  subl $0x10, %esp                                  #  4     0xe3645  3      OPC=2384  
  addq %r15, %rsp                                   #  5     0xe3648  3      OPC=72    
  testl %edx, %edx                                  #  6     0xe364b  2      OPC=2436  
  movl %ebx, %ebx                                   #  7     0xe364d  2      OPC=1157  
  movl $0x1003d4e8, (%r15,%rbx,1)                   #  8     0xe364f  8      OPC=1135  
  setne %al                                         #  9     0xe3657  3      OPC=2208  
  leal 0xc(%rsp), %edi                              #  10    0xe365a  4      OPC=1066  
  xchgw %ax, %ax                                    #  11    0xe365e  2      OPC=3700  
  movl %esi, 0xc(%rsp)                              #  12    0xe3660  4      OPC=1136  
  movl %ebx, %ebx                                   #  13    0xe3664  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe3666  5      OPC=1136  
  nop                                               #  15    0xe366b  1      OPC=1343  
  nop                                               #  16    0xe366c  1      OPC=1343  
  nop                                               #  17    0xe366d  1      OPC=1343  
  nop                                               #  18    0xe366e  1      OPC=1343  
  nop                                               #  19    0xe366f  1      OPC=1343  
  nop                                               #  20    0xe3670  1      OPC=1343  
  nop                                               #  21    0xe3671  1      OPC=1343  
  nop                                               #  22    0xe3672  1      OPC=1343  
  nop                                               #  23    0xe3673  1      OPC=1343  
  nop                                               #  24    0xe3674  1      OPC=1343  
  nop                                               #  25    0xe3675  1      OPC=1343  
  nop                                               #  26    0xe3676  1      OPC=1343  
  nop                                               #  27    0xe3677  1      OPC=1343  
  nop                                               #  28    0xe3678  1      OPC=1343  
  nop                                               #  29    0xe3679  1      OPC=1343  
  nop                                               #  30    0xe367a  1      OPC=1343  
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe367b  5      OPC=260   
  movl %ebx, %ebx                                   #  32    0xe3680  2      OPC=1157  
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe3682  5      OPC=1136  
  addl $0x10, %esp                                  #  34    0xe3687  3      OPC=65    
  addq %r15, %rsp                                   #  35    0xe368a  3      OPC=72    
  popq %rbx                                         #  36    0xe368d  1      OPC=1694  
  popq %r11                                         #  37    0xe368e  2      OPC=1694  
  andl $0xffffffe0, %r11d                           #  38    0xe3690  7      OPC=131   
  nop                                               #  39    0xe3697  1      OPC=1343  
  nop                                               #  40    0xe3698  1      OPC=1343  
  nop                                               #  41    0xe3699  1      OPC=1343  
  nop                                               #  42    0xe369a  1      OPC=1343  
  addq %r15, %r11                                   #  43    0xe369b  3      OPC=72    
  jmpq %r11                                         #  44    0xe369e  3      OPC=928   
  nop                                               #  45    0xe36a1  1      OPC=1343  
  nop                                               #  46    0xe36a2  1      OPC=1343  
  nop                                               #  47    0xe36a3  1      OPC=1343  
  nop                                               #  48    0xe36a4  1      OPC=1343  
  nop                                               #  49    0xe36a5  1      OPC=1343  
  nop                                               #  50    0xe36a6  1      OPC=1343  
  movl %ebx, %edi                                   #  51    0xe36a7  2      OPC=1157  
  movl %ebx, %ebx                                   #  52    0xe36a9  2      OPC=1157  
  movl $0x1003ade8, (%r15,%rbx,1)                   #  53    0xe36ab  8      OPC=1135  
  movl %eax, (%rsp)                                 #  54    0xe36b3  3      OPC=1136  
  nop                                               #  55    0xe36b6  1      OPC=1343  
  nop                                               #  56    0xe36b7  1      OPC=1343  
  nop                                               #  57    0xe36b8  1      OPC=1343  
  nop                                               #  58    0xe36b9  1      OPC=1343  
  nop                                               #  59    0xe36ba  1      OPC=1343  
  nop                                               #  60    0xe36bb  1      OPC=1343  
  nop                                               #  61    0xe36bc  1      OPC=1343  
  nop                                               #  62    0xe36bd  1      OPC=1343  
  nop                                               #  63    0xe36be  1      OPC=1343  
  nop                                               #  64    0xe36bf  1      OPC=1343  
  nop                                               #  65    0xe36c0  1      OPC=1343  
  nop                                               #  66    0xe36c1  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe36c2  5      OPC=260   
  movl (%rsp), %eax                                 #  68    0xe36c7  3      OPC=1156  
  movl %eax, %edi                                   #  69    0xe36ca  2      OPC=1157  
  nop                                               #  70    0xe36cc  1      OPC=1343  
  nop                                               #  71    0xe36cd  1      OPC=1343  
  nop                                               #  72    0xe36ce  1      OPC=1343  
  nop                                               #  73    0xe36cf  1      OPC=1343  
  nop                                               #  74    0xe36d0  1      OPC=1343  
  nop                                               #  75    0xe36d1  1      OPC=1343  
  nop                                               #  76    0xe36d2  1      OPC=1343  
  nop                                               #  77    0xe36d3  1      OPC=1343  
  nop                                               #  78    0xe36d4  1      OPC=1343  
  nop                                               #  79    0xe36d5  1      OPC=1343  
  nop                                               #  80    0xe36d6  1      OPC=1343  
  nop                                               #  81    0xe36d7  1      OPC=1343  
  nop                                               #  82    0xe36d8  1      OPC=1343  
  nop                                               #  83    0xe36d9  1      OPC=1343  
  nop                                               #  84    0xe36da  1      OPC=1343  
  nop                                               #  85    0xe36db  1      OPC=1343  
  nop                                               #  86    0xe36dc  1      OPC=1343  
  nop                                               #  87    0xe36dd  1      OPC=1343  
  nop                                               #  88    0xe36de  1      OPC=1343  
  nop                                               #  89    0xe36df  1      OPC=1343  
  nop                                               #  90    0xe36e0  1      OPC=1343  
  nop                                               #  91    0xe36e1  1      OPC=1343  
  callq ._Unwind_Resume                             #  92    0xe36e2  5      OPC=260   
                                                                                       
.size _ZNSt7codecvtIcc10_mbstate_tEC1EPij, .-_ZNSt7codecvtIcc10_mbstate_tEC1EPij

