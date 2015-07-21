  .text
  .globl _ZNSt8numpunctIwED2Ev
  .type _ZNSt8numpunctIwED2Ev, @function

#! file-offset 0x11bfa0
#! rip-offset  0xdbfa0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZNSt8numpunctIwED2Ev:            #        0xdbfa0  0      OPC=0     
  pushq %rbx                       #  1     0xdbfa0  1      OPC=1861  
  movl %edi, %ebx                  #  2     0xdbfa1  2      OPC=1157  
  subl $0x10, %esp                 #  3     0xdbfa3  3      OPC=2384  
  addq %r15, %rsp                  #  4     0xdbfa6  3      OPC=72    
  movl %ebx, %ebx                  #  5     0xdbfa9  2      OPC=1157  
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdbfab  5      OPC=1156  
  movl %ebx, %ebx                  #  7     0xdbfb0  2      OPC=1157  
  movl $0x1003c228, (%r15,%rbx,1)  #  8     0xdbfb2  8      OPC=1135  
  testq %rdi, %rdi                 #  9     0xdbfba  3      OPC=2438  
  nop                              #  10    0xdbfbd  1      OPC=1343  
  nop                              #  11    0xdbfbe  1      OPC=1343  
  nop                              #  12    0xdbfbf  1      OPC=1343  
  je .L_dbfe0                      #  13    0xdbfc0  6      OPC=893   
  nop                              #  14    0xdbfc6  1      OPC=1343  
  nop                              #  15    0xdbfc7  1      OPC=1343  
  movl %edi, %edi                  #  16    0xdbfc8  2      OPC=1157  
  movl (%r15,%rdi,1), %eax         #  17    0xdbfca  4      OPC=1156  
  movl %eax, %eax                  #  18    0xdbfce  2      OPC=1157  
  movl 0x4(%r15,%rax,1), %eax      #  19    0xdbfd0  5      OPC=1156  
  nop                              #  20    0xdbfd5  1      OPC=1343  
  nop                              #  21    0xdbfd6  1      OPC=1343  
  nop                              #  22    0xdbfd7  1      OPC=1343  
  nop                              #  23    0xdbfd8  1      OPC=1343  
  nop                              #  24    0xdbfd9  1      OPC=1343  
  nop                              #  25    0xdbfda  1      OPC=1343  
  nop                              #  26    0xdbfdb  1      OPC=1343  
  nop                              #  27    0xdbfdc  1      OPC=1343  
  nop                              #  28    0xdbfdd  1      OPC=1343  
  andl $0xffffffe0, %eax           #  29    0xdbfde  6      OPC=131   
  nop                              #  30    0xdbfe4  1      OPC=1343  
  nop                              #  31    0xdbfe5  1      OPC=1343  
  nop                              #  32    0xdbfe6  1      OPC=1343  
  addq %r15, %rax                  #  33    0xdbfe7  3      OPC=72    
  callq %rax                       #  34    0xdbfea  2      OPC=258   
.L_dbfe0:                          #        0xdbfec  0      OPC=0     
  movl %ebx, %edi                  #  35    0xdbfec  2      OPC=1157  
  addl $0x10, %esp                 #  36    0xdbfee  3      OPC=65    
  addq %r15, %rsp                  #  37    0xdbff1  3      OPC=72    
  popq %rbx                        #  38    0xdbff4  1      OPC=1694  
  jmpq ._ZNSt6locale5facetD2Ev     #  39    0xdbff5  5      OPC=930   
  nop                              #  40    0xdbffa  1      OPC=1343  
  nop                              #  41    0xdbffb  1      OPC=1343  
  nop                              #  42    0xdbffc  1      OPC=1343  
  nop                              #  43    0xdbffd  1      OPC=1343  
  nop                              #  44    0xdbffe  1      OPC=1343  
  nop                              #  45    0xdbfff  1      OPC=1343  
  nop                              #  46    0xdc000  1      OPC=1343  
  nop                              #  47    0xdc001  1      OPC=1343  
  nop                              #  48    0xdc002  1      OPC=1343  
  nop                              #  49    0xdc003  1      OPC=1343  
  nop                              #  50    0xdc004  1      OPC=1343  
  nop                              #  51    0xdc005  1      OPC=1343  
  nop                              #  52    0xdc006  1      OPC=1343  
  nop                              #  53    0xdc007  1      OPC=1343  
  nop                              #  54    0xdc008  1      OPC=1343  
  nop                              #  55    0xdc009  1      OPC=1343  
  nop                              #  56    0xdc00a  1      OPC=1343  
  nop                              #  57    0xdc00b  1      OPC=1343  
  movl %ebx, %edi                  #  58    0xdc00c  2      OPC=1157  
  movl %eax, 0x8(%rsp)             #  59    0xdc00e  4      OPC=1136  
  nop                              #  60    0xdc012  1      OPC=1343  
  nop                              #  61    0xdc013  1      OPC=1343  
  nop                              #  62    0xdc014  1      OPC=1343  
  nop                              #  63    0xdc015  1      OPC=1343  
  nop                              #  64    0xdc016  1      OPC=1343  
  nop                              #  65    0xdc017  1      OPC=1343  
  nop                              #  66    0xdc018  1      OPC=1343  
  nop                              #  67    0xdc019  1      OPC=1343  
  nop                              #  68    0xdc01a  1      OPC=1343  
  nop                              #  69    0xdc01b  1      OPC=1343  
  nop                              #  70    0xdc01c  1      OPC=1343  
  nop                              #  71    0xdc01d  1      OPC=1343  
  nop                              #  72    0xdc01e  1      OPC=1343  
  nop                              #  73    0xdc01f  1      OPC=1343  
  nop                              #  74    0xdc020  1      OPC=1343  
  nop                              #  75    0xdc021  1      OPC=1343  
  nop                              #  76    0xdc022  1      OPC=1343  
  nop                              #  77    0xdc023  1      OPC=1343  
  nop                              #  78    0xdc024  1      OPC=1343  
  nop                              #  79    0xdc025  1      OPC=1343  
  nop                              #  80    0xdc026  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev    #  81    0xdc027  5      OPC=260   
  movl 0x8(%rsp), %eax             #  82    0xdc02c  4      OPC=1156  
  movl %eax, %edi                  #  83    0xdc030  2      OPC=1157  
  nop                              #  84    0xdc032  1      OPC=1343  
  nop                              #  85    0xdc033  1      OPC=1343  
  nop                              #  86    0xdc034  1      OPC=1343  
  nop                              #  87    0xdc035  1      OPC=1343  
  nop                              #  88    0xdc036  1      OPC=1343  
  nop                              #  89    0xdc037  1      OPC=1343  
  nop                              #  90    0xdc038  1      OPC=1343  
  nop                              #  91    0xdc039  1      OPC=1343  
  nop                              #  92    0xdc03a  1      OPC=1343  
  nop                              #  93    0xdc03b  1      OPC=1343  
  nop                              #  94    0xdc03c  1      OPC=1343  
  nop                              #  95    0xdc03d  1      OPC=1343  
  nop                              #  96    0xdc03e  1      OPC=1343  
  nop                              #  97    0xdc03f  1      OPC=1343  
  nop                              #  98    0xdc040  1      OPC=1343  
  nop                              #  99    0xdc041  1      OPC=1343  
  nop                              #  100   0xdc042  1      OPC=1343  
  nop                              #  101   0xdc043  1      OPC=1343  
  nop                              #  102   0xdc044  1      OPC=1343  
  nop                              #  103   0xdc045  1      OPC=1343  
  nop                              #  104   0xdc046  1      OPC=1343  
  callq ._Unwind_Resume            #  105   0xdc047  5      OPC=260   
                                                                      
.size _ZNSt8numpunctIwED2Ev, .-_ZNSt8numpunctIwED2Ev

