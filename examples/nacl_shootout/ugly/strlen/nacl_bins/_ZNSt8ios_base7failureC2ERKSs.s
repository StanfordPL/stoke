  .text
  .globl _ZNSt8ios_base7failureC2ERKSs
  .type _ZNSt8ios_base7failureC2ERKSs, @function

#! file-offset 0x128180
#! rip-offset  0xe8180
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZNSt8ios_base7failureC2ERKSs:    #        0xe8180  0      OPC=0     
  pushq %rbx                       #  1     0xe8180  1      OPC=1861  
  movl %edi, %ebx                  #  2     0xe8181  2      OPC=1157  
  movl %esi, %esi                  #  3     0xe8183  2      OPC=1157  
  leal 0x4(%rbx), %edi             #  4     0xe8185  3      OPC=1066  
  subl $0x10, %esp                 #  5     0xe8188  3      OPC=2384  
  addq %r15, %rsp                  #  6     0xe818b  3      OPC=72    
  movl %ebx, %ebx                  #  7     0xe818e  2      OPC=1157  
  movl $0x1003d968, (%r15,%rbx,1)  #  8     0xe8190  8      OPC=1135  
  nop                              #  9     0xe8198  1      OPC=1343  
  nop                              #  10    0xe8199  1      OPC=1343  
  nop                              #  11    0xe819a  1      OPC=1343  
  callq ._ZNSsC1ERKSs              #  12    0xe819b  5      OPC=260   
  addl $0x10, %esp                 #  13    0xe81a0  3      OPC=65    
  addq %r15, %rsp                  #  14    0xe81a3  3      OPC=72    
  popq %rbx                        #  15    0xe81a6  1      OPC=1694  
  popq %r11                        #  16    0xe81a7  2      OPC=1694  
  andl $0xffffffe0, %r11d          #  17    0xe81a9  7      OPC=131   
  nop                              #  18    0xe81b0  1      OPC=1343  
  nop                              #  19    0xe81b1  1      OPC=1343  
  nop                              #  20    0xe81b2  1      OPC=1343  
  nop                              #  21    0xe81b3  1      OPC=1343  
  addq %r15, %r11                  #  22    0xe81b4  3      OPC=72    
  jmpq %r11                        #  23    0xe81b7  3      OPC=928   
  nop                              #  24    0xe81ba  1      OPC=1343  
  nop                              #  25    0xe81bb  1      OPC=1343  
  nop                              #  26    0xe81bc  1      OPC=1343  
  nop                              #  27    0xe81bd  1      OPC=1343  
  nop                              #  28    0xe81be  1      OPC=1343  
  nop                              #  29    0xe81bf  1      OPC=1343  
  nop                              #  30    0xe81c0  1      OPC=1343  
  nop                              #  31    0xe81c1  1      OPC=1343  
  nop                              #  32    0xe81c2  1      OPC=1343  
  nop                              #  33    0xe81c3  1      OPC=1343  
  nop                              #  34    0xe81c4  1      OPC=1343  
  nop                              #  35    0xe81c5  1      OPC=1343  
  nop                              #  36    0xe81c6  1      OPC=1343  
  movl %ebx, %edi                  #  37    0xe81c7  2      OPC=1157  
  movl %eax, 0x8(%rsp)             #  38    0xe81c9  4      OPC=1136  
  movq %rdx, (%rsp)                #  39    0xe81cd  4      OPC=1138  
  xchgw %ax, %ax                   #  40    0xe81d1  2      OPC=3700  
  nop                              #  41    0xe81d3  1      OPC=1343  
  nop                              #  42    0xe81d4  1      OPC=1343  
  nop                              #  43    0xe81d5  1      OPC=1343  
  nop                              #  44    0xe81d6  1      OPC=1343  
  nop                              #  45    0xe81d7  1      OPC=1343  
  nop                              #  46    0xe81d8  1      OPC=1343  
  nop                              #  47    0xe81d9  1      OPC=1343  
  nop                              #  48    0xe81da  1      OPC=1343  
  nop                              #  49    0xe81db  1      OPC=1343  
  nop                              #  50    0xe81dc  1      OPC=1343  
  nop                              #  51    0xe81dd  1      OPC=1343  
  nop                              #  52    0xe81de  1      OPC=1343  
  nop                              #  53    0xe81df  1      OPC=1343  
  nop                              #  54    0xe81e0  1      OPC=1343  
  nop                              #  55    0xe81e1  1      OPC=1343  
  callq ._ZNSt9exceptionD2Ev       #  56    0xe81e2  5      OPC=260   
  movq (%rsp), %rdx                #  57    0xe81e7  4      OPC=1161  
  movl 0x8(%rsp), %eax             #  58    0xe81eb  4      OPC=1156  
  cmpq $0xff, %rdx                 #  59    0xe81ef  4      OPC=475   
  je .L_e8200                      #  60    0xe81f3  6      OPC=893   
  nop                              #  61    0xe81f9  1      OPC=1343  
  nop                              #  62    0xe81fa  1      OPC=1343  
  movl %eax, %edi                  #  63    0xe81fb  2      OPC=1157  
  nop                              #  64    0xe81fd  1      OPC=1343  
  nop                              #  65    0xe81fe  1      OPC=1343  
  nop                              #  66    0xe81ff  1      OPC=1343  
  nop                              #  67    0xe8200  1      OPC=1343  
  nop                              #  68    0xe8201  1      OPC=1343  
  nop                              #  69    0xe8202  1      OPC=1343  
  nop                              #  70    0xe8203  1      OPC=1343  
  nop                              #  71    0xe8204  1      OPC=1343  
  nop                              #  72    0xe8205  1      OPC=1343  
  nop                              #  73    0xe8206  1      OPC=1343  
  nop                              #  74    0xe8207  1      OPC=1343  
  callq ._Unwind_Resume            #  75    0xe8208  5      OPC=260   
.L_e8200:                          #        0xe820d  0      OPC=0     
  movl %eax, %edi                  #  76    0xe820d  2      OPC=1157  
  nop                              #  77    0xe820f  1      OPC=1343  
  nop                              #  78    0xe8210  1      OPC=1343  
  nop                              #  79    0xe8211  1      OPC=1343  
  nop                              #  80    0xe8212  1      OPC=1343  
  nop                              #  81    0xe8213  1      OPC=1343  
  nop                              #  82    0xe8214  1      OPC=1343  
  nop                              #  83    0xe8215  1      OPC=1343  
  nop                              #  84    0xe8216  1      OPC=1343  
  nop                              #  85    0xe8217  1      OPC=1343  
  nop                              #  86    0xe8218  1      OPC=1343  
  nop                              #  87    0xe8219  1      OPC=1343  
  nop                              #  88    0xe821a  1      OPC=1343  
  nop                              #  89    0xe821b  1      OPC=1343  
  nop                              #  90    0xe821c  1      OPC=1343  
  nop                              #  91    0xe821d  1      OPC=1343  
  nop                              #  92    0xe821e  1      OPC=1343  
  nop                              #  93    0xe821f  1      OPC=1343  
  nop                              #  94    0xe8220  1      OPC=1343  
  nop                              #  95    0xe8221  1      OPC=1343  
  nop                              #  96    0xe8222  1      OPC=1343  
  nop                              #  97    0xe8223  1      OPC=1343  
  nop                              #  98    0xe8224  1      OPC=1343  
  nop                              #  99    0xe8225  1      OPC=1343  
  nop                              #  100   0xe8226  1      OPC=1343  
  nop                              #  101   0xe8227  1      OPC=1343  
  callq .__cxa_call_unexpected     #  102   0xe8228  5      OPC=260   
                                                                      
.size _ZNSt8ios_base7failureC2ERKSs, .-_ZNSt8ios_base7failureC2ERKSs

