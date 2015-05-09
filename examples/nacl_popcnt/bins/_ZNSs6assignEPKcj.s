  .text
  .globl _ZNSs6assignEPKcj
  .type _ZNSs6assignEPKcj, @function

#! file-offset 0x48280
#! rip-offset  0x48280
#! capacity    416 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6assignEPKcj:                     #        0x48280  0      
  pushq %r12                            #  1     0x48280  3      
  movl %edx, %r12d                      #  2     0x48283  3      
  movl %esi, %ecx                       #  3     0x48286  2      
  pushq %rbx                            #  4     0x48288  2      
  movl %edi, %ebx                       #  5     0x4828a  2      
  subl $0x8, %esp                       #  6     0x4828c  3      
  addq %r15, %rsp                       #  7     0x4828f  3      
  movl %ebx, %ebx                       #  8     0x48292  2      
  movl (%r15,%rbx,1), %edi              #  9     0x48294  4      
  cmpl $0x3ffffffc, %r12d               #  10    0x48298  7      
  leal -0xc(%rdi), %eax                 #  11    0x4829f  3      
  movl %eax, %eax                       #  12    0x482a2  2      
  movl (%r15,%rax,1), %edx              #  13    0x482a4  4      
  ja .L_48400                           #  14    0x482a8  6      
  cmpl %edi, %ecx                       #  15    0x482ae  2      
  jb .L_482e0                           #  16    0x482b0  6      
  leal (%rdx,%rdi,1), %esi              #  17    0x482b6  3      
  cmpl %ecx, %esi                       #  18    0x482b9  2      
  jb .L_482e0                           #  19    0x482bb  6      
  movl %eax, %eax                       #  20    0x482c1  2      
  movl 0x8(%r15,%rax,1), %esi           #  21    0x482c3  5      
  testl %esi, %esi                      #  22    0x482c8  2      
  jle .L_48300                          #  23    0x482ca  6      
  nop                                   #  24    0x482d0  1      
  nop                                   #  25    0x482d1  1      
.L_482e0:                               #        0x482d2  0      
  addl $0x8, %esp                       #  26    0x482d2  3      
  addq %r15, %rsp                       #  27    0x482d5  3      
  movl %ebx, %edi                       #  28    0x482d8  2      
  movl %r12d, %r8d                      #  29    0x482da  3      
  popq %rbx                             #  30    0x482dd  2      
  popq %r12                             #  31    0x482df  3      
  xorl %esi, %esi                       #  32    0x482e2  2      
  jmpq ._ZNSs15_M_replace_safeEjjPKcj   #  33    0x482e4  5      
  nop                                   #  34    0x482e9  1      
.L_48300:                               #        0x482ea  0      
  movl %ecx, %edx                       #  35    0x482ea  2      
  subl %edi, %edx                       #  36    0x482ec  2      
  cmpl %edx, %r12d                      #  37    0x482ee  3      
  jbe .L_48360                          #  38    0x482f1  6      
  testl %edx, %edx                      #  39    0x482f7  2      
  jne .L_483a0                          #  40    0x482f9  6      
  nop                                   #  41    0x482ff  1      
.L_48320:                               #        0x48300  0      
  movl %eax, %eax                       #  42    0x48300  2      
  movl %r12d, (%r15,%rax,1)             #  43    0x48302  4      
  addl %eax, %r12d                      #  44    0x48306  3      
  movl %eax, %eax                       #  45    0x48309  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  46    0x4830b  9      
  movl %r12d, %r12d                     #  47    0x48314  3      
  movb $0x0, 0xc(%r15,%r12,1)           #  48    0x48317  6      
  movl %ebx, %eax                       #  49    0x4831d  2      
  nop                                   #  50    0x4831f  1      
  addl $0x8, %esp                       #  51    0x48320  3      
  addq %r15, %rsp                       #  52    0x48323  3      
  popq %rbx                             #  53    0x48326  2      
  popq %r12                             #  54    0x48328  3      
  popq %r11                             #  55    0x4832b  3      
  andl $0xffffffe0, %r11d               #  56    0x4832e  7      
  addq %r15, %r11                       #  57    0x48335  3      
  jmpq %r11                             #  58    0x48338  3      
  nop                                   #  59    0x4833b  1      
.L_48360:                               #        0x4833c  0      
  cmpl $0x1, %r12d                      #  60    0x4833c  4      
  je .L_483e0                           #  61    0x48340  6      
  movl %r12d, %edx                      #  62    0x48346  3      
  movl %ecx, %esi                       #  63    0x48349  2      
  nop                                   #  64    0x4834b  1      
  nop                                   #  65    0x4834c  1      
  callq .memcpy                         #  66    0x4834d  5      
  movl %ebx, %ebx                       #  67    0x48352  2      
  movl (%r15,%rbx,1), %eax              #  68    0x48354  4      
  subl $0xc, %eax                       #  69    0x48358  3      
  jmpq .L_48320                         #  70    0x4835b  5      
  nop                                   #  71    0x48360  1      
  nop                                   #  72    0x48361  1      
.L_483a0:                               #        0x48362  0      
  cmpl $0x1, %r12d                      #  73    0x48362  4      
  je .L_483e0                           #  74    0x48366  6      
  movl %r12d, %edx                      #  75    0x4836c  3      
  movl %ecx, %esi                       #  76    0x4836f  2      
  nop                                   #  77    0x48371  1      
  nop                                   #  78    0x48372  1      
  callq .memmove                        #  79    0x48373  5      
  movl %ebx, %ebx                       #  80    0x48378  2      
  movl (%r15,%rbx,1), %eax              #  81    0x4837a  4      
  subl $0xc, %eax                       #  82    0x4837e  3      
  jmpq .L_48320                         #  83    0x48381  5      
  nop                                   #  84    0x48386  1      
  nop                                   #  85    0x48387  1      
.L_483e0:                               #        0x48388  0      
  movl %ecx, %ecx                       #  86    0x48388  2      
  movzbl (%r15,%rcx,1), %eax            #  87    0x4838a  5      
  movl %edi, %edi                       #  88    0x4838f  2      
  movb %al, (%r15,%rdi,1)               #  89    0x48391  4      
  movl %ebx, %ebx                       #  90    0x48395  2      
  movl (%r15,%rbx,1), %eax              #  91    0x48397  4      
  subl $0xc, %eax                       #  92    0x4839b  3      
  jmpq .L_48320                         #  93    0x4839e  5      
  nop                                   #  94    0x483a3  1      
.L_48400:                               #        0x483a4  0      
  movl $0x10020a22, %edi                #  95    0x483a4  5      
  nop                                   #  96    0x483a9  1      
  nop                                   #  97    0x483aa  1      
  callq ._ZSt20__throw_length_errorPKc  #  98    0x483ab  5      
                                                                 
.size _ZNSs6assignEPKcj, .-_ZNSs6assignEPKcj

