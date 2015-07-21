  .text
  .globl _ZNSt8numpunctIcED1Ev
  .type _ZNSt8numpunctIcED1Ev, @function

#! file-offset 0x11c040
#! rip-offset  0xdc040
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZNSt8numpunctIcED1Ev:            #        0xdc040  0      OPC=0     
  pushq %rbx                       #  1     0xdc040  1      OPC=1861  
  movl %edi, %ebx                  #  2     0xdc041  2      OPC=1157  
  subl $0x10, %esp                 #  3     0xdc043  3      OPC=2384  
  addq %r15, %rsp                  #  4     0xdc046  3      OPC=72    
  movl %ebx, %ebx                  #  5     0xdc049  2      OPC=1157  
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdc04b  5      OPC=1156  
  movl %ebx, %ebx                  #  7     0xdc050  2      OPC=1157  
  movl $0x1003afa8, (%r15,%rbx,1)  #  8     0xdc052  8      OPC=1135  
  testq %rdi, %rdi                 #  9     0xdc05a  3      OPC=2438  
  nop                              #  10    0xdc05d  1      OPC=1343  
  nop                              #  11    0xdc05e  1      OPC=1343  
  nop                              #  12    0xdc05f  1      OPC=1343  
  je .L_dc080                      #  13    0xdc060  6      OPC=893   
  nop                              #  14    0xdc066  1      OPC=1343  
  nop                              #  15    0xdc067  1      OPC=1343  
  movl %edi, %edi                  #  16    0xdc068  2      OPC=1157  
  movl (%r15,%rdi,1), %eax         #  17    0xdc06a  4      OPC=1156  
  movl %eax, %eax                  #  18    0xdc06e  2      OPC=1157  
  movl 0x4(%r15,%rax,1), %eax      #  19    0xdc070  5      OPC=1156  
  nop                              #  20    0xdc075  1      OPC=1343  
  nop                              #  21    0xdc076  1      OPC=1343  
  nop                              #  22    0xdc077  1      OPC=1343  
  nop                              #  23    0xdc078  1      OPC=1343  
  nop                              #  24    0xdc079  1      OPC=1343  
  nop                              #  25    0xdc07a  1      OPC=1343  
  nop                              #  26    0xdc07b  1      OPC=1343  
  nop                              #  27    0xdc07c  1      OPC=1343  
  nop                              #  28    0xdc07d  1      OPC=1343  
  andl $0xffffffe0, %eax           #  29    0xdc07e  6      OPC=131   
  nop                              #  30    0xdc084  1      OPC=1343  
  nop                              #  31    0xdc085  1      OPC=1343  
  nop                              #  32    0xdc086  1      OPC=1343  
  addq %r15, %rax                  #  33    0xdc087  3      OPC=72    
  callq %rax                       #  34    0xdc08a  2      OPC=258   
.L_dc080:                          #        0xdc08c  0      OPC=0     
  movl %ebx, %edi                  #  35    0xdc08c  2      OPC=1157  
  addl $0x10, %esp                 #  36    0xdc08e  3      OPC=65    
  addq %r15, %rsp                  #  37    0xdc091  3      OPC=72    
  popq %rbx                        #  38    0xdc094  1      OPC=1694  
  jmpq ._ZNSt6locale5facetD2Ev     #  39    0xdc095  5      OPC=930   
  nop                              #  40    0xdc09a  1      OPC=1343  
  nop                              #  41    0xdc09b  1      OPC=1343  
  nop                              #  42    0xdc09c  1      OPC=1343  
  nop                              #  43    0xdc09d  1      OPC=1343  
  nop                              #  44    0xdc09e  1      OPC=1343  
  nop                              #  45    0xdc09f  1      OPC=1343  
  nop                              #  46    0xdc0a0  1      OPC=1343  
  nop                              #  47    0xdc0a1  1      OPC=1343  
  nop                              #  48    0xdc0a2  1      OPC=1343  
  nop                              #  49    0xdc0a3  1      OPC=1343  
  nop                              #  50    0xdc0a4  1      OPC=1343  
  nop                              #  51    0xdc0a5  1      OPC=1343  
  nop                              #  52    0xdc0a6  1      OPC=1343  
  nop                              #  53    0xdc0a7  1      OPC=1343  
  nop                              #  54    0xdc0a8  1      OPC=1343  
  nop                              #  55    0xdc0a9  1      OPC=1343  
  nop                              #  56    0xdc0aa  1      OPC=1343  
  nop                              #  57    0xdc0ab  1      OPC=1343  
  movl %ebx, %edi                  #  58    0xdc0ac  2      OPC=1157  
  movl %eax, 0x8(%rsp)             #  59    0xdc0ae  4      OPC=1136  
  nop                              #  60    0xdc0b2  1      OPC=1343  
  nop                              #  61    0xdc0b3  1      OPC=1343  
  nop                              #  62    0xdc0b4  1      OPC=1343  
  nop                              #  63    0xdc0b5  1      OPC=1343  
  nop                              #  64    0xdc0b6  1      OPC=1343  
  nop                              #  65    0xdc0b7  1      OPC=1343  
  nop                              #  66    0xdc0b8  1      OPC=1343  
  nop                              #  67    0xdc0b9  1      OPC=1343  
  nop                              #  68    0xdc0ba  1      OPC=1343  
  nop                              #  69    0xdc0bb  1      OPC=1343  
  nop                              #  70    0xdc0bc  1      OPC=1343  
  nop                              #  71    0xdc0bd  1      OPC=1343  
  nop                              #  72    0xdc0be  1      OPC=1343  
  nop                              #  73    0xdc0bf  1      OPC=1343  
  nop                              #  74    0xdc0c0  1      OPC=1343  
  nop                              #  75    0xdc0c1  1      OPC=1343  
  nop                              #  76    0xdc0c2  1      OPC=1343  
  nop                              #  77    0xdc0c3  1      OPC=1343  
  nop                              #  78    0xdc0c4  1      OPC=1343  
  nop                              #  79    0xdc0c5  1      OPC=1343  
  nop                              #  80    0xdc0c6  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev    #  81    0xdc0c7  5      OPC=260   
  movl 0x8(%rsp), %eax             #  82    0xdc0cc  4      OPC=1156  
  movl %eax, %edi                  #  83    0xdc0d0  2      OPC=1157  
  nop                              #  84    0xdc0d2  1      OPC=1343  
  nop                              #  85    0xdc0d3  1      OPC=1343  
  nop                              #  86    0xdc0d4  1      OPC=1343  
  nop                              #  87    0xdc0d5  1      OPC=1343  
  nop                              #  88    0xdc0d6  1      OPC=1343  
  nop                              #  89    0xdc0d7  1      OPC=1343  
  nop                              #  90    0xdc0d8  1      OPC=1343  
  nop                              #  91    0xdc0d9  1      OPC=1343  
  nop                              #  92    0xdc0da  1      OPC=1343  
  nop                              #  93    0xdc0db  1      OPC=1343  
  nop                              #  94    0xdc0dc  1      OPC=1343  
  nop                              #  95    0xdc0dd  1      OPC=1343  
  nop                              #  96    0xdc0de  1      OPC=1343  
  nop                              #  97    0xdc0df  1      OPC=1343  
  nop                              #  98    0xdc0e0  1      OPC=1343  
  nop                              #  99    0xdc0e1  1      OPC=1343  
  nop                              #  100   0xdc0e2  1      OPC=1343  
  nop                              #  101   0xdc0e3  1      OPC=1343  
  nop                              #  102   0xdc0e4  1      OPC=1343  
  nop                              #  103   0xdc0e5  1      OPC=1343  
  nop                              #  104   0xdc0e6  1      OPC=1343  
  callq ._Unwind_Resume            #  105   0xdc0e7  5      OPC=260   
                                                                      
.size _ZNSt8numpunctIcED1Ev, .-_ZNSt8numpunctIcED1Ev

