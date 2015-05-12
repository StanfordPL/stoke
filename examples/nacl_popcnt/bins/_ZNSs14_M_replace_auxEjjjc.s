  .text
  .globl _ZNSs14_M_replace_auxEjjjc
  .type _ZNSs14_M_replace_auxEjjjc, @function

#! file-offset 0x48520
#! rip-offset  0x48520
#! capacity    320 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs14_M_replace_auxEjjjc:            #        0x48520  0      
  movq %r12, -0x18(%rsp)                #  1     0x48520  5      
  movl %edi, %r12d                      #  2     0x48525  3      
  movq %rbx, -0x20(%rsp)                #  3     0x48528  5      
  movq %r13, -0x10(%rsp)                #  4     0x4852d  5      
  movq %r14, -0x8(%rsp)                 #  5     0x48532  5      
  subl $0x38, %esp                      #  6     0x48537  3      
  addq %r15, %rsp                       #  7     0x4853a  3      
  nop                                   #  8     0x4853d  1      
  movl %r12d, %r12d                     #  9     0x4853e  3      
  movl (%r15,%r12,1), %eax              #  10    0x48541  4      
  movl %ecx, %ebx                       #  11    0x48545  2      
  movl %edx, %ecx                       #  12    0x48547  2      
  movl %esi, %r13d                      #  13    0x48549  3      
  movl %r8d, %r14d                      #  14    0x4854c  3      
  movb %r8b, 0xf(%rsp)                  #  15    0x4854f  5      
  subl $0xc, %eax                       #  16    0x48554  3      
  movl %eax, %eax                       #  17    0x48557  2      
  subl (%r15,%rax,1), %ecx              #  18    0x48559  4      
  nop                                   #  19    0x4855d  1      
  movl %ecx, %eax                       #  20    0x4855e  2      
  addl $0x3ffffffc, %eax                #  21    0x48560  5      
  cmpl %eax, %ebx                       #  22    0x48565  2      
  ja .L_48640                           #  23    0x48567  6      
  movl %ebx, %ecx                       #  24    0x4856d  2      
  movl %r12d, %edi                      #  25    0x4856f  3      
  nop                                   #  26    0x48572  1      
  callq ._ZNSs9_M_mutateEjjj            #  27    0x48573  5      
  testl %ebx, %ebx                      #  28    0x48578  2      
  jne .L_485e0                          #  29    0x4857a  6      
  nop                                   #  30    0x48580  1      
  nop                                   #  31    0x48581  1      
.L_485a0:                               #        0x48582  0      
  movl %r12d, %eax                      #  32    0x48582  3      
  movq 0x18(%rsp), %rbx                 #  33    0x48585  5      
  movq 0x20(%rsp), %r12                 #  34    0x4858a  5      
  movq 0x28(%rsp), %r13                 #  35    0x4858f  5      
  movq 0x30(%rsp), %r14                 #  36    0x48594  5      
  addl $0x38, %esp                      #  37    0x48599  3      
  addq %r15, %rsp                       #  38    0x4859c  3      
  popq %r11                             #  39    0x4859f  3      
  nop                                   #  40    0x485a2  1      
  andl $0xffffffe0, %r11d               #  41    0x485a3  7      
  addq %r15, %r11                       #  42    0x485aa  3      
  jmpq %r11                             #  43    0x485ad  3      
  nop                                   #  44    0x485b0  1      
  nop                                   #  45    0x485b1  1      
.L_485e0:                               #        0x485b2  0      
  movl %r12d, %r12d                     #  46    0x485b2  3      
  movl (%r15,%r12,1), %edi              #  47    0x485b5  4      
  addl %r13d, %edi                      #  48    0x485b9  3      
  cmpl $0x1, %ebx                       #  49    0x485bc  3      
  je .L_48620                           #  50    0x485bf  6      
  movsbl 0xf(%rsp), %esi                #  51    0x485c5  5      
  movl %ebx, %edx                       #  52    0x485ca  2      
  nop                                   #  53    0x485cc  1      
  callq .memset                         #  54    0x485cd  5      
  jmpq .L_485a0                         #  55    0x485d2  5      
  nop                                   #  56    0x485d7  1      
  nop                                   #  57    0x485d8  1      
.L_48620:                               #        0x485d9  0      
  movl %edi, %edi                       #  58    0x485d9  2      
  movb %r14b, (%r15,%rdi,1)             #  59    0x485db  4      
  jmpq .L_485a0                         #  60    0x485df  5      
  nop                                   #  61    0x485e4  1      
  nop                                   #  62    0x485e5  1      
.L_48640:                               #        0x485e6  0      
  movl $0x10020a37, %edi                #  63    0x485e6  5      
  nop                                   #  64    0x485eb  1      
  nop                                   #  65    0x485ec  1      
  callq ._ZSt20__throw_length_errorPKc  #  66    0x485ed  5      
                                                                 
.size _ZNSs14_M_replace_auxEjjjc, .-_ZNSs14_M_replace_auxEjjjc

