  .text
  .globl _ZNSs6insertEjPKcj
  .type _ZNSs6insertEjPKcj, @function

#! file-offset 0x49600
#! rip-offset  0x49600
#! capacity    704 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6insertEjPKcj:                    #        0x49600  0      
  movq %rbx, -0x20(%rsp)                #  1     0x49600  5      
  movl %edi, %ebx                       #  2     0x49605  2      
  movq %r12, -0x18(%rsp)                #  3     0x49607  5      
  movq %r13, -0x10(%rsp)                #  4     0x4960c  5      
  movq %r14, -0x8(%rsp)                 #  5     0x49611  5      
  subl $0x28, %esp                      #  6     0x49616  3      
  addq %r15, %rsp                       #  7     0x49619  3      
  nop                                   #  8     0x4961c  1      
  movl %ebx, %ebx                       #  9     0x4961d  2      
  movl (%r15,%rbx,1), %r14d             #  10    0x4961f  4      
  movl %ecx, %r12d                      #  11    0x49623  3      
  movl %edx, %ecx                       #  12    0x49626  2      
  movl %esi, %r13d                      #  13    0x49628  3      
  leal -0xc(%r14), %edx                 #  14    0x4962b  4      
  movl %edx, %edx                       #  15    0x4962f  2      
  movl (%r15,%rdx,1), %eax              #  16    0x49631  4      
  cmpl %eax, %esi                       #  17    0x49635  2      
  ja .L_498a0                           #  18    0x49637  6      
  movl %eax, %esi                       #  19    0x4963d  2      
  negl %esi                             #  20    0x4963f  2      
  addl $0x3ffffffc, %esi                #  21    0x49641  6      
  cmpl %esi, %r12d                      #  22    0x49647  3      
  ja .L_49880                           #  23    0x4964a  6      
  cmpl %r14d, %ecx                      #  24    0x49650  3      
  jb .L_49680                           #  25    0x49653  6      
  addl %r14d, %eax                      #  26    0x49659  3      
  cmpl %ecx, %eax                       #  27    0x4965c  2      
  nop                                   #  28    0x4965e  1      
  jb .L_49680                           #  29    0x4965f  6      
  movl %edx, %edx                       #  30    0x49665  2      
  movl 0x8(%r15,%rdx,1), %r8d           #  31    0x49667  5      
  testl %r8d, %r8d                      #  32    0x4966c  3      
  jle .L_496c0                          #  33    0x4966f  6      
  nop                                   #  34    0x49675  1      
  nop                                   #  35    0x49676  1      
.L_49680:                               #        0x49677  0      
  movl %r12d, %r8d                      #  36    0x49677  3      
  movl %r13d, %esi                      #  37    0x4967a  3      
  movl %ebx, %edi                       #  38    0x4967d  2      
  movq 0x10(%rsp), %r12                 #  39    0x4967f  5      
  movq 0x8(%rsp), %rbx                  #  40    0x49684  5      
  xorl %edx, %edx                       #  41    0x49689  2      
  movq 0x18(%rsp), %r13                 #  42    0x4968b  5      
  movq 0x20(%rsp), %r14                 #  43    0x49690  5      
  xchgw %ax, %ax                        #  44    0x49695  3      
  addl $0x28, %esp                      #  45    0x49698  3      
  addq %r15, %rsp                       #  46    0x4969b  3      
  jmpq ._ZNSs15_M_replace_safeEjjPKcj   #  47    0x4969e  5      
  nop                                   #  48    0x496a3  1      
  nop                                   #  49    0x496a4  1      
.L_496c0:                               #        0x496a5  0      
  subl %r14d, %ecx                      #  50    0x496a5  3      
  movl %r13d, %esi                      #  51    0x496a8  3      
  xorl %edx, %edx                       #  52    0x496ab  2      
  movl %ecx, %r14d                      #  53    0x496ad  3      
  movl %ebx, %edi                       #  54    0x496b0  2      
  movl %r12d, %ecx                      #  55    0x496b2  3      
  nop                                   #  56    0x496b5  1      
  callq ._ZNSs9_M_mutateEjjj            #  57    0x496b6  5      
  movl %ebx, %ebx                       #  58    0x496bb  2      
  movl (%r15,%rbx,1), %eax              #  59    0x496bd  4      
  leal (%r14,%rax,1), %esi              #  60    0x496c1  4      
  addl %eax, %r13d                      #  61    0x496c5  3      
  leal (%r12,%rsi,1), %eax              #  62    0x496c8  4      
  cmpl %eax, %r13d                      #  63    0x496cc  3      
  jae .L_497c0                          #  64    0x496cf  6      
  cmpl %r13d, %esi                      #  65    0x496d5  3      
  nop                                   #  66    0x496d8  1      
  jae .L_49780                          #  67    0x496d9  6      
  movl %r13d, %r14d                     #  68    0x496df  3      
  subl %esi, %r14d                      #  69    0x496e2  3      
  cmpl $0x1, %r14d                      #  70    0x496e5  4      
  je .L_49820                           #  71    0x496e9  6      
  movl %r14d, %edx                      #  72    0x496ef  3      
  movl %r13d, %edi                      #  73    0x496f2  3      
  nop                                   #  74    0x496f5  1      
  callq .memcpy                         #  75    0x496f6  5      
.L_49720:                               #        0x496fb  0      
  movl %r12d, %edx                      #  76    0x496fb  3      
  leal (%r12,%r13,1), %esi              #  77    0x496fe  4      
  leal (%r14,%r13,1), %edi              #  78    0x49702  4      
  subl %r14d, %edx                      #  79    0x49706  3      
  cmpl $0x1, %edx                       #  80    0x49709  3      
  je .L_49800                           #  81    0x4970c  6      
  nop                                   #  82    0x49712  1      
  callq .memcpy                         #  83    0x49713  5      
.L_49740:                               #        0x49718  0      
  movl %ebx, %eax                       #  84    0x49718  2      
  movq 0x10(%rsp), %r12                 #  85    0x4971a  5      
  movq 0x8(%rsp), %rbx                  #  86    0x4971f  5      
  movq 0x18(%rsp), %r13                 #  87    0x49724  5      
  movq 0x20(%rsp), %r14                 #  88    0x49729  5      
  addl $0x28, %esp                      #  89    0x4972e  3      
  addq %r15, %rsp                       #  90    0x49731  3      
  popq %r11                             #  91    0x49734  3      
  xchgw %ax, %ax                        #  92    0x49737  3      
  andl $0xffffffe0, %r11d               #  93    0x4973a  7      
  addq %r15, %r11                       #  94    0x49741  3      
  jmpq %r11                             #  95    0x49744  3      
  nop                                   #  96    0x49747  1      
  nop                                   #  97    0x49748  1      
.L_49780:                               #        0x49749  0      
  cmpl $0x1, %r12d                      #  98    0x49749  4      
  je .L_49840                           #  99    0x4974d  6      
  movl %r12d, %edx                      #  100   0x49753  3      
  movl %eax, %esi                       #  101   0x49756  2      
  movl %r13d, %edi                      #  102   0x49758  3      
  nop                                   #  103   0x4975b  1      
  callq .memcpy                         #  104   0x4975c  5      
  jmpq .L_49740                         #  105   0x49761  5      
  nop                                   #  106   0x49766  1      
  nop                                   #  107   0x49767  1      
.L_497c0:                               #        0x49768  0      
  cmpl $0x1, %r12d                      #  108   0x49768  4      
  je .L_49860                           #  109   0x4976c  6      
  movl %r12d, %edx                      #  110   0x49772  3      
  movl %r13d, %edi                      #  111   0x49775  3      
  nop                                   #  112   0x49778  1      
  callq .memcpy                         #  113   0x49779  5      
  jmpq .L_49740                         #  114   0x4977e  5      
  nop                                   #  115   0x49783  1      
  nop                                   #  116   0x49784  1      
.L_49800:                               #        0x49785  0      
  movl %esi, %esi                       #  117   0x49785  2      
  movzbl (%r15,%rsi,1), %eax            #  118   0x49787  5      
  movl %edi, %edi                       #  119   0x4978c  2      
  movb %al, (%r15,%rdi,1)               #  120   0x4978e  4      
  jmpq .L_49740                         #  121   0x49792  5      
  nop                                   #  122   0x49797  1      
.L_49820:                               #        0x49798  0      
  movl %esi, %esi                       #  123   0x49798  2      
  movzbl (%r15,%rsi,1), %eax            #  124   0x4979a  5      
  movl %r13d, %r13d                     #  125   0x4979f  3      
  movb %al, (%r15,%r13,1)               #  126   0x497a2  4      
  jmpq .L_49720                         #  127   0x497a6  5      
  nop                                   #  128   0x497ab  1      
.L_49840:                               #        0x497ac  0      
  movl %eax, %eax                       #  129   0x497ac  2      
  movzbl (%r15,%rax,1), %eax            #  130   0x497ae  5      
  movl %r13d, %r13d                     #  131   0x497b3  3      
  movb %al, (%r15,%r13,1)               #  132   0x497b6  4      
  jmpq .L_49740                         #  133   0x497ba  5      
  nop                                   #  134   0x497bf  1      
.L_49860:                               #        0x497c0  0      
  movl %esi, %esi                       #  135   0x497c0  2      
  movzbl (%r15,%rsi,1), %eax            #  136   0x497c2  5      
  movl %r13d, %r13d                     #  137   0x497c7  3      
  movb %al, (%r15,%r13,1)               #  138   0x497ca  4      
  jmpq .L_49740                         #  139   0x497ce  5      
  nop                                   #  140   0x497d3  1      
.L_49880:                               #        0x497d4  0      
  movl $0x10020a6a, %edi                #  141   0x497d4  5      
  nop                                   #  142   0x497d9  1      
  nop                                   #  143   0x497da  1      
  callq ._ZSt20__throw_length_errorPKc  #  144   0x497db  5      
.L_498a0:                               #        0x497e0  0      
  movl $0x10020a6a, %edi                #  145   0x497e0  5      
  nop                                   #  146   0x497e5  1      
  nop                                   #  147   0x497e6  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  148   0x497e7  5      
                                                                 
.size _ZNSs6insertEjPKcj, .-_ZNSs6insertEjPKcj

