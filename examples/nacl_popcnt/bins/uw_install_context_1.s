  .text
  .globl uw_install_context_1
  .type uw_install_context_1, @function

#! file-offset 0x5a440
#! rip-offset  0x5a440
#! capacity    832 bytes

# Text                            #  Line  RIP      Bytes  
.uw_install_context_1:            #        0x5a440  0      
  pushq %r14                      #  1     0x5a440  3      
  movl %esi, %esi                 #  2     0x5a443  2      
  movl %edi, %edi                 #  3     0x5a445  2      
  pushq %r13                      #  4     0x5a447  3      
  pushq %r12                      #  5     0x5a44a  3      
  pushq %rbx                      #  6     0x5a44d  2      
  subl $0x48, %esp                #  7     0x5a44f  3      
  addq %r15, %rsp                 #  8     0x5a452  3      
  movl %esi, %esi                 #  9     0x5a455  2      
  testb $0x40, 0x67(%r15,%rsi,1)  #  10    0x5a457  6      
  movq %rdi, 0x18(%rsp)           #  11    0x5a45d  5      
  xchgw %ax, %ax                  #  12    0x5a462  3      
  movq %rsi, 0x10(%rsp)           #  13    0x5a465  5      
  je .L_5a480                     #  14    0x5a46a  6      
  movl %esi, %esi                 #  15    0x5a470  2      
  cmpb $0x0, 0x7f(%r15,%rsi,1)    #  16    0x5a472  6      
  jne .L_5a700                    #  17    0x5a478  6      
  nop                             #  18    0x5a47e  1      
.L_5a480:                         #        0x5a47f  0      
  movq 0x10(%rsp), %rdx           #  19    0x5a47f  5      
  movl %edx, %edx                 #  20    0x5a484  2      
  movl 0x1c(%r15,%rdx,1), %eax    #  21    0x5a486  5      
  nop                             #  22    0x5a48b  1      
  nop                             #  23    0x5a48c  1      
.L_5a4a0:                         #        0x5a48d  0      
  testq %rax, %rax                #  24    0x5a48d  3      
  je .L_5a720                     #  25    0x5a490  6      
  nop                             #  26    0x5a496  1      
  nop                             #  27    0x5a497  1      
.L_5a4c0:                         #        0x5a498  0      
  movl 0x18(%rsp), %r14d          #  28    0x5a498  5      
  movl 0x10(%rsp), %r13d          #  29    0x5a49d  5      
  leal 0xffdc370(%rip), %ebx      #  30    0x5a4a2  6      
  leal 0xffdc37a(%rip), %r8d      #  31    0x5a4a8  7      
  movl %r13d, %ecx                #  32    0x5a4af  3      
  movl %r14d, %r12d               #  33    0x5a4b2  3      
  nop                             #  34    0x5a4b5  1      
  jmpq .L_5a560                   #  35    0x5a4b6  5      
  nop                             #  36    0x5a4bb  1      
  nop                             #  37    0x5a4bc  1      
.L_5a500:                         #        0x5a4bd  0      
  movl %ecx, %edx                 #  38    0x5a4bd  2      
  movl %edx, %edx                 #  39    0x5a4bf  2      
  cmpb $0x0, 0x78(%r15,%rdx,1)    #  40    0x5a4c1  6      
  je .L_5a5a0                     #  41    0x5a4c7  6      
  movl %ebx, %eax                 #  42    0x5a4cd  2      
  movl %eax, %eax                 #  43    0x5a4cf  2      
  movzbl (%r15,%rax,1), %eax      #  44    0x5a4d1  5      
  cmpb $0x8, %al                  #  45    0x5a4d6  2      
  nop                             #  46    0x5a4d8  1      
  je .L_5a600                     #  47    0x5a4d9  6      
  cmpb $0x4, %al                  #  48    0x5a4df  2      
  jne .L_5a760                    #  49    0x5a4e1  6      
  movl %esi, 0x3c(%rsp)           #  50    0x5a4e7  4      
  movl %edi, %edi                 #  51    0x5a4eb  2      
  movl %esi, (%r15,%rdi,1)        #  52    0x5a4ed  4      
  nop                             #  53    0x5a4f1  1      
.L_5a540:                         #        0x5a4f2  0      
  addl $0x1, %ebx                 #  54    0x5a4f2  3      
  addl $0x4, %r14d                #  55    0x5a4f5  4      
  addl $0x4, %r13d                #  56    0x5a4f9  4      
  addl $0x1, %r12d                #  57    0x5a4fd  4      
  addl $0x1, %ecx                 #  58    0x5a501  3      
  cmpl %r8d, %ebx                 #  59    0x5a504  3      
  je .L_5a620                     #  60    0x5a507  6      
  nop                             #  61    0x5a50d  1      
.L_5a560:                         #        0x5a50e  0      
  movl %r14d, %eax                #  62    0x5a50e  3      
  movl %eax, %eax                 #  63    0x5a511  2      
  movl (%r15,%rax,1), %edi        #  64    0x5a513  4      
  movl %r13d, %eax                #  65    0x5a517  3      
  movl %eax, %eax                 #  66    0x5a51a  2      
  movl (%r15,%rax,1), %esi        #  67    0x5a51c  4      
  movl %r12d, %eax                #  68    0x5a520  3      
  movl %eax, %eax                 #  69    0x5a523  2      
  cmpb $0x0, 0x78(%r15,%rax,1)    #  70    0x5a525  6      
  nop                             #  71    0x5a52b  1      
  jne .L_5a760                    #  72    0x5a52c  6      
  testl %edi, %edi                #  73    0x5a532  2      
  setne %al                       #  74    0x5a534  3      
  jne .L_5a500                    #  75    0x5a537  6      
  nop                             #  76    0x5a53d  1      
.L_5a5a0:                         #        0x5a53e  0      
  testq %rsi, %rsi                #  77    0x5a53e  3      
  je .L_5a540                     #  78    0x5a541  6      
  testb %al, %al                  #  79    0x5a547  2      
  je .L_5a540                     #  80    0x5a549  6      
  cmpl %edi, %esi                 #  81    0x5a54f  2      
  je .L_5a540                     #  82    0x5a551  6      
  movl %ebx, %eax                 #  83    0x5a557  2      
  movl %eax, %eax                 #  84    0x5a559  2      
  movzbl (%r15,%rax,1), %edx      #  85    0x5a55b  5      
  movl %ecx, (%rsp)               #  86    0x5a560  3      
  movl %r8d, 0x8(%rsp)            #  87    0x5a563  5      
  xchgw %ax, %ax                  #  88    0x5a568  3      
  nop                             #  89    0x5a56b  1      
  nop                             #  90    0x5a56c  1      
  callq .memcpy                   #  91    0x5a56d  5      
  movl 0x8(%rsp), %r8d            #  92    0x5a572  5      
  movl (%rsp), %ecx               #  93    0x5a577  3      
  jmpq .L_5a540                   #  94    0x5a57a  5      
  nop                             #  95    0x5a57f  1      
  nop                             #  96    0x5a580  1      
.L_5a600:                         #        0x5a581  0      
  movq %rsi, 0x28(%rsp)           #  97    0x5a581  5      
  movl %edi, %edi                 #  98    0x5a586  2      
  movq %rsi, (%r15,%rdi,1)        #  99    0x5a588  4      
  jmpq .L_5a540                   #  100   0x5a58c  5      
  nop                             #  101   0x5a591  1      
  nop                             #  102   0x5a592  1      
.L_5a620:                         #        0x5a593  0      
  movq 0x18(%rsp), %rdx           #  103   0x5a593  5      
  movl %edx, %edx                 #  104   0x5a598  2      
  testb $0x40, 0x67(%r15,%rdx,1)  #  105   0x5a59a  6      
  jne .L_5a680                    #  106   0x5a5a0  6      
  xchgw %ax, %ax                  #  107   0x5a5a6  3      
  nop                             #  108   0x5a5a9  1      
.L_5a640:                         #        0x5a5aa  0      
  movq 0x18(%rsp), %rax           #  109   0x5a5aa  5      
  movl %eax, %eax                 #  110   0x5a5af  2      
  movl 0x1c(%r15,%rax,1), %edx    #  111   0x5a5b1  5      
  xorl %eax, %eax                 #  112   0x5a5b6  2      
  testq %rdx, %rdx                #  113   0x5a5b8  3      
  je .L_5a6a0                     #  114   0x5a5bb  6      
  nop                             #  115   0x5a5c1  1      
.L_5a660:                         #        0x5a5c2  0      
  addl $0x48, %esp                #  116   0x5a5c2  3      
  addq %r15, %rsp                 #  117   0x5a5c5  3      
  popq %rbx                       #  118   0x5a5c8  2      
  popq %r12                       #  119   0x5a5ca  3      
  popq %r13                       #  120   0x5a5cd  3      
  popq %r14                       #  121   0x5a5d0  3      
  popq %r11                       #  122   0x5a5d3  3      
  andl $0xffffffe0, %r11d         #  123   0x5a5d6  7      
  addq %r15, %r11                 #  124   0x5a5dd  3      
  jmpq %r11                       #  125   0x5a5e0  3      
  nop                             #  126   0x5a5e3  1      
.L_5a680:                         #        0x5a5e4  0      
  movl %edx, %edx                 #  127   0x5a5e4  2      
  cmpb $0x0, 0x7f(%r15,%rdx,1)    #  128   0x5a5e6  6      
  je .L_5a640                     #  129   0x5a5ec  6      
  movl 0x18(%rsp), %edx           #  130   0x5a5f2  4      
  xorl %eax, %eax                 #  131   0x5a5f6  2      
  addl $0x1c, %edx                #  132   0x5a5f8  3      
  testq %rdx, %rdx                #  133   0x5a5fb  3      
  jne .L_5a660                    #  134   0x5a5fe  6      
  nop                             #  135   0x5a604  1      
.L_5a6a0:                         #        0x5a605  0      
  movl 0x10(%rsp), %edi           #  136   0x5a605  4      
  movl $0x7, %esi                 #  137   0x5a609  5      
  nop                             #  138   0x5a60e  1      
  nop                             #  139   0x5a60f  1      
  callq ._Unwind_GetGR            #  140   0x5a610  5      
  movq 0x18(%rsp), %rdx           #  141   0x5a615  5      
  movl %edx, %edx                 #  142   0x5a61a  2      
  subl 0x48(%r15,%rdx,1), %eax    #  143   0x5a61c  5      
  movq 0x10(%rsp), %rdx           #  144   0x5a621  5      
  movl %edx, %edx                 #  145   0x5a626  2      
  addl 0x70(%r15,%rdx,1), %eax    #  146   0x5a628  5      
  addl $0x48, %esp                #  147   0x5a62d  3      
  addq %r15, %rsp                 #  148   0x5a630  3      
  popq %rbx                       #  149   0x5a633  2      
  nop                             #  150   0x5a635  1      
  popq %r12                       #  151   0x5a636  3      
  popq %r13                       #  152   0x5a639  3      
  popq %r14                       #  153   0x5a63c  3      
  popq %r11                       #  154   0x5a63f  3      
  andl $0xffffffe0, %r11d         #  155   0x5a642  7      
  addq %r15, %r11                 #  156   0x5a649  3      
  jmpq %r11                       #  157   0x5a64c  3      
  nop                             #  158   0x5a64f  1      
.L_5a700:                         #        0x5a650  0      
  movl 0x10(%rsp), %eax           #  159   0x5a650  4      
  addl $0x1c, %eax                #  160   0x5a654  3      
  jmpq .L_5a4a0                   #  161   0x5a657  5      
  nop                             #  162   0x5a65c  1      
  nop                             #  163   0x5a65d  1      
.L_5a720:                         #        0x5a65e  0      
  movq 0x10(%rsp), %rax           #  164   0x5a65e  5      
  leal 0x30(%rsp), %edx           #  165   0x5a663  4      
  movl %eax, %eax                 #  166   0x5a667  2      
  movl 0x48(%r15,%rax,1), %esi    #  167   0x5a669  5      
  movl %eax, %edi                 #  168   0x5a66e  2      
  nop                             #  169   0x5a670  1      
  callq ._Unwind_SetSpColumn      #  170   0x5a671  5      
  jmpq .L_5a4c0                   #  171   0x5a676  5      
  nop                             #  172   0x5a67b  1      
  nop                             #  173   0x5a67c  1      
.L_5a760:                         #        0x5a67d  0      
  nop                             #  174   0x5a67d  1      
  nop                             #  175   0x5a67e  1      
  callq .abort                    #  176   0x5a67f  5      
                                                           
.size uw_install_context_1, .-uw_install_context_1

