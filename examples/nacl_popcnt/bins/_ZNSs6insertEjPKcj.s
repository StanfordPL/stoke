  .text
  .globl _ZNSs6insertEjPKcj
  .type _ZNSs6insertEjPKcj, @function

#! file-offset 0x49580
#! rip-offset  0x49580
#! capacity    704 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6insertEjPKcj:                    #        0x49580  0      
  movq %rbx, -0x20(%rsp)                #  1     0x49580  5      
  movl %edi, %ebx                       #  2     0x49585  2      
  movq %r12, -0x18(%rsp)                #  3     0x49587  5      
  movq %r13, -0x10(%rsp)                #  4     0x4958c  5      
  movq %r14, -0x8(%rsp)                 #  5     0x49591  5      
  subl $0x28, %esp                      #  6     0x49596  3      
  addq %r15, %rsp                       #  7     0x49599  3      
  nop                                   #  8     0x4959c  1      
  movl %ebx, %ebx                       #  9     0x4959d  2      
  movl (%r15,%rbx,1), %r14d             #  10    0x4959f  4      
  movl %ecx, %r12d                      #  11    0x495a3  3      
  movl %edx, %ecx                       #  12    0x495a6  2      
  movl %esi, %r13d                      #  13    0x495a8  3      
  leal -0xc(%r14), %edx                 #  14    0x495ab  4      
  movl %edx, %edx                       #  15    0x495af  2      
  movl (%r15,%rdx,1), %eax              #  16    0x495b1  4      
  cmpl %eax, %esi                       #  17    0x495b5  2      
  ja .L_49820                           #  18    0x495b7  6      
  movl %eax, %esi                       #  19    0x495bd  2      
  negl %esi                             #  20    0x495bf  2      
  addl $0x3ffffffc, %esi                #  21    0x495c1  6      
  cmpl %esi, %r12d                      #  22    0x495c7  3      
  ja .L_49800                           #  23    0x495ca  6      
  cmpl %r14d, %ecx                      #  24    0x495d0  3      
  jb .L_49600                           #  25    0x495d3  6      
  addl %r14d, %eax                      #  26    0x495d9  3      
  cmpl %ecx, %eax                       #  27    0x495dc  2      
  nop                                   #  28    0x495de  1      
  jb .L_49600                           #  29    0x495df  6      
  movl %edx, %edx                       #  30    0x495e5  2      
  movl 0x8(%r15,%rdx,1), %r8d           #  31    0x495e7  5      
  testl %r8d, %r8d                      #  32    0x495ec  3      
  jle .L_49640                          #  33    0x495ef  6      
  nop                                   #  34    0x495f5  1      
  nop                                   #  35    0x495f6  1      
.L_49600:                               #        0x495f7  0      
  movl %r12d, %r8d                      #  36    0x495f7  3      
  movl %r13d, %esi                      #  37    0x495fa  3      
  movl %ebx, %edi                       #  38    0x495fd  2      
  movq 0x10(%rsp), %r12                 #  39    0x495ff  5      
  movq 0x8(%rsp), %rbx                  #  40    0x49604  5      
  xorl %edx, %edx                       #  41    0x49609  2      
  movq 0x18(%rsp), %r13                 #  42    0x4960b  5      
  movq 0x20(%rsp), %r14                 #  43    0x49610  5      
  xchgw %ax, %ax                        #  44    0x49615  3      
  addl $0x28, %esp                      #  45    0x49618  3      
  addq %r15, %rsp                       #  46    0x4961b  3      
  jmpq ._ZNSs15_M_replace_safeEjjPKcj   #  47    0x4961e  5      
  nop                                   #  48    0x49623  1      
  nop                                   #  49    0x49624  1      
.L_49640:                               #        0x49625  0      
  subl %r14d, %ecx                      #  50    0x49625  3      
  movl %r13d, %esi                      #  51    0x49628  3      
  xorl %edx, %edx                       #  52    0x4962b  2      
  movl %ecx, %r14d                      #  53    0x4962d  3      
  movl %ebx, %edi                       #  54    0x49630  2      
  movl %r12d, %ecx                      #  55    0x49632  3      
  nop                                   #  56    0x49635  1      
  callq ._ZNSs9_M_mutateEjjj            #  57    0x49636  5      
  movl %ebx, %ebx                       #  58    0x4963b  2      
  movl (%r15,%rbx,1), %eax              #  59    0x4963d  4      
  leal (%r14,%rax,1), %esi              #  60    0x49641  4      
  addl %eax, %r13d                      #  61    0x49645  3      
  leal (%r12,%rsi,1), %eax              #  62    0x49648  4      
  cmpl %eax, %r13d                      #  63    0x4964c  3      
  jae .L_49740                          #  64    0x4964f  6      
  cmpl %r13d, %esi                      #  65    0x49655  3      
  nop                                   #  66    0x49658  1      
  jae .L_49700                          #  67    0x49659  6      
  movl %r13d, %r14d                     #  68    0x4965f  3      
  subl %esi, %r14d                      #  69    0x49662  3      
  cmpl $0x1, %r14d                      #  70    0x49665  4      
  je .L_497a0                           #  71    0x49669  6      
  movl %r14d, %edx                      #  72    0x4966f  3      
  movl %r13d, %edi                      #  73    0x49672  3      
  nop                                   #  74    0x49675  1      
  callq .memcpy                         #  75    0x49676  5      
.L_496a0:                               #        0x4967b  0      
  movl %r12d, %edx                      #  76    0x4967b  3      
  leal (%r12,%r13,1), %esi              #  77    0x4967e  4      
  leal (%r14,%r13,1), %edi              #  78    0x49682  4      
  subl %r14d, %edx                      #  79    0x49686  3      
  cmpl $0x1, %edx                       #  80    0x49689  3      
  je .L_49780                           #  81    0x4968c  6      
  nop                                   #  82    0x49692  1      
  callq .memcpy                         #  83    0x49693  5      
.L_496c0:                               #        0x49698  0      
  movl %ebx, %eax                       #  84    0x49698  2      
  movq 0x10(%rsp), %r12                 #  85    0x4969a  5      
  movq 0x8(%rsp), %rbx                  #  86    0x4969f  5      
  movq 0x18(%rsp), %r13                 #  87    0x496a4  5      
  movq 0x20(%rsp), %r14                 #  88    0x496a9  5      
  addl $0x28, %esp                      #  89    0x496ae  3      
  addq %r15, %rsp                       #  90    0x496b1  3      
  popq %r11                             #  91    0x496b4  3      
  xchgw %ax, %ax                        #  92    0x496b7  3      
  andl $0xffffffe0, %r11d               #  93    0x496ba  7      
  addq %r15, %r11                       #  94    0x496c1  3      
  jmpq %r11                             #  95    0x496c4  3      
  nop                                   #  96    0x496c7  1      
  nop                                   #  97    0x496c8  1      
.L_49700:                               #        0x496c9  0      
  cmpl $0x1, %r12d                      #  98    0x496c9  4      
  je .L_497c0                           #  99    0x496cd  6      
  movl %r12d, %edx                      #  100   0x496d3  3      
  movl %eax, %esi                       #  101   0x496d6  2      
  movl %r13d, %edi                      #  102   0x496d8  3      
  nop                                   #  103   0x496db  1      
  callq .memcpy                         #  104   0x496dc  5      
  jmpq .L_496c0                         #  105   0x496e1  5      
  nop                                   #  106   0x496e6  1      
  nop                                   #  107   0x496e7  1      
.L_49740:                               #        0x496e8  0      
  cmpl $0x1, %r12d                      #  108   0x496e8  4      
  je .L_497e0                           #  109   0x496ec  6      
  movl %r12d, %edx                      #  110   0x496f2  3      
  movl %r13d, %edi                      #  111   0x496f5  3      
  nop                                   #  112   0x496f8  1      
  callq .memcpy                         #  113   0x496f9  5      
  jmpq .L_496c0                         #  114   0x496fe  5      
  nop                                   #  115   0x49703  1      
  nop                                   #  116   0x49704  1      
.L_49780:                               #        0x49705  0      
  movl %esi, %esi                       #  117   0x49705  2      
  movzbl (%r15,%rsi,1), %eax            #  118   0x49707  5      
  movl %edi, %edi                       #  119   0x4970c  2      
  movb %al, (%r15,%rdi,1)               #  120   0x4970e  4      
  jmpq .L_496c0                         #  121   0x49712  5      
  nop                                   #  122   0x49717  1      
.L_497a0:                               #        0x49718  0      
  movl %esi, %esi                       #  123   0x49718  2      
  movzbl (%r15,%rsi,1), %eax            #  124   0x4971a  5      
  movl %r13d, %r13d                     #  125   0x4971f  3      
  movb %al, (%r15,%r13,1)               #  126   0x49722  4      
  jmpq .L_496a0                         #  127   0x49726  5      
  nop                                   #  128   0x4972b  1      
.L_497c0:                               #        0x4972c  0      
  movl %eax, %eax                       #  129   0x4972c  2      
  movzbl (%r15,%rax,1), %eax            #  130   0x4972e  5      
  movl %r13d, %r13d                     #  131   0x49733  3      
  movb %al, (%r15,%r13,1)               #  132   0x49736  4      
  jmpq .L_496c0                         #  133   0x4973a  5      
  nop                                   #  134   0x4973f  1      
.L_497e0:                               #        0x49740  0      
  movl %esi, %esi                       #  135   0x49740  2      
  movzbl (%r15,%rsi,1), %eax            #  136   0x49742  5      
  movl %r13d, %r13d                     #  137   0x49747  3      
  movb %al, (%r15,%r13,1)               #  138   0x4974a  4      
  jmpq .L_496c0                         #  139   0x4974e  5      
  nop                                   #  140   0x49753  1      
.L_49800:                               #        0x49754  0      
  movl $0x10020a6a, %edi                #  141   0x49754  5      
  nop                                   #  142   0x49759  1      
  nop                                   #  143   0x4975a  1      
  callq ._ZSt20__throw_length_errorPKc  #  144   0x4975b  5      
.L_49820:                               #        0x49760  0      
  movl $0x10020a6a, %edi                #  145   0x49760  5      
  nop                                   #  146   0x49765  1      
  nop                                   #  147   0x49766  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  148   0x49767  5      
                                                                 
.size _ZNSs6insertEjPKcj, .-_ZNSs6insertEjPKcj

