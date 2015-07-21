  .text
  .globl _ZNSt8numpunctIwED1Ev
  .type _ZNSt8numpunctIwED1Ev, @function

#! file-offset 0x11bf00
#! rip-offset  0xdbf00
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZNSt8numpunctIwED1Ev:            #        0xdbf00  0      OPC=0     
  pushq %rbx                       #  1     0xdbf00  1      OPC=1861  
  movl %edi, %ebx                  #  2     0xdbf01  2      OPC=1157  
  subl $0x10, %esp                 #  3     0xdbf03  3      OPC=2384  
  addq %r15, %rsp                  #  4     0xdbf06  3      OPC=72    
  movl %ebx, %ebx                  #  5     0xdbf09  2      OPC=1157  
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdbf0b  5      OPC=1156  
  movl %ebx, %ebx                  #  7     0xdbf10  2      OPC=1157  
  movl $0x1003c228, (%r15,%rbx,1)  #  8     0xdbf12  8      OPC=1135  
  testq %rdi, %rdi                 #  9     0xdbf1a  3      OPC=2438  
  nop                              #  10    0xdbf1d  1      OPC=1343  
  nop                              #  11    0xdbf1e  1      OPC=1343  
  nop                              #  12    0xdbf1f  1      OPC=1343  
  je .L_dbf40                      #  13    0xdbf20  6      OPC=893   
  nop                              #  14    0xdbf26  1      OPC=1343  
  nop                              #  15    0xdbf27  1      OPC=1343  
  movl %edi, %edi                  #  16    0xdbf28  2      OPC=1157  
  movl (%r15,%rdi,1), %eax         #  17    0xdbf2a  4      OPC=1156  
  movl %eax, %eax                  #  18    0xdbf2e  2      OPC=1157  
  movl 0x4(%r15,%rax,1), %eax      #  19    0xdbf30  5      OPC=1156  
  nop                              #  20    0xdbf35  1      OPC=1343  
  nop                              #  21    0xdbf36  1      OPC=1343  
  nop                              #  22    0xdbf37  1      OPC=1343  
  nop                              #  23    0xdbf38  1      OPC=1343  
  nop                              #  24    0xdbf39  1      OPC=1343  
  nop                              #  25    0xdbf3a  1      OPC=1343  
  nop                              #  26    0xdbf3b  1      OPC=1343  
  nop                              #  27    0xdbf3c  1      OPC=1343  
  nop                              #  28    0xdbf3d  1      OPC=1343  
  andl $0xffffffe0, %eax           #  29    0xdbf3e  6      OPC=131   
  nop                              #  30    0xdbf44  1      OPC=1343  
  nop                              #  31    0xdbf45  1      OPC=1343  
  nop                              #  32    0xdbf46  1      OPC=1343  
  addq %r15, %rax                  #  33    0xdbf47  3      OPC=72    
  callq %rax                       #  34    0xdbf4a  2      OPC=258   
.L_dbf40:                          #        0xdbf4c  0      OPC=0     
  movl %ebx, %edi                  #  35    0xdbf4c  2      OPC=1157  
  addl $0x10, %esp                 #  36    0xdbf4e  3      OPC=65    
  addq %r15, %rsp                  #  37    0xdbf51  3      OPC=72    
  popq %rbx                        #  38    0xdbf54  1      OPC=1694  
  jmpq ._ZNSt6locale5facetD2Ev     #  39    0xdbf55  5      OPC=930   
  nop                              #  40    0xdbf5a  1      OPC=1343  
  nop                              #  41    0xdbf5b  1      OPC=1343  
  nop                              #  42    0xdbf5c  1      OPC=1343  
  nop                              #  43    0xdbf5d  1      OPC=1343  
  nop                              #  44    0xdbf5e  1      OPC=1343  
  nop                              #  45    0xdbf5f  1      OPC=1343  
  nop                              #  46    0xdbf60  1      OPC=1343  
  nop                              #  47    0xdbf61  1      OPC=1343  
  nop                              #  48    0xdbf62  1      OPC=1343  
  nop                              #  49    0xdbf63  1      OPC=1343  
  nop                              #  50    0xdbf64  1      OPC=1343  
  nop                              #  51    0xdbf65  1      OPC=1343  
  nop                              #  52    0xdbf66  1      OPC=1343  
  nop                              #  53    0xdbf67  1      OPC=1343  
  nop                              #  54    0xdbf68  1      OPC=1343  
  nop                              #  55    0xdbf69  1      OPC=1343  
  nop                              #  56    0xdbf6a  1      OPC=1343  
  nop                              #  57    0xdbf6b  1      OPC=1343  
  movl %ebx, %edi                  #  58    0xdbf6c  2      OPC=1157  
  movl %eax, 0x8(%rsp)             #  59    0xdbf6e  4      OPC=1136  
  nop                              #  60    0xdbf72  1      OPC=1343  
  nop                              #  61    0xdbf73  1      OPC=1343  
  nop                              #  62    0xdbf74  1      OPC=1343  
  nop                              #  63    0xdbf75  1      OPC=1343  
  nop                              #  64    0xdbf76  1      OPC=1343  
  nop                              #  65    0xdbf77  1      OPC=1343  
  nop                              #  66    0xdbf78  1      OPC=1343  
  nop                              #  67    0xdbf79  1      OPC=1343  
  nop                              #  68    0xdbf7a  1      OPC=1343  
  nop                              #  69    0xdbf7b  1      OPC=1343  
  nop                              #  70    0xdbf7c  1      OPC=1343  
  nop                              #  71    0xdbf7d  1      OPC=1343  
  nop                              #  72    0xdbf7e  1      OPC=1343  
  nop                              #  73    0xdbf7f  1      OPC=1343  
  nop                              #  74    0xdbf80  1      OPC=1343  
  nop                              #  75    0xdbf81  1      OPC=1343  
  nop                              #  76    0xdbf82  1      OPC=1343  
  nop                              #  77    0xdbf83  1      OPC=1343  
  nop                              #  78    0xdbf84  1      OPC=1343  
  nop                              #  79    0xdbf85  1      OPC=1343  
  nop                              #  80    0xdbf86  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev    #  81    0xdbf87  5      OPC=260   
  movl 0x8(%rsp), %eax             #  82    0xdbf8c  4      OPC=1156  
  movl %eax, %edi                  #  83    0xdbf90  2      OPC=1157  
  nop                              #  84    0xdbf92  1      OPC=1343  
  nop                              #  85    0xdbf93  1      OPC=1343  
  nop                              #  86    0xdbf94  1      OPC=1343  
  nop                              #  87    0xdbf95  1      OPC=1343  
  nop                              #  88    0xdbf96  1      OPC=1343  
  nop                              #  89    0xdbf97  1      OPC=1343  
  nop                              #  90    0xdbf98  1      OPC=1343  
  nop                              #  91    0xdbf99  1      OPC=1343  
  nop                              #  92    0xdbf9a  1      OPC=1343  
  nop                              #  93    0xdbf9b  1      OPC=1343  
  nop                              #  94    0xdbf9c  1      OPC=1343  
  nop                              #  95    0xdbf9d  1      OPC=1343  
  nop                              #  96    0xdbf9e  1      OPC=1343  
  nop                              #  97    0xdbf9f  1      OPC=1343  
  nop                              #  98    0xdbfa0  1      OPC=1343  
  nop                              #  99    0xdbfa1  1      OPC=1343  
  nop                              #  100   0xdbfa2  1      OPC=1343  
  nop                              #  101   0xdbfa3  1      OPC=1343  
  nop                              #  102   0xdbfa4  1      OPC=1343  
  nop                              #  103   0xdbfa5  1      OPC=1343  
  nop                              #  104   0xdbfa6  1      OPC=1343  
  callq ._Unwind_Resume            #  105   0xdbfa7  5      OPC=260   
                                                                      
.size _ZNSt8numpunctIwED1Ev, .-_ZNSt8numpunctIwED1Ev

