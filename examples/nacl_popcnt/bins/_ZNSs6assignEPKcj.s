  .text
  .globl _ZNSs6assignEPKcj
  .type _ZNSs6assignEPKcj, @function

#! file-offset 0x482a0
#! rip-offset  0x482a0
#! capacity    416 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6assignEPKcj:                     #        0x482a0  0      
  pushq %r12                            #  1     0x482a0  3      
  movl %edx, %r12d                      #  2     0x482a3  3      
  movl %esi, %ecx                       #  3     0x482a6  2      
  pushq %rbx                            #  4     0x482a8  2      
  movl %edi, %ebx                       #  5     0x482aa  2      
  subl $0x8, %esp                       #  6     0x482ac  3      
  addq %r15, %rsp                       #  7     0x482af  3      
  movl %ebx, %ebx                       #  8     0x482b2  2      
  movl (%r15,%rbx,1), %edi              #  9     0x482b4  4      
  cmpl $0x3ffffffc, %r12d               #  10    0x482b8  7      
  leal -0xc(%rdi), %eax                 #  11    0x482bf  3      
  movl %eax, %eax                       #  12    0x482c2  2      
  movl (%r15,%rax,1), %edx              #  13    0x482c4  4      
  ja .L_48420                           #  14    0x482c8  6      
  cmpl %edi, %ecx                       #  15    0x482ce  2      
  jb .L_48300                           #  16    0x482d0  6      
  leal (%rdx,%rdi,1), %esi              #  17    0x482d6  3      
  cmpl %ecx, %esi                       #  18    0x482d9  2      
  jb .L_48300                           #  19    0x482db  6      
  movl %eax, %eax                       #  20    0x482e1  2      
  movl 0x8(%r15,%rax,1), %esi           #  21    0x482e3  5      
  testl %esi, %esi                      #  22    0x482e8  2      
  jle .L_48320                          #  23    0x482ea  6      
  nop                                   #  24    0x482f0  1      
  nop                                   #  25    0x482f1  1      
.L_48300:                               #        0x482f2  0      
  addl $0x8, %esp                       #  26    0x482f2  3      
  addq %r15, %rsp                       #  27    0x482f5  3      
  movl %ebx, %edi                       #  28    0x482f8  2      
  movl %r12d, %r8d                      #  29    0x482fa  3      
  popq %rbx                             #  30    0x482fd  2      
  popq %r12                             #  31    0x482ff  3      
  xorl %esi, %esi                       #  32    0x48302  2      
  jmpq ._ZNSs15_M_replace_safeEjjPKcj   #  33    0x48304  5      
  nop                                   #  34    0x48309  1      
.L_48320:                               #        0x4830a  0      
  movl %ecx, %edx                       #  35    0x4830a  2      
  subl %edi, %edx                       #  36    0x4830c  2      
  cmpl %edx, %r12d                      #  37    0x4830e  3      
  jbe .L_48380                          #  38    0x48311  6      
  testl %edx, %edx                      #  39    0x48317  2      
  jne .L_483c0                          #  40    0x48319  6      
  nop                                   #  41    0x4831f  1      
.L_48340:                               #        0x48320  0      
  movl %eax, %eax                       #  42    0x48320  2      
  movl %r12d, (%r15,%rax,1)             #  43    0x48322  4      
  addl %eax, %r12d                      #  44    0x48326  3      
  movl %eax, %eax                       #  45    0x48329  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  46    0x4832b  9      
  movl %r12d, %r12d                     #  47    0x48334  3      
  movb $0x0, 0xc(%r15,%r12,1)           #  48    0x48337  6      
  movl %ebx, %eax                       #  49    0x4833d  2      
  nop                                   #  50    0x4833f  1      
  addl $0x8, %esp                       #  51    0x48340  3      
  addq %r15, %rsp                       #  52    0x48343  3      
  popq %rbx                             #  53    0x48346  2      
  popq %r12                             #  54    0x48348  3      
  popq %r11                             #  55    0x4834b  3      
  andl $0xffffffe0, %r11d               #  56    0x4834e  7      
  addq %r15, %r11                       #  57    0x48355  3      
  jmpq %r11                             #  58    0x48358  3      
  nop                                   #  59    0x4835b  1      
.L_48380:                               #        0x4835c  0      
  cmpl $0x1, %r12d                      #  60    0x4835c  4      
  je .L_48400                           #  61    0x48360  6      
  movl %r12d, %edx                      #  62    0x48366  3      
  movl %ecx, %esi                       #  63    0x48369  2      
  nop                                   #  64    0x4836b  1      
  nop                                   #  65    0x4836c  1      
  callq .memcpy                         #  66    0x4836d  5      
  movl %ebx, %ebx                       #  67    0x48372  2      
  movl (%r15,%rbx,1), %eax              #  68    0x48374  4      
  subl $0xc, %eax                       #  69    0x48378  3      
  jmpq .L_48340                         #  70    0x4837b  5      
  nop                                   #  71    0x48380  1      
  nop                                   #  72    0x48381  1      
.L_483c0:                               #        0x48382  0      
  cmpl $0x1, %r12d                      #  73    0x48382  4      
  je .L_48400                           #  74    0x48386  6      
  movl %r12d, %edx                      #  75    0x4838c  3      
  movl %ecx, %esi                       #  76    0x4838f  2      
  nop                                   #  77    0x48391  1      
  nop                                   #  78    0x48392  1      
  callq .memmove                        #  79    0x48393  5      
  movl %ebx, %ebx                       #  80    0x48398  2      
  movl (%r15,%rbx,1), %eax              #  81    0x4839a  4      
  subl $0xc, %eax                       #  82    0x4839e  3      
  jmpq .L_48340                         #  83    0x483a1  5      
  nop                                   #  84    0x483a6  1      
  nop                                   #  85    0x483a7  1      
.L_48400:                               #        0x483a8  0      
  movl %ecx, %ecx                       #  86    0x483a8  2      
  movzbl (%r15,%rcx,1), %eax            #  87    0x483aa  5      
  movl %edi, %edi                       #  88    0x483af  2      
  movb %al, (%r15,%rdi,1)               #  89    0x483b1  4      
  movl %ebx, %ebx                       #  90    0x483b5  2      
  movl (%r15,%rbx,1), %eax              #  91    0x483b7  4      
  subl $0xc, %eax                       #  92    0x483bb  3      
  jmpq .L_48340                         #  93    0x483be  5      
  nop                                   #  94    0x483c3  1      
.L_48420:                               #        0x483c4  0      
  movl $0x10020a22, %edi                #  95    0x483c4  5      
  nop                                   #  96    0x483c9  1      
  nop                                   #  97    0x483ca  1      
  callq ._ZSt20__throw_length_errorPKc  #  98    0x483cb  5      
                                                                 
.size _ZNSs6assignEPKcj, .-_ZNSs6assignEPKcj

