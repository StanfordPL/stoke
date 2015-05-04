  .text
  .globl strncpy
  .type strncpy, @function

#! file-offset 0x808a0
#! rip-offset  0x808a0
#! capacity    416 bytes

# Text                        #  Line  RIP      Bytes  
.strncpy:                     #        0x808a0  0      
  movl %esi, %esi             #  1     0x808a0  2      
  movl %edi, %eax             #  2     0x808a2  2      
  movl %esi, %ecx             #  3     0x808a4  2      
  orl %eax, %ecx              #  4     0x808a6  2      
  andl $0x3, %ecx             #  5     0x808a8  3      
  jne .L_809e0                #  6     0x808ab  6      
  cmpl $0x3, %edx             #  7     0x808b1  3      
  movq %rax, %rcx             #  8     0x808b4  3      
  movq %rsi, %r10             #  9     0x808b7  3      
  jbe .L_809e0                #  10    0x808ba  6      
.L_808c0:                     #        0x808c0  0      
  movl %r10d, %r10d           #  11    0x808c0  3      
  movl (%r15,%r10,1), %r9d    #  12    0x808c3  4      
  movl %r9d, %r8d             #  13    0x808c7  3      
  leal -0x1010101(%r9), %esi  #  14    0x808ca  7      
  notl %r8d                   #  15    0x808d1  3      
  andl %esi, %r8d             #  16    0x808d4  3      
  andl $0x80808080, %r8d      #  17    0x808d7  7      
  xchgw %ax, %ax              #  18    0x808de  3      
  jne .L_80900                #  19    0x808e1  6      
  subl $0x4, %edx             #  20    0x808e7  3      
  movl %ecx, %ecx             #  21    0x808ea  2      
  movl %r9d, (%r15,%rcx,1)    #  22    0x808ec  4      
  addl $0x4, %r10d            #  23    0x808f0  4      
  addl $0x4, %ecx             #  24    0x808f4  3      
  cmpl $0x3, %edx             #  25    0x808f7  3      
  ja .L_808c0                 #  26    0x808fa  6      
  nop                         #  27    0x80900  1      
.L_80900:                     #        0x80901  0      
  testl %edx, %edx            #  28    0x80901  2      
  je .L_809c0                 #  29    0x80903  6      
  movl %r10d, %r10d           #  30    0x80909  3      
  movzbl (%r15,%r10,1), %edi  #  31    0x8090c  5      
  subl $0x1, %edx             #  32    0x80911  3      
  movl %ecx, %ecx             #  33    0x80914  2      
  movb %dil, (%r15,%rcx,1)    #  34    0x80916  4      
  addl $0x1, %ecx             #  35    0x8091a  3      
  testb %dil, %dil            #  36    0x8091d  3      
  nop                         #  37    0x80920  1      
  je .L_80980                 #  38    0x80921  6      
  nop                         #  39    0x80927  1      
  nop                         #  40    0x80928  1      
.L_80940:                     #        0x80929  0      
  addl $0x1, %r10d            #  41    0x80929  4      
  testl %edx, %edx            #  42    0x8092d  2      
  je .L_80a00                 #  43    0x8092f  6      
  movl %r10d, %r10d           #  44    0x80935  3      
  movzbl (%r15,%r10,1), %r8d  #  45    0x80938  5      
  subl $0x1, %edx             #  46    0x8093d  3      
  movl %ecx, %ecx             #  47    0x80940  2      
  movb %r8b, (%r15,%rcx,1)    #  48    0x80942  4      
  addl $0x1, %ecx             #  49    0x80946  3      
  testb %r8b, %r8b            #  50    0x80949  3      
  jne .L_80940                #  51    0x8094c  6      
  nop                         #  52    0x80952  1      
  nop                         #  53    0x80953  1      
.L_80980:                     #        0x80954  0      
  testl %edx, %edx            #  54    0x80954  2      
  je .L_80a20                 #  55    0x80956  6      
  nop                         #  56    0x8095c  1      
  nop                         #  57    0x8095d  1      
.L_809a0:                     #        0x8095e  0      
  movl %ecx, %ecx             #  58    0x8095e  2      
  movb $0x0, (%r15,%rcx,1)    #  59    0x80960  5      
  addl $0x1, %ecx             #  60    0x80965  3      
  subl $0x1, %edx             #  61    0x80968  3      
  jne .L_809a0                #  62    0x8096b  6      
  xchgw %ax, %ax              #  63    0x80971  3      
  nop                         #  64    0x80974  1      
.L_809c0:                     #        0x80975  0      
  popq %r11                   #  65    0x80975  3      
  andl $0xffffffe0, %r11d     #  66    0x80978  7      
  addq %r15, %r11             #  67    0x8097f  3      
  jmpq %r11                   #  68    0x80982  3      
  nop                         #  69    0x80985  1      
  nop                         #  70    0x80986  1      
.L_809e0:                     #        0x80987  0      
  movq %rsi, %r10             #  71    0x80987  3      
  movq %rax, %rcx             #  72    0x8098a  3      
  jmpq .L_80900               #  73    0x8098d  5      
  nop                         #  74    0x80992  1      
  nop                         #  75    0x80993  1      
.L_80a00:                     #        0x80994  0      
  popq %r11                   #  76    0x80994  3      
  andl $0xffffffe0, %r11d     #  77    0x80997  7      
  addq %r15, %r11             #  78    0x8099e  3      
  jmpq %r11                   #  79    0x809a1  3      
  nop                         #  80    0x809a4  1      
  nop                         #  81    0x809a5  1      
.L_80a20:                     #        0x809a6  0      
  popq %r11                   #  82    0x809a6  3      
  andl $0xffffffe0, %r11d     #  83    0x809a9  7      
  addq %r15, %r11             #  84    0x809b0  3      
  jmpq %r11                   #  85    0x809b3  3      
  nop                         #  86    0x809b6  1      
  nop                         #  87    0x809b7  1      
  nop                         #  88    0x809b8  1      
  nop                         #  89    0x809b9  1      
  nop                         #  90    0x809ba  1      
  nop                         #  91    0x809bb  1      
  nop                         #  92    0x809bc  1      
  nop                         #  93    0x809bd  1      
  nop                         #  94    0x809be  1      
  nop                         #  95    0x809bf  1      
  nop                         #  96    0x809c0  1      
  nop                         #  97    0x809c1  1      
  nop                         #  98    0x809c2  1      
  nop                         #  99    0x809c3  1      
  nop                         #  100   0x809c4  1      
  nop                         #  101   0x809c5  1      
  nop                         #  102   0x809c6  1      
  nop                         #  103   0x809c7  1      
  nop                         #  104   0x809c8  1      
  nop                         #  105   0x809c9  1      
                                                       
.size strncpy, .-strncpy

