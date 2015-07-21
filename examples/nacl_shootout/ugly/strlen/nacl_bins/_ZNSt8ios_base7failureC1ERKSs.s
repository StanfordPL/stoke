  .text
  .globl _ZNSt8ios_base7failureC1ERKSs
  .type _ZNSt8ios_base7failureC1ERKSs, @function

#! file-offset 0x1280e0
#! rip-offset  0xe80e0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZNSt8ios_base7failureC1ERKSs:    #        0xe80e0  0      OPC=0     
  pushq %rbx                       #  1     0xe80e0  1      OPC=1861  
  movl %edi, %ebx                  #  2     0xe80e1  2      OPC=1157  
  movl %esi, %esi                  #  3     0xe80e3  2      OPC=1157  
  leal 0x4(%rbx), %edi             #  4     0xe80e5  3      OPC=1066  
  subl $0x10, %esp                 #  5     0xe80e8  3      OPC=2384  
  addq %r15, %rsp                  #  6     0xe80eb  3      OPC=72    
  movl %ebx, %ebx                  #  7     0xe80ee  2      OPC=1157  
  movl $0x1003d968, (%r15,%rbx,1)  #  8     0xe80f0  8      OPC=1135  
  nop                              #  9     0xe80f8  1      OPC=1343  
  nop                              #  10    0xe80f9  1      OPC=1343  
  nop                              #  11    0xe80fa  1      OPC=1343  
  callq ._ZNSsC1ERKSs              #  12    0xe80fb  5      OPC=260   
  addl $0x10, %esp                 #  13    0xe8100  3      OPC=65    
  addq %r15, %rsp                  #  14    0xe8103  3      OPC=72    
  popq %rbx                        #  15    0xe8106  1      OPC=1694  
  popq %r11                        #  16    0xe8107  2      OPC=1694  
  andl $0xffffffe0, %r11d          #  17    0xe8109  7      OPC=131   
  nop                              #  18    0xe8110  1      OPC=1343  
  nop                              #  19    0xe8111  1      OPC=1343  
  nop                              #  20    0xe8112  1      OPC=1343  
  nop                              #  21    0xe8113  1      OPC=1343  
  addq %r15, %r11                  #  22    0xe8114  3      OPC=72    
  jmpq %r11                        #  23    0xe8117  3      OPC=928   
  nop                              #  24    0xe811a  1      OPC=1343  
  nop                              #  25    0xe811b  1      OPC=1343  
  nop                              #  26    0xe811c  1      OPC=1343  
  nop                              #  27    0xe811d  1      OPC=1343  
  nop                              #  28    0xe811e  1      OPC=1343  
  nop                              #  29    0xe811f  1      OPC=1343  
  nop                              #  30    0xe8120  1      OPC=1343  
  nop                              #  31    0xe8121  1      OPC=1343  
  nop                              #  32    0xe8122  1      OPC=1343  
  nop                              #  33    0xe8123  1      OPC=1343  
  nop                              #  34    0xe8124  1      OPC=1343  
  nop                              #  35    0xe8125  1      OPC=1343  
  nop                              #  36    0xe8126  1      OPC=1343  
  movl %ebx, %edi                  #  37    0xe8127  2      OPC=1157  
  movl %eax, 0x8(%rsp)             #  38    0xe8129  4      OPC=1136  
  movq %rdx, (%rsp)                #  39    0xe812d  4      OPC=1138  
  xchgw %ax, %ax                   #  40    0xe8131  2      OPC=3700  
  nop                              #  41    0xe8133  1      OPC=1343  
  nop                              #  42    0xe8134  1      OPC=1343  
  nop                              #  43    0xe8135  1      OPC=1343  
  nop                              #  44    0xe8136  1      OPC=1343  
  nop                              #  45    0xe8137  1      OPC=1343  
  nop                              #  46    0xe8138  1      OPC=1343  
  nop                              #  47    0xe8139  1      OPC=1343  
  nop                              #  48    0xe813a  1      OPC=1343  
  nop                              #  49    0xe813b  1      OPC=1343  
  nop                              #  50    0xe813c  1      OPC=1343  
  nop                              #  51    0xe813d  1      OPC=1343  
  nop                              #  52    0xe813e  1      OPC=1343  
  nop                              #  53    0xe813f  1      OPC=1343  
  nop                              #  54    0xe8140  1      OPC=1343  
  nop                              #  55    0xe8141  1      OPC=1343  
  callq ._ZNSt9exceptionD2Ev       #  56    0xe8142  5      OPC=260   
  movq (%rsp), %rdx                #  57    0xe8147  4      OPC=1161  
  movl 0x8(%rsp), %eax             #  58    0xe814b  4      OPC=1156  
  cmpq $0xff, %rdx                 #  59    0xe814f  4      OPC=475   
  je .L_e8160                      #  60    0xe8153  6      OPC=893   
  nop                              #  61    0xe8159  1      OPC=1343  
  nop                              #  62    0xe815a  1      OPC=1343  
  movl %eax, %edi                  #  63    0xe815b  2      OPC=1157  
  nop                              #  64    0xe815d  1      OPC=1343  
  nop                              #  65    0xe815e  1      OPC=1343  
  nop                              #  66    0xe815f  1      OPC=1343  
  nop                              #  67    0xe8160  1      OPC=1343  
  nop                              #  68    0xe8161  1      OPC=1343  
  nop                              #  69    0xe8162  1      OPC=1343  
  nop                              #  70    0xe8163  1      OPC=1343  
  nop                              #  71    0xe8164  1      OPC=1343  
  nop                              #  72    0xe8165  1      OPC=1343  
  nop                              #  73    0xe8166  1      OPC=1343  
  nop                              #  74    0xe8167  1      OPC=1343  
  callq ._Unwind_Resume            #  75    0xe8168  5      OPC=260   
.L_e8160:                          #        0xe816d  0      OPC=0     
  movl %eax, %edi                  #  76    0xe816d  2      OPC=1157  
  nop                              #  77    0xe816f  1      OPC=1343  
  nop                              #  78    0xe8170  1      OPC=1343  
  nop                              #  79    0xe8171  1      OPC=1343  
  nop                              #  80    0xe8172  1      OPC=1343  
  nop                              #  81    0xe8173  1      OPC=1343  
  nop                              #  82    0xe8174  1      OPC=1343  
  nop                              #  83    0xe8175  1      OPC=1343  
  nop                              #  84    0xe8176  1      OPC=1343  
  nop                              #  85    0xe8177  1      OPC=1343  
  nop                              #  86    0xe8178  1      OPC=1343  
  nop                              #  87    0xe8179  1      OPC=1343  
  nop                              #  88    0xe817a  1      OPC=1343  
  nop                              #  89    0xe817b  1      OPC=1343  
  nop                              #  90    0xe817c  1      OPC=1343  
  nop                              #  91    0xe817d  1      OPC=1343  
  nop                              #  92    0xe817e  1      OPC=1343  
  nop                              #  93    0xe817f  1      OPC=1343  
  nop                              #  94    0xe8180  1      OPC=1343  
  nop                              #  95    0xe8181  1      OPC=1343  
  nop                              #  96    0xe8182  1      OPC=1343  
  nop                              #  97    0xe8183  1      OPC=1343  
  nop                              #  98    0xe8184  1      OPC=1343  
  nop                              #  99    0xe8185  1      OPC=1343  
  nop                              #  100   0xe8186  1      OPC=1343  
  nop                              #  101   0xe8187  1      OPC=1343  
  callq .__cxa_call_unexpected     #  102   0xe8188  5      OPC=260   
                                                                      
.size _ZNSt8ios_base7failureC1ERKSs, .-_ZNSt8ios_base7failureC1ERKSs

