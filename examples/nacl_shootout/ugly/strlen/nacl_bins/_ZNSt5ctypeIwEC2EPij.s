  .text
  .globl _ZNSt5ctypeIwEC2EPij
  .type _ZNSt5ctypeIwEC2EPij, @function

#! file-offset 0x124a60
#! rip-offset  0xe4a60
#! capacity    192 bytes

# Text                                              #  Line  RIP      Bytes  Opcode    
._ZNSt5ctypeIwEC2EPij:                              #        0xe4a60  0      OPC=0     
  pushq %rbx                                        #  1     0xe4a60  1      OPC=1861  
  xorl %eax, %eax                                   #  2     0xe4a61  2      OPC=3758  
  movl %edi, %ebx                                   #  3     0xe4a63  2      OPC=1157  
  subl $0x10, %esp                                  #  4     0xe4a65  3      OPC=2384  
  addq %r15, %rsp                                   #  5     0xe4a68  3      OPC=72    
  testl %edx, %edx                                  #  6     0xe4a6b  2      OPC=2436  
  movl %ebx, %ebx                                   #  7     0xe4a6d  2      OPC=1157  
  movl $0x1003d5c8, (%r15,%rbx,1)                   #  8     0xe4a6f  8      OPC=1135  
  setne %al                                         #  9     0xe4a77  3      OPC=2208  
  leal 0xc(%rsp), %edi                              #  10    0xe4a7a  4      OPC=1066  
  xchgw %ax, %ax                                    #  11    0xe4a7e  2      OPC=3700  
  movl %esi, 0xc(%rsp)                              #  12    0xe4a80  4      OPC=1136  
  movl %ebx, %ebx                                   #  13    0xe4a84  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe4a86  5      OPC=1136  
  nop                                               #  15    0xe4a8b  1      OPC=1343  
  nop                                               #  16    0xe4a8c  1      OPC=1343  
  nop                                               #  17    0xe4a8d  1      OPC=1343  
  nop                                               #  18    0xe4a8e  1      OPC=1343  
  nop                                               #  19    0xe4a8f  1      OPC=1343  
  nop                                               #  20    0xe4a90  1      OPC=1343  
  nop                                               #  21    0xe4a91  1      OPC=1343  
  nop                                               #  22    0xe4a92  1      OPC=1343  
  nop                                               #  23    0xe4a93  1      OPC=1343  
  nop                                               #  24    0xe4a94  1      OPC=1343  
  nop                                               #  25    0xe4a95  1      OPC=1343  
  nop                                               #  26    0xe4a96  1      OPC=1343  
  nop                                               #  27    0xe4a97  1      OPC=1343  
  nop                                               #  28    0xe4a98  1      OPC=1343  
  nop                                               #  29    0xe4a99  1      OPC=1343  
  nop                                               #  30    0xe4a9a  1      OPC=1343  
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe4a9b  5      OPC=260   
  movl %ebx, %ebx                                   #  32    0xe4aa0  2      OPC=1157  
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe4aa2  5      OPC=1136  
  movl %ebx, %ebx                                   #  34    0xe4aa7  2      OPC=1157  
  movb $0x0, 0xc(%r15,%rbx,1)                       #  35    0xe4aa9  6      OPC=1140  
  movl %ebx, %edi                                   #  36    0xe4aaf  2      OPC=1157  
  nop                                               #  37    0xe4ab1  1      OPC=1343  
  nop                                               #  38    0xe4ab2  1      OPC=1343  
  nop                                               #  39    0xe4ab3  1      OPC=1343  
  nop                                               #  40    0xe4ab4  1      OPC=1343  
  nop                                               #  41    0xe4ab5  1      OPC=1343  
  nop                                               #  42    0xe4ab6  1      OPC=1343  
  nop                                               #  43    0xe4ab7  1      OPC=1343  
  nop                                               #  44    0xe4ab8  1      OPC=1343  
  nop                                               #  45    0xe4ab9  1      OPC=1343  
  nop                                               #  46    0xe4aba  1      OPC=1343  
  callq ._ZNSt5ctypeIwE19_M_initialize_ctypeEv      #  47    0xe4abb  5      OPC=260   
  addl $0x10, %esp                                  #  48    0xe4ac0  3      OPC=65    
  addq %r15, %rsp                                   #  49    0xe4ac3  3      OPC=72    
  popq %rbx                                         #  50    0xe4ac6  1      OPC=1694  
  popq %r11                                         #  51    0xe4ac7  2      OPC=1694  
  andl $0xffffffe0, %r11d                           #  52    0xe4ac9  7      OPC=131   
  nop                                               #  53    0xe4ad0  1      OPC=1343  
  nop                                               #  54    0xe4ad1  1      OPC=1343  
  nop                                               #  55    0xe4ad2  1      OPC=1343  
  nop                                               #  56    0xe4ad3  1      OPC=1343  
  addq %r15, %r11                                   #  57    0xe4ad4  3      OPC=72    
  jmpq %r11                                         #  58    0xe4ad7  3      OPC=928   
  nop                                               #  59    0xe4ada  1      OPC=1343  
  nop                                               #  60    0xe4adb  1      OPC=1343  
  nop                                               #  61    0xe4adc  1      OPC=1343  
  nop                                               #  62    0xe4add  1      OPC=1343  
  nop                                               #  63    0xe4ade  1      OPC=1343  
  nop                                               #  64    0xe4adf  1      OPC=1343  
  nop                                               #  65    0xe4ae0  1      OPC=1343  
  nop                                               #  66    0xe4ae1  1      OPC=1343  
  nop                                               #  67    0xe4ae2  1      OPC=1343  
  nop                                               #  68    0xe4ae3  1      OPC=1343  
  nop                                               #  69    0xe4ae4  1      OPC=1343  
  nop                                               #  70    0xe4ae5  1      OPC=1343  
  nop                                               #  71    0xe4ae6  1      OPC=1343  
  movl %ebx, %edi                                   #  72    0xe4ae7  2      OPC=1157  
  movl %ebx, %ebx                                   #  73    0xe4ae9  2      OPC=1157  
  movl $0x1003c268, (%r15,%rbx,1)                   #  74    0xe4aeb  8      OPC=1135  
  movl %eax, (%rsp)                                 #  75    0xe4af3  3      OPC=1136  
  nop                                               #  76    0xe4af6  1      OPC=1343  
  nop                                               #  77    0xe4af7  1      OPC=1343  
  nop                                               #  78    0xe4af8  1      OPC=1343  
  nop                                               #  79    0xe4af9  1      OPC=1343  
  nop                                               #  80    0xe4afa  1      OPC=1343  
  nop                                               #  81    0xe4afb  1      OPC=1343  
  nop                                               #  82    0xe4afc  1      OPC=1343  
  nop                                               #  83    0xe4afd  1      OPC=1343  
  nop                                               #  84    0xe4afe  1      OPC=1343  
  nop                                               #  85    0xe4aff  1      OPC=1343  
  nop                                               #  86    0xe4b00  1      OPC=1343  
  nop                                               #  87    0xe4b01  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                     #  88    0xe4b02  5      OPC=260   
  movl (%rsp), %eax                                 #  89    0xe4b07  3      OPC=1156  
  movl %eax, %edi                                   #  90    0xe4b0a  2      OPC=1157  
  nop                                               #  91    0xe4b0c  1      OPC=1343  
  nop                                               #  92    0xe4b0d  1      OPC=1343  
  nop                                               #  93    0xe4b0e  1      OPC=1343  
  nop                                               #  94    0xe4b0f  1      OPC=1343  
  nop                                               #  95    0xe4b10  1      OPC=1343  
  nop                                               #  96    0xe4b11  1      OPC=1343  
  nop                                               #  97    0xe4b12  1      OPC=1343  
  nop                                               #  98    0xe4b13  1      OPC=1343  
  nop                                               #  99    0xe4b14  1      OPC=1343  
  nop                                               #  100   0xe4b15  1      OPC=1343  
  nop                                               #  101   0xe4b16  1      OPC=1343  
  nop                                               #  102   0xe4b17  1      OPC=1343  
  nop                                               #  103   0xe4b18  1      OPC=1343  
  nop                                               #  104   0xe4b19  1      OPC=1343  
  nop                                               #  105   0xe4b1a  1      OPC=1343  
  nop                                               #  106   0xe4b1b  1      OPC=1343  
  nop                                               #  107   0xe4b1c  1      OPC=1343  
  nop                                               #  108   0xe4b1d  1      OPC=1343  
  nop                                               #  109   0xe4b1e  1      OPC=1343  
  nop                                               #  110   0xe4b1f  1      OPC=1343  
  nop                                               #  111   0xe4b20  1      OPC=1343  
  nop                                               #  112   0xe4b21  1      OPC=1343  
  callq ._Unwind_Resume                             #  113   0xe4b22  5      OPC=260   
                                                                                       
.size _ZNSt5ctypeIwEC2EPij, .-_ZNSt5ctypeIwEC2EPij

