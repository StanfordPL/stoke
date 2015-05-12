  .text
  .globl __smakebuf_r
  .type __smakebuf_r, @function

#! file-offset 0x7d260
#! rip-offset  0x7d260
#! capacity    640 bytes

# Text                              #  Line  RIP      Bytes  
.__smakebuf_r:                      #        0x7d260  0      
  movq %rbx, -0x20(%rsp)            #  1     0x7d260  5      
  movl %esi, %ebx                   #  2     0x7d265  2      
  movq %r13, -0x10(%rsp)            #  3     0x7d267  5      
  movq %r12, -0x18(%rsp)            #  4     0x7d26c  5      
  movq %r14, -0x8(%rsp)             #  5     0x7d271  5      
  subl $0x98, %esp                  #  6     0x7d276  3      
  addq %r15, %rsp                   #  7     0x7d279  3      
  nop                               #  8     0x7d27c  1      
  movl %ebx, %ebx                   #  9     0x7d27d  2      
  movzwl 0xc(%r15,%rbx,1), %eax     #  10    0x7d27f  6      
  movl %edi, %r13d                  #  11    0x7d285  3      
  movswl %ax, %edx                  #  12    0x7d288  3      
  testb $0x2, %dl                   #  13    0x7d28b  3      
  jne .L_7d440                      #  14    0x7d28e  6      
  movl %ebx, %ebx                   #  15    0x7d294  2      
  movzwl 0xe(%r15,%rbx,1), %edi     #  16    0x7d296  6      
  nop                               #  17    0x7d29c  1      
  testw %di, %di                    #  18    0x7d29d  3      
  js .L_7d340                       #  19    0x7d2a0  6      
  movl %esp, %esi                   #  20    0x7d2a6  2      
  movswl %di, %edi                  #  21    0x7d2a8  3      
  nop                               #  22    0x7d2ab  1      
  callq .fstat                      #  23    0x7d2ac  5      
  testl %eax, %eax                  #  24    0x7d2b1  2      
  js .L_7d320                       #  25    0x7d2b3  6      
  movl 0x10(%rsp), %eax             #  26    0x7d2b9  4      
  xorl %r14d, %r14d                 #  27    0x7d2bd  3      
  andl $0x1f000, %eax               #  28    0x7d2c0  5      
  cmpl $0x2000, %eax                #  29    0x7d2c5  5      
  sete %r14b                        #  30    0x7d2ca  4      
  cmpl $0x8000, %eax                #  31    0x7d2ce  5      
  xchgw %ax, %ax                    #  32    0x7d2d3  3      
  je .L_7d4a0                       #  33    0x7d2d6  6      
  nop                               #  34    0x7d2dc  1      
  nop                               #  35    0x7d2dd  1      
.L_7d300:                           #        0x7d2de  0      
  movl %ebx, %ebx                   #  36    0x7d2de  2      
  orw $0x800, 0xc(%r15,%rbx,1)      #  37    0x7d2e0  8      
  movl $0x400, %r12d                #  38    0x7d2e8  6      
  jmpq .L_7d380                     #  39    0x7d2ee  5      
  nop                               #  40    0x7d2f3  1      
.L_7d320:                           #        0x7d2f4  0      
  movl %ebx, %ebx                   #  41    0x7d2f4  2      
  movzwl 0xc(%r15,%rbx,1), %eax     #  42    0x7d2f6  6      
  movswl %ax, %edx                  #  43    0x7d2fc  3      
  nop                               #  44    0x7d2ff  1      
  nop                               #  45    0x7d300  1      
.L_7d340:                           #        0x7d301  0      
  andl $0xffffff80, %edx            #  46    0x7d301  6      
  cmpb $0x1, %dl                    #  47    0x7d307  3      
  sbbl %r12d, %r12d                 #  48    0x7d30a  3      
  orb $0x8, %ah                     #  49    0x7d30d  3      
  xorl %r14d, %r14d                 #  50    0x7d310  3      
  andl $0x3c0, %r12d                #  51    0x7d313  7      
  movl %ebx, %ebx                   #  52    0x7d31a  2      
  movw %ax, 0xc(%r15,%rbx,1)        #  53    0x7d31c  6      
  xchgw %ax, %ax                    #  54    0x7d322  3      
  addl $0x40, %r12d                 #  55    0x7d325  4      
  nop                               #  56    0x7d329  1      
  nop                               #  57    0x7d32a  1      
.L_7d380:                           #        0x7d32b  0      
  movl %r12d, %esi                  #  58    0x7d32b  3      
  movl %r13d, %edi                  #  59    0x7d32e  3      
  nop                               #  60    0x7d331  1      
  nop                               #  61    0x7d332  1      
  callq ._malloc_r                  #  62    0x7d333  5      
  movl %eax, %eax                   #  63    0x7d338  2      
  testq %rax, %rax                  #  64    0x7d33a  3      
  je .L_7d420                       #  65    0x7d33d  6      
  movl %ebx, %ebx                   #  66    0x7d343  2      
  orw $0x80, 0xc(%r15,%rbx,1)       #  67    0x7d345  7      
  testl %r14d, %r14d                #  68    0x7d34c  3      
  movl %r13d, %r13d                 #  69    0x7d34f  3      
  movl $0x7b260, 0x3c(%r15,%r13,1)  #  70    0x7d352  9      
  movl %ebx, %ebx                   #  71    0x7d35b  2      
  movl %eax, (%r15,%rbx,1)          #  72    0x7d35d  4      
  movl %ebx, %ebx                   #  73    0x7d361  2      
  movl %eax, 0x10(%r15,%rbx,1)      #  74    0x7d363  5      
  movl %ebx, %ebx                   #  75    0x7d368  2      
  movl %r12d, 0x14(%r15,%rbx,1)     #  76    0x7d36a  5      
  jne .L_7d460                      #  77    0x7d36f  6      
  nop                               #  78    0x7d375  1      
.L_7d3e0:                           #        0x7d376  0      
  movq 0x78(%rsp), %rbx             #  79    0x7d376  5      
  movq 0x80(%rsp), %r12             #  80    0x7d37b  8      
  movq 0x88(%rsp), %r13             #  81    0x7d383  8      
  movq 0x90(%rsp), %r14             #  82    0x7d38b  8      
  nop                               #  83    0x7d393  1      
  addl $0x98, %esp                  #  84    0x7d394  3      
  addq %r15, %rsp                   #  85    0x7d397  3      
  popq %r11                         #  86    0x7d39a  3      
  andl $0xffffffe0, %r11d           #  87    0x7d39d  7      
  addq %r15, %r11                   #  88    0x7d3a4  3      
  jmpq %r11                         #  89    0x7d3a7  3      
  nop                               #  90    0x7d3aa  1      
.L_7d420:                           #        0x7d3ab  0      
  movl %ebx, %ebx                   #  91    0x7d3ab  2      
  movzwl 0xc(%r15,%rbx,1), %eax     #  92    0x7d3ad  6      
  testb $0x2, %ah                   #  93    0x7d3b3  3      
  jne .L_7d3e0                      #  94    0x7d3b6  6      
  orl $0x2, %eax                    #  95    0x7d3bc  3      
  movl %ebx, %ebx                   #  96    0x7d3bf  2      
  movw %ax, 0xc(%r15,%rbx,1)        #  97    0x7d3c1  6      
  nop                               #  98    0x7d3c7  1      
.L_7d440:                           #        0x7d3c8  0      
  leal 0x43(%rbx), %eax             #  99    0x7d3c8  3      
  movl %ebx, %ebx                   #  100   0x7d3cb  2      
  movl $0x1, 0x14(%r15,%rbx,1)      #  101   0x7d3cd  9      
  movl %ebx, %ebx                   #  102   0x7d3d6  2      
  movl %eax, (%r15,%rbx,1)          #  103   0x7d3d8  4      
  movl %ebx, %ebx                   #  104   0x7d3dc  2      
  movl %eax, 0x10(%r15,%rbx,1)      #  105   0x7d3de  5      
  jmpq .L_7d3e0                     #  106   0x7d3e3  5      
  nop                               #  107   0x7d3e8  1      
.L_7d460:                           #        0x7d3e9  0      
  movl %ebx, %ebx                   #  108   0x7d3e9  2      
  movswl 0xe(%r15,%rbx,1), %edi     #  109   0x7d3eb  6      
  nop                               #  110   0x7d3f1  1      
  nop                               #  111   0x7d3f2  1      
  callq .isatty                     #  112   0x7d3f3  5      
  testl %eax, %eax                  #  113   0x7d3f8  2      
  je .L_7d3e0                       #  114   0x7d3fa  6      
  movl %ebx, %ebx                   #  115   0x7d400  2      
  orw $0x1, 0xc(%r15,%rbx,1)        #  116   0x7d402  7      
  jmpq .L_7d3e0                     #  117   0x7d409  5      
  nop                               #  118   0x7d40e  1      
.L_7d4a0:                           #        0x7d40f  0      
  movl %ebx, %ebx                   #  119   0x7d40f  2      
  cmpl $0x80040, 0x28(%r15,%rbx,1)  #  120   0x7d411  9      
  jne .L_7d300                      #  121   0x7d41a  6      
  movl %ebx, %ebx                   #  122   0x7d420  2      
  orw $0x400, 0xc(%r15,%rbx,1)      #  123   0x7d422  8      
  nop                               #  124   0x7d42a  1      
  movl %ebx, %ebx                   #  125   0x7d42b  2      
  movl $0x400, 0x4c(%r15,%rbx,1)    #  126   0x7d42d  9      
  movl $0x400, %r12d                #  127   0x7d436  6      
  jmpq .L_7d380                     #  128   0x7d43c  5      
  nop                               #  129   0x7d441  1      
  nop                               #  130   0x7d442  1      
  nop                               #  131   0x7d443  1      
  nop                               #  132   0x7d444  1      
  nop                               #  133   0x7d445  1      
  nop                               #  134   0x7d446  1      
  nop                               #  135   0x7d447  1      
  nop                               #  136   0x7d448  1      
  nop                               #  137   0x7d449  1      
  nop                               #  138   0x7d44a  1      
                                                             
.size __smakebuf_r, .-__smakebuf_r

