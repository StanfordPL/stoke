  .text
  .globl strtof
  .type strtof, @function

#! file-offset 0x16b3c0
#! rip-offset  0x12b3c0
#! capacity    192 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.strtof:                    #        0x12b3c0  0      OPC=0     
  movq %rbx, -0x10(%rsp)    #  1     0x12b3c0  5      OPC=1138  
  movq %r12, -0x8(%rsp)     #  2     0x12b3c5  5      OPC=1138  
  subl $0x28, %esp          #  3     0x12b3ca  3      OPC=2384  
  addq %r15, %rsp           #  4     0x12b3cd  3      OPC=72    
  movl %edi, %ebx           #  5     0x12b3d0  2      OPC=1157  
  movl %esi, %r12d          #  6     0x12b3d2  3      OPC=1157  
  nop                       #  7     0x12b3d5  1      OPC=1343  
  nop                       #  8     0x12b3d6  1      OPC=1343  
  nop                       #  9     0x12b3d7  1      OPC=1343  
  nop                       #  10    0x12b3d8  1      OPC=1343  
  nop                       #  11    0x12b3d9  1      OPC=1343  
  nop                       #  12    0x12b3da  1      OPC=1343  
  callq .__nacl_read_tp     #  13    0x12b3db  5      OPC=260   
  leaq -0x480(%rax), %rax   #  14    0x12b3e0  7      OPC=1069  
  movl %r12d, %edx          #  15    0x12b3e7  3      OPC=1157  
  movl %ebx, %esi           #  16    0x12b3ea  2      OPC=1157  
  movl %eax, %eax           #  17    0x12b3ec  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  18    0x12b3ee  4      OPC=1156  
  nop                       #  19    0x12b3f2  1      OPC=1343  
  nop                       #  20    0x12b3f3  1      OPC=1343  
  nop                       #  21    0x12b3f4  1      OPC=1343  
  nop                       #  22    0x12b3f5  1      OPC=1343  
  nop                       #  23    0x12b3f6  1      OPC=1343  
  nop                       #  24    0x12b3f7  1      OPC=1343  
  nop                       #  25    0x12b3f8  1      OPC=1343  
  nop                       #  26    0x12b3f9  1      OPC=1343  
  nop                       #  27    0x12b3fa  1      OPC=1343  
  callq ._strtod_r          #  28    0x12b3fb  5      OPC=260   
  movapd %xmm0, %xmm1       #  29    0x12b400  4      OPC=1186  
  movsd %xmm1, (%rsp)       #  30    0x12b404  5      OPC=1262  
  nop                       #  31    0x12b409  1      OPC=1343  
  nop                       #  32    0x12b40a  1      OPC=1343  
  nop                       #  33    0x12b40b  1      OPC=1343  
  nop                       #  34    0x12b40c  1      OPC=1343  
  nop                       #  35    0x12b40d  1      OPC=1343  
  nop                       #  36    0x12b40e  1      OPC=1343  
  nop                       #  37    0x12b40f  1      OPC=1343  
  nop                       #  38    0x12b410  1      OPC=1343  
  nop                       #  39    0x12b411  1      OPC=1343  
  nop                       #  40    0x12b412  1      OPC=1343  
  nop                       #  41    0x12b413  1      OPC=1343  
  nop                       #  42    0x12b414  1      OPC=1343  
  nop                       #  43    0x12b415  1      OPC=1343  
  nop                       #  44    0x12b416  1      OPC=1343  
  nop                       #  45    0x12b417  1      OPC=1343  
  nop                       #  46    0x12b418  1      OPC=1343  
  nop                       #  47    0x12b419  1      OPC=1343  
  nop                       #  48    0x12b41a  1      OPC=1343  
  callq .__fpclassifyd      #  49    0x12b41b  5      OPC=260   
  testl %eax, %eax          #  50    0x12b420  2      OPC=2436  
  movsd (%rsp), %xmm1       #  51    0x12b422  5      OPC=1263  
  je .L_12b460              #  52    0x12b427  6      OPC=893   
  nop                       #  53    0x12b42d  1      OPC=1343  
  nop                       #  54    0x12b42e  1      OPC=1343  
  movq 0x18(%rsp), %rbx     #  55    0x12b42f  5      OPC=1161  
  movq 0x20(%rsp), %r12     #  56    0x12b434  5      OPC=1161  
  addl $0x28, %esp          #  57    0x12b439  3      OPC=65    
  addq %r15, %rsp           #  58    0x12b43c  3      OPC=72    
  popq %r11                 #  59    0x12b43f  2      OPC=1694  
  unpcklpd %xmm1, %xmm1     #  60    0x12b441  4      OPC=2462  
  nop                       #  61    0x12b445  1      OPC=1343  
  cvtpd2ps %xmm1, %xmm0     #  62    0x12b446  4      OPC=548   
  andl $0xffffffe0, %r11d   #  63    0x12b44a  7      OPC=131   
  nop                       #  64    0x12b451  1      OPC=1343  
  nop                       #  65    0x12b452  1      OPC=1343  
  nop                       #  66    0x12b453  1      OPC=1343  
  nop                       #  67    0x12b454  1      OPC=1343  
  addq %r15, %r11           #  68    0x12b455  3      OPC=72    
  jmpq %r11                 #  69    0x12b458  3      OPC=928   
  nop                       #  70    0x12b45b  1      OPC=1343  
  nop                       #  71    0x12b45c  1      OPC=1343  
  nop                       #  72    0x12b45d  1      OPC=1343  
  nop                       #  73    0x12b45e  1      OPC=1343  
  nop                       #  74    0x12b45f  1      OPC=1343  
  nop                       #  75    0x12b460  1      OPC=1343  
  nop                       #  76    0x12b461  1      OPC=1343  
  nop                       #  77    0x12b462  1      OPC=1343  
  nop                       #  78    0x12b463  1      OPC=1343  
  nop                       #  79    0x12b464  1      OPC=1343  
  nop                       #  80    0x12b465  1      OPC=1343  
  nop                       #  81    0x12b466  1      OPC=1343  
  nop                       #  82    0x12b467  1      OPC=1343  
  nop                       #  83    0x12b468  1      OPC=1343  
  nop                       #  84    0x12b469  1      OPC=1343  
  nop                       #  85    0x12b46a  1      OPC=1343  
  nop                       #  86    0x12b46b  1      OPC=1343  
  nop                       #  87    0x12b46c  1      OPC=1343  
.L_12b460:                  #        0x12b46d  0      OPC=0     
  movq 0x18(%rsp), %rbx     #  88    0x12b46d  5      OPC=1161  
  movq 0x20(%rsp), %r12     #  89    0x12b472  5      OPC=1161  
  xorl %edi, %edi           #  90    0x12b477  2      OPC=3758  
  addl $0x28, %esp          #  91    0x12b479  3      OPC=65    
  addq %r15, %rsp           #  92    0x12b47c  3      OPC=72    
  jmpq .nanf                #  93    0x12b47f  5      OPC=930   
  nop                       #  94    0x12b484  1      OPC=1343  
  nop                       #  95    0x12b485  1      OPC=1343  
  nop                       #  96    0x12b486  1      OPC=1343  
  nop                       #  97    0x12b487  1      OPC=1343  
  nop                       #  98    0x12b488  1      OPC=1343  
  nop                       #  99    0x12b489  1      OPC=1343  
  nop                       #  100   0x12b48a  1      OPC=1343  
  nop                       #  101   0x12b48b  1      OPC=1343  
  nop                       #  102   0x12b48c  1      OPC=1343  
                                                                
.size strtof, .-strtof

