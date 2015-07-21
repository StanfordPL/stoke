  .text
  .globl _ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE
  .type _ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE, @function

#! file-offset 0x9e120
#! rip-offset  0x5e120
#! capacity    128 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode    
._ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE:    #        0x5e120  0      OPC=0     
  pushq %r13                                                  #  1     0x5e120  2      OPC=1861  
  movl %edi, %r13d                                            #  2     0x5e122  3      OPC=1157  
  pushq %r12                                                  #  3     0x5e125  2      OPC=1861  
  movl %esi, %r12d                                            #  4     0x5e127  3      OPC=1157  
  pushq %rbx                                                  #  5     0x5e12a  1      OPC=1861  
  movl %edx, %ebx                                             #  6     0x5e12b  2      OPC=1157  
  movl %ebx, %ebx                                             #  7     0x5e12d  2      OPC=1157  
  movl (%r15,%rbx,1), %edx                                    #  8     0x5e12f  4      OPC=1156  
  testq %rdx, %rdx                                            #  9     0x5e133  3      OPC=2438  
  je .L_5e180                                                 #  10    0x5e136  6      OPC=893   
  nop                                                         #  11    0x5e13c  1      OPC=1343  
  nop                                                         #  12    0x5e13d  1      OPC=1343  
  nop                                                         #  13    0x5e13e  1      OPC=1343  
  nop                                                         #  14    0x5e13f  1      OPC=1343  
  nop                                                         #  15    0x5e140  1      OPC=1343  
  nop                                                         #  16    0x5e141  1      OPC=1343  
  nop                                                         #  17    0x5e142  1      OPC=1343  
  nop                                                         #  18    0x5e143  1      OPC=1343  
  nop                                                         #  19    0x5e144  1      OPC=1343  
  nop                                                         #  20    0x5e145  1      OPC=1343  
.L_5e140:                                                     #        0x5e146  0      OPC=0     
  addl $0x4, %ebx                                             #  21    0x5e146  3      OPC=65    
  movl %r12d, %esi                                            #  22    0x5e149  3      OPC=1157  
  movl %r13d, %edi                                            #  23    0x5e14c  3      OPC=1157  
  nop                                                         #  24    0x5e14f  1      OPC=1343  
  nop                                                         #  25    0x5e150  1      OPC=1343  
  nop                                                         #  26    0x5e151  1      OPC=1343  
  nop                                                         #  27    0x5e152  1      OPC=1343  
  nop                                                         #  28    0x5e153  1      OPC=1343  
  nop                                                         #  29    0x5e154  1      OPC=1343  
  nop                                                         #  30    0x5e155  1      OPC=1343  
  nop                                                         #  31    0x5e156  1      OPC=1343  
  nop                                                         #  32    0x5e157  1      OPC=1343  
  nop                                                         #  33    0x5e158  1      OPC=1343  
  nop                                                         #  34    0x5e159  1      OPC=1343  
  nop                                                         #  35    0x5e15a  1      OPC=1343  
  nop                                                         #  36    0x5e15b  1      OPC=1343  
  nop                                                         #  37    0x5e15c  1      OPC=1343  
  nop                                                         #  38    0x5e15d  1      OPC=1343  
  nop                                                         #  39    0x5e15e  1      OPC=1343  
  nop                                                         #  40    0x5e15f  1      OPC=1343  
  nop                                                         #  41    0x5e160  1      OPC=1343  
  callq ._ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE  #  42    0x5e161  5      OPC=260   
  movl %ebx, %ebx                                             #  43    0x5e166  2      OPC=1157  
  movl (%r15,%rbx,1), %edx                                    #  44    0x5e168  4      OPC=1156  
  testq %rdx, %rdx                                            #  45    0x5e16c  3      OPC=2438  
  jne .L_5e140                                                #  46    0x5e16f  6      OPC=963   
  nop                                                         #  47    0x5e175  1      OPC=1343  
  nop                                                         #  48    0x5e176  1      OPC=1343  
  nop                                                         #  49    0x5e177  1      OPC=1343  
  nop                                                         #  50    0x5e178  1      OPC=1343  
  nop                                                         #  51    0x5e179  1      OPC=1343  
  nop                                                         #  52    0x5e17a  1      OPC=1343  
  nop                                                         #  53    0x5e17b  1      OPC=1343  
  nop                                                         #  54    0x5e17c  1      OPC=1343  
  nop                                                         #  55    0x5e17d  1      OPC=1343  
  nop                                                         #  56    0x5e17e  1      OPC=1343  
  nop                                                         #  57    0x5e17f  1      OPC=1343  
  nop                                                         #  58    0x5e180  1      OPC=1343  
  nop                                                         #  59    0x5e181  1      OPC=1343  
  nop                                                         #  60    0x5e182  1      OPC=1343  
  nop                                                         #  61    0x5e183  1      OPC=1343  
  nop                                                         #  62    0x5e184  1      OPC=1343  
  nop                                                         #  63    0x5e185  1      OPC=1343  
  nop                                                         #  64    0x5e186  1      OPC=1343  
  nop                                                         #  65    0x5e187  1      OPC=1343  
  nop                                                         #  66    0x5e188  1      OPC=1343  
  nop                                                         #  67    0x5e189  1      OPC=1343  
  nop                                                         #  68    0x5e18a  1      OPC=1343  
  nop                                                         #  69    0x5e18b  1      OPC=1343  
.L_5e180:                                                     #        0x5e18c  0      OPC=0     
  popq %rbx                                                   #  70    0x5e18c  1      OPC=1694  
  popq %r12                                                   #  71    0x5e18d  2      OPC=1694  
  popq %r13                                                   #  72    0x5e18f  2      OPC=1694  
  popq %r11                                                   #  73    0x5e191  2      OPC=1694  
  andl $0xffffffe0, %r11d                                     #  74    0x5e193  7      OPC=131   
  nop                                                         #  75    0x5e19a  1      OPC=1343  
  nop                                                         #  76    0x5e19b  1      OPC=1343  
  nop                                                         #  77    0x5e19c  1      OPC=1343  
  nop                                                         #  78    0x5e19d  1      OPC=1343  
  addq %r15, %r11                                             #  79    0x5e19e  3      OPC=72    
  jmpq %r11                                                   #  80    0x5e1a1  3      OPC=928   
  nop                                                         #  81    0x5e1a4  1      OPC=1343  
  nop                                                         #  82    0x5e1a5  1      OPC=1343  
  nop                                                         #  83    0x5e1a6  1      OPC=1343  
  nop                                                         #  84    0x5e1a7  1      OPC=1343  
  nop                                                         #  85    0x5e1a8  1      OPC=1343  
  nop                                                         #  86    0x5e1a9  1      OPC=1343  
  nop                                                         #  87    0x5e1aa  1      OPC=1343  
  nop                                                         #  88    0x5e1ab  1      OPC=1343  
  nop                                                         #  89    0x5e1ac  1      OPC=1343  
  nop                                                         #  90    0x5e1ad  1      OPC=1343  
  nop                                                         #  91    0x5e1ae  1      OPC=1343  
  nop                                                         #  92    0x5e1af  1      OPC=1343  
  nop                                                         #  93    0x5e1b0  1      OPC=1343  
  nop                                                         #  94    0x5e1b1  1      OPC=1343  
  nop                                                         #  95    0x5e1b2  1      OPC=1343  
                                                                                                 
.size _ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE, .-_ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE

