  .text
  .globl _ZNSs6assignEPKcj
  .type _ZNSs6assignEPKcj, @function

#! file-offset 0x48320
#! rip-offset  0x48320
#! capacity    416 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6assignEPKcj:                     #        0x48320  0      
  pushq %r12                            #  1     0x48320  3      
  movl %edx, %r12d                      #  2     0x48323  3      
  movl %esi, %ecx                       #  3     0x48326  2      
  pushq %rbx                            #  4     0x48328  2      
  movl %edi, %ebx                       #  5     0x4832a  2      
  subl $0x8, %esp                       #  6     0x4832c  3      
  addq %r15, %rsp                       #  7     0x4832f  3      
  movl %ebx, %ebx                       #  8     0x48332  2      
  movl (%r15,%rbx,1), %edi              #  9     0x48334  4      
  cmpl $0x3ffffffc, %r12d               #  10    0x48338  7      
  leal -0xc(%rdi), %eax                 #  11    0x4833f  3      
  movl %eax, %eax                       #  12    0x48342  2      
  movl (%r15,%rax,1), %edx              #  13    0x48344  4      
  ja .L_484a0                           #  14    0x48348  6      
  cmpl %edi, %ecx                       #  15    0x4834e  2      
  jb .L_48380                           #  16    0x48350  6      
  leal (%rdx,%rdi,1), %esi              #  17    0x48356  3      
  cmpl %ecx, %esi                       #  18    0x48359  2      
  jb .L_48380                           #  19    0x4835b  6      
  movl %eax, %eax                       #  20    0x48361  2      
  movl 0x8(%r15,%rax,1), %esi           #  21    0x48363  5      
  testl %esi, %esi                      #  22    0x48368  2      
  jle .L_483a0                          #  23    0x4836a  6      
  nop                                   #  24    0x48370  1      
  nop                                   #  25    0x48371  1      
.L_48380:                               #        0x48372  0      
  addl $0x8, %esp                       #  26    0x48372  3      
  addq %r15, %rsp                       #  27    0x48375  3      
  movl %ebx, %edi                       #  28    0x48378  2      
  movl %r12d, %r8d                      #  29    0x4837a  3      
  popq %rbx                             #  30    0x4837d  2      
  popq %r12                             #  31    0x4837f  3      
  xorl %esi, %esi                       #  32    0x48382  2      
  jmpq ._ZNSs15_M_replace_safeEjjPKcj   #  33    0x48384  5      
  nop                                   #  34    0x48389  1      
.L_483a0:                               #        0x4838a  0      
  movl %ecx, %edx                       #  35    0x4838a  2      
  subl %edi, %edx                       #  36    0x4838c  2      
  cmpl %edx, %r12d                      #  37    0x4838e  3      
  jbe .L_48400                          #  38    0x48391  6      
  testl %edx, %edx                      #  39    0x48397  2      
  jne .L_48440                          #  40    0x48399  6      
  nop                                   #  41    0x4839f  1      
.L_483c0:                               #        0x483a0  0      
  movl %eax, %eax                       #  42    0x483a0  2      
  movl %r12d, (%r15,%rax,1)             #  43    0x483a2  4      
  addl %eax, %r12d                      #  44    0x483a6  3      
  movl %eax, %eax                       #  45    0x483a9  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  46    0x483ab  9      
  movl %r12d, %r12d                     #  47    0x483b4  3      
  movb $0x0, 0xc(%r15,%r12,1)           #  48    0x483b7  6      
  movl %ebx, %eax                       #  49    0x483bd  2      
  nop                                   #  50    0x483bf  1      
  addl $0x8, %esp                       #  51    0x483c0  3      
  addq %r15, %rsp                       #  52    0x483c3  3      
  popq %rbx                             #  53    0x483c6  2      
  popq %r12                             #  54    0x483c8  3      
  popq %r11                             #  55    0x483cb  3      
  andl $0xffffffe0, %r11d               #  56    0x483ce  7      
  addq %r15, %r11                       #  57    0x483d5  3      
  jmpq %r11                             #  58    0x483d8  3      
  nop                                   #  59    0x483db  1      
.L_48400:                               #        0x483dc  0      
  cmpl $0x1, %r12d                      #  60    0x483dc  4      
  je .L_48480                           #  61    0x483e0  6      
  movl %r12d, %edx                      #  62    0x483e6  3      
  movl %ecx, %esi                       #  63    0x483e9  2      
  nop                                   #  64    0x483eb  1      
  nop                                   #  65    0x483ec  1      
  callq .memcpy                         #  66    0x483ed  5      
  movl %ebx, %ebx                       #  67    0x483f2  2      
  movl (%r15,%rbx,1), %eax              #  68    0x483f4  4      
  subl $0xc, %eax                       #  69    0x483f8  3      
  jmpq .L_483c0                         #  70    0x483fb  5      
  nop                                   #  71    0x48400  1      
  nop                                   #  72    0x48401  1      
.L_48440:                               #        0x48402  0      
  cmpl $0x1, %r12d                      #  73    0x48402  4      
  je .L_48480                           #  74    0x48406  6      
  movl %r12d, %edx                      #  75    0x4840c  3      
  movl %ecx, %esi                       #  76    0x4840f  2      
  nop                                   #  77    0x48411  1      
  nop                                   #  78    0x48412  1      
  callq .memmove                        #  79    0x48413  5      
  movl %ebx, %ebx                       #  80    0x48418  2      
  movl (%r15,%rbx,1), %eax              #  81    0x4841a  4      
  subl $0xc, %eax                       #  82    0x4841e  3      
  jmpq .L_483c0                         #  83    0x48421  5      
  nop                                   #  84    0x48426  1      
  nop                                   #  85    0x48427  1      
.L_48480:                               #        0x48428  0      
  movl %ecx, %ecx                       #  86    0x48428  2      
  movzbl (%r15,%rcx,1), %eax            #  87    0x4842a  5      
  movl %edi, %edi                       #  88    0x4842f  2      
  movb %al, (%r15,%rdi,1)               #  89    0x48431  4      
  movl %ebx, %ebx                       #  90    0x48435  2      
  movl (%r15,%rbx,1), %eax              #  91    0x48437  4      
  subl $0xc, %eax                       #  92    0x4843b  3      
  jmpq .L_483c0                         #  93    0x4843e  5      
  nop                                   #  94    0x48443  1      
.L_484a0:                               #        0x48444  0      
  movl $0x10020a22, %edi                #  95    0x48444  5      
  nop                                   #  96    0x48449  1      
  nop                                   #  97    0x4844a  1      
  callq ._ZSt20__throw_length_errorPKc  #  98    0x4844b  5      
                                                                 
.size _ZNSs6assignEPKcj, .-_ZNSs6assignEPKcj

