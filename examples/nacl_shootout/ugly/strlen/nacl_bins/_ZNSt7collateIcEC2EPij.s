  .text
  .globl _ZNSt7collateIcEC2EPij
  .type _ZNSt7collateIcEC2EPij, @function

#! file-offset 0xbbb60
#! rip-offset  0x7bb60
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode    
._ZNSt7collateIcEC2EPij:                            #        0x7bb60  0      OPC=0     
  pushq %rbx                                        #  1     0x7bb60  1      OPC=1861  
  xorl %eax, %eax                                   #  2     0x7bb61  2      OPC=3758  
  movl %edi, %ebx                                   #  3     0x7bb63  2      OPC=1157  
  subl $0x10, %esp                                  #  4     0x7bb65  3      OPC=2384  
  addq %r15, %rsp                                   #  5     0x7bb68  3      OPC=72    
  testl %edx, %edx                                  #  6     0x7bb6b  2      OPC=2436  
  movl %ebx, %ebx                                   #  7     0x7bb6d  2      OPC=1157  
  movl $0x1003aff8, (%r15,%rbx,1)                   #  8     0x7bb6f  8      OPC=1135  
  setne %al                                         #  9     0x7bb77  3      OPC=2208  
  leal 0xc(%rsp), %edi                              #  10    0x7bb7a  4      OPC=1066  
  xchgw %ax, %ax                                    #  11    0x7bb7e  2      OPC=3700  
  movl %esi, 0xc(%rsp)                              #  12    0x7bb80  4      OPC=1136  
  movl %ebx, %ebx                                   #  13    0x7bb84  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0x7bb86  5      OPC=1136  
  nop                                               #  15    0x7bb8b  1      OPC=1343  
  nop                                               #  16    0x7bb8c  1      OPC=1343  
  nop                                               #  17    0x7bb8d  1      OPC=1343  
  nop                                               #  18    0x7bb8e  1      OPC=1343  
  nop                                               #  19    0x7bb8f  1      OPC=1343  
  nop                                               #  20    0x7bb90  1      OPC=1343  
  nop                                               #  21    0x7bb91  1      OPC=1343  
  nop                                               #  22    0x7bb92  1      OPC=1343  
  nop                                               #  23    0x7bb93  1      OPC=1343  
  nop                                               #  24    0x7bb94  1      OPC=1343  
  nop                                               #  25    0x7bb95  1      OPC=1343  
  nop                                               #  26    0x7bb96  1      OPC=1343  
  nop                                               #  27    0x7bb97  1      OPC=1343  
  nop                                               #  28    0x7bb98  1      OPC=1343  
  nop                                               #  29    0x7bb99  1      OPC=1343  
  nop                                               #  30    0x7bb9a  1      OPC=1343  
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0x7bb9b  5      OPC=260   
  movl %ebx, %ebx                                   #  32    0x7bba0  2      OPC=1157  
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0x7bba2  5      OPC=1136  
  addl $0x10, %esp                                  #  34    0x7bba7  3      OPC=65    
  addq %r15, %rsp                                   #  35    0x7bbaa  3      OPC=72    
  popq %rbx                                         #  36    0x7bbad  1      OPC=1694  
  popq %r11                                         #  37    0x7bbae  2      OPC=1694  
  andl $0xffffffe0, %r11d                           #  38    0x7bbb0  7      OPC=131   
  nop                                               #  39    0x7bbb7  1      OPC=1343  
  nop                                               #  40    0x7bbb8  1      OPC=1343  
  nop                                               #  41    0x7bbb9  1      OPC=1343  
  nop                                               #  42    0x7bbba  1      OPC=1343  
  addq %r15, %r11                                   #  43    0x7bbbb  3      OPC=72    
  jmpq %r11                                         #  44    0x7bbbe  3      OPC=928   
  nop                                               #  45    0x7bbc1  1      OPC=1343  
  nop                                               #  46    0x7bbc2  1      OPC=1343  
  nop                                               #  47    0x7bbc3  1      OPC=1343  
  nop                                               #  48    0x7bbc4  1      OPC=1343  
  nop                                               #  49    0x7bbc5  1      OPC=1343  
  nop                                               #  50    0x7bbc6  1      OPC=1343  
  movl %ebx, %edi                                   #  51    0x7bbc7  2      OPC=1157  
  movl %eax, (%rsp)                                 #  52    0x7bbc9  3      OPC=1136  
  nop                                               #  53    0x7bbcc  1      OPC=1343  
  nop                                               #  54    0x7bbcd  1      OPC=1343  
  nop                                               #  55    0x7bbce  1      OPC=1343  
  nop                                               #  56    0x7bbcf  1      OPC=1343  
  nop                                               #  57    0x7bbd0  1      OPC=1343  
  nop                                               #  58    0x7bbd1  1      OPC=1343  
  nop                                               #  59    0x7bbd2  1      OPC=1343  
  nop                                               #  60    0x7bbd3  1      OPC=1343  
  nop                                               #  61    0x7bbd4  1      OPC=1343  
  nop                                               #  62    0x7bbd5  1      OPC=1343  
  nop                                               #  63    0x7bbd6  1      OPC=1343  
  nop                                               #  64    0x7bbd7  1      OPC=1343  
  nop                                               #  65    0x7bbd8  1      OPC=1343  
  nop                                               #  66    0x7bbd9  1      OPC=1343  
  nop                                               #  67    0x7bbda  1      OPC=1343  
  nop                                               #  68    0x7bbdb  1      OPC=1343  
  nop                                               #  69    0x7bbdc  1      OPC=1343  
  nop                                               #  70    0x7bbdd  1      OPC=1343  
  nop                                               #  71    0x7bbde  1      OPC=1343  
  nop                                               #  72    0x7bbdf  1      OPC=1343  
  nop                                               #  73    0x7bbe0  1      OPC=1343  
  nop                                               #  74    0x7bbe1  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                     #  75    0x7bbe2  5      OPC=260   
  movl (%rsp), %eax                                 #  76    0x7bbe7  3      OPC=1156  
  movl %eax, %edi                                   #  77    0x7bbea  2      OPC=1157  
  nop                                               #  78    0x7bbec  1      OPC=1343  
  nop                                               #  79    0x7bbed  1      OPC=1343  
  nop                                               #  80    0x7bbee  1      OPC=1343  
  nop                                               #  81    0x7bbef  1      OPC=1343  
  nop                                               #  82    0x7bbf0  1      OPC=1343  
  nop                                               #  83    0x7bbf1  1      OPC=1343  
  nop                                               #  84    0x7bbf2  1      OPC=1343  
  nop                                               #  85    0x7bbf3  1      OPC=1343  
  nop                                               #  86    0x7bbf4  1      OPC=1343  
  nop                                               #  87    0x7bbf5  1      OPC=1343  
  nop                                               #  88    0x7bbf6  1      OPC=1343  
  nop                                               #  89    0x7bbf7  1      OPC=1343  
  nop                                               #  90    0x7bbf8  1      OPC=1343  
  nop                                               #  91    0x7bbf9  1      OPC=1343  
  nop                                               #  92    0x7bbfa  1      OPC=1343  
  nop                                               #  93    0x7bbfb  1      OPC=1343  
  nop                                               #  94    0x7bbfc  1      OPC=1343  
  nop                                               #  95    0x7bbfd  1      OPC=1343  
  nop                                               #  96    0x7bbfe  1      OPC=1343  
  nop                                               #  97    0x7bbff  1      OPC=1343  
  nop                                               #  98    0x7bc00  1      OPC=1343  
  nop                                               #  99    0x7bc01  1      OPC=1343  
  callq ._Unwind_Resume                             #  100   0x7bc02  5      OPC=260   
                                                                                       
.size _ZNSt7collateIcEC2EPij, .-_ZNSt7collateIcEC2EPij

