  .text
  .globl _ZNSt8numpunctIcED2Ev
  .type _ZNSt8numpunctIcED2Ev, @function

#! file-offset 0x11c0e0
#! rip-offset  0xdc0e0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZNSt8numpunctIcED2Ev:            #        0xdc0e0  0      OPC=0     
  pushq %rbx                       #  1     0xdc0e0  1      OPC=1861  
  movl %edi, %ebx                  #  2     0xdc0e1  2      OPC=1157  
  subl $0x10, %esp                 #  3     0xdc0e3  3      OPC=2384  
  addq %r15, %rsp                  #  4     0xdc0e6  3      OPC=72    
  movl %ebx, %ebx                  #  5     0xdc0e9  2      OPC=1157  
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdc0eb  5      OPC=1156  
  movl %ebx, %ebx                  #  7     0xdc0f0  2      OPC=1157  
  movl $0x1003afa8, (%r15,%rbx,1)  #  8     0xdc0f2  8      OPC=1135  
  testq %rdi, %rdi                 #  9     0xdc0fa  3      OPC=2438  
  nop                              #  10    0xdc0fd  1      OPC=1343  
  nop                              #  11    0xdc0fe  1      OPC=1343  
  nop                              #  12    0xdc0ff  1      OPC=1343  
  je .L_dc120                      #  13    0xdc100  6      OPC=893   
  nop                              #  14    0xdc106  1      OPC=1343  
  nop                              #  15    0xdc107  1      OPC=1343  
  movl %edi, %edi                  #  16    0xdc108  2      OPC=1157  
  movl (%r15,%rdi,1), %eax         #  17    0xdc10a  4      OPC=1156  
  movl %eax, %eax                  #  18    0xdc10e  2      OPC=1157  
  movl 0x4(%r15,%rax,1), %eax      #  19    0xdc110  5      OPC=1156  
  nop                              #  20    0xdc115  1      OPC=1343  
  nop                              #  21    0xdc116  1      OPC=1343  
  nop                              #  22    0xdc117  1      OPC=1343  
  nop                              #  23    0xdc118  1      OPC=1343  
  nop                              #  24    0xdc119  1      OPC=1343  
  nop                              #  25    0xdc11a  1      OPC=1343  
  nop                              #  26    0xdc11b  1      OPC=1343  
  nop                              #  27    0xdc11c  1      OPC=1343  
  nop                              #  28    0xdc11d  1      OPC=1343  
  andl $0xffffffe0, %eax           #  29    0xdc11e  6      OPC=131   
  nop                              #  30    0xdc124  1      OPC=1343  
  nop                              #  31    0xdc125  1      OPC=1343  
  nop                              #  32    0xdc126  1      OPC=1343  
  addq %r15, %rax                  #  33    0xdc127  3      OPC=72    
  callq %rax                       #  34    0xdc12a  2      OPC=258   
.L_dc120:                          #        0xdc12c  0      OPC=0     
  movl %ebx, %edi                  #  35    0xdc12c  2      OPC=1157  
  addl $0x10, %esp                 #  36    0xdc12e  3      OPC=65    
  addq %r15, %rsp                  #  37    0xdc131  3      OPC=72    
  popq %rbx                        #  38    0xdc134  1      OPC=1694  
  jmpq ._ZNSt6locale5facetD2Ev     #  39    0xdc135  5      OPC=930   
  nop                              #  40    0xdc13a  1      OPC=1343  
  nop                              #  41    0xdc13b  1      OPC=1343  
  nop                              #  42    0xdc13c  1      OPC=1343  
  nop                              #  43    0xdc13d  1      OPC=1343  
  nop                              #  44    0xdc13e  1      OPC=1343  
  nop                              #  45    0xdc13f  1      OPC=1343  
  nop                              #  46    0xdc140  1      OPC=1343  
  nop                              #  47    0xdc141  1      OPC=1343  
  nop                              #  48    0xdc142  1      OPC=1343  
  nop                              #  49    0xdc143  1      OPC=1343  
  nop                              #  50    0xdc144  1      OPC=1343  
  nop                              #  51    0xdc145  1      OPC=1343  
  nop                              #  52    0xdc146  1      OPC=1343  
  nop                              #  53    0xdc147  1      OPC=1343  
  nop                              #  54    0xdc148  1      OPC=1343  
  nop                              #  55    0xdc149  1      OPC=1343  
  nop                              #  56    0xdc14a  1      OPC=1343  
  nop                              #  57    0xdc14b  1      OPC=1343  
  movl %ebx, %edi                  #  58    0xdc14c  2      OPC=1157  
  movl %eax, 0x8(%rsp)             #  59    0xdc14e  4      OPC=1136  
  nop                              #  60    0xdc152  1      OPC=1343  
  nop                              #  61    0xdc153  1      OPC=1343  
  nop                              #  62    0xdc154  1      OPC=1343  
  nop                              #  63    0xdc155  1      OPC=1343  
  nop                              #  64    0xdc156  1      OPC=1343  
  nop                              #  65    0xdc157  1      OPC=1343  
  nop                              #  66    0xdc158  1      OPC=1343  
  nop                              #  67    0xdc159  1      OPC=1343  
  nop                              #  68    0xdc15a  1      OPC=1343  
  nop                              #  69    0xdc15b  1      OPC=1343  
  nop                              #  70    0xdc15c  1      OPC=1343  
  nop                              #  71    0xdc15d  1      OPC=1343  
  nop                              #  72    0xdc15e  1      OPC=1343  
  nop                              #  73    0xdc15f  1      OPC=1343  
  nop                              #  74    0xdc160  1      OPC=1343  
  nop                              #  75    0xdc161  1      OPC=1343  
  nop                              #  76    0xdc162  1      OPC=1343  
  nop                              #  77    0xdc163  1      OPC=1343  
  nop                              #  78    0xdc164  1      OPC=1343  
  nop                              #  79    0xdc165  1      OPC=1343  
  nop                              #  80    0xdc166  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev    #  81    0xdc167  5      OPC=260   
  movl 0x8(%rsp), %eax             #  82    0xdc16c  4      OPC=1156  
  movl %eax, %edi                  #  83    0xdc170  2      OPC=1157  
  nop                              #  84    0xdc172  1      OPC=1343  
  nop                              #  85    0xdc173  1      OPC=1343  
  nop                              #  86    0xdc174  1      OPC=1343  
  nop                              #  87    0xdc175  1      OPC=1343  
  nop                              #  88    0xdc176  1      OPC=1343  
  nop                              #  89    0xdc177  1      OPC=1343  
  nop                              #  90    0xdc178  1      OPC=1343  
  nop                              #  91    0xdc179  1      OPC=1343  
  nop                              #  92    0xdc17a  1      OPC=1343  
  nop                              #  93    0xdc17b  1      OPC=1343  
  nop                              #  94    0xdc17c  1      OPC=1343  
  nop                              #  95    0xdc17d  1      OPC=1343  
  nop                              #  96    0xdc17e  1      OPC=1343  
  nop                              #  97    0xdc17f  1      OPC=1343  
  nop                              #  98    0xdc180  1      OPC=1343  
  nop                              #  99    0xdc181  1      OPC=1343  
  nop                              #  100   0xdc182  1      OPC=1343  
  nop                              #  101   0xdc183  1      OPC=1343  
  nop                              #  102   0xdc184  1      OPC=1343  
  nop                              #  103   0xdc185  1      OPC=1343  
  nop                              #  104   0xdc186  1      OPC=1343  
  callq ._Unwind_Resume            #  105   0xdc187  5      OPC=260   
                                                                      
.size _ZNSt8numpunctIcED2Ev, .-_ZNSt8numpunctIcED2Ev

