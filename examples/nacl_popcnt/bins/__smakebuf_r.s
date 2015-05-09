  .text
  .globl __smakebuf_r
  .type __smakebuf_r, @function

#! file-offset 0x7d240
#! rip-offset  0x7d240
#! capacity    640 bytes

# Text                              #  Line  RIP      Bytes  
.__smakebuf_r:                      #        0x7d240  0      
  movq %rbx, -0x20(%rsp)            #  1     0x7d240  5      
  movl %esi, %ebx                   #  2     0x7d245  2      
  movq %r13, -0x10(%rsp)            #  3     0x7d247  5      
  movq %r12, -0x18(%rsp)            #  4     0x7d24c  5      
  movq %r14, -0x8(%rsp)             #  5     0x7d251  5      
  subl $0x98, %esp                  #  6     0x7d256  3      
  addq %r15, %rsp                   #  7     0x7d259  3      
  nop                               #  8     0x7d25c  1      
  movl %ebx, %ebx                   #  9     0x7d25d  2      
  movzwl 0xc(%r15,%rbx,1), %eax     #  10    0x7d25f  6      
  movl %edi, %r13d                  #  11    0x7d265  3      
  movswl %ax, %edx                  #  12    0x7d268  3      
  testb $0x2, %dl                   #  13    0x7d26b  3      
  jne .L_7d420                      #  14    0x7d26e  6      
  movl %ebx, %ebx                   #  15    0x7d274  2      
  movzwl 0xe(%r15,%rbx,1), %edi     #  16    0x7d276  6      
  nop                               #  17    0x7d27c  1      
  testw %di, %di                    #  18    0x7d27d  3      
  js .L_7d320                       #  19    0x7d280  6      
  movl %esp, %esi                   #  20    0x7d286  2      
  movswl %di, %edi                  #  21    0x7d288  3      
  nop                               #  22    0x7d28b  1      
  callq .fstat                      #  23    0x7d28c  5      
  testl %eax, %eax                  #  24    0x7d291  2      
  js .L_7d300                       #  25    0x7d293  6      
  movl 0x10(%rsp), %eax             #  26    0x7d299  4      
  xorl %r14d, %r14d                 #  27    0x7d29d  3      
  andl $0x1f000, %eax               #  28    0x7d2a0  5      
  cmpl $0x2000, %eax                #  29    0x7d2a5  5      
  sete %r14b                        #  30    0x7d2aa  4      
  cmpl $0x8000, %eax                #  31    0x7d2ae  5      
  xchgw %ax, %ax                    #  32    0x7d2b3  3      
  je .L_7d480                       #  33    0x7d2b6  6      
  nop                               #  34    0x7d2bc  1      
  nop                               #  35    0x7d2bd  1      
.L_7d2e0:                           #        0x7d2be  0      
  movl %ebx, %ebx                   #  36    0x7d2be  2      
  orw $0x800, 0xc(%r15,%rbx,1)      #  37    0x7d2c0  8      
  movl $0x400, %r12d                #  38    0x7d2c8  6      
  jmpq .L_7d360                     #  39    0x7d2ce  5      
  nop                               #  40    0x7d2d3  1      
.L_7d300:                           #        0x7d2d4  0      
  movl %ebx, %ebx                   #  41    0x7d2d4  2      
  movzwl 0xc(%r15,%rbx,1), %eax     #  42    0x7d2d6  6      
  movswl %ax, %edx                  #  43    0x7d2dc  3      
  nop                               #  44    0x7d2df  1      
  nop                               #  45    0x7d2e0  1      
.L_7d320:                           #        0x7d2e1  0      
  andl $0xffffff80, %edx            #  46    0x7d2e1  6      
  cmpb $0x1, %dl                    #  47    0x7d2e7  3      
  sbbl %r12d, %r12d                 #  48    0x7d2ea  3      
  orb $0x8, %ah                     #  49    0x7d2ed  3      
  xorl %r14d, %r14d                 #  50    0x7d2f0  3      
  andl $0x3c0, %r12d                #  51    0x7d2f3  7      
  movl %ebx, %ebx                   #  52    0x7d2fa  2      
  movw %ax, 0xc(%r15,%rbx,1)        #  53    0x7d2fc  6      
  xchgw %ax, %ax                    #  54    0x7d302  3      
  addl $0x40, %r12d                 #  55    0x7d305  4      
  nop                               #  56    0x7d309  1      
  nop                               #  57    0x7d30a  1      
.L_7d360:                           #        0x7d30b  0      
  movl %r12d, %esi                  #  58    0x7d30b  3      
  movl %r13d, %edi                  #  59    0x7d30e  3      
  nop                               #  60    0x7d311  1      
  nop                               #  61    0x7d312  1      
  callq ._malloc_r                  #  62    0x7d313  5      
  movl %eax, %eax                   #  63    0x7d318  2      
  testq %rax, %rax                  #  64    0x7d31a  3      
  je .L_7d400                       #  65    0x7d31d  6      
  movl %ebx, %ebx                   #  66    0x7d323  2      
  orw $0x80, 0xc(%r15,%rbx,1)       #  67    0x7d325  7      
  testl %r14d, %r14d                #  68    0x7d32c  3      
  movl %r13d, %r13d                 #  69    0x7d32f  3      
  movl $0x7b240, 0x3c(%r15,%r13,1)  #  70    0x7d332  9      
  movl %ebx, %ebx                   #  71    0x7d33b  2      
  movl %eax, (%r15,%rbx,1)          #  72    0x7d33d  4      
  movl %ebx, %ebx                   #  73    0x7d341  2      
  movl %eax, 0x10(%r15,%rbx,1)      #  74    0x7d343  5      
  movl %ebx, %ebx                   #  75    0x7d348  2      
  movl %r12d, 0x14(%r15,%rbx,1)     #  76    0x7d34a  5      
  jne .L_7d440                      #  77    0x7d34f  6      
  nop                               #  78    0x7d355  1      
.L_7d3c0:                           #        0x7d356  0      
  movq 0x78(%rsp), %rbx             #  79    0x7d356  5      
  movq 0x80(%rsp), %r12             #  80    0x7d35b  8      
  movq 0x88(%rsp), %r13             #  81    0x7d363  8      
  movq 0x90(%rsp), %r14             #  82    0x7d36b  8      
  nop                               #  83    0x7d373  1      
  addl $0x98, %esp                  #  84    0x7d374  3      
  addq %r15, %rsp                   #  85    0x7d377  3      
  popq %r11                         #  86    0x7d37a  3      
  andl $0xffffffe0, %r11d           #  87    0x7d37d  7      
  addq %r15, %r11                   #  88    0x7d384  3      
  jmpq %r11                         #  89    0x7d387  3      
  nop                               #  90    0x7d38a  1      
.L_7d400:                           #        0x7d38b  0      
  movl %ebx, %ebx                   #  91    0x7d38b  2      
  movzwl 0xc(%r15,%rbx,1), %eax     #  92    0x7d38d  6      
  testb $0x2, %ah                   #  93    0x7d393  3      
  jne .L_7d3c0                      #  94    0x7d396  6      
  orl $0x2, %eax                    #  95    0x7d39c  3      
  movl %ebx, %ebx                   #  96    0x7d39f  2      
  movw %ax, 0xc(%r15,%rbx,1)        #  97    0x7d3a1  6      
  nop                               #  98    0x7d3a7  1      
.L_7d420:                           #        0x7d3a8  0      
  leal 0x43(%rbx), %eax             #  99    0x7d3a8  3      
  movl %ebx, %ebx                   #  100   0x7d3ab  2      
  movl $0x1, 0x14(%r15,%rbx,1)      #  101   0x7d3ad  9      
  movl %ebx, %ebx                   #  102   0x7d3b6  2      
  movl %eax, (%r15,%rbx,1)          #  103   0x7d3b8  4      
  movl %ebx, %ebx                   #  104   0x7d3bc  2      
  movl %eax, 0x10(%r15,%rbx,1)      #  105   0x7d3be  5      
  jmpq .L_7d3c0                     #  106   0x7d3c3  5      
  nop                               #  107   0x7d3c8  1      
.L_7d440:                           #        0x7d3c9  0      
  movl %ebx, %ebx                   #  108   0x7d3c9  2      
  movswl 0xe(%r15,%rbx,1), %edi     #  109   0x7d3cb  6      
  nop                               #  110   0x7d3d1  1      
  nop                               #  111   0x7d3d2  1      
  callq .isatty                     #  112   0x7d3d3  5      
  testl %eax, %eax                  #  113   0x7d3d8  2      
  je .L_7d3c0                       #  114   0x7d3da  6      
  movl %ebx, %ebx                   #  115   0x7d3e0  2      
  orw $0x1, 0xc(%r15,%rbx,1)        #  116   0x7d3e2  7      
  jmpq .L_7d3c0                     #  117   0x7d3e9  5      
  nop                               #  118   0x7d3ee  1      
.L_7d480:                           #        0x7d3ef  0      
  movl %ebx, %ebx                   #  119   0x7d3ef  2      
  cmpl $0x80020, 0x28(%r15,%rbx,1)  #  120   0x7d3f1  9      
  jne .L_7d2e0                      #  121   0x7d3fa  6      
  movl %ebx, %ebx                   #  122   0x7d400  2      
  orw $0x400, 0xc(%r15,%rbx,1)      #  123   0x7d402  8      
  nop                               #  124   0x7d40a  1      
  movl %ebx, %ebx                   #  125   0x7d40b  2      
  movl $0x400, 0x4c(%r15,%rbx,1)    #  126   0x7d40d  9      
  movl $0x400, %r12d                #  127   0x7d416  6      
  jmpq .L_7d360                     #  128   0x7d41c  5      
  nop                               #  129   0x7d421  1      
  nop                               #  130   0x7d422  1      
  nop                               #  131   0x7d423  1      
  nop                               #  132   0x7d424  1      
  nop                               #  133   0x7d425  1      
  nop                               #  134   0x7d426  1      
  nop                               #  135   0x7d427  1      
  nop                               #  136   0x7d428  1      
  nop                               #  137   0x7d429  1      
  nop                               #  138   0x7d42a  1      
                                                             
.size __smakebuf_r, .-__smakebuf_r

