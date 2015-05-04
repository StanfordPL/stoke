  .text
  .globl __frame_state_for
  .type __frame_state_for, @function

#! file-offset 0x5d860
#! rip-offset  0x5d860
#! capacity    480 bytes

# Text                            #  Line  RIP      Bytes  
.__frame_state_for:               #        0x5d860  0      
  pushq %r12                      #  1     0x5d860  3      
  xorl %eax, %eax                 #  2     0x5d863  2      
  movl %edi, %r8d                 #  3     0x5d865  3      
  movl $0x12, %ecx                #  4     0x5d868  5      
  addl $0x1, %r8d                 #  5     0x5d86d  4      
  pushq %rbx                      #  6     0x5d871  2      
  movl %esi, %ebx                 #  7     0x5d873  2      
  subl $0x208, %esp               #  8     0x5d875  6      
  addq %r15, %rsp                 #  9     0x5d87b  3      
  nop                             #  10    0x5d87e  1      
  leal 0x170(%rsp), %edx          #  11    0x5d87f  7      
  movl %esp, %esi                 #  12    0x5d886  2      
  movl %esp, %r12d                #  13    0x5d888  3      
  movq %rdx, %rdi                 #  14    0x5d88b  3      
  movl %edi, %edi                 #  15    0x5d88e  2      
  leaq (%r15,%rdi,1), %rdi        #  16    0x5d890  4      
  rep stosq %es:(%rdi)            #  17    0x5d894  4      
  movl %edi, %edi                 #  18    0x5d898  2      
  nop                             #  19    0x5d89a  1      
  movq $0x4000000000000000, %rcx  #  20    0x5d89b  10     
  movl %edx, %edi                 #  21    0x5d8a5  2      
  movl %r8d, 0x1bc(%rsp)          #  22    0x5d8a7  8      
  movq %rcx, 0x1d0(%rsp)          #  23    0x5d8af  8      
  nop                             #  24    0x5d8b7  1      
  nop                             #  25    0x5d8b8  1      
  nop                             #  26    0x5d8b9  1      
  callq .uw_frame_state_for       #  27    0x5d8ba  5      
  testl %eax, %eax                #  28    0x5d8bf  2      
  je .L_5d940                     #  29    0x5d8c1  6      
  nop                             #  30    0x5d8c7  1      
  nop                             #  31    0x5d8c8  1      
.L_5d900:                         #        0x5d8c9  0      
  xorl %ebx, %ebx                 #  32    0x5d8c9  2      
  nop                             #  33    0x5d8cb  1      
  nop                             #  34    0x5d8cc  1      
.L_5d920:                         #        0x5d8cd  0      
  addl $0x208, %esp               #  35    0x5d8cd  6      
  addq %r15, %rsp                 #  36    0x5d8d3  3      
  movl %ebx, %eax                 #  37    0x5d8d6  2      
  popq %rbx                       #  38    0x5d8d8  2      
  popq %r12                       #  39    0x5d8da  3      
  popq %r11                       #  40    0x5d8dd  3      
  andl $0xffffffe0, %r11d         #  41    0x5d8e0  7      
  addq %r15, %r11                 #  42    0x5d8e7  3      
  jmpq %r11                       #  43    0x5d8ea  3      
  nop                             #  44    0x5d8ed  1      
.L_5d940:                         #        0x5d8ee  0      
  cmpl $0x2, 0x13c(%rsp)          #  45    0x5d8ee  8      
  je .L_5d900                     #  46    0x5d8f6  6      
  leal 0x8(%rsp), %eax            #  47    0x5d8fc  4      
  movl %ebx, %edx                 #  48    0x5d900  2      
  addl $0x128, %r12d              #  49    0x5d902  7      
  movl %ebx, %ecx                 #  50    0x5d909  2      
  jmpq .L_5d9a0                   #  51    0x5d90b  5      
  nop                             #  52    0x5d910  1      
.L_5d960:                         #        0x5d911  0      
  cmpb $0x2, %sil                 #  53    0x5d911  4      
  je .L_5d9c0                     #  54    0x5d915  6      
  movl %ecx, %esi                 #  55    0x5d91b  2      
  movl %esi, %esi                 #  56    0x5d91d  2      
  movl $0x0, 0x10(%r15,%rsi,1)    #  57    0x5d91f  9      
  nop                             #  58    0x5d928  1      
.L_5d980:                         #        0x5d929  0      
  addl $0x10, %eax                #  59    0x5d929  3      
  addl $0x1, %edx                 #  60    0x5d92c  3      
  addl $0x4, %ecx                 #  61    0x5d92f  3      
  cmpl %r12d, %eax                #  62    0x5d932  3      
  je .L_5d9e0                     #  63    0x5d935  6      
  nop                             #  64    0x5d93b  1      
  nop                             #  65    0x5d93c  1      
.L_5d9a0:                         #        0x5d93d  0      
  movl %eax, %esi                 #  66    0x5d93d  2      
  movl %edx, %r8d                 #  67    0x5d93f  3      
  movl %esi, %esi                 #  68    0x5d942  2      
  movl (%r15,%rsi,1), %esi        #  69    0x5d944  4      
  cmpb $0x1, %sil                 #  70    0x5d948  4      
  movl %r8d, %r8d                 #  71    0x5d94c  3      
  movb %sil, 0x5c(%r15,%r8,1)     #  72    0x5d94f  5      
  jne .L_5d960                    #  73    0x5d954  6      
  nop                             #  74    0x5d95a  1      
.L_5d9c0:                         #        0x5d95b  0      
  leal -0x8(%rax), %edi           #  75    0x5d95b  3      
  movl %ecx, %esi                 #  76    0x5d95e  2      
  movl %edi, %edi                 #  77    0x5d960  2      
  movq (%r15,%rdi,1), %rdi        #  78    0x5d962  4      
  movl %esi, %esi                 #  79    0x5d966  2      
  movl %edi, 0x10(%r15,%rsi,1)    #  80    0x5d968  5      
  jmpq .L_5d980                   #  81    0x5d96d  5      
  nop                             #  82    0x5d972  1      
.L_5d9e0:                         #        0x5d973  0      
  movq 0x128(%rsp), %rax          #  83    0x5d973  8      
  movl %ebx, %ebx                 #  84    0x5d97b  2      
  movl %eax, 0x8(%r15,%rbx,1)     #  85    0x5d97d  5      
  movq 0x130(%rsp), %rax          #  86    0x5d982  8      
  movl %ebx, %ebx                 #  87    0x5d98a  2      
  movw %ax, 0x58(%r15,%rbx,1)     #  88    0x5d98c  6      
  nop                             #  89    0x5d992  1      
  movq 0x158(%rsp), %rax          #  90    0x5d993  8      
  movl %ebx, %ebx                 #  91    0x5d99b  2      
  movw %ax, 0x5a(%r15,%rbx,1)     #  92    0x5d99d  6      
  movq 0x1e0(%rsp), %rax          #  93    0x5d9a3  8      
  movl %ebx, %ebx                 #  94    0x5d9ab  2      
  movl %eax, 0xc(%r15,%rbx,1)     #  95    0x5d9ad  5      
  nop                             #  96    0x5d9b2  1      
  movl 0x164(%rsp), %eax          #  97    0x5d9b3  7      
  movl %ebx, %ebx                 #  98    0x5d9ba  2      
  movl %eax, 0x4(%r15,%rbx,1)     #  99    0x5d9bc  5      
  jmpq .L_5d920                   #  100   0x5d9c1  5      
  nop                             #  101   0x5d9c6  1      
                                                           
.size __frame_state_for, .-__frame_state_for

