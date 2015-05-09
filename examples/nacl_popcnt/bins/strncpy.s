  .text
  .globl strncpy
  .type strncpy, @function

#! file-offset 0x80800
#! rip-offset  0x80800
#! capacity    416 bytes

# Text                        #  Line  RIP      Bytes  
.strncpy:                     #        0x80800  0      
  movl %esi, %esi             #  1     0x80800  2      
  movl %edi, %eax             #  2     0x80802  2      
  movl %esi, %ecx             #  3     0x80804  2      
  orl %eax, %ecx              #  4     0x80806  2      
  andl $0x3, %ecx             #  5     0x80808  3      
  jne .L_80940                #  6     0x8080b  6      
  cmpl $0x3, %edx             #  7     0x80811  3      
  movq %rax, %rcx             #  8     0x80814  3      
  movq %rsi, %r10             #  9     0x80817  3      
  jbe .L_80940                #  10    0x8081a  6      
.L_80820:                     #        0x80820  0      
  movl %r10d, %r10d           #  11    0x80820  3      
  movl (%r15,%r10,1), %r9d    #  12    0x80823  4      
  movl %r9d, %r8d             #  13    0x80827  3      
  leal -0x1010101(%r9), %esi  #  14    0x8082a  7      
  notl %r8d                   #  15    0x80831  3      
  andl %esi, %r8d             #  16    0x80834  3      
  andl $0x80808080, %r8d      #  17    0x80837  7      
  xchgw %ax, %ax              #  18    0x8083e  3      
  jne .L_80860                #  19    0x80841  6      
  subl $0x4, %edx             #  20    0x80847  3      
  movl %ecx, %ecx             #  21    0x8084a  2      
  movl %r9d, (%r15,%rcx,1)    #  22    0x8084c  4      
  addl $0x4, %r10d            #  23    0x80850  4      
  addl $0x4, %ecx             #  24    0x80854  3      
  cmpl $0x3, %edx             #  25    0x80857  3      
  ja .L_80820                 #  26    0x8085a  6      
  nop                         #  27    0x80860  1      
.L_80860:                     #        0x80861  0      
  testl %edx, %edx            #  28    0x80861  2      
  je .L_80920                 #  29    0x80863  6      
  movl %r10d, %r10d           #  30    0x80869  3      
  movzbl (%r15,%r10,1), %edi  #  31    0x8086c  5      
  subl $0x1, %edx             #  32    0x80871  3      
  movl %ecx, %ecx             #  33    0x80874  2      
  movb %dil, (%r15,%rcx,1)    #  34    0x80876  4      
  addl $0x1, %ecx             #  35    0x8087a  3      
  testb %dil, %dil            #  36    0x8087d  3      
  nop                         #  37    0x80880  1      
  je .L_808e0                 #  38    0x80881  6      
  nop                         #  39    0x80887  1      
  nop                         #  40    0x80888  1      
.L_808a0:                     #        0x80889  0      
  addl $0x1, %r10d            #  41    0x80889  4      
  testl %edx, %edx            #  42    0x8088d  2      
  je .L_80960                 #  43    0x8088f  6      
  movl %r10d, %r10d           #  44    0x80895  3      
  movzbl (%r15,%r10,1), %r8d  #  45    0x80898  5      
  subl $0x1, %edx             #  46    0x8089d  3      
  movl %ecx, %ecx             #  47    0x808a0  2      
  movb %r8b, (%r15,%rcx,1)    #  48    0x808a2  4      
  addl $0x1, %ecx             #  49    0x808a6  3      
  testb %r8b, %r8b            #  50    0x808a9  3      
  jne .L_808a0                #  51    0x808ac  6      
  nop                         #  52    0x808b2  1      
  nop                         #  53    0x808b3  1      
.L_808e0:                     #        0x808b4  0      
  testl %edx, %edx            #  54    0x808b4  2      
  je .L_80980                 #  55    0x808b6  6      
  nop                         #  56    0x808bc  1      
  nop                         #  57    0x808bd  1      
.L_80900:                     #        0x808be  0      
  movl %ecx, %ecx             #  58    0x808be  2      
  movb $0x0, (%r15,%rcx,1)    #  59    0x808c0  5      
  addl $0x1, %ecx             #  60    0x808c5  3      
  subl $0x1, %edx             #  61    0x808c8  3      
  jne .L_80900                #  62    0x808cb  6      
  xchgw %ax, %ax              #  63    0x808d1  3      
  nop                         #  64    0x808d4  1      
.L_80920:                     #        0x808d5  0      
  popq %r11                   #  65    0x808d5  3      
  andl $0xffffffe0, %r11d     #  66    0x808d8  7      
  addq %r15, %r11             #  67    0x808df  3      
  jmpq %r11                   #  68    0x808e2  3      
  nop                         #  69    0x808e5  1      
  nop                         #  70    0x808e6  1      
.L_80940:                     #        0x808e7  0      
  movq %rsi, %r10             #  71    0x808e7  3      
  movq %rax, %rcx             #  72    0x808ea  3      
  jmpq .L_80860               #  73    0x808ed  5      
  nop                         #  74    0x808f2  1      
  nop                         #  75    0x808f3  1      
.L_80960:                     #        0x808f4  0      
  popq %r11                   #  76    0x808f4  3      
  andl $0xffffffe0, %r11d     #  77    0x808f7  7      
  addq %r15, %r11             #  78    0x808fe  3      
  jmpq %r11                   #  79    0x80901  3      
  nop                         #  80    0x80904  1      
  nop                         #  81    0x80905  1      
.L_80980:                     #        0x80906  0      
  popq %r11                   #  82    0x80906  3      
  andl $0xffffffe0, %r11d     #  83    0x80909  7      
  addq %r15, %r11             #  84    0x80910  3      
  jmpq %r11                   #  85    0x80913  3      
  nop                         #  86    0x80916  1      
  nop                         #  87    0x80917  1      
  nop                         #  88    0x80918  1      
  nop                         #  89    0x80919  1      
  nop                         #  90    0x8091a  1      
  nop                         #  91    0x8091b  1      
  nop                         #  92    0x8091c  1      
  nop                         #  93    0x8091d  1      
  nop                         #  94    0x8091e  1      
  nop                         #  95    0x8091f  1      
  nop                         #  96    0x80920  1      
  nop                         #  97    0x80921  1      
  nop                         #  98    0x80922  1      
  nop                         #  99    0x80923  1      
  nop                         #  100   0x80924  1      
  nop                         #  101   0x80925  1      
  nop                         #  102   0x80926  1      
  nop                         #  103   0x80927  1      
  nop                         #  104   0x80928  1      
  nop                         #  105   0x80929  1      
                                                       
.size strncpy, .-strncpy

