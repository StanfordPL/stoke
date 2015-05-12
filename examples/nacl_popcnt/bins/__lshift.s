  .text
  .globl __lshift
  .type __lshift, @function

#! file-offset 0x7f2e0
#! rip-offset  0x7f2e0
#! capacity    480 bytes

# Text                           #  Line  RIP      Bytes  
.__lshift:                       #        0x7f2e0  0      
  pushq %r14                     #  1     0x7f2e0  3      
  movl %edx, %r14d               #  2     0x7f2e3  3      
  sarl $0x5, %r14d               #  3     0x7f2e6  4      
  pushq %r13                     #  4     0x7f2ea  3      
  movl %edi, %r13d               #  5     0x7f2ed  3      
  pushq %r12                     #  6     0x7f2f0  3      
  movl %esi, %r12d               #  7     0x7f2f3  3      
  pushq %rbx                     #  8     0x7f2f6  2      
  subl $0x18, %esp               #  9     0x7f2f8  3      
  addq %r15, %rsp                #  10    0x7f2fb  3      
  nop                            #  11    0x7f2fe  1      
  movl %r12d, %r12d              #  12    0x7f2ff  3      
  movl 0x10(%r15,%r12,1), %ebx   #  13    0x7f302  5      
  movl %r12d, %r12d              #  14    0x7f307  3      
  movl 0x8(%r15,%r12,1), %eax    #  15    0x7f30a  5      
  movl %r12d, %r12d              #  16    0x7f30f  3      
  movl 0x4(%r15,%r12,1), %esi    #  17    0x7f312  5      
  leal 0x1(%r14,%rbx,1), %ebx    #  18    0x7f317  5      
  cmpl %eax, %ebx                #  19    0x7f31c  2      
  nop                            #  20    0x7f31e  1      
  jle .L_7f360                   #  21    0x7f31f  6      
  nop                            #  22    0x7f325  1      
  nop                            #  23    0x7f326  1      
.L_7f340:                        #        0x7f327  0      
  addl %eax, %eax                #  24    0x7f327  2      
  addl $0x1, %esi                #  25    0x7f329  3      
  cmpl %eax, %ebx                #  26    0x7f32c  2      
  jg .L_7f340                    #  27    0x7f32e  6      
  nop                            #  28    0x7f334  1      
  nop                            #  29    0x7f335  1      
.L_7f360:                        #        0x7f336  0      
  movl %r13d, %edi               #  30    0x7f336  3      
  movl %edx, 0x8(%rsp)           #  31    0x7f339  4      
  nop                            #  32    0x7f33d  1      
  nop                            #  33    0x7f33e  1      
  callq ._Balloc                 #  34    0x7f33f  5      
  testl %r14d, %r14d             #  35    0x7f344  3      
  movl %eax, %eax                #  36    0x7f347  2      
  movl 0x8(%rsp), %edx           #  37    0x7f349  4      
  leal 0x14(%rax), %esi          #  38    0x7f34d  3      
  jle .L_7f3c0                   #  39    0x7f350  6      
  xorl %ecx, %ecx                #  40    0x7f356  2      
  nop                            #  41    0x7f358  1      
  nop                            #  42    0x7f359  1      
.L_7f3a0:                        #        0x7f35a  0      
  addl $0x1, %ecx                #  43    0x7f35a  3      
  movl %esi, %esi                #  44    0x7f35d  2      
  movl $0x0, (%r15,%rsi,1)       #  45    0x7f35f  8      
  addl $0x4, %esi                #  46    0x7f367  3      
  cmpl %r14d, %ecx               #  47    0x7f36a  3      
  jne .L_7f3a0                   #  48    0x7f36d  6      
  leal 0x14(%rax,%rcx,4), %esi   #  49    0x7f373  4      
  nop                            #  50    0x7f377  1      
.L_7f3c0:                        #        0x7f378  0      
  movl %r12d, %r12d              #  51    0x7f378  3      
  movl 0x10(%r15,%r12,1), %r10d  #  52    0x7f37b  5      
  andl $0x1f, %edx               #  53    0x7f380  3      
  leal 0x14(%r12), %edi          #  54    0x7f383  5      
  leal 0x14(%r12,%r10,4), %r10d  #  55    0x7f388  5      
  je .L_7f4a0                    #  56    0x7f38d  6      
  nop                            #  57    0x7f393  1      
  movl $0x20, %r11d              #  58    0x7f394  6      
  xorl %r9d, %r9d                #  59    0x7f39a  3      
  subl %edx, %r11d               #  60    0x7f39d  3      
  nop                            #  61    0x7f3a0  1      
  nop                            #  62    0x7f3a1  1      
.L_7f400:                        #        0x7f3a2  0      
  movl %edi, %edi                #  63    0x7f3a2  2      
  movl (%r15,%rdi,1), %r8d       #  64    0x7f3a4  4      
  movl %edx, %ecx                #  65    0x7f3a8  2      
  shll %cl, %r8d                 #  66    0x7f3aa  3      
  movl %r11d, %ecx               #  67    0x7f3ad  3      
  orl %r9d, %r8d                 #  68    0x7f3b0  3      
  movl %esi, %esi                #  69    0x7f3b3  2      
  movl %r8d, (%r15,%rsi,1)       #  70    0x7f3b5  4      
  movl %edi, %edi                #  71    0x7f3b9  2      
  movl (%r15,%rdi,1), %r9d       #  72    0x7f3bb  4      
  addl $0x4, %edi                #  73    0x7f3bf  3      
  addl $0x4, %esi                #  74    0x7f3c2  3      
  shrl %cl, %r9d                 #  75    0x7f3c5  3      
  cmpl %edi, %r10d               #  76    0x7f3c8  3      
  ja .L_7f400                    #  77    0x7f3cb  6      
  cmpl $0x1, %r9d                #  78    0x7f3d1  4      
  movl %esi, %esi                #  79    0x7f3d5  2      
  movl %r9d, (%r15,%rsi,1)       #  80    0x7f3d7  4      
  sbbl $0xffffffff, %ebx         #  81    0x7f3db  6      
  nop                            #  82    0x7f3e1  1      
.L_7f440:                        #        0x7f3e2  0      
  movl %r12d, %r12d              #  83    0x7f3e2  3      
  movl 0x4(%r15,%r12,1), %edx    #  84    0x7f3e5  5      
  subl $0x1, %ebx                #  85    0x7f3ea  3      
  movl %eax, %eax                #  86    0x7f3ed  2      
  movl %ebx, 0x10(%r15,%rax,1)   #  87    0x7f3ef  5      
  shll $0x2, %edx                #  88    0x7f3f4  3      
  movl %r13d, %r13d              #  89    0x7f3f7  3      
  addl 0x4c(%r15,%r13,1), %edx   #  90    0x7f3fa  5      
  nop                            #  91    0x7f3ff  1      
  movl %edx, %edx                #  92    0x7f400  2      
  movl (%r15,%rdx,1), %ecx       #  93    0x7f402  4      
  movl %r12d, %r12d              #  94    0x7f406  3      
  movl %ecx, (%r15,%r12,1)       #  95    0x7f409  4      
  movl %edx, %edx                #  96    0x7f40d  2      
  movl %r12d, (%r15,%rdx,1)      #  97    0x7f40f  4      
  addl $0x18, %esp               #  98    0x7f413  3      
  addq %r15, %rsp                #  99    0x7f416  3      
  popq %rbx                      #  100   0x7f419  2      
  popq %r12                      #  101   0x7f41b  3      
  popq %r13                      #  102   0x7f41e  3      
  popq %r14                      #  103   0x7f421  3      
  popq %r11                      #  104   0x7f424  3      
  andl $0xffffffe0, %r11d        #  105   0x7f427  7      
  addq %r15, %r11                #  106   0x7f42e  3      
  jmpq %r11                      #  107   0x7f431  3      
  nop                            #  108   0x7f434  1      
  nop                            #  109   0x7f435  1      
.L_7f4a0:                        #        0x7f436  0      
  movl %edi, %edi                #  110   0x7f436  2      
  movl (%r15,%rdi,1), %edx       #  111   0x7f438  4      
  addl $0x4, %edi                #  112   0x7f43c  3      
  movl %esi, %esi                #  113   0x7f43f  2      
  movl %edx, (%r15,%rsi,1)       #  114   0x7f441  4      
  addl $0x4, %esi                #  115   0x7f445  3      
  cmpl %edi, %r10d               #  116   0x7f448  3      
  ja .L_7f4a0                    #  117   0x7f44b  6      
  jmpq .L_7f440                  #  118   0x7f451  5      
  nop                            #  119   0x7f456  1      
                                                          
.size __lshift, .-__lshift

