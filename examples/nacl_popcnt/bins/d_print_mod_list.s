  .text
  .globl d_print_mod_list
  .type d_print_mod_list, @function

#! file-offset 0x54ee0
#! rip-offset  0x54ee0
#! capacity    960 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_mod_list:                #        0x54ee0  0      
  pushq %r14                      #  1     0x54ee0  3      
  movl %edx, %r14d                #  2     0x54ee3  3      
  pushq %r13                      #  3     0x54ee6  3      
  movl %esi, %r13d                #  4     0x54ee9  3      
  pushq %r12                      #  5     0x54eec  3      
  pushq %rbx                      #  6     0x54eef  2      
  movl %edi, %ebx                 #  7     0x54ef1  2      
  subl $0x8, %esp                 #  8     0x54ef3  3      
  addq %r15, %rsp                 #  9     0x54ef6  3      
  testq %r13, %r13                #  10    0x54ef9  3      
  jne .L_54fe0                    #  11    0x54efc  6      
  xchgw %ax, %ax                  #  12    0x54f02  3      
  jmpq .L_55040                   #  13    0x54f05  5      
  nop                             #  14    0x54f0a  1      
  nop                             #  15    0x54f0b  1      
.L_54f20:                         #        0x54f0c  0      
  movl %r13d, %r13d               #  16    0x54f0c  3      
  movl 0x4(%r15,%r13,1), %esi     #  17    0x54f0f  5      
  nop                             #  18    0x54f14  1      
  nop                             #  19    0x54f15  1      
.L_54f40:                         #        0x54f16  0      
  movl %r13d, %r13d               #  20    0x54f16  3      
  movl 0xc(%r15,%r13,1), %eax     #  21    0x54f19  5      
  movl %ebx, %ebx                 #  22    0x54f1e  2      
  movl 0x114(%r15,%rbx,1), %r12d  #  23    0x54f20  8      
  movl %r13d, %r13d               #  24    0x54f28  3      
  movl $0x1, 0x8(%r15,%r13,1)     #  25    0x54f2b  9      
  xchgw %ax, %ax                  #  26    0x54f34  3      
  movl %ebx, %ebx                 #  27    0x54f37  2      
  movl %eax, 0x114(%r15,%rbx,1)   #  28    0x54f39  8      
  movl %esi, %esi                 #  29    0x54f41  2      
  movl (%r15,%rsi,1), %eax        #  30    0x54f43  4      
  cmpl $0x25, %eax                #  31    0x54f47  3      
  je .L_55060                     #  32    0x54f4a  6      
  cmpl $0x26, %eax                #  33    0x54f50  3      
  nop                             #  34    0x54f53  1      
  je .L_550c0                     #  35    0x54f54  6      
  cmpl $0x2, %eax                 #  36    0x54f5a  3      
  je .L_55120                     #  37    0x54f5d  6      
  movl %ebx, %edi                 #  38    0x54f63  2      
  nop                             #  39    0x54f65  1      
  callq .d_print_mod              #  40    0x54f66  5      
  movl %ebx, %ebx                 #  41    0x54f6b  2      
  movl %r12d, 0x114(%r15,%rbx,1)  #  42    0x54f6d  8      
  nop                             #  43    0x54f75  1      
  nop                             #  44    0x54f76  1      
.L_54fc0:                         #        0x54f77  0      
  movl %r13d, %r13d               #  45    0x54f77  3      
  movl (%r15,%r13,1), %r13d       #  46    0x54f7a  4      
  testq %r13, %r13                #  47    0x54f7e  3      
  je .L_55040                     #  48    0x54f81  6      
  nop                             #  49    0x54f87  1      
  nop                             #  50    0x54f88  1      
.L_54fe0:                         #        0x54f89  0      
  movl %ebx, %ebx                 #  51    0x54f89  2      
  movl 0x11c(%r15,%rbx,1), %r10d  #  52    0x54f8b  8      
  testl %r10d, %r10d              #  53    0x54f93  3      
  jne .L_55040                    #  54    0x54f96  6      
  movl %r13d, %r13d               #  55    0x54f9c  3      
  movl 0x8(%r15,%r13,1), %r9d     #  56    0x54f9f  5      
  testl %r9d, %r9d                #  57    0x54fa4  3      
  jne .L_54fc0                    #  58    0x54fa7  6      
  testl %r14d, %r14d              #  59    0x54fad  3      
  nop                             #  60    0x54fb0  1      
  jne .L_54f20                    #  61    0x54fb1  6      
  movl %r13d, %r13d               #  62    0x54fb7  3      
  movl 0x4(%r15,%r13,1), %esi     #  63    0x54fba  5      
  movl %esi, %esi                 #  64    0x54fbf  2      
  movl (%r15,%rsi,1), %eax        #  65    0x54fc1  4      
  subl $0x1a, %eax                #  66    0x54fc5  3      
  cmpl $0x2, %eax                 #  67    0x54fc8  3      
  ja .L_54f40                     #  68    0x54fcb  6      
  movl %r13d, %r13d               #  69    0x54fd1  3      
  movl (%r15,%r13,1), %r13d       #  70    0x54fd4  4      
  testq %r13, %r13                #  71    0x54fd8  3      
  jne .L_54fe0                    #  72    0x54fdb  6      
  nop                             #  73    0x54fe1  1      
  nop                             #  74    0x54fe2  1      
.L_55040:                         #        0x54fe3  0      
  addl $0x8, %esp                 #  75    0x54fe3  3      
  addq %r15, %rsp                 #  76    0x54fe6  3      
  popq %rbx                       #  77    0x54fe9  2      
  popq %r12                       #  78    0x54feb  3      
  popq %r13                       #  79    0x54fee  3      
  popq %r14                       #  80    0x54ff1  3      
  popq %r11                       #  81    0x54ff4  3      
  andl $0xffffffe0, %r11d         #  82    0x54ff7  7      
  addq %r15, %r11                 #  83    0x54ffe  3      
  jmpq %r11                       #  84    0x55001  3      
  nop                             #  85    0x55004  1      
.L_55060:                         #        0x55005  0      
  movl %r13d, %r13d               #  86    0x55005  3      
  movl (%r15,%r13,1), %edx        #  87    0x55008  4      
  movl %ebx, %edi                 #  88    0x5500c  2      
  nop                             #  89    0x5500e  1      
  nop                             #  90    0x5500f  1      
  callq .d_print_function_type    #  91    0x55010  5      
  movl %ebx, %ebx                 #  92    0x55015  2      
  movl %r12d, 0x114(%r15,%rbx,1)  #  93    0x55017  8      
  addl $0x8, %esp                 #  94    0x5501f  3      
  addq %r15, %rsp                 #  95    0x55022  3      
  popq %rbx                       #  96    0x55025  2      
  popq %r12                       #  97    0x55027  3      
  popq %r13                       #  98    0x5502a  3      
  popq %r14                       #  99    0x5502d  3      
  popq %r11                       #  100   0x55030  3      
  nop                             #  101   0x55033  1      
  andl $0xffffffe0, %r11d         #  102   0x55034  7      
  addq %r15, %r11                 #  103   0x5503b  3      
  jmpq %r11                       #  104   0x5503e  3      
  nop                             #  105   0x55041  1      
  nop                             #  106   0x55042  1      
.L_550c0:                         #        0x55043  0      
  movl %r13d, %r13d               #  107   0x55043  3      
  movl (%r15,%r13,1), %edx        #  108   0x55046  4      
  movl %ebx, %edi                 #  109   0x5504a  2      
  nop                             #  110   0x5504c  1      
  nop                             #  111   0x5504d  1      
  callq .d_print_array_type       #  112   0x5504e  5      
  movl %ebx, %ebx                 #  113   0x55053  2      
  movl %r12d, 0x114(%r15,%rbx,1)  #  114   0x55055  8      
  addl $0x8, %esp                 #  115   0x5505d  3      
  addq %r15, %rsp                 #  116   0x55060  3      
  popq %rbx                       #  117   0x55063  2      
  popq %r12                       #  118   0x55065  3      
  popq %r13                       #  119   0x55068  3      
  popq %r14                       #  120   0x5506b  3      
  popq %r11                       #  121   0x5506e  3      
  nop                             #  122   0x55071  1      
  andl $0xffffffe0, %r11d         #  123   0x55072  7      
  addq %r15, %r11                 #  124   0x55079  3      
  jmpq %r11                       #  125   0x5507c  3      
  nop                             #  126   0x5507f  1      
  nop                             #  127   0x55080  1      
.L_55120:                         #        0x55081  0      
  movl %ebx, %ebx                 #  128   0x55081  2      
  movl 0x118(%r15,%rbx,1), %r14d  #  129   0x55083  8      
  movl %ebx, %ebx                 #  130   0x5508b  2      
  movl $0x0, 0x118(%r15,%rbx,1)   #  131   0x5508d  12     
  movl %ebx, %edi                 #  132   0x55099  2      
  nop                             #  133   0x5509b  1      
  movl %esi, %esi                 #  134   0x5509c  2      
  movl 0x4(%r15,%rsi,1), %esi     #  135   0x5509e  5      
  nop                             #  136   0x550a3  1      
  nop                             #  137   0x550a4  1      
  callq .d_print_comp             #  138   0x550a5  5      
  movl %ebx, %ebx                 #  139   0x550aa  2      
  testb $0x4, (%r15,%rbx,1)       #  140   0x550ac  5      
  movl %ebx, %ebx                 #  141   0x550b1  2      
  movl %r14d, 0x118(%r15,%rbx,1)  #  142   0x550b3  8      
  jne .L_55260                    #  143   0x550bb  6      
  movl $0x10022865, %esi          #  144   0x550c1  5      
  movl %ebx, %edi                 #  145   0x550c6  2      
  xchgw %ax, %ax                  #  146   0x550c8  3      
  nop                             #  147   0x550cb  1      
  nop                             #  148   0x550cc  1      
  callq .d_append_string          #  149   0x550cd  5      
.L_551a0:                         #        0x550d2  0      
  movl %r13d, %r13d               #  150   0x550d2  3      
  movl 0x4(%r15,%r13,1), %eax     #  151   0x550d5  5      
  movl %eax, %eax                 #  152   0x550da  2      
  movl 0x8(%r15,%rax,1), %esi     #  153   0x550dc  5      
  movl %esi, %esi                 #  154   0x550e1  2      
  movl (%r15,%rsi,1), %eax        #  155   0x550e3  4      
  subl $0x1a, %eax                #  156   0x550e7  3      
  cmpl $0x2, %eax                 #  157   0x550ea  3      
  nop                             #  158   0x550ed  1      
  ja .L_55200                     #  159   0x550ee  6      
  nop                             #  160   0x550f4  1      
  nop                             #  161   0x550f5  1      
.L_551e0:                         #        0x550f6  0      
  movl %esi, %esi                 #  162   0x550f6  2      
  movl 0x4(%r15,%rsi,1), %esi     #  163   0x550f8  5      
  movl %esi, %esi                 #  164   0x550fd  2      
  movl (%r15,%rsi,1), %eax        #  165   0x550ff  4      
  subl $0x1a, %eax                #  166   0x55103  3      
  cmpl $0x2, %eax                 #  167   0x55106  3      
  jbe .L_551e0                    #  168   0x55109  6      
  nop                             #  169   0x5510f  1      
.L_55200:                         #        0x55110  0      
  movl %ebx, %edi                 #  170   0x55110  2      
  nop                             #  171   0x55112  1      
  nop                             #  172   0x55113  1      
  callq .d_print_comp             #  173   0x55114  5      
  movl %ebx, %ebx                 #  174   0x55119  2      
  movl %r12d, 0x114(%r15,%rbx,1)  #  175   0x5511b  8      
  addl $0x8, %esp                 #  176   0x55123  3      
  addq %r15, %rsp                 #  177   0x55126  3      
  popq %rbx                       #  178   0x55129  2      
  popq %r12                       #  179   0x5512b  3      
  popq %r13                       #  180   0x5512e  3      
  popq %r14                       #  181   0x55131  3      
  popq %r11                       #  182   0x55134  3      
  nop                             #  183   0x55137  1      
  andl $0xffffffe0, %r11d         #  184   0x55138  7      
  addq %r15, %r11                 #  185   0x5513f  3      
  jmpq %r11                       #  186   0x55142  3      
  nop                             #  187   0x55145  1      
  nop                             #  188   0x55146  1      
.L_55260:                         #        0x55147  0      
  movl $0x2e, %esi                #  189   0x55147  5      
  movl %ebx, %edi                 #  190   0x5514c  2      
  nop                             #  191   0x5514e  1      
  nop                             #  192   0x5514f  1      
  callq .d_append_char            #  193   0x55150  5      
  jmpq .L_551a0                   #  194   0x55155  5      
  nop                             #  195   0x5515a  1      
  nop                             #  196   0x5515b  1      
                                                           
.size d_print_mod_list, .-d_print_mod_list

