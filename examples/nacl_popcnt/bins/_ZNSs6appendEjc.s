  .text
  .globl _ZNSs6appendEjc
  .type _ZNSs6appendEjc, @function

#! file-offset 0x46360
#! rip-offset  0x46360
#! capacity    448 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6appendEjc:                       #        0x46360  0      
  movq %rbx, -0x20(%rsp)                #  1     0x46360  5      
  movq %r13, -0x10(%rsp)                #  2     0x46365  5      
  movl %edi, %ebx                       #  3     0x4636a  2      
  movq %r14, -0x8(%rsp)                 #  4     0x4636c  5      
  movq %r12, -0x18(%rsp)                #  5     0x46371  5      
  subl $0x28, %esp                      #  6     0x46376  3      
  addq %r15, %rsp                       #  7     0x46379  3      
  testl %esi, %esi                      #  8     0x4637c  2      
  xchgw %ax, %ax                        #  9     0x4637e  3      
  movl %esi, %r13d                      #  10    0x46381  3      
  movl %edx, %r14d                      #  11    0x46384  3      
  jne .L_463e0                          #  12    0x46387  6      
  nop                                   #  13    0x4638d  1      
  nop                                   #  14    0x4638e  1      
.L_463a0:                               #        0x4638f  0      
  movl %ebx, %eax                       #  15    0x4638f  2      
  movq 0x10(%rsp), %r12                 #  16    0x46391  5      
  movq 0x8(%rsp), %rbx                  #  17    0x46396  5      
  movq 0x18(%rsp), %r13                 #  18    0x4639b  5      
  movq 0x20(%rsp), %r14                 #  19    0x463a0  5      
  addl $0x28, %esp                      #  20    0x463a5  3      
  addq %r15, %rsp                       #  21    0x463a8  3      
  popq %r11                             #  22    0x463ab  3      
  xchgw %ax, %ax                        #  23    0x463ae  3      
  andl $0xffffffe0, %r11d               #  24    0x463b1  7      
  addq %r15, %r11                       #  25    0x463b8  3      
  jmpq %r11                             #  26    0x463bb  3      
  nop                                   #  27    0x463be  1      
  nop                                   #  28    0x463bf  1      
.L_463e0:                               #        0x463c0  0      
  movl %ebx, %ebx                       #  29    0x463c0  2      
  movl (%r15,%rbx,1), %edi              #  30    0x463c2  4      
  leal -0xc(%rdi), %edx                 #  31    0x463c6  3      
  movl %edx, %edx                       #  32    0x463c9  2      
  movl (%r15,%rdx,1), %eax              #  33    0x463cb  4      
  movl %eax, %ecx                       #  34    0x463cf  2      
  negl %ecx                             #  35    0x463d1  2      
  addl $0x3ffffffc, %ecx                #  36    0x463d3  6      
  cmpl %ecx, %esi                       #  37    0x463d9  2      
  nop                                   #  38    0x463db  1      
  ja .L_46500                           #  39    0x463dc  6      
  leal (%r13,%rax,1), %r12d             #  40    0x463e2  5      
  movl %edx, %edx                       #  41    0x463e7  2      
  cmpl 0x4(%r15,%rdx,1), %r12d          #  42    0x463e9  5      
  ja .L_46440                           #  43    0x463ee  6      
  movl %edx, %edx                       #  44    0x463f4  2      
  movl 0x8(%r15,%rdx,1), %edx           #  45    0x463f6  5      
  testl %edx, %edx                      #  46    0x463fb  2      
  nop                                   #  47    0x463fd  1      
  jle .L_46480                          #  48    0x463fe  6      
  nop                                   #  49    0x46404  1      
  nop                                   #  50    0x46405  1      
.L_46440:                               #        0x46406  0      
  movl %ebx, %edi                       #  51    0x46406  2      
  movl %r12d, %esi                      #  52    0x46408  3      
  nop                                   #  53    0x4640b  1      
  nop                                   #  54    0x4640c  1      
  callq ._ZNSs7reserveEj                #  55    0x4640d  5      
  movl %ebx, %ebx                       #  56    0x46412  2      
  movl (%r15,%rbx,1), %edi              #  57    0x46414  4      
  leal -0xc(%rdi), %eax                 #  58    0x46418  3      
  movl %eax, %eax                       #  59    0x4641b  2      
  movl (%r15,%rax,1), %eax              #  60    0x4641d  4      
  xchgw %ax, %ax                        #  61    0x46421  3      
  nop                                   #  62    0x46424  1      
.L_46480:                               #        0x46425  0      
  cmpl $0x1, %r13d                      #  63    0x46425  4      
  leal (%rax,%rdi,1), %edi              #  64    0x46429  3      
  je .L_464e0                           #  65    0x4642c  6      
  movsbl %r14b, %esi                    #  66    0x46432  4      
  movl %r13d, %edx                      #  67    0x46436  3      
  nop                                   #  68    0x46439  1      
  callq .memset                         #  69    0x4643a  5      
.L_464a0:                               #        0x4643f  0      
  movl %ebx, %ebx                       #  70    0x4643f  2      
  movl (%r15,%rbx,1), %eax              #  71    0x46441  4      
  subl $0xc, %eax                       #  72    0x46445  3      
  movl %eax, %eax                       #  73    0x46448  2      
  movl %r12d, (%r15,%rax,1)             #  74    0x4644a  4      
  addl %eax, %r12d                      #  75    0x4644e  3      
  movl %eax, %eax                       #  76    0x46451  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  77    0x46453  9      
  nop                                   #  78    0x4645c  1      
  movl %r12d, %r12d                     #  79    0x4645d  3      
  movb $0x0, 0xc(%r15,%r12,1)           #  80    0x46460  6      
  jmpq .L_463a0                         #  81    0x46466  5      
  nop                                   #  82    0x4646b  1      
  nop                                   #  83    0x4646c  1      
.L_464e0:                               #        0x4646d  0      
  movl %edi, %edi                       #  84    0x4646d  2      
  movb %r14b, (%r15,%rdi,1)             #  85    0x4646f  4      
  jmpq .L_464a0                         #  86    0x46473  5      
  nop                                   #  87    0x46478  1      
  nop                                   #  88    0x46479  1      
.L_46500:                               #        0x4647a  0      
  movl $0x100209dd, %edi                #  89    0x4647a  5      
  nop                                   #  90    0x4647f  1      
  nop                                   #  91    0x46480  1      
  callq ._ZSt20__throw_length_errorPKc  #  92    0x46481  5      
                                                                 
.size _ZNSs6appendEjc, .-_ZNSs6appendEjc

