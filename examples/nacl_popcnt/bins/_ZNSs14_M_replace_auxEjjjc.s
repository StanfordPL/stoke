  .text
  .globl _ZNSs14_M_replace_auxEjjjc
  .type _ZNSs14_M_replace_auxEjjjc, @function

#! file-offset 0x485a0
#! rip-offset  0x485a0
#! capacity    320 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs14_M_replace_auxEjjjc:            #        0x485a0  0      
  movq %r12, -0x18(%rsp)                #  1     0x485a0  5      
  movl %edi, %r12d                      #  2     0x485a5  3      
  movq %rbx, -0x20(%rsp)                #  3     0x485a8  5      
  movq %r13, -0x10(%rsp)                #  4     0x485ad  5      
  movq %r14, -0x8(%rsp)                 #  5     0x485b2  5      
  subl $0x38, %esp                      #  6     0x485b7  3      
  addq %r15, %rsp                       #  7     0x485ba  3      
  nop                                   #  8     0x485bd  1      
  movl %r12d, %r12d                     #  9     0x485be  3      
  movl (%r15,%r12,1), %eax              #  10    0x485c1  4      
  movl %ecx, %ebx                       #  11    0x485c5  2      
  movl %edx, %ecx                       #  12    0x485c7  2      
  movl %esi, %r13d                      #  13    0x485c9  3      
  movl %r8d, %r14d                      #  14    0x485cc  3      
  movb %r8b, 0xf(%rsp)                  #  15    0x485cf  5      
  subl $0xc, %eax                       #  16    0x485d4  3      
  movl %eax, %eax                       #  17    0x485d7  2      
  subl (%r15,%rax,1), %ecx              #  18    0x485d9  4      
  nop                                   #  19    0x485dd  1      
  movl %ecx, %eax                       #  20    0x485de  2      
  addl $0x3ffffffc, %eax                #  21    0x485e0  5      
  cmpl %eax, %ebx                       #  22    0x485e5  2      
  ja .L_486c0                           #  23    0x485e7  6      
  movl %ebx, %ecx                       #  24    0x485ed  2      
  movl %r12d, %edi                      #  25    0x485ef  3      
  nop                                   #  26    0x485f2  1      
  callq ._ZNSs9_M_mutateEjjj            #  27    0x485f3  5      
  testl %ebx, %ebx                      #  28    0x485f8  2      
  jne .L_48660                          #  29    0x485fa  6      
  nop                                   #  30    0x48600  1      
  nop                                   #  31    0x48601  1      
.L_48620:                               #        0x48602  0      
  movl %r12d, %eax                      #  32    0x48602  3      
  movq 0x18(%rsp), %rbx                 #  33    0x48605  5      
  movq 0x20(%rsp), %r12                 #  34    0x4860a  5      
  movq 0x28(%rsp), %r13                 #  35    0x4860f  5      
  movq 0x30(%rsp), %r14                 #  36    0x48614  5      
  addl $0x38, %esp                      #  37    0x48619  3      
  addq %r15, %rsp                       #  38    0x4861c  3      
  popq %r11                             #  39    0x4861f  3      
  nop                                   #  40    0x48622  1      
  andl $0xffffffe0, %r11d               #  41    0x48623  7      
  addq %r15, %r11                       #  42    0x4862a  3      
  jmpq %r11                             #  43    0x4862d  3      
  nop                                   #  44    0x48630  1      
  nop                                   #  45    0x48631  1      
.L_48660:                               #        0x48632  0      
  movl %r12d, %r12d                     #  46    0x48632  3      
  movl (%r15,%r12,1), %edi              #  47    0x48635  4      
  addl %r13d, %edi                      #  48    0x48639  3      
  cmpl $0x1, %ebx                       #  49    0x4863c  3      
  je .L_486a0                           #  50    0x4863f  6      
  movsbl 0xf(%rsp), %esi                #  51    0x48645  5      
  movl %ebx, %edx                       #  52    0x4864a  2      
  nop                                   #  53    0x4864c  1      
  callq .memset                         #  54    0x4864d  5      
  jmpq .L_48620                         #  55    0x48652  5      
  nop                                   #  56    0x48657  1      
  nop                                   #  57    0x48658  1      
.L_486a0:                               #        0x48659  0      
  movl %edi, %edi                       #  58    0x48659  2      
  movb %r14b, (%r15,%rdi,1)             #  59    0x4865b  4      
  jmpq .L_48620                         #  60    0x4865f  5      
  nop                                   #  61    0x48664  1      
  nop                                   #  62    0x48665  1      
.L_486c0:                               #        0x48666  0      
  movl $0x10020a37, %edi                #  63    0x48666  5      
  nop                                   #  64    0x4866b  1      
  nop                                   #  65    0x4866c  1      
  callq ._ZSt20__throw_length_errorPKc  #  66    0x4866d  5      
                                                                 
.size _ZNSs14_M_replace_auxEjjjc, .-_ZNSs14_M_replace_auxEjjjc

