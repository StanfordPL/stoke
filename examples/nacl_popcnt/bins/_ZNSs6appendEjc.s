  .text
  .globl _ZNSs6appendEjc
  .type _ZNSs6appendEjc, @function

#! file-offset 0x462c0
#! rip-offset  0x462c0
#! capacity    448 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6appendEjc:                       #        0x462c0  0      
  movq %rbx, -0x20(%rsp)                #  1     0x462c0  5      
  movq %r13, -0x10(%rsp)                #  2     0x462c5  5      
  movl %edi, %ebx                       #  3     0x462ca  2      
  movq %r14, -0x8(%rsp)                 #  4     0x462cc  5      
  movq %r12, -0x18(%rsp)                #  5     0x462d1  5      
  subl $0x28, %esp                      #  6     0x462d6  3      
  addq %r15, %rsp                       #  7     0x462d9  3      
  testl %esi, %esi                      #  8     0x462dc  2      
  xchgw %ax, %ax                        #  9     0x462de  3      
  movl %esi, %r13d                      #  10    0x462e1  3      
  movl %edx, %r14d                      #  11    0x462e4  3      
  jne .L_46340                          #  12    0x462e7  6      
  nop                                   #  13    0x462ed  1      
  nop                                   #  14    0x462ee  1      
.L_46300:                               #        0x462ef  0      
  movl %ebx, %eax                       #  15    0x462ef  2      
  movq 0x10(%rsp), %r12                 #  16    0x462f1  5      
  movq 0x8(%rsp), %rbx                  #  17    0x462f6  5      
  movq 0x18(%rsp), %r13                 #  18    0x462fb  5      
  movq 0x20(%rsp), %r14                 #  19    0x46300  5      
  addl $0x28, %esp                      #  20    0x46305  3      
  addq %r15, %rsp                       #  21    0x46308  3      
  popq %r11                             #  22    0x4630b  3      
  xchgw %ax, %ax                        #  23    0x4630e  3      
  andl $0xffffffe0, %r11d               #  24    0x46311  7      
  addq %r15, %r11                       #  25    0x46318  3      
  jmpq %r11                             #  26    0x4631b  3      
  nop                                   #  27    0x4631e  1      
  nop                                   #  28    0x4631f  1      
.L_46340:                               #        0x46320  0      
  movl %ebx, %ebx                       #  29    0x46320  2      
  movl (%r15,%rbx,1), %edi              #  30    0x46322  4      
  leal -0xc(%rdi), %edx                 #  31    0x46326  3      
  movl %edx, %edx                       #  32    0x46329  2      
  movl (%r15,%rdx,1), %eax              #  33    0x4632b  4      
  movl %eax, %ecx                       #  34    0x4632f  2      
  negl %ecx                             #  35    0x46331  2      
  addl $0x3ffffffc, %ecx                #  36    0x46333  6      
  cmpl %ecx, %esi                       #  37    0x46339  2      
  nop                                   #  38    0x4633b  1      
  ja .L_46460                           #  39    0x4633c  6      
  leal (%r13,%rax,1), %r12d             #  40    0x46342  5      
  movl %edx, %edx                       #  41    0x46347  2      
  cmpl 0x4(%r15,%rdx,1), %r12d          #  42    0x46349  5      
  ja .L_463a0                           #  43    0x4634e  6      
  movl %edx, %edx                       #  44    0x46354  2      
  movl 0x8(%r15,%rdx,1), %edx           #  45    0x46356  5      
  testl %edx, %edx                      #  46    0x4635b  2      
  nop                                   #  47    0x4635d  1      
  jle .L_463e0                          #  48    0x4635e  6      
  nop                                   #  49    0x46364  1      
  nop                                   #  50    0x46365  1      
.L_463a0:                               #        0x46366  0      
  movl %ebx, %edi                       #  51    0x46366  2      
  movl %r12d, %esi                      #  52    0x46368  3      
  nop                                   #  53    0x4636b  1      
  nop                                   #  54    0x4636c  1      
  callq ._ZNSs7reserveEj                #  55    0x4636d  5      
  movl %ebx, %ebx                       #  56    0x46372  2      
  movl (%r15,%rbx,1), %edi              #  57    0x46374  4      
  leal -0xc(%rdi), %eax                 #  58    0x46378  3      
  movl %eax, %eax                       #  59    0x4637b  2      
  movl (%r15,%rax,1), %eax              #  60    0x4637d  4      
  xchgw %ax, %ax                        #  61    0x46381  3      
  nop                                   #  62    0x46384  1      
.L_463e0:                               #        0x46385  0      
  cmpl $0x1, %r13d                      #  63    0x46385  4      
  leal (%rax,%rdi,1), %edi              #  64    0x46389  3      
  je .L_46440                           #  65    0x4638c  6      
  movsbl %r14b, %esi                    #  66    0x46392  4      
  movl %r13d, %edx                      #  67    0x46396  3      
  nop                                   #  68    0x46399  1      
  callq .memset                         #  69    0x4639a  5      
.L_46400:                               #        0x4639f  0      
  movl %ebx, %ebx                       #  70    0x4639f  2      
  movl (%r15,%rbx,1), %eax              #  71    0x463a1  4      
  subl $0xc, %eax                       #  72    0x463a5  3      
  movl %eax, %eax                       #  73    0x463a8  2      
  movl %r12d, (%r15,%rax,1)             #  74    0x463aa  4      
  addl %eax, %r12d                      #  75    0x463ae  3      
  movl %eax, %eax                       #  76    0x463b1  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  77    0x463b3  9      
  nop                                   #  78    0x463bc  1      
  movl %r12d, %r12d                     #  79    0x463bd  3      
  movb $0x0, 0xc(%r15,%r12,1)           #  80    0x463c0  6      
  jmpq .L_46300                         #  81    0x463c6  5      
  nop                                   #  82    0x463cb  1      
  nop                                   #  83    0x463cc  1      
.L_46440:                               #        0x463cd  0      
  movl %edi, %edi                       #  84    0x463cd  2      
  movb %r14b, (%r15,%rdi,1)             #  85    0x463cf  4      
  jmpq .L_46400                         #  86    0x463d3  5      
  nop                                   #  87    0x463d8  1      
  nop                                   #  88    0x463d9  1      
.L_46460:                               #        0x463da  0      
  movl $0x100209dd, %edi                #  89    0x463da  5      
  nop                                   #  90    0x463df  1      
  nop                                   #  91    0x463e0  1      
  callq ._ZSt20__throw_length_errorPKc  #  92    0x463e1  5      
                                                                 
.size _ZNSs6appendEjc, .-_ZNSs6appendEjc

