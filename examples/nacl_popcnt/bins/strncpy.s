  .text
  .globl strncpy
  .type strncpy, @function

#! file-offset 0x80820
#! rip-offset  0x80820
#! capacity    416 bytes

# Text                        #  Line  RIP      Bytes  
.strncpy:                     #        0x80820  0      
  movl %esi, %esi             #  1     0x80820  2      
  movl %edi, %eax             #  2     0x80822  2      
  movl %esi, %ecx             #  3     0x80824  2      
  orl %eax, %ecx              #  4     0x80826  2      
  andl $0x3, %ecx             #  5     0x80828  3      
  jne .L_80960                #  6     0x8082b  6      
  cmpl $0x3, %edx             #  7     0x80831  3      
  movq %rax, %rcx             #  8     0x80834  3      
  movq %rsi, %r10             #  9     0x80837  3      
  jbe .L_80960                #  10    0x8083a  6      
.L_80840:                     #        0x80840  0      
  movl %r10d, %r10d           #  11    0x80840  3      
  movl (%r15,%r10,1), %r9d    #  12    0x80843  4      
  movl %r9d, %r8d             #  13    0x80847  3      
  leal -0x1010101(%r9), %esi  #  14    0x8084a  7      
  notl %r8d                   #  15    0x80851  3      
  andl %esi, %r8d             #  16    0x80854  3      
  andl $0x80808080, %r8d      #  17    0x80857  7      
  xchgw %ax, %ax              #  18    0x8085e  3      
  jne .L_80880                #  19    0x80861  6      
  subl $0x4, %edx             #  20    0x80867  3      
  movl %ecx, %ecx             #  21    0x8086a  2      
  movl %r9d, (%r15,%rcx,1)    #  22    0x8086c  4      
  addl $0x4, %r10d            #  23    0x80870  4      
  addl $0x4, %ecx             #  24    0x80874  3      
  cmpl $0x3, %edx             #  25    0x80877  3      
  ja .L_80840                 #  26    0x8087a  6      
  nop                         #  27    0x80880  1      
.L_80880:                     #        0x80881  0      
  testl %edx, %edx            #  28    0x80881  2      
  je .L_80940                 #  29    0x80883  6      
  movl %r10d, %r10d           #  30    0x80889  3      
  movzbl (%r15,%r10,1), %edi  #  31    0x8088c  5      
  subl $0x1, %edx             #  32    0x80891  3      
  movl %ecx, %ecx             #  33    0x80894  2      
  movb %dil, (%r15,%rcx,1)    #  34    0x80896  4      
  addl $0x1, %ecx             #  35    0x8089a  3      
  testb %dil, %dil            #  36    0x8089d  3      
  nop                         #  37    0x808a0  1      
  je .L_80900                 #  38    0x808a1  6      
  nop                         #  39    0x808a7  1      
  nop                         #  40    0x808a8  1      
.L_808c0:                     #        0x808a9  0      
  addl $0x1, %r10d            #  41    0x808a9  4      
  testl %edx, %edx            #  42    0x808ad  2      
  je .L_80980                 #  43    0x808af  6      
  movl %r10d, %r10d           #  44    0x808b5  3      
  movzbl (%r15,%r10,1), %r8d  #  45    0x808b8  5      
  subl $0x1, %edx             #  46    0x808bd  3      
  movl %ecx, %ecx             #  47    0x808c0  2      
  movb %r8b, (%r15,%rcx,1)    #  48    0x808c2  4      
  addl $0x1, %ecx             #  49    0x808c6  3      
  testb %r8b, %r8b            #  50    0x808c9  3      
  jne .L_808c0                #  51    0x808cc  6      
  nop                         #  52    0x808d2  1      
  nop                         #  53    0x808d3  1      
.L_80900:                     #        0x808d4  0      
  testl %edx, %edx            #  54    0x808d4  2      
  je .L_809a0                 #  55    0x808d6  6      
  nop                         #  56    0x808dc  1      
  nop                         #  57    0x808dd  1      
.L_80920:                     #        0x808de  0      
  movl %ecx, %ecx             #  58    0x808de  2      
  movb $0x0, (%r15,%rcx,1)    #  59    0x808e0  5      
  addl $0x1, %ecx             #  60    0x808e5  3      
  subl $0x1, %edx             #  61    0x808e8  3      
  jne .L_80920                #  62    0x808eb  6      
  xchgw %ax, %ax              #  63    0x808f1  3      
  nop                         #  64    0x808f4  1      
.L_80940:                     #        0x808f5  0      
  popq %r11                   #  65    0x808f5  3      
  andl $0xffffffe0, %r11d     #  66    0x808f8  7      
  addq %r15, %r11             #  67    0x808ff  3      
  jmpq %r11                   #  68    0x80902  3      
  nop                         #  69    0x80905  1      
  nop                         #  70    0x80906  1      
.L_80960:                     #        0x80907  0      
  movq %rsi, %r10             #  71    0x80907  3      
  movq %rax, %rcx             #  72    0x8090a  3      
  jmpq .L_80880               #  73    0x8090d  5      
  nop                         #  74    0x80912  1      
  nop                         #  75    0x80913  1      
.L_80980:                     #        0x80914  0      
  popq %r11                   #  76    0x80914  3      
  andl $0xffffffe0, %r11d     #  77    0x80917  7      
  addq %r15, %r11             #  78    0x8091e  3      
  jmpq %r11                   #  79    0x80921  3      
  nop                         #  80    0x80924  1      
  nop                         #  81    0x80925  1      
.L_809a0:                     #        0x80926  0      
  popq %r11                   #  82    0x80926  3      
  andl $0xffffffe0, %r11d     #  83    0x80929  7      
  addq %r15, %r11             #  84    0x80930  3      
  jmpq %r11                   #  85    0x80933  3      
  nop                         #  86    0x80936  1      
  nop                         #  87    0x80937  1      
  nop                         #  88    0x80938  1      
  nop                         #  89    0x80939  1      
  nop                         #  90    0x8093a  1      
  nop                         #  91    0x8093b  1      
  nop                         #  92    0x8093c  1      
  nop                         #  93    0x8093d  1      
  nop                         #  94    0x8093e  1      
  nop                         #  95    0x8093f  1      
  nop                         #  96    0x80940  1      
  nop                         #  97    0x80941  1      
  nop                         #  98    0x80942  1      
  nop                         #  99    0x80943  1      
  nop                         #  100   0x80944  1      
  nop                         #  101   0x80945  1      
  nop                         #  102   0x80946  1      
  nop                         #  103   0x80947  1      
  nop                         #  104   0x80948  1      
  nop                         #  105   0x80949  1      
                                                       
.size strncpy, .-strncpy

