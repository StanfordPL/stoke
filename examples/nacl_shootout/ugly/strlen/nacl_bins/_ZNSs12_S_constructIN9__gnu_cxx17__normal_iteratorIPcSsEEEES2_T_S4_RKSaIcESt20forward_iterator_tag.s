  .text
  .globl _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag
  .type _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, @function

#! file-offset 0xed7a0
#! rip-offset  0xad7a0
#! capacity    224 bytes

# Text                                                                                                #  Line  RIP      Bytes  Opcode    
._ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag:  #        0xad7a0  0      OPC=0     
  movq %r12, -0x18(%rsp)                                                                              #  1     0xad7a0  5      OPC=1138  
  movq %r13, -0x10(%rsp)                                                                              #  2     0xad7a5  5      OPC=1138  
  movl %esi, %r12d                                                                                    #  3     0xad7aa  3      OPC=1157  
  movl %edi, %r13d                                                                                    #  4     0xad7ad  3      OPC=1157  
  movq %rbx, -0x20(%rsp)                                                                              #  5     0xad7b0  5      OPC=1138  
  movq %r14, -0x8(%rsp)                                                                               #  6     0xad7b5  5      OPC=1138  
  movl $0x1007358c, %ebx                                                                              #  7     0xad7ba  5      OPC=1154  
  nop                                                                                                 #  8     0xad7bf  1      OPC=1343  
  subl $0x28, %esp                                                                                    #  9     0xad7c0  3      OPC=2384  
  addq %r15, %rsp                                                                                     #  10    0xad7c3  3      OPC=72    
  cmpl %r13d, %r12d                                                                                   #  11    0xad7c6  3      OPC=472   
  movl %edx, %edx                                                                                     #  12    0xad7c9  2      OPC=1157  
  movl %ebx, %ebx                                                                                     #  13    0xad7cb  2      OPC=1157  
  je .L_ad820                                                                                         #  14    0xad7cd  6      OPC=893   
  nop                                                                                                 #  15    0xad7d3  1      OPC=1343  
  nop                                                                                                 #  16    0xad7d4  1      OPC=1343  
  subl %r13d, %r12d                                                                                   #  17    0xad7d5  3      OPC=2386  
  xorl %esi, %esi                                                                                     #  18    0xad7d8  2      OPC=3758  
  movl %r12d, %edi                                                                                    #  19    0xad7da  3      OPC=1157  
  nop                                                                                                 #  20    0xad7dd  1      OPC=1343  
  nop                                                                                                 #  21    0xad7de  1      OPC=1343  
  nop                                                                                                 #  22    0xad7df  1      OPC=1343  
  nop                                                                                                 #  23    0xad7e0  1      OPC=1343  
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                                                               #  24    0xad7e1  5      OPC=260   
  cmpl $0x1, %r12d                                                                                    #  25    0xad7e6  4      OPC=470   
  movl %eax, %r14d                                                                                    #  26    0xad7ea  3      OPC=1157  
  leal 0xc(%r14), %ebx                                                                                #  27    0xad7ed  4      OPC=1066  
  je .L_ad860                                                                                         #  28    0xad7f1  6      OPC=893   
  nop                                                                                                 #  29    0xad7f7  1      OPC=1343  
  nop                                                                                                 #  30    0xad7f8  1      OPC=1343  
  movl %r12d, %edx                                                                                    #  31    0xad7f9  3      OPC=1157  
  movl %r13d, %esi                                                                                    #  32    0xad7fc  3      OPC=1157  
  movl %ebx, %edi                                                                                     #  33    0xad7ff  2      OPC=1157  
  nop                                                                                                 #  34    0xad801  1      OPC=1343  
  nop                                                                                                 #  35    0xad802  1      OPC=1343  
  nop                                                                                                 #  36    0xad803  1      OPC=1343  
  nop                                                                                                 #  37    0xad804  1      OPC=1343  
  nop                                                                                                 #  38    0xad805  1      OPC=1343  
  nop                                                                                                 #  39    0xad806  1      OPC=1343  
  callq .memcpy                                                                                       #  40    0xad807  5      OPC=260   
.L_ad800:                                                                                             #        0xad80c  0      OPC=0     
  movl %r14d, %r14d                                                                                   #  41    0xad80c  3      OPC=1157  
  movl %r12d, (%r15,%r14,1)                                                                           #  42    0xad80f  4      OPC=1136  
  addl %ebx, %r12d                                                                                    #  43    0xad813  3      OPC=67    
  movl %r14d, %r14d                                                                                   #  44    0xad816  3      OPC=1157  
  movl $0x0, 0x8(%r15,%r14,1)                                                                         #  45    0xad819  9      OPC=1135  
  movl %r12d, %r12d                                                                                   #  46    0xad822  3      OPC=1157  
  movb $0x0, (%r15,%r12,1)                                                                            #  47    0xad825  5      OPC=1140  
  xchgw %ax, %ax                                                                                      #  48    0xad82a  2      OPC=3700  
.L_ad820:                                                                                             #        0xad82c  0      OPC=0     
  movl %ebx, %eax                                                                                     #  49    0xad82c  2      OPC=1157  
  movq 0x10(%rsp), %r12                                                                               #  50    0xad82e  5      OPC=1161  
  movq 0x8(%rsp), %rbx                                                                                #  51    0xad833  5      OPC=1161  
  movq 0x18(%rsp), %r13                                                                               #  52    0xad838  5      OPC=1161  
  movq 0x20(%rsp), %r14                                                                               #  53    0xad83d  5      OPC=1161  
  addl $0x28, %esp                                                                                    #  54    0xad842  3      OPC=65    
  addq %r15, %rsp                                                                                     #  55    0xad845  3      OPC=72    
  popq %r11                                                                                           #  56    0xad848  2      OPC=1694  
  xchgw %ax, %ax                                                                                      #  57    0xad84a  2      OPC=3700  
  andl $0xffffffe0, %r11d                                                                             #  58    0xad84c  7      OPC=131   
  nop                                                                                                 #  59    0xad853  1      OPC=1343  
  nop                                                                                                 #  60    0xad854  1      OPC=1343  
  nop                                                                                                 #  61    0xad855  1      OPC=1343  
  nop                                                                                                 #  62    0xad856  1      OPC=1343  
  addq %r15, %r11                                                                                     #  63    0xad857  3      OPC=72    
  jmpq %r11                                                                                           #  64    0xad85a  3      OPC=928   
  nop                                                                                                 #  65    0xad85d  1      OPC=1343  
  nop                                                                                                 #  66    0xad85e  1      OPC=1343  
  nop                                                                                                 #  67    0xad85f  1      OPC=1343  
  nop                                                                                                 #  68    0xad860  1      OPC=1343  
  nop                                                                                                 #  69    0xad861  1      OPC=1343  
  nop                                                                                                 #  70    0xad862  1      OPC=1343  
  nop                                                                                                 #  71    0xad863  1      OPC=1343  
  nop                                                                                                 #  72    0xad864  1      OPC=1343  
  nop                                                                                                 #  73    0xad865  1      OPC=1343  
  nop                                                                                                 #  74    0xad866  1      OPC=1343  
  nop                                                                                                 #  75    0xad867  1      OPC=1343  
  nop                                                                                                 #  76    0xad868  1      OPC=1343  
  nop                                                                                                 #  77    0xad869  1      OPC=1343  
  nop                                                                                                 #  78    0xad86a  1      OPC=1343  
  nop                                                                                                 #  79    0xad86b  1      OPC=1343  
  nop                                                                                                 #  80    0xad86c  1      OPC=1343  
  nop                                                                                                 #  81    0xad86d  1      OPC=1343  
  nop                                                                                                 #  82    0xad86e  1      OPC=1343  
  nop                                                                                                 #  83    0xad86f  1      OPC=1343  
  nop                                                                                                 #  84    0xad870  1      OPC=1343  
  nop                                                                                                 #  85    0xad871  1      OPC=1343  
  nop                                                                                                 #  86    0xad872  1      OPC=1343  
.L_ad860:                                                                                             #        0xad873  0      OPC=0     
  movl %r13d, %r13d                                                                                   #  87    0xad873  3      OPC=1157  
  movzbl (%r15,%r13,1), %eax                                                                          #  88    0xad876  5      OPC=1302  
  movl %ebx, %ebx                                                                                     #  89    0xad87b  2      OPC=1157  
  movb %al, (%r15,%rbx,1)                                                                             #  90    0xad87d  4      OPC=1141  
  jmpq .L_ad800                                                                                       #  91    0xad881  5      OPC=930   
  nop                                                                                                 #  92    0xad886  1      OPC=1343  
  nop                                                                                                 #  93    0xad887  1      OPC=1343  
  nop                                                                                                 #  94    0xad888  1      OPC=1343  
  nop                                                                                                 #  95    0xad889  1      OPC=1343  
  nop                                                                                                 #  96    0xad88a  1      OPC=1343  
  nop                                                                                                 #  97    0xad88b  1      OPC=1343  
  nop                                                                                                 #  98    0xad88c  1      OPC=1343  
  nop                                                                                                 #  99    0xad88d  1      OPC=1343  
  nop                                                                                                 #  100   0xad88e  1      OPC=1343  
  nop                                                                                                 #  101   0xad88f  1      OPC=1343  
  nop                                                                                                 #  102   0xad890  1      OPC=1343  
  nop                                                                                                 #  103   0xad891  1      OPC=1343  
  nop                                                                                                 #  104   0xad892  1      OPC=1343  
  nop                                                                                                 #  105   0xad893  1      OPC=1343  
  nop                                                                                                 #  106   0xad894  1      OPC=1343  
  nop                                                                                                 #  107   0xad895  1      OPC=1343  
  nop                                                                                                 #  108   0xad896  1      OPC=1343  
  nop                                                                                                 #  109   0xad897  1      OPC=1343  
                                                                                                                                         
.size _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag

