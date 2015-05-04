  .text
  .globl __lshift
  .type __lshift, @function

#! file-offset 0x7f360
#! rip-offset  0x7f360
#! capacity    480 bytes

# Text                           #  Line  RIP      Bytes  
.__lshift:                       #        0x7f360  0      
  pushq %r14                     #  1     0x7f360  3      
  movl %edx, %r14d               #  2     0x7f363  3      
  sarl $0x5, %r14d               #  3     0x7f366  4      
  pushq %r13                     #  4     0x7f36a  3      
  movl %edi, %r13d               #  5     0x7f36d  3      
  pushq %r12                     #  6     0x7f370  3      
  movl %esi, %r12d               #  7     0x7f373  3      
  pushq %rbx                     #  8     0x7f376  2      
  subl $0x18, %esp               #  9     0x7f378  3      
  addq %r15, %rsp                #  10    0x7f37b  3      
  nop                            #  11    0x7f37e  1      
  movl %r12d, %r12d              #  12    0x7f37f  3      
  movl 0x10(%r15,%r12,1), %ebx   #  13    0x7f382  5      
  movl %r12d, %r12d              #  14    0x7f387  3      
  movl 0x8(%r15,%r12,1), %eax    #  15    0x7f38a  5      
  movl %r12d, %r12d              #  16    0x7f38f  3      
  movl 0x4(%r15,%r12,1), %esi    #  17    0x7f392  5      
  leal 0x1(%r14,%rbx,1), %ebx    #  18    0x7f397  5      
  cmpl %eax, %ebx                #  19    0x7f39c  2      
  nop                            #  20    0x7f39e  1      
  jle .L_7f3e0                   #  21    0x7f39f  6      
  nop                            #  22    0x7f3a5  1      
  nop                            #  23    0x7f3a6  1      
.L_7f3c0:                        #        0x7f3a7  0      
  addl %eax, %eax                #  24    0x7f3a7  2      
  addl $0x1, %esi                #  25    0x7f3a9  3      
  cmpl %eax, %ebx                #  26    0x7f3ac  2      
  jg .L_7f3c0                    #  27    0x7f3ae  6      
  nop                            #  28    0x7f3b4  1      
  nop                            #  29    0x7f3b5  1      
.L_7f3e0:                        #        0x7f3b6  0      
  movl %r13d, %edi               #  30    0x7f3b6  3      
  movl %edx, 0x8(%rsp)           #  31    0x7f3b9  4      
  nop                            #  32    0x7f3bd  1      
  nop                            #  33    0x7f3be  1      
  callq ._Balloc                 #  34    0x7f3bf  5      
  testl %r14d, %r14d             #  35    0x7f3c4  3      
  movl %eax, %eax                #  36    0x7f3c7  2      
  movl 0x8(%rsp), %edx           #  37    0x7f3c9  4      
  leal 0x14(%rax), %esi          #  38    0x7f3cd  3      
  jle .L_7f440                   #  39    0x7f3d0  6      
  xorl %ecx, %ecx                #  40    0x7f3d6  2      
  nop                            #  41    0x7f3d8  1      
  nop                            #  42    0x7f3d9  1      
.L_7f420:                        #        0x7f3da  0      
  addl $0x1, %ecx                #  43    0x7f3da  3      
  movl %esi, %esi                #  44    0x7f3dd  2      
  movl $0x0, (%r15,%rsi,1)       #  45    0x7f3df  8      
  addl $0x4, %esi                #  46    0x7f3e7  3      
  cmpl %r14d, %ecx               #  47    0x7f3ea  3      
  jne .L_7f420                   #  48    0x7f3ed  6      
  leal 0x14(%rax,%rcx,4), %esi   #  49    0x7f3f3  4      
  nop                            #  50    0x7f3f7  1      
.L_7f440:                        #        0x7f3f8  0      
  movl %r12d, %r12d              #  51    0x7f3f8  3      
  movl 0x10(%r15,%r12,1), %r10d  #  52    0x7f3fb  5      
  andl $0x1f, %edx               #  53    0x7f400  3      
  leal 0x14(%r12), %edi          #  54    0x7f403  5      
  leal 0x14(%r12,%r10,4), %r10d  #  55    0x7f408  5      
  je .L_7f520                    #  56    0x7f40d  6      
  nop                            #  57    0x7f413  1      
  movl $0x20, %r11d              #  58    0x7f414  6      
  xorl %r9d, %r9d                #  59    0x7f41a  3      
  subl %edx, %r11d               #  60    0x7f41d  3      
  nop                            #  61    0x7f420  1      
  nop                            #  62    0x7f421  1      
.L_7f480:                        #        0x7f422  0      
  movl %edi, %edi                #  63    0x7f422  2      
  movl (%r15,%rdi,1), %r8d       #  64    0x7f424  4      
  movl %edx, %ecx                #  65    0x7f428  2      
  shll %cl, %r8d                 #  66    0x7f42a  3      
  movl %r11d, %ecx               #  67    0x7f42d  3      
  orl %r9d, %r8d                 #  68    0x7f430  3      
  movl %esi, %esi                #  69    0x7f433  2      
  movl %r8d, (%r15,%rsi,1)       #  70    0x7f435  4      
  movl %edi, %edi                #  71    0x7f439  2      
  movl (%r15,%rdi,1), %r9d       #  72    0x7f43b  4      
  addl $0x4, %edi                #  73    0x7f43f  3      
  addl $0x4, %esi                #  74    0x7f442  3      
  shrl %cl, %r9d                 #  75    0x7f445  3      
  cmpl %edi, %r10d               #  76    0x7f448  3      
  ja .L_7f480                    #  77    0x7f44b  6      
  cmpl $0x1, %r9d                #  78    0x7f451  4      
  movl %esi, %esi                #  79    0x7f455  2      
  movl %r9d, (%r15,%rsi,1)       #  80    0x7f457  4      
  sbbl $0xffffffff, %ebx         #  81    0x7f45b  6      
  nop                            #  82    0x7f461  1      
.L_7f4c0:                        #        0x7f462  0      
  movl %r12d, %r12d              #  83    0x7f462  3      
  movl 0x4(%r15,%r12,1), %edx    #  84    0x7f465  5      
  subl $0x1, %ebx                #  85    0x7f46a  3      
  movl %eax, %eax                #  86    0x7f46d  2      
  movl %ebx, 0x10(%r15,%rax,1)   #  87    0x7f46f  5      
  shll $0x2, %edx                #  88    0x7f474  3      
  movl %r13d, %r13d              #  89    0x7f477  3      
  addl 0x4c(%r15,%r13,1), %edx   #  90    0x7f47a  5      
  nop                            #  91    0x7f47f  1      
  movl %edx, %edx                #  92    0x7f480  2      
  movl (%r15,%rdx,1), %ecx       #  93    0x7f482  4      
  movl %r12d, %r12d              #  94    0x7f486  3      
  movl %ecx, (%r15,%r12,1)       #  95    0x7f489  4      
  movl %edx, %edx                #  96    0x7f48d  2      
  movl %r12d, (%r15,%rdx,1)      #  97    0x7f48f  4      
  addl $0x18, %esp               #  98    0x7f493  3      
  addq %r15, %rsp                #  99    0x7f496  3      
  popq %rbx                      #  100   0x7f499  2      
  popq %r12                      #  101   0x7f49b  3      
  popq %r13                      #  102   0x7f49e  3      
  popq %r14                      #  103   0x7f4a1  3      
  popq %r11                      #  104   0x7f4a4  3      
  andl $0xffffffe0, %r11d        #  105   0x7f4a7  7      
  addq %r15, %r11                #  106   0x7f4ae  3      
  jmpq %r11                      #  107   0x7f4b1  3      
  nop                            #  108   0x7f4b4  1      
  nop                            #  109   0x7f4b5  1      
.L_7f520:                        #        0x7f4b6  0      
  movl %edi, %edi                #  110   0x7f4b6  2      
  movl (%r15,%rdi,1), %edx       #  111   0x7f4b8  4      
  addl $0x4, %edi                #  112   0x7f4bc  3      
  movl %esi, %esi                #  113   0x7f4bf  2      
  movl %edx, (%r15,%rsi,1)       #  114   0x7f4c1  4      
  addl $0x4, %esi                #  115   0x7f4c5  3      
  cmpl %edi, %r10d               #  116   0x7f4c8  3      
  ja .L_7f520                    #  117   0x7f4cb  6      
  jmpq .L_7f4c0                  #  118   0x7f4d1  5      
  nop                            #  119   0x7f4d6  1      
                                                          
.size __lshift, .-__lshift

