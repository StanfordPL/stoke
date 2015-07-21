  .text
  .globl _ZNSt7collateIcEC1EPij
  .type _ZNSt7collateIcEC1EPij, @function

#! file-offset 0xbbac0
#! rip-offset  0x7bac0
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode    
._ZNSt7collateIcEC1EPij:                            #        0x7bac0  0      OPC=0     
  pushq %rbx                                        #  1     0x7bac0  1      OPC=1861  
  xorl %eax, %eax                                   #  2     0x7bac1  2      OPC=3758  
  movl %edi, %ebx                                   #  3     0x7bac3  2      OPC=1157  
  subl $0x10, %esp                                  #  4     0x7bac5  3      OPC=2384  
  addq %r15, %rsp                                   #  5     0x7bac8  3      OPC=72    
  testl %edx, %edx                                  #  6     0x7bacb  2      OPC=2436  
  movl %ebx, %ebx                                   #  7     0x7bacd  2      OPC=1157  
  movl $0x1003aff8, (%r15,%rbx,1)                   #  8     0x7bacf  8      OPC=1135  
  setne %al                                         #  9     0x7bad7  3      OPC=2208  
  leal 0xc(%rsp), %edi                              #  10    0x7bada  4      OPC=1066  
  xchgw %ax, %ax                                    #  11    0x7bade  2      OPC=3700  
  movl %esi, 0xc(%rsp)                              #  12    0x7bae0  4      OPC=1136  
  movl %ebx, %ebx                                   #  13    0x7bae4  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0x7bae6  5      OPC=1136  
  nop                                               #  15    0x7baeb  1      OPC=1343  
  nop                                               #  16    0x7baec  1      OPC=1343  
  nop                                               #  17    0x7baed  1      OPC=1343  
  nop                                               #  18    0x7baee  1      OPC=1343  
  nop                                               #  19    0x7baef  1      OPC=1343  
  nop                                               #  20    0x7baf0  1      OPC=1343  
  nop                                               #  21    0x7baf1  1      OPC=1343  
  nop                                               #  22    0x7baf2  1      OPC=1343  
  nop                                               #  23    0x7baf3  1      OPC=1343  
  nop                                               #  24    0x7baf4  1      OPC=1343  
  nop                                               #  25    0x7baf5  1      OPC=1343  
  nop                                               #  26    0x7baf6  1      OPC=1343  
  nop                                               #  27    0x7baf7  1      OPC=1343  
  nop                                               #  28    0x7baf8  1      OPC=1343  
  nop                                               #  29    0x7baf9  1      OPC=1343  
  nop                                               #  30    0x7bafa  1      OPC=1343  
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0x7bafb  5      OPC=260   
  movl %ebx, %ebx                                   #  32    0x7bb00  2      OPC=1157  
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0x7bb02  5      OPC=1136  
  addl $0x10, %esp                                  #  34    0x7bb07  3      OPC=65    
  addq %r15, %rsp                                   #  35    0x7bb0a  3      OPC=72    
  popq %rbx                                         #  36    0x7bb0d  1      OPC=1694  
  popq %r11                                         #  37    0x7bb0e  2      OPC=1694  
  andl $0xffffffe0, %r11d                           #  38    0x7bb10  7      OPC=131   
  nop                                               #  39    0x7bb17  1      OPC=1343  
  nop                                               #  40    0x7bb18  1      OPC=1343  
  nop                                               #  41    0x7bb19  1      OPC=1343  
  nop                                               #  42    0x7bb1a  1      OPC=1343  
  addq %r15, %r11                                   #  43    0x7bb1b  3      OPC=72    
  jmpq %r11                                         #  44    0x7bb1e  3      OPC=928   
  nop                                               #  45    0x7bb21  1      OPC=1343  
  nop                                               #  46    0x7bb22  1      OPC=1343  
  nop                                               #  47    0x7bb23  1      OPC=1343  
  nop                                               #  48    0x7bb24  1      OPC=1343  
  nop                                               #  49    0x7bb25  1      OPC=1343  
  nop                                               #  50    0x7bb26  1      OPC=1343  
  movl %ebx, %edi                                   #  51    0x7bb27  2      OPC=1157  
  movl %eax, (%rsp)                                 #  52    0x7bb29  3      OPC=1136  
  nop                                               #  53    0x7bb2c  1      OPC=1343  
  nop                                               #  54    0x7bb2d  1      OPC=1343  
  nop                                               #  55    0x7bb2e  1      OPC=1343  
  nop                                               #  56    0x7bb2f  1      OPC=1343  
  nop                                               #  57    0x7bb30  1      OPC=1343  
  nop                                               #  58    0x7bb31  1      OPC=1343  
  nop                                               #  59    0x7bb32  1      OPC=1343  
  nop                                               #  60    0x7bb33  1      OPC=1343  
  nop                                               #  61    0x7bb34  1      OPC=1343  
  nop                                               #  62    0x7bb35  1      OPC=1343  
  nop                                               #  63    0x7bb36  1      OPC=1343  
  nop                                               #  64    0x7bb37  1      OPC=1343  
  nop                                               #  65    0x7bb38  1      OPC=1343  
  nop                                               #  66    0x7bb39  1      OPC=1343  
  nop                                               #  67    0x7bb3a  1      OPC=1343  
  nop                                               #  68    0x7bb3b  1      OPC=1343  
  nop                                               #  69    0x7bb3c  1      OPC=1343  
  nop                                               #  70    0x7bb3d  1      OPC=1343  
  nop                                               #  71    0x7bb3e  1      OPC=1343  
  nop                                               #  72    0x7bb3f  1      OPC=1343  
  nop                                               #  73    0x7bb40  1      OPC=1343  
  nop                                               #  74    0x7bb41  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                     #  75    0x7bb42  5      OPC=260   
  movl (%rsp), %eax                                 #  76    0x7bb47  3      OPC=1156  
  movl %eax, %edi                                   #  77    0x7bb4a  2      OPC=1157  
  nop                                               #  78    0x7bb4c  1      OPC=1343  
  nop                                               #  79    0x7bb4d  1      OPC=1343  
  nop                                               #  80    0x7bb4e  1      OPC=1343  
  nop                                               #  81    0x7bb4f  1      OPC=1343  
  nop                                               #  82    0x7bb50  1      OPC=1343  
  nop                                               #  83    0x7bb51  1      OPC=1343  
  nop                                               #  84    0x7bb52  1      OPC=1343  
  nop                                               #  85    0x7bb53  1      OPC=1343  
  nop                                               #  86    0x7bb54  1      OPC=1343  
  nop                                               #  87    0x7bb55  1      OPC=1343  
  nop                                               #  88    0x7bb56  1      OPC=1343  
  nop                                               #  89    0x7bb57  1      OPC=1343  
  nop                                               #  90    0x7bb58  1      OPC=1343  
  nop                                               #  91    0x7bb59  1      OPC=1343  
  nop                                               #  92    0x7bb5a  1      OPC=1343  
  nop                                               #  93    0x7bb5b  1      OPC=1343  
  nop                                               #  94    0x7bb5c  1      OPC=1343  
  nop                                               #  95    0x7bb5d  1      OPC=1343  
  nop                                               #  96    0x7bb5e  1      OPC=1343  
  nop                                               #  97    0x7bb5f  1      OPC=1343  
  nop                                               #  98    0x7bb60  1      OPC=1343  
  nop                                               #  99    0x7bb61  1      OPC=1343  
  callq ._Unwind_Resume                             #  100   0x7bb62  5      OPC=260   
                                                                                       
.size _ZNSt7collateIcEC1EPij, .-_ZNSt7collateIcEC1EPij

