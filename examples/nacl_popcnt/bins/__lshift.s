  .text
  .globl __lshift
  .type __lshift, @function

#! file-offset 0x7f2c0
#! rip-offset  0x7f2c0
#! capacity    480 bytes

# Text                           #  Line  RIP      Bytes  
.__lshift:                       #        0x7f2c0  0      
  pushq %r14                     #  1     0x7f2c0  3      
  movl %edx, %r14d               #  2     0x7f2c3  3      
  sarl $0x5, %r14d               #  3     0x7f2c6  4      
  pushq %r13                     #  4     0x7f2ca  3      
  movl %edi, %r13d               #  5     0x7f2cd  3      
  pushq %r12                     #  6     0x7f2d0  3      
  movl %esi, %r12d               #  7     0x7f2d3  3      
  pushq %rbx                     #  8     0x7f2d6  2      
  subl $0x18, %esp               #  9     0x7f2d8  3      
  addq %r15, %rsp                #  10    0x7f2db  3      
  nop                            #  11    0x7f2de  1      
  movl %r12d, %r12d              #  12    0x7f2df  3      
  movl 0x10(%r15,%r12,1), %ebx   #  13    0x7f2e2  5      
  movl %r12d, %r12d              #  14    0x7f2e7  3      
  movl 0x8(%r15,%r12,1), %eax    #  15    0x7f2ea  5      
  movl %r12d, %r12d              #  16    0x7f2ef  3      
  movl 0x4(%r15,%r12,1), %esi    #  17    0x7f2f2  5      
  leal 0x1(%r14,%rbx,1), %ebx    #  18    0x7f2f7  5      
  cmpl %eax, %ebx                #  19    0x7f2fc  2      
  nop                            #  20    0x7f2fe  1      
  jle .L_7f340                   #  21    0x7f2ff  6      
  nop                            #  22    0x7f305  1      
  nop                            #  23    0x7f306  1      
.L_7f320:                        #        0x7f307  0      
  addl %eax, %eax                #  24    0x7f307  2      
  addl $0x1, %esi                #  25    0x7f309  3      
  cmpl %eax, %ebx                #  26    0x7f30c  2      
  jg .L_7f320                    #  27    0x7f30e  6      
  nop                            #  28    0x7f314  1      
  nop                            #  29    0x7f315  1      
.L_7f340:                        #        0x7f316  0      
  movl %r13d, %edi               #  30    0x7f316  3      
  movl %edx, 0x8(%rsp)           #  31    0x7f319  4      
  nop                            #  32    0x7f31d  1      
  nop                            #  33    0x7f31e  1      
  callq ._Balloc                 #  34    0x7f31f  5      
  testl %r14d, %r14d             #  35    0x7f324  3      
  movl %eax, %eax                #  36    0x7f327  2      
  movl 0x8(%rsp), %edx           #  37    0x7f329  4      
  leal 0x14(%rax), %esi          #  38    0x7f32d  3      
  jle .L_7f3a0                   #  39    0x7f330  6      
  xorl %ecx, %ecx                #  40    0x7f336  2      
  nop                            #  41    0x7f338  1      
  nop                            #  42    0x7f339  1      
.L_7f380:                        #        0x7f33a  0      
  addl $0x1, %ecx                #  43    0x7f33a  3      
  movl %esi, %esi                #  44    0x7f33d  2      
  movl $0x0, (%r15,%rsi,1)       #  45    0x7f33f  8      
  addl $0x4, %esi                #  46    0x7f347  3      
  cmpl %r14d, %ecx               #  47    0x7f34a  3      
  jne .L_7f380                   #  48    0x7f34d  6      
  leal 0x14(%rax,%rcx,4), %esi   #  49    0x7f353  4      
  nop                            #  50    0x7f357  1      
.L_7f3a0:                        #        0x7f358  0      
  movl %r12d, %r12d              #  51    0x7f358  3      
  movl 0x10(%r15,%r12,1), %r10d  #  52    0x7f35b  5      
  andl $0x1f, %edx               #  53    0x7f360  3      
  leal 0x14(%r12), %edi          #  54    0x7f363  5      
  leal 0x14(%r12,%r10,4), %r10d  #  55    0x7f368  5      
  je .L_7f480                    #  56    0x7f36d  6      
  nop                            #  57    0x7f373  1      
  movl $0x20, %r11d              #  58    0x7f374  6      
  xorl %r9d, %r9d                #  59    0x7f37a  3      
  subl %edx, %r11d               #  60    0x7f37d  3      
  nop                            #  61    0x7f380  1      
  nop                            #  62    0x7f381  1      
.L_7f3e0:                        #        0x7f382  0      
  movl %edi, %edi                #  63    0x7f382  2      
  movl (%r15,%rdi,1), %r8d       #  64    0x7f384  4      
  movl %edx, %ecx                #  65    0x7f388  2      
  shll %cl, %r8d                 #  66    0x7f38a  3      
  movl %r11d, %ecx               #  67    0x7f38d  3      
  orl %r9d, %r8d                 #  68    0x7f390  3      
  movl %esi, %esi                #  69    0x7f393  2      
  movl %r8d, (%r15,%rsi,1)       #  70    0x7f395  4      
  movl %edi, %edi                #  71    0x7f399  2      
  movl (%r15,%rdi,1), %r9d       #  72    0x7f39b  4      
  addl $0x4, %edi                #  73    0x7f39f  3      
  addl $0x4, %esi                #  74    0x7f3a2  3      
  shrl %cl, %r9d                 #  75    0x7f3a5  3      
  cmpl %edi, %r10d               #  76    0x7f3a8  3      
  ja .L_7f3e0                    #  77    0x7f3ab  6      
  cmpl $0x1, %r9d                #  78    0x7f3b1  4      
  movl %esi, %esi                #  79    0x7f3b5  2      
  movl %r9d, (%r15,%rsi,1)       #  80    0x7f3b7  4      
  sbbl $0xffffffff, %ebx         #  81    0x7f3bb  6      
  nop                            #  82    0x7f3c1  1      
.L_7f420:                        #        0x7f3c2  0      
  movl %r12d, %r12d              #  83    0x7f3c2  3      
  movl 0x4(%r15,%r12,1), %edx    #  84    0x7f3c5  5      
  subl $0x1, %ebx                #  85    0x7f3ca  3      
  movl %eax, %eax                #  86    0x7f3cd  2      
  movl %ebx, 0x10(%r15,%rax,1)   #  87    0x7f3cf  5      
  shll $0x2, %edx                #  88    0x7f3d4  3      
  movl %r13d, %r13d              #  89    0x7f3d7  3      
  addl 0x4c(%r15,%r13,1), %edx   #  90    0x7f3da  5      
  nop                            #  91    0x7f3df  1      
  movl %edx, %edx                #  92    0x7f3e0  2      
  movl (%r15,%rdx,1), %ecx       #  93    0x7f3e2  4      
  movl %r12d, %r12d              #  94    0x7f3e6  3      
  movl %ecx, (%r15,%r12,1)       #  95    0x7f3e9  4      
  movl %edx, %edx                #  96    0x7f3ed  2      
  movl %r12d, (%r15,%rdx,1)      #  97    0x7f3ef  4      
  addl $0x18, %esp               #  98    0x7f3f3  3      
  addq %r15, %rsp                #  99    0x7f3f6  3      
  popq %rbx                      #  100   0x7f3f9  2      
  popq %r12                      #  101   0x7f3fb  3      
  popq %r13                      #  102   0x7f3fe  3      
  popq %r14                      #  103   0x7f401  3      
  popq %r11                      #  104   0x7f404  3      
  andl $0xffffffe0, %r11d        #  105   0x7f407  7      
  addq %r15, %r11                #  106   0x7f40e  3      
  jmpq %r11                      #  107   0x7f411  3      
  nop                            #  108   0x7f414  1      
  nop                            #  109   0x7f415  1      
.L_7f480:                        #        0x7f416  0      
  movl %edi, %edi                #  110   0x7f416  2      
  movl (%r15,%rdi,1), %edx       #  111   0x7f418  4      
  addl $0x4, %edi                #  112   0x7f41c  3      
  movl %esi, %esi                #  113   0x7f41f  2      
  movl %edx, (%r15,%rsi,1)       #  114   0x7f421  4      
  addl $0x4, %esi                #  115   0x7f425  3      
  cmpl %edi, %r10d               #  116   0x7f428  3      
  ja .L_7f480                    #  117   0x7f42b  6      
  jmpq .L_7f420                  #  118   0x7f431  5      
  nop                            #  119   0x7f436  1      
                                                          
.size __lshift, .-__lshift

