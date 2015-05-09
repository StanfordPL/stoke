  .text
  .globl _ZNSs6insertEjPKcj
  .type _ZNSs6insertEjPKcj, @function

#! file-offset 0x49560
#! rip-offset  0x49560
#! capacity    704 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6insertEjPKcj:                    #        0x49560  0      
  movq %rbx, -0x20(%rsp)                #  1     0x49560  5      
  movl %edi, %ebx                       #  2     0x49565  2      
  movq %r12, -0x18(%rsp)                #  3     0x49567  5      
  movq %r13, -0x10(%rsp)                #  4     0x4956c  5      
  movq %r14, -0x8(%rsp)                 #  5     0x49571  5      
  subl $0x28, %esp                      #  6     0x49576  3      
  addq %r15, %rsp                       #  7     0x49579  3      
  nop                                   #  8     0x4957c  1      
  movl %ebx, %ebx                       #  9     0x4957d  2      
  movl (%r15,%rbx,1), %r14d             #  10    0x4957f  4      
  movl %ecx, %r12d                      #  11    0x49583  3      
  movl %edx, %ecx                       #  12    0x49586  2      
  movl %esi, %r13d                      #  13    0x49588  3      
  leal -0xc(%r14), %edx                 #  14    0x4958b  4      
  movl %edx, %edx                       #  15    0x4958f  2      
  movl (%r15,%rdx,1), %eax              #  16    0x49591  4      
  cmpl %eax, %esi                       #  17    0x49595  2      
  ja .L_49800                           #  18    0x49597  6      
  movl %eax, %esi                       #  19    0x4959d  2      
  negl %esi                             #  20    0x4959f  2      
  addl $0x3ffffffc, %esi                #  21    0x495a1  6      
  cmpl %esi, %r12d                      #  22    0x495a7  3      
  ja .L_497e0                           #  23    0x495aa  6      
  cmpl %r14d, %ecx                      #  24    0x495b0  3      
  jb .L_495e0                           #  25    0x495b3  6      
  addl %r14d, %eax                      #  26    0x495b9  3      
  cmpl %ecx, %eax                       #  27    0x495bc  2      
  nop                                   #  28    0x495be  1      
  jb .L_495e0                           #  29    0x495bf  6      
  movl %edx, %edx                       #  30    0x495c5  2      
  movl 0x8(%r15,%rdx,1), %r8d           #  31    0x495c7  5      
  testl %r8d, %r8d                      #  32    0x495cc  3      
  jle .L_49620                          #  33    0x495cf  6      
  nop                                   #  34    0x495d5  1      
  nop                                   #  35    0x495d6  1      
.L_495e0:                               #        0x495d7  0      
  movl %r12d, %r8d                      #  36    0x495d7  3      
  movl %r13d, %esi                      #  37    0x495da  3      
  movl %ebx, %edi                       #  38    0x495dd  2      
  movq 0x10(%rsp), %r12                 #  39    0x495df  5      
  movq 0x8(%rsp), %rbx                  #  40    0x495e4  5      
  xorl %edx, %edx                       #  41    0x495e9  2      
  movq 0x18(%rsp), %r13                 #  42    0x495eb  5      
  movq 0x20(%rsp), %r14                 #  43    0x495f0  5      
  xchgw %ax, %ax                        #  44    0x495f5  3      
  addl $0x28, %esp                      #  45    0x495f8  3      
  addq %r15, %rsp                       #  46    0x495fb  3      
  jmpq ._ZNSs15_M_replace_safeEjjPKcj   #  47    0x495fe  5      
  nop                                   #  48    0x49603  1      
  nop                                   #  49    0x49604  1      
.L_49620:                               #        0x49605  0      
  subl %r14d, %ecx                      #  50    0x49605  3      
  movl %r13d, %esi                      #  51    0x49608  3      
  xorl %edx, %edx                       #  52    0x4960b  2      
  movl %ecx, %r14d                      #  53    0x4960d  3      
  movl %ebx, %edi                       #  54    0x49610  2      
  movl %r12d, %ecx                      #  55    0x49612  3      
  nop                                   #  56    0x49615  1      
  callq ._ZNSs9_M_mutateEjjj            #  57    0x49616  5      
  movl %ebx, %ebx                       #  58    0x4961b  2      
  movl (%r15,%rbx,1), %eax              #  59    0x4961d  4      
  leal (%r14,%rax,1), %esi              #  60    0x49621  4      
  addl %eax, %r13d                      #  61    0x49625  3      
  leal (%r12,%rsi,1), %eax              #  62    0x49628  4      
  cmpl %eax, %r13d                      #  63    0x4962c  3      
  jae .L_49720                          #  64    0x4962f  6      
  cmpl %r13d, %esi                      #  65    0x49635  3      
  nop                                   #  66    0x49638  1      
  jae .L_496e0                          #  67    0x49639  6      
  movl %r13d, %r14d                     #  68    0x4963f  3      
  subl %esi, %r14d                      #  69    0x49642  3      
  cmpl $0x1, %r14d                      #  70    0x49645  4      
  je .L_49780                           #  71    0x49649  6      
  movl %r14d, %edx                      #  72    0x4964f  3      
  movl %r13d, %edi                      #  73    0x49652  3      
  nop                                   #  74    0x49655  1      
  callq .memcpy                         #  75    0x49656  5      
.L_49680:                               #        0x4965b  0      
  movl %r12d, %edx                      #  76    0x4965b  3      
  leal (%r12,%r13,1), %esi              #  77    0x4965e  4      
  leal (%r14,%r13,1), %edi              #  78    0x49662  4      
  subl %r14d, %edx                      #  79    0x49666  3      
  cmpl $0x1, %edx                       #  80    0x49669  3      
  je .L_49760                           #  81    0x4966c  6      
  nop                                   #  82    0x49672  1      
  callq .memcpy                         #  83    0x49673  5      
.L_496a0:                               #        0x49678  0      
  movl %ebx, %eax                       #  84    0x49678  2      
  movq 0x10(%rsp), %r12                 #  85    0x4967a  5      
  movq 0x8(%rsp), %rbx                  #  86    0x4967f  5      
  movq 0x18(%rsp), %r13                 #  87    0x49684  5      
  movq 0x20(%rsp), %r14                 #  88    0x49689  5      
  addl $0x28, %esp                      #  89    0x4968e  3      
  addq %r15, %rsp                       #  90    0x49691  3      
  popq %r11                             #  91    0x49694  3      
  xchgw %ax, %ax                        #  92    0x49697  3      
  andl $0xffffffe0, %r11d               #  93    0x4969a  7      
  addq %r15, %r11                       #  94    0x496a1  3      
  jmpq %r11                             #  95    0x496a4  3      
  nop                                   #  96    0x496a7  1      
  nop                                   #  97    0x496a8  1      
.L_496e0:                               #        0x496a9  0      
  cmpl $0x1, %r12d                      #  98    0x496a9  4      
  je .L_497a0                           #  99    0x496ad  6      
  movl %r12d, %edx                      #  100   0x496b3  3      
  movl %eax, %esi                       #  101   0x496b6  2      
  movl %r13d, %edi                      #  102   0x496b8  3      
  nop                                   #  103   0x496bb  1      
  callq .memcpy                         #  104   0x496bc  5      
  jmpq .L_496a0                         #  105   0x496c1  5      
  nop                                   #  106   0x496c6  1      
  nop                                   #  107   0x496c7  1      
.L_49720:                               #        0x496c8  0      
  cmpl $0x1, %r12d                      #  108   0x496c8  4      
  je .L_497c0                           #  109   0x496cc  6      
  movl %r12d, %edx                      #  110   0x496d2  3      
  movl %r13d, %edi                      #  111   0x496d5  3      
  nop                                   #  112   0x496d8  1      
  callq .memcpy                         #  113   0x496d9  5      
  jmpq .L_496a0                         #  114   0x496de  5      
  nop                                   #  115   0x496e3  1      
  nop                                   #  116   0x496e4  1      
.L_49760:                               #        0x496e5  0      
  movl %esi, %esi                       #  117   0x496e5  2      
  movzbl (%r15,%rsi,1), %eax            #  118   0x496e7  5      
  movl %edi, %edi                       #  119   0x496ec  2      
  movb %al, (%r15,%rdi,1)               #  120   0x496ee  4      
  jmpq .L_496a0                         #  121   0x496f2  5      
  nop                                   #  122   0x496f7  1      
.L_49780:                               #        0x496f8  0      
  movl %esi, %esi                       #  123   0x496f8  2      
  movzbl (%r15,%rsi,1), %eax            #  124   0x496fa  5      
  movl %r13d, %r13d                     #  125   0x496ff  3      
  movb %al, (%r15,%r13,1)               #  126   0x49702  4      
  jmpq .L_49680                         #  127   0x49706  5      
  nop                                   #  128   0x4970b  1      
.L_497a0:                               #        0x4970c  0      
  movl %eax, %eax                       #  129   0x4970c  2      
  movzbl (%r15,%rax,1), %eax            #  130   0x4970e  5      
  movl %r13d, %r13d                     #  131   0x49713  3      
  movb %al, (%r15,%r13,1)               #  132   0x49716  4      
  jmpq .L_496a0                         #  133   0x4971a  5      
  nop                                   #  134   0x4971f  1      
.L_497c0:                               #        0x49720  0      
  movl %esi, %esi                       #  135   0x49720  2      
  movzbl (%r15,%rsi,1), %eax            #  136   0x49722  5      
  movl %r13d, %r13d                     #  137   0x49727  3      
  movb %al, (%r15,%r13,1)               #  138   0x4972a  4      
  jmpq .L_496a0                         #  139   0x4972e  5      
  nop                                   #  140   0x49733  1      
.L_497e0:                               #        0x49734  0      
  movl $0x10020a6a, %edi                #  141   0x49734  5      
  nop                                   #  142   0x49739  1      
  nop                                   #  143   0x4973a  1      
  callq ._ZSt20__throw_length_errorPKc  #  144   0x4973b  5      
.L_49800:                               #        0x49740  0      
  movl $0x10020a6a, %edi                #  145   0x49740  5      
  nop                                   #  146   0x49745  1      
  nop                                   #  147   0x49746  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  148   0x49747  5      
                                                                 
.size _ZNSs6insertEjPKcj, .-_ZNSs6insertEjPKcj

