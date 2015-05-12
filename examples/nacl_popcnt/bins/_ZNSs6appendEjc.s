  .text
  .globl _ZNSs6appendEjc
  .type _ZNSs6appendEjc, @function

#! file-offset 0x462e0
#! rip-offset  0x462e0
#! capacity    448 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6appendEjc:                       #        0x462e0  0      
  movq %rbx, -0x20(%rsp)                #  1     0x462e0  5      
  movq %r13, -0x10(%rsp)                #  2     0x462e5  5      
  movl %edi, %ebx                       #  3     0x462ea  2      
  movq %r14, -0x8(%rsp)                 #  4     0x462ec  5      
  movq %r12, -0x18(%rsp)                #  5     0x462f1  5      
  subl $0x28, %esp                      #  6     0x462f6  3      
  addq %r15, %rsp                       #  7     0x462f9  3      
  testl %esi, %esi                      #  8     0x462fc  2      
  xchgw %ax, %ax                        #  9     0x462fe  3      
  movl %esi, %r13d                      #  10    0x46301  3      
  movl %edx, %r14d                      #  11    0x46304  3      
  jne .L_46360                          #  12    0x46307  6      
  nop                                   #  13    0x4630d  1      
  nop                                   #  14    0x4630e  1      
.L_46320:                               #        0x4630f  0      
  movl %ebx, %eax                       #  15    0x4630f  2      
  movq 0x10(%rsp), %r12                 #  16    0x46311  5      
  movq 0x8(%rsp), %rbx                  #  17    0x46316  5      
  movq 0x18(%rsp), %r13                 #  18    0x4631b  5      
  movq 0x20(%rsp), %r14                 #  19    0x46320  5      
  addl $0x28, %esp                      #  20    0x46325  3      
  addq %r15, %rsp                       #  21    0x46328  3      
  popq %r11                             #  22    0x4632b  3      
  xchgw %ax, %ax                        #  23    0x4632e  3      
  andl $0xffffffe0, %r11d               #  24    0x46331  7      
  addq %r15, %r11                       #  25    0x46338  3      
  jmpq %r11                             #  26    0x4633b  3      
  nop                                   #  27    0x4633e  1      
  nop                                   #  28    0x4633f  1      
.L_46360:                               #        0x46340  0      
  movl %ebx, %ebx                       #  29    0x46340  2      
  movl (%r15,%rbx,1), %edi              #  30    0x46342  4      
  leal -0xc(%rdi), %edx                 #  31    0x46346  3      
  movl %edx, %edx                       #  32    0x46349  2      
  movl (%r15,%rdx,1), %eax              #  33    0x4634b  4      
  movl %eax, %ecx                       #  34    0x4634f  2      
  negl %ecx                             #  35    0x46351  2      
  addl $0x3ffffffc, %ecx                #  36    0x46353  6      
  cmpl %ecx, %esi                       #  37    0x46359  2      
  nop                                   #  38    0x4635b  1      
  ja .L_46480                           #  39    0x4635c  6      
  leal (%r13,%rax,1), %r12d             #  40    0x46362  5      
  movl %edx, %edx                       #  41    0x46367  2      
  cmpl 0x4(%r15,%rdx,1), %r12d          #  42    0x46369  5      
  ja .L_463c0                           #  43    0x4636e  6      
  movl %edx, %edx                       #  44    0x46374  2      
  movl 0x8(%r15,%rdx,1), %edx           #  45    0x46376  5      
  testl %edx, %edx                      #  46    0x4637b  2      
  nop                                   #  47    0x4637d  1      
  jle .L_46400                          #  48    0x4637e  6      
  nop                                   #  49    0x46384  1      
  nop                                   #  50    0x46385  1      
.L_463c0:                               #        0x46386  0      
  movl %ebx, %edi                       #  51    0x46386  2      
  movl %r12d, %esi                      #  52    0x46388  3      
  nop                                   #  53    0x4638b  1      
  nop                                   #  54    0x4638c  1      
  callq ._ZNSs7reserveEj                #  55    0x4638d  5      
  movl %ebx, %ebx                       #  56    0x46392  2      
  movl (%r15,%rbx,1), %edi              #  57    0x46394  4      
  leal -0xc(%rdi), %eax                 #  58    0x46398  3      
  movl %eax, %eax                       #  59    0x4639b  2      
  movl (%r15,%rax,1), %eax              #  60    0x4639d  4      
  xchgw %ax, %ax                        #  61    0x463a1  3      
  nop                                   #  62    0x463a4  1      
.L_46400:                               #        0x463a5  0      
  cmpl $0x1, %r13d                      #  63    0x463a5  4      
  leal (%rax,%rdi,1), %edi              #  64    0x463a9  3      
  je .L_46460                           #  65    0x463ac  6      
  movsbl %r14b, %esi                    #  66    0x463b2  4      
  movl %r13d, %edx                      #  67    0x463b6  3      
  nop                                   #  68    0x463b9  1      
  callq .memset                         #  69    0x463ba  5      
.L_46420:                               #        0x463bf  0      
  movl %ebx, %ebx                       #  70    0x463bf  2      
  movl (%r15,%rbx,1), %eax              #  71    0x463c1  4      
  subl $0xc, %eax                       #  72    0x463c5  3      
  movl %eax, %eax                       #  73    0x463c8  2      
  movl %r12d, (%r15,%rax,1)             #  74    0x463ca  4      
  addl %eax, %r12d                      #  75    0x463ce  3      
  movl %eax, %eax                       #  76    0x463d1  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  77    0x463d3  9      
  nop                                   #  78    0x463dc  1      
  movl %r12d, %r12d                     #  79    0x463dd  3      
  movb $0x0, 0xc(%r15,%r12,1)           #  80    0x463e0  6      
  jmpq .L_46320                         #  81    0x463e6  5      
  nop                                   #  82    0x463eb  1      
  nop                                   #  83    0x463ec  1      
.L_46460:                               #        0x463ed  0      
  movl %edi, %edi                       #  84    0x463ed  2      
  movb %r14b, (%r15,%rdi,1)             #  85    0x463ef  4      
  jmpq .L_46420                         #  86    0x463f3  5      
  nop                                   #  87    0x463f8  1      
  nop                                   #  88    0x463f9  1      
.L_46480:                               #        0x463fa  0      
  movl $0x100209dd, %edi                #  89    0x463fa  5      
  nop                                   #  90    0x463ff  1      
  nop                                   #  91    0x46400  1      
  callq ._ZSt20__throw_length_errorPKc  #  92    0x46401  5      
                                                                 
.size _ZNSs6appendEjc, .-_ZNSs6appendEjc

