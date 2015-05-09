  .text
  .globl uw_install_context_1
  .type uw_install_context_1, @function

#! file-offset 0x5a420
#! rip-offset  0x5a420
#! capacity    832 bytes

# Text                            #  Line  RIP      Bytes  
.uw_install_context_1:            #        0x5a420  0      
  pushq %r14                      #  1     0x5a420  3      
  movl %esi, %esi                 #  2     0x5a423  2      
  movl %edi, %edi                 #  3     0x5a425  2      
  pushq %r13                      #  4     0x5a427  3      
  pushq %r12                      #  5     0x5a42a  3      
  pushq %rbx                      #  6     0x5a42d  2      
  subl $0x48, %esp                #  7     0x5a42f  3      
  addq %r15, %rsp                 #  8     0x5a432  3      
  movl %esi, %esi                 #  9     0x5a435  2      
  testb $0x40, 0x67(%r15,%rsi,1)  #  10    0x5a437  6      
  movq %rdi, 0x18(%rsp)           #  11    0x5a43d  5      
  xchgw %ax, %ax                  #  12    0x5a442  3      
  movq %rsi, 0x10(%rsp)           #  13    0x5a445  5      
  je .L_5a460                     #  14    0x5a44a  6      
  movl %esi, %esi                 #  15    0x5a450  2      
  cmpb $0x0, 0x7f(%r15,%rsi,1)    #  16    0x5a452  6      
  jne .L_5a6e0                    #  17    0x5a458  6      
  nop                             #  18    0x5a45e  1      
.L_5a460:                         #        0x5a45f  0      
  movq 0x10(%rsp), %rdx           #  19    0x5a45f  5      
  movl %edx, %edx                 #  20    0x5a464  2      
  movl 0x1c(%r15,%rdx,1), %eax    #  21    0x5a466  5      
  nop                             #  22    0x5a46b  1      
  nop                             #  23    0x5a46c  1      
.L_5a480:                         #        0x5a46d  0      
  testq %rax, %rax                #  24    0x5a46d  3      
  je .L_5a700                     #  25    0x5a470  6      
  nop                             #  26    0x5a476  1      
  nop                             #  27    0x5a477  1      
.L_5a4a0:                         #        0x5a478  0      
  movl 0x18(%rsp), %r14d          #  28    0x5a478  5      
  movl 0x10(%rsp), %r13d          #  29    0x5a47d  5      
  leal 0xffdc390(%rip), %ebx      #  30    0x5a482  6      
  leal 0xffdc39a(%rip), %r8d      #  31    0x5a488  7      
  movl %r13d, %ecx                #  32    0x5a48f  3      
  movl %r14d, %r12d               #  33    0x5a492  3      
  nop                             #  34    0x5a495  1      
  jmpq .L_5a540                   #  35    0x5a496  5      
  nop                             #  36    0x5a49b  1      
  nop                             #  37    0x5a49c  1      
.L_5a4e0:                         #        0x5a49d  0      
  movl %ecx, %edx                 #  38    0x5a49d  2      
  movl %edx, %edx                 #  39    0x5a49f  2      
  cmpb $0x0, 0x78(%r15,%rdx,1)    #  40    0x5a4a1  6      
  je .L_5a580                     #  41    0x5a4a7  6      
  movl %ebx, %eax                 #  42    0x5a4ad  2      
  movl %eax, %eax                 #  43    0x5a4af  2      
  movzbl (%r15,%rax,1), %eax      #  44    0x5a4b1  5      
  cmpb $0x8, %al                  #  45    0x5a4b6  2      
  nop                             #  46    0x5a4b8  1      
  je .L_5a5e0                     #  47    0x5a4b9  6      
  cmpb $0x4, %al                  #  48    0x5a4bf  2      
  jne .L_5a740                    #  49    0x5a4c1  6      
  movl %esi, 0x3c(%rsp)           #  50    0x5a4c7  4      
  movl %edi, %edi                 #  51    0x5a4cb  2      
  movl %esi, (%r15,%rdi,1)        #  52    0x5a4cd  4      
  nop                             #  53    0x5a4d1  1      
.L_5a520:                         #        0x5a4d2  0      
  addl $0x1, %ebx                 #  54    0x5a4d2  3      
  addl $0x4, %r14d                #  55    0x5a4d5  4      
  addl $0x4, %r13d                #  56    0x5a4d9  4      
  addl $0x1, %r12d                #  57    0x5a4dd  4      
  addl $0x1, %ecx                 #  58    0x5a4e1  3      
  cmpl %r8d, %ebx                 #  59    0x5a4e4  3      
  je .L_5a600                     #  60    0x5a4e7  6      
  nop                             #  61    0x5a4ed  1      
.L_5a540:                         #        0x5a4ee  0      
  movl %r14d, %eax                #  62    0x5a4ee  3      
  movl %eax, %eax                 #  63    0x5a4f1  2      
  movl (%r15,%rax,1), %edi        #  64    0x5a4f3  4      
  movl %r13d, %eax                #  65    0x5a4f7  3      
  movl %eax, %eax                 #  66    0x5a4fa  2      
  movl (%r15,%rax,1), %esi        #  67    0x5a4fc  4      
  movl %r12d, %eax                #  68    0x5a500  3      
  movl %eax, %eax                 #  69    0x5a503  2      
  cmpb $0x0, 0x78(%r15,%rax,1)    #  70    0x5a505  6      
  nop                             #  71    0x5a50b  1      
  jne .L_5a740                    #  72    0x5a50c  6      
  testl %edi, %edi                #  73    0x5a512  2      
  setne %al                       #  74    0x5a514  3      
  jne .L_5a4e0                    #  75    0x5a517  6      
  nop                             #  76    0x5a51d  1      
.L_5a580:                         #        0x5a51e  0      
  testq %rsi, %rsi                #  77    0x5a51e  3      
  je .L_5a520                     #  78    0x5a521  6      
  testb %al, %al                  #  79    0x5a527  2      
  je .L_5a520                     #  80    0x5a529  6      
  cmpl %edi, %esi                 #  81    0x5a52f  2      
  je .L_5a520                     #  82    0x5a531  6      
  movl %ebx, %eax                 #  83    0x5a537  2      
  movl %eax, %eax                 #  84    0x5a539  2      
  movzbl (%r15,%rax,1), %edx      #  85    0x5a53b  5      
  movl %ecx, (%rsp)               #  86    0x5a540  3      
  movl %r8d, 0x8(%rsp)            #  87    0x5a543  5      
  xchgw %ax, %ax                  #  88    0x5a548  3      
  nop                             #  89    0x5a54b  1      
  nop                             #  90    0x5a54c  1      
  callq .memcpy                   #  91    0x5a54d  5      
  movl 0x8(%rsp), %r8d            #  92    0x5a552  5      
  movl (%rsp), %ecx               #  93    0x5a557  3      
  jmpq .L_5a520                   #  94    0x5a55a  5      
  nop                             #  95    0x5a55f  1      
  nop                             #  96    0x5a560  1      
.L_5a5e0:                         #        0x5a561  0      
  movq %rsi, 0x28(%rsp)           #  97    0x5a561  5      
  movl %edi, %edi                 #  98    0x5a566  2      
  movq %rsi, (%r15,%rdi,1)        #  99    0x5a568  4      
  jmpq .L_5a520                   #  100   0x5a56c  5      
  nop                             #  101   0x5a571  1      
  nop                             #  102   0x5a572  1      
.L_5a600:                         #        0x5a573  0      
  movq 0x18(%rsp), %rdx           #  103   0x5a573  5      
  movl %edx, %edx                 #  104   0x5a578  2      
  testb $0x40, 0x67(%r15,%rdx,1)  #  105   0x5a57a  6      
  jne .L_5a660                    #  106   0x5a580  6      
  xchgw %ax, %ax                  #  107   0x5a586  3      
  nop                             #  108   0x5a589  1      
.L_5a620:                         #        0x5a58a  0      
  movq 0x18(%rsp), %rax           #  109   0x5a58a  5      
  movl %eax, %eax                 #  110   0x5a58f  2      
  movl 0x1c(%r15,%rax,1), %edx    #  111   0x5a591  5      
  xorl %eax, %eax                 #  112   0x5a596  2      
  testq %rdx, %rdx                #  113   0x5a598  3      
  je .L_5a680                     #  114   0x5a59b  6      
  nop                             #  115   0x5a5a1  1      
.L_5a640:                         #        0x5a5a2  0      
  addl $0x48, %esp                #  116   0x5a5a2  3      
  addq %r15, %rsp                 #  117   0x5a5a5  3      
  popq %rbx                       #  118   0x5a5a8  2      
  popq %r12                       #  119   0x5a5aa  3      
  popq %r13                       #  120   0x5a5ad  3      
  popq %r14                       #  121   0x5a5b0  3      
  popq %r11                       #  122   0x5a5b3  3      
  andl $0xffffffe0, %r11d         #  123   0x5a5b6  7      
  addq %r15, %r11                 #  124   0x5a5bd  3      
  jmpq %r11                       #  125   0x5a5c0  3      
  nop                             #  126   0x5a5c3  1      
.L_5a660:                         #        0x5a5c4  0      
  movl %edx, %edx                 #  127   0x5a5c4  2      
  cmpb $0x0, 0x7f(%r15,%rdx,1)    #  128   0x5a5c6  6      
  je .L_5a620                     #  129   0x5a5cc  6      
  movl 0x18(%rsp), %edx           #  130   0x5a5d2  4      
  xorl %eax, %eax                 #  131   0x5a5d6  2      
  addl $0x1c, %edx                #  132   0x5a5d8  3      
  testq %rdx, %rdx                #  133   0x5a5db  3      
  jne .L_5a640                    #  134   0x5a5de  6      
  nop                             #  135   0x5a5e4  1      
.L_5a680:                         #        0x5a5e5  0      
  movl 0x10(%rsp), %edi           #  136   0x5a5e5  4      
  movl $0x7, %esi                 #  137   0x5a5e9  5      
  nop                             #  138   0x5a5ee  1      
  nop                             #  139   0x5a5ef  1      
  callq ._Unwind_GetGR            #  140   0x5a5f0  5      
  movq 0x18(%rsp), %rdx           #  141   0x5a5f5  5      
  movl %edx, %edx                 #  142   0x5a5fa  2      
  subl 0x48(%r15,%rdx,1), %eax    #  143   0x5a5fc  5      
  movq 0x10(%rsp), %rdx           #  144   0x5a601  5      
  movl %edx, %edx                 #  145   0x5a606  2      
  addl 0x70(%r15,%rdx,1), %eax    #  146   0x5a608  5      
  addl $0x48, %esp                #  147   0x5a60d  3      
  addq %r15, %rsp                 #  148   0x5a610  3      
  popq %rbx                       #  149   0x5a613  2      
  nop                             #  150   0x5a615  1      
  popq %r12                       #  151   0x5a616  3      
  popq %r13                       #  152   0x5a619  3      
  popq %r14                       #  153   0x5a61c  3      
  popq %r11                       #  154   0x5a61f  3      
  andl $0xffffffe0, %r11d         #  155   0x5a622  7      
  addq %r15, %r11                 #  156   0x5a629  3      
  jmpq %r11                       #  157   0x5a62c  3      
  nop                             #  158   0x5a62f  1      
.L_5a6e0:                         #        0x5a630  0      
  movl 0x10(%rsp), %eax           #  159   0x5a630  4      
  addl $0x1c, %eax                #  160   0x5a634  3      
  jmpq .L_5a480                   #  161   0x5a637  5      
  nop                             #  162   0x5a63c  1      
  nop                             #  163   0x5a63d  1      
.L_5a700:                         #        0x5a63e  0      
  movq 0x10(%rsp), %rax           #  164   0x5a63e  5      
  leal 0x30(%rsp), %edx           #  165   0x5a643  4      
  movl %eax, %eax                 #  166   0x5a647  2      
  movl 0x48(%r15,%rax,1), %esi    #  167   0x5a649  5      
  movl %eax, %edi                 #  168   0x5a64e  2      
  nop                             #  169   0x5a650  1      
  callq ._Unwind_SetSpColumn      #  170   0x5a651  5      
  jmpq .L_5a4a0                   #  171   0x5a656  5      
  nop                             #  172   0x5a65b  1      
  nop                             #  173   0x5a65c  1      
.L_5a740:                         #        0x5a65d  0      
  nop                             #  174   0x5a65d  1      
  nop                             #  175   0x5a65e  1      
  callq .abort                    #  176   0x5a65f  5      
                                                           
.size uw_install_context_1, .-uw_install_context_1

