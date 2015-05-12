  .text
  .globl __gxx_personality_v0
  .type __gxx_personality_v0, @function

#! file-offset 0x4a460
#! rip-offset  0x4a460
#! capacity    2624 bytes

# Text                                                                   #  Line  RIP      Bytes  
.__gxx_personality_v0:                                                   #        0x4a460  0      
  pushq %r14                                                             #  1     0x4a460  3      
  movl %ecx, %ecx                                                        #  2     0x4a463  2      
  movl %r8d, %r8d                                                        #  3     0x4a465  3      
  movl $0x3, %eax                                                        #  4     0x4a468  5      
  pushq %r13                                                             #  5     0x4a46d  3      
  pushq %r12                                                             #  6     0x4a470  3      
  pushq %rbx                                                             #  7     0x4a473  2      
  subl $0xa8, %esp                                                       #  8     0x4a475  3      
  addq %r15, %rsp                                                        #  9     0x4a478  3      
  cmpl $0x1, %edi                                                        #  10    0x4a47b  3      
  nop                                                                    #  11    0x4a47e  1      
  movl %esi, 0x3c(%rsp)                                                  #  12    0x4a47f  4      
  movq %rcx, 0x40(%rsp)                                                  #  13    0x4a483  5      
  movq %r8, 0x30(%rsp)                                                   #  14    0x4a488  5      
  je .L_4a4c0                                                            #  15    0x4a48d  6      
  nop                                                                    #  16    0x4a493  1      
  nop                                                                    #  17    0x4a494  1      
.L_4a4a0:                                                                #        0x4a495  0      
  addl $0xa8, %esp                                                       #  18    0x4a495  3      
  addq %r15, %rsp                                                        #  19    0x4a498  3      
  popq %rbx                                                              #  20    0x4a49b  2      
  popq %r12                                                              #  21    0x4a49d  3      
  popq %r13                                                              #  22    0x4a4a0  3      
  popq %r14                                                              #  23    0x4a4a3  3      
  popq %r11                                                              #  24    0x4a4a6  3      
  andl $0xffffffe0, %r11d                                                #  25    0x4a4a9  7      
  addq %r15, %r11                                                        #  26    0x4a4b0  3      
  jmpq %r11                                                              #  27    0x4a4b3  3      
  nop                                                                    #  28    0x4a4b6  1      
.L_4a4c0:                                                                #        0x4a4b7  0      
  movl 0x40(%rsp), %eax                                                  #  29    0x4a4b7  4      
  movl $0x0, 0x9c(%rsp)                                                  #  30    0x4a4bb  11     
  movl $0x0, 0x98(%rsp)                                                  #  31    0x4a4c6  11     
  subl $0x30, %eax                                                       #  32    0x4a4d1  3      
  nop                                                                    #  33    0x4a4d4  1      
  movq %rax, 0x50(%rsp)                                                  #  34    0x4a4d5  5      
  movq $0xb8b1aabcbcd4d500, %rax                                         #  35    0x4a4da  10     
  addq %rax, %rdx                                                        #  36    0x4a4e4  3      
  cmpq $0x1, %rdx                                                        #  37    0x4a4e7  4      
  seta 0x5b(%rsp)                                                        #  38    0x4a4eb  5      
  cmpl $0x6, %esi                                                        #  39    0x4a4f0  3      
  xchgw %ax, %ax                                                         #  40    0x4a4f3  3      
  je .L_4a820                                                            #  41    0x4a4f6  6      
  nop                                                                    #  42    0x4a4fc  1      
  nop                                                                    #  43    0x4a4fd  1      
.L_4a520:                                                                #        0x4a4fe  0      
  movl 0x30(%rsp), %edi                                                  #  44    0x4a4fe  4      
  nop                                                                    #  45    0x4a502  1      
  nop                                                                    #  46    0x4a503  1      
  callq ._Unwind_GetLanguageSpecificData                                 #  47    0x4a504  5      
  movl %eax, %eax                                                        #  48    0x4a509  2      
  testq %rax, %rax                                                       #  49    0x4a50b  3      
  movq %rax, 0x48(%rsp)                                                  #  50    0x4a50e  5      
  je .L_4a8e0                                                            #  51    0x4a513  6      
  leal 0x70(%rsp), %edx                                                  #  52    0x4a519  4      
  movl 0x30(%rsp), %edi                                                  #  53    0x4a51d  4      
  movl %eax, %esi                                                        #  54    0x4a521  2      
  nop                                                                    #  55    0x4a523  1      
  leal 0x94(%rsp), %r13d                                                 #  56    0x4a524  8      
  leal 0x90(%rsp), %r14d                                                 #  57    0x4a52c  8      
  movq %rdx, 0x18(%rsp)                                                  #  58    0x4a534  5      
  movl 0x18(%rsp), %edx                                                  #  59    0x4a539  4      
  xchgw %ax, %ax                                                         #  60    0x4a53d  3      
  callq ._ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info  #  61    0x4a540  5      
  movzbl 0x84(%rsp), %edi                                                #  62    0x4a545  8      
  movl 0x30(%rsp), %esi                                                  #  63    0x4a54d  4      
  movl %eax, %edx                                                        #  64    0x4a551  2      
  movq %rdx, 0x28(%rsp)                                                  #  65    0x4a553  5      
  nop                                                                    #  66    0x4a558  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  67    0x4a559  5      
  movl 0x30(%rsp), %edi                                                  #  68    0x4a55e  4      
  leal 0x98(%rsp), %esi                                                  #  69    0x4a562  7      
  movl %eax, 0x78(%rsp)                                                  #  70    0x4a569  4      
  nop                                                                    #  71    0x4a56d  1      
  callq ._Unwind_GetIPInfo                                               #  72    0x4a56e  5      
  cmpl $0x1, 0x98(%rsp)                                                  #  73    0x4a573  8      
  movl %eax, %r12d                                                       #  74    0x4a57b  3      
  movl 0x80(%rsp), %eax                                                  #  75    0x4a57e  7      
  leal 0x8c(%rsp), %ecx                                                  #  76    0x4a585  7      
  movq 0x28(%rsp), %rdx                                                  #  77    0x4a58c  5      
  xchgw %ax, %ax                                                         #  78    0x4a591  3      
  movq %rcx, 0x10(%rsp)                                                  #  79    0x4a594  5      
  sbbl $0x0, %r12d                                                       #  80    0x4a599  4      
  nop                                                                    #  81    0x4a59d  1      
  nop                                                                    #  82    0x4a59e  1      
.L_4a600:                                                                #        0x4a59f  0      
  cmpl %eax, %edx                                                        #  83    0x4a59f  2      
  jae .L_4a760                                                           #  84    0x4a5a1  6      
  nop                                                                    #  85    0x4a5a7  1      
  nop                                                                    #  86    0x4a5a8  1      
.L_4a620:                                                                #        0x4a5a9  0      
  movzbl 0x85(%rsp), %ebx                                                #  87    0x4a5a9  8      
  xorl %esi, %esi                                                        #  88    0x4a5b1  2      
  movq %rdx, 0x28(%rsp)                                                  #  89    0x4a5b3  5      
  movl %ebx, %edi                                                        #  90    0x4a5b8  2      
  nop                                                                    #  91    0x4a5ba  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  92    0x4a5bb  5      
  movq 0x28(%rsp), %rdx                                                  #  93    0x4a5c0  5      
  movl %r13d, %ecx                                                       #  94    0x4a5c5  3      
  movl %ebx, %edi                                                        #  95    0x4a5c8  2      
  movl %eax, %esi                                                        #  96    0x4a5ca  2      
  nop                                                                    #  97    0x4a5cc  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj                        #  98    0x4a5cd  5      
  movzbl 0x85(%rsp), %ebx                                                #  99    0x4a5d2  8      
  movl %eax, %edx                                                        #  100   0x4a5da  2      
  xorl %esi, %esi                                                        #  101   0x4a5dc  2      
  movq %rdx, 0x28(%rsp)                                                  #  102   0x4a5de  5      
  movl %ebx, %edi                                                        #  103   0x4a5e3  2      
  nop                                                                    #  104   0x4a5e5  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  105   0x4a5e6  5      
  movq 0x28(%rsp), %rdx                                                  #  106   0x4a5eb  5      
  movl %r14d, %ecx                                                       #  107   0x4a5f0  3      
  movl %ebx, %edi                                                        #  108   0x4a5f3  2      
  movl %eax, %esi                                                        #  109   0x4a5f5  2      
  nop                                                                    #  110   0x4a5f7  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj                        #  111   0x4a5f8  5      
  movzbl 0x85(%rsp), %ebx                                                #  112   0x4a5fd  8      
  movl %eax, %edx                                                        #  113   0x4a605  2      
  xorl %esi, %esi                                                        #  114   0x4a607  2      
  movq %rdx, 0x28(%rsp)                                                  #  115   0x4a609  5      
  movl %ebx, %edi                                                        #  116   0x4a60e  2      
  nop                                                                    #  117   0x4a610  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  118   0x4a611  5      
  movl 0x10(%rsp), %ecx                                                  #  119   0x4a616  4      
  movq 0x28(%rsp), %rdx                                                  #  120   0x4a61a  5      
  movl %eax, %esi                                                        #  121   0x4a61f  2      
  movl %ebx, %edi                                                        #  122   0x4a621  2      
  nop                                                                    #  123   0x4a623  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj                        #  124   0x4a624  5      
  xorl %ecx, %ecx                                                        #  125   0x4a629  2      
  movl %eax, %edx                                                        #  126   0x4a62b  2      
  xorl %eax, %eax                                                        #  127   0x4a62d  2      
  nop                                                                    #  128   0x4a62f  1      
  nop                                                                    #  129   0x4a630  1      
.L_4a700:                                                                #        0x4a631  0      
  movl %edx, %edx                                                        #  130   0x4a631  2      
  movzbl (%r15,%rdx,1), %esi                                             #  131   0x4a633  5      
  addl $0x1, %edx                                                        #  132   0x4a638  3      
  movl %esi, %ebx                                                        #  133   0x4a63b  2      
  andl $0x7f, %ebx                                                       #  134   0x4a63d  3      
  shll %cl, %ebx                                                         #  135   0x4a640  2      
  addl $0x7, %ecx                                                        #  136   0x4a642  3      
  orl %ebx, %eax                                                         #  137   0x4a645  2      
  testb %sil, %sil                                                       #  138   0x4a647  3      
  js .L_4a700                                                            #  139   0x4a64a  6      
  nop                                                                    #  140   0x4a650  1      
  movl 0x94(%rsp), %ecx                                                  #  141   0x4a651  7      
  addl 0x70(%rsp), %ecx                                                  #  142   0x4a658  4      
  cmpl %ecx, %r12d                                                       #  143   0x4a65c  3      
  jae .L_4a800                                                           #  144   0x4a65f  6      
  movl 0x80(%rsp), %edx                                                  #  145   0x4a665  7      
  movq %rdx, %rax                                                        #  146   0x4a66c  3      
  cmpl %eax, %edx                                                        #  147   0x4a66f  2      
  jb .L_4a620                                                            #  148   0x4a671  6      
  nop                                                                    #  149   0x4a677  1      
  nop                                                                    #  150   0x4a678  1      
.L_4a760:                                                                #        0x4a679  0      
  xorl %r13d, %r13d                                                      #  151   0x4a679  3      
  movl $0x0, 0x5c(%rsp)                                                  #  152   0x4a67c  8      
  xorl %r12d, %r12d                                                      #  153   0x4a684  3      
  movl $0x1, %eax                                                        #  154   0x4a687  5      
  nop                                                                    #  155   0x4a68c  1      
.L_4a780:                                                                #        0x4a68d  0      
  testb $0x1, 0x3c(%rsp)                                                 #  156   0x4a68d  5      
  je .L_4a920                                                            #  157   0x4a692  6      
  cmpl $0x2, %eax                                                        #  158   0x4a698  3      
  je .L_4a8e0                                                            #  159   0x4a69b  6      
  cmpb $0x0, 0x5b(%rsp)                                                  #  160   0x4a6a1  5      
  movl $0x6, %eax                                                        #  161   0x4a6a6  5      
  xchgw %ax, %ax                                                         #  162   0x4a6ab  3      
  jne .L_4a4a0                                                           #  163   0x4a6ae  6      
  movl 0x9c(%rsp), %eax                                                  #  164   0x4a6b4  7      
  movq 0x50(%rsp), %rdx                                                  #  165   0x4a6bb  5      
  movl 0x48(%rsp), %ecx                                                  #  166   0x4a6c0  4      
  movl %edx, %edx                                                        #  167   0x4a6c4  2      
  movl %r13d, 0x18(%r15,%rdx,1)                                          #  168   0x4a6c6  5      
  nop                                                                    #  169   0x4a6cb  1      
  movl %edx, %edx                                                        #  170   0x4a6cc  2      
  movl %r12d, 0x1c(%r15,%rdx,1)                                          #  171   0x4a6ce  5      
  movl %edx, %edx                                                        #  172   0x4a6d3  2      
  movl %eax, 0x28(%r15,%rdx,1)                                           #  173   0x4a6d5  5      
  movl 0x5c(%rsp), %eax                                                  #  174   0x4a6da  4      
  movl %edx, %edx                                                        #  175   0x4a6de  2      
  movl %ecx, 0x20(%r15,%rdx,1)                                           #  176   0x4a6e0  5      
  movl %edx, %edx                                                        #  177   0x4a6e5  2      
  movl %eax, 0x24(%r15,%rdx,1)                                           #  178   0x4a6e7  5      
  movl $0x6, %eax                                                        #  179   0x4a6ec  5      
  jmpq .L_4a4a0                                                          #  180   0x4a6f1  5      
  nop                                                                    #  181   0x4a6f6  1      
  nop                                                                    #  182   0x4a6f7  1      
.L_4a800:                                                                #        0x4a6f8  0      
  addl 0x90(%rsp), %ecx                                                  #  183   0x4a6f8  7      
  cmpl %ecx, %r12d                                                       #  184   0x4a6ff  3      
  jb .L_4a880                                                            #  185   0x4a702  6      
  movl 0x80(%rsp), %eax                                                  #  186   0x4a708  7      
  jmpq .L_4a600                                                          #  187   0x4a70f  5      
  nop                                                                    #  188   0x4a714  1      
.L_4a820:                                                                #        0x4a715  0      
  cmpb $0x0, 0x5b(%rsp)                                                  #  189   0x4a715  5      
  jne .L_4a520                                                           #  190   0x4a71a  6      
  movq 0x50(%rsp), %rdx                                                  #  191   0x4a720  5      
  movl %edx, %edx                                                        #  192   0x4a725  2      
  movl 0x24(%r15,%rdx,1), %eax                                           #  193   0x4a727  5      
  movl %edx, %edx                                                        #  194   0x4a72c  2      
  movl 0x20(%r15,%rdx,1), %ecx                                           #  195   0x4a72e  5      
  xchgw %ax, %ax                                                         #  196   0x4a733  3      
  movl %edx, %edx                                                        #  197   0x4a736  2      
  movl 0x18(%r15,%rdx,1), %r13d                                          #  198   0x4a738  5      
  testl %eax, %eax                                                       #  199   0x4a73d  2      
  movl %eax, 0x5c(%rsp)                                                  #  200   0x4a73f  4      
  movq %rcx, 0x48(%rsp)                                                  #  201   0x4a743  5      
  jne .L_4a900                                                           #  202   0x4a748  6      
  nop                                                                    #  203   0x4a74e  1      
.L_4a860:                                                                #        0x4a74f  0      
  movl 0x40(%rsp), %edi                                                  #  204   0x4a74f  4      
  nop                                                                    #  205   0x4a753  1      
  nop                                                                    #  206   0x4a754  1      
  callq .__cxa_call_terminate                                            #  207   0x4a755  5      
.L_4a880:                                                                #        0x4a75a  0      
  movl 0x8c(%rsp), %edx                                                  #  208   0x4a75a  7      
  movl $0x0, 0x5c(%rsp)                                                  #  209   0x4a761  8      
  testl %edx, %edx                                                       #  210   0x4a769  2      
  je .L_4a8a0                                                            #  211   0x4a76b  6      
  addl 0x74(%rsp), %edx                                                  #  212   0x4a771  4      
  movl %edx, 0x5c(%rsp)                                                  #  213   0x4a775  4      
  nop                                                                    #  214   0x4a779  1      
.L_4a8a0:                                                                #        0x4a77a  0      
  xorl %r12d, %r12d                                                      #  215   0x4a77a  3      
  testl %eax, %eax                                                       #  216   0x4a77d  2      
  je .L_4a8c0                                                            #  217   0x4a77f  6      
  movl 0x80(%rsp), %r12d                                                 #  218   0x4a785  8      
  subl $0x1, %eax                                                        #  219   0x4a78d  3      
  addl %eax, %r12d                                                       #  220   0x4a790  3      
  nop                                                                    #  221   0x4a793  1      
.L_4a8c0:                                                                #        0x4a794  0      
  movl 0x5c(%rsp), %edx                                                  #  222   0x4a794  4      
  testl %edx, %edx                                                       #  223   0x4a798  2      
  jne .L_4a9e0                                                           #  224   0x4a79a  6      
  nop                                                                    #  225   0x4a7a0  1      
  nop                                                                    #  226   0x4a7a1  1      
.L_4a8e0:                                                                #        0x4a7a2  0      
  movl $0x8, %eax                                                        #  227   0x4a7a2  5      
  jmpq .L_4a4a0                                                          #  228   0x4a7a7  5      
  nop                                                                    #  229   0x4a7ac  1      
  nop                                                                    #  230   0x4a7ad  1      
.L_4a900:                                                                #        0x4a7ae  0      
  movl $0x3, %eax                                                        #  231   0x4a7ae  5      
  nop                                                                    #  232   0x4a7b3  1      
  nop                                                                    #  233   0x4a7b4  1      
.L_4a920:                                                                #        0x4a7b5  0      
  testb $0x8, 0x3c(%rsp)                                                 #  234   0x4a7b5  5      
  je .L_4ac60                                                            #  235   0x4a7ba  6      
  nop                                                                    #  236   0x4a7c0  1      
  nop                                                                    #  237   0x4a7c1  1      
.L_4a940:                                                                #        0x4a7c2  0      
  cmpl $0x1, %eax                                                        #  238   0x4a7c2  3      
  je .L_4ae00                                                            #  239   0x4a7c5  6      
  testl %r13d, %r13d                                                     #  240   0x4a7cb  3      
  js .L_4ade0                                                            #  241   0x4a7ce  6      
  nop                                                                    #  242   0x4a7d4  1      
.L_4a960:                                                                #        0x4a7d5  0      
  movq 0x40(%rsp), %rdx                                                  #  243   0x4a7d5  5      
  movl 0x30(%rsp), %edi                                                  #  244   0x4a7da  4      
  xorl %esi, %esi                                                        #  245   0x4a7de  2      
  nop                                                                    #  246   0x4a7e0  1      
  nop                                                                    #  247   0x4a7e1  1      
  callq ._Unwind_SetGR                                                   #  248   0x4a7e2  5      
  movl 0x30(%rsp), %edi                                                  #  249   0x4a7e7  4      
  movslq %r13d, %rdx                                                     #  250   0x4a7eb  3      
  movl $0x1, %esi                                                        #  251   0x4a7ee  5      
  nop                                                                    #  252   0x4a7f3  1      
  callq ._Unwind_SetGR                                                   #  253   0x4a7f4  5      
  movl 0x5c(%rsp), %esi                                                  #  254   0x4a7f9  4      
  movl 0x30(%rsp), %edi                                                  #  255   0x4a7fd  4      
  nop                                                                    #  256   0x4a801  1      
  nop                                                                    #  257   0x4a802  1      
  callq ._Unwind_SetIP                                                   #  258   0x4a803  5      
  movl $0x7, %eax                                                        #  259   0x4a808  5      
  jmpq .L_4a4a0                                                          #  260   0x4a80d  5      
  nop                                                                    #  261   0x4a812  1      
  nop                                                                    #  262   0x4a813  1      
.L_4a9e0:                                                                #        0x4a814  0      
  testq %r12, %r12                                                       #  263   0x4a814  3      
  je .L_4ad40                                                            #  264   0x4a817  6      
  movl 0x3c(%rsp), %eax                                                  #  265   0x4a81d  4      
  andl $0x8, %eax                                                        #  266   0x4a821  3      
  movl %eax, 0x6c(%rsp)                                                  #  267   0x4a824  4      
  je .L_4ad60                                                            #  268   0x4a828  6      
  nop                                                                    #  269   0x4a82e  1      
  movq $0x10020ec0, 0x60(%rsp)                                           #  270   0x4a82f  9      
  nop                                                                    #  271   0x4a838  1      
  nop                                                                    #  272   0x4a839  1      
.L_4aa20:                                                                #        0x4a83a  0      
  leal 0x9c(%rsp), %ecx                                                  #  273   0x4a83a  7      
  movb $0x0, 0x6b(%rsp)                                                  #  274   0x4a841  5      
  movq %rcx, 0x8(%rsp)                                                   #  275   0x4a846  5      
  nop                                                                    #  276   0x4a84b  1      
.L_4aa40:                                                                #        0x4a84c  0      
  movq %r12, %rax                                                        #  277   0x4a84c  3      
  xorl %esi, %esi                                                        #  278   0x4a84f  2      
  xorl %ecx, %ecx                                                        #  279   0x4a851  2      
  nop                                                                    #  280   0x4a853  1      
  nop                                                                    #  281   0x4a854  1      
.L_4aa60:                                                                #        0x4a855  0      
  movl %eax, %eax                                                        #  282   0x4a855  2      
  movzbl (%r15,%rax,1), %edi                                             #  283   0x4a857  5      
  addl $0x1, %eax                                                        #  284   0x4a85c  3      
  movzbl %dil, %ebx                                                      #  285   0x4a85f  4      
  movl %ebx, %edx                                                        #  286   0x4a863  2      
  andl $0x7f, %edx                                                       #  287   0x4a865  3      
  shll %cl, %edx                                                         #  288   0x4a868  2      
  addl $0x7, %ecx                                                        #  289   0x4a86a  3      
  orl %edx, %esi                                                         #  290   0x4a86d  2      
  testb %dil, %dil                                                       #  291   0x4a86f  3      
  nop                                                                    #  292   0x4a872  1      
  js .L_4aa60                                                            #  293   0x4a873  6      
  cmpl $0x1f, %ecx                                                       #  294   0x4a879  3      
  movq %rax, %r13                                                        #  295   0x4a87c  3      
  ja .L_4aaa0                                                            #  296   0x4a87f  6      
  andl $0x40, %ebx                                                       #  297   0x4a885  3      
  je .L_4aaa0                                                            #  298   0x4a888  6      
  movl $0x1, %edx                                                        #  299   0x4a88e  5      
  shll %cl, %edx                                                         #  300   0x4a893  2      
  movl %edx, %ecx                                                        #  301   0x4a895  2      
  negl %ecx                                                              #  302   0x4a897  2      
  orl %ecx, %esi                                                         #  303   0x4a899  2      
  nop                                                                    #  304   0x4a89b  1      
.L_4aaa0:                                                                #        0x4a89c  0      
  movl %esi, %r14d                                                       #  305   0x4a89c  3      
  xorl %ebx, %ebx                                                        #  306   0x4a89f  2      
  xorl %ecx, %ecx                                                        #  307   0x4a8a1  2      
  nop                                                                    #  308   0x4a8a3  1      
  nop                                                                    #  309   0x4a8a4  1      
.L_4aac0:                                                                #        0x4a8a5  0      
  movl %eax, %eax                                                        #  310   0x4a8a5  2      
  movzbl (%r15,%rax,1), %edi                                             #  311   0x4a8a7  5      
  addl $0x1, %eax                                                        #  312   0x4a8ac  3      
  movzbl %dil, %r8d                                                      #  313   0x4a8af  4      
  movl %r8d, %edx                                                        #  314   0x4a8b3  3      
  andl $0x7f, %edx                                                       #  315   0x4a8b6  3      
  shll %cl, %edx                                                         #  316   0x4a8b9  2      
  addl $0x7, %ecx                                                        #  317   0x4a8bb  3      
  orl %edx, %ebx                                                         #  318   0x4a8be  2      
  testb %dil, %dil                                                       #  319   0x4a8c0  3      
  xchgw %ax, %ax                                                         #  320   0x4a8c3  3      
  js .L_4aac0                                                            #  321   0x4a8c6  6      
  cmpl $0x1f, %ecx                                                       #  322   0x4a8cc  3      
  ja .L_4ab00                                                            #  323   0x4a8cf  6      
  andl $0x40, %r8d                                                       #  324   0x4a8d5  4      
  je .L_4ab00                                                            #  325   0x4a8d9  6      
  movl $0x1, %eax                                                        #  326   0x4a8df  5      
  shll %cl, %eax                                                         #  327   0x4a8e4  2      
  movl %eax, %ecx                                                        #  328   0x4a8e6  2      
  negl %ecx                                                              #  329   0x4a8e8  2      
  orl %ecx, %ebx                                                         #  330   0x4a8ea  2      
  nop                                                                    #  331   0x4a8ec  1      
.L_4ab00:                                                                #        0x4a8ed  0      
  cmpl $0x0, %esi                                                        #  332   0x4a8ed  3      
  jne .L_4ab40                                                           #  333   0x4a8f0  6      
  movb $0x1, 0x6b(%rsp)                                                  #  334   0x4a8f6  5      
  nop                                                                    #  335   0x4a8fb  1      
  nop                                                                    #  336   0x4a8fc  1      
.L_4ab20:                                                                #        0x4a8fd  0      
  testl %ebx, %ebx                                                       #  337   0x4a8fd  2      
  je .L_4ad20                                                            #  338   0x4a8ff  6      
  leal (%rbx,%r13,1), %r12d                                              #  339   0x4a905  4      
  jmpq .L_4aa40                                                          #  340   0x4a909  5      
  nop                                                                    #  341   0x4a90e  1      
.L_4ab40:                                                                #        0x4a90f  0      
  jg .L_4ac00                                                            #  342   0x4a90f  6      
  cmpq $0x0, 0x60(%rsp)                                                  #  343   0x4a915  6      
  je .L_4ab80                                                            #  344   0x4a91b  6      
  movl 0x6c(%rsp), %eax                                                  #  345   0x4a921  4      
  testl %eax, %eax                                                       #  346   0x4a925  2      
  jne .L_4ab80                                                           #  347   0x4a927  6      
  cmpb $0x0, 0x5b(%rsp)                                                  #  348   0x4a92d  5      
  nop                                                                    #  349   0x4a932  1      
  je .L_4ace0                                                            #  350   0x4a933  6      
  nop                                                                    #  351   0x4a939  1      
  nop                                                                    #  352   0x4a93a  1      
.L_4ab80:                                                                #        0x4a93b  0      
  movl 0x7c(%rsp), %edx                                                  #  353   0x4a93b  4      
  notl %esi                                                              #  354   0x4a93f  2      
  xorl %edi, %edi                                                        #  355   0x4a941  2      
  xorl %ecx, %ecx                                                        #  356   0x4a943  2      
  addl %esi, %edx                                                        #  357   0x4a945  2      
  nop                                                                    #  358   0x4a947  1      
  nop                                                                    #  359   0x4a948  1      
.L_4aba0:                                                                #        0x4a949  0      
  movl %edx, %edx                                                        #  360   0x4a949  2      
  movzbl (%r15,%rdx,1), %esi                                             #  361   0x4a94b  5      
  addl $0x1, %edx                                                        #  362   0x4a950  3      
  movl %esi, %eax                                                        #  363   0x4a953  2      
  andl $0x7f, %eax                                                       #  364   0x4a955  3      
  shll %cl, %eax                                                         #  365   0x4a958  2      
  addl $0x7, %ecx                                                        #  366   0x4a95a  3      
  orl %eax, %edi                                                         #  367   0x4a95d  2      
  testb %sil, %sil                                                       #  368   0x4a95f  3      
  js .L_4aba0                                                            #  369   0x4a962  6      
  testl %edi, %edi                                                       #  370   0x4a968  2      
  sete %al                                                               #  371   0x4a96a  3      
.L_4abc0:                                                                #        0x4a96d  0      
  testb %al, %al                                                         #  372   0x4a96d  2      
  je .L_4ab20                                                            #  373   0x4a96f  6      
  nop                                                                    #  374   0x4a975  1      
  nop                                                                    #  375   0x4a976  1      
.L_4abe0:                                                                #        0x4a977  0      
  movl %r14d, %r13d                                                      #  376   0x4a977  3      
  movl $0x3, %eax                                                        #  377   0x4a97a  5      
  jmpq .L_4a780                                                          #  378   0x4a97f  5      
  nop                                                                    #  379   0x4a984  1      
  nop                                                                    #  380   0x4a985  1      
.L_4ac00:                                                                #        0x4a986  0      
  movl 0x18(%rsp), %edi                                                  #  381   0x4a986  4      
  nop                                                                    #  382   0x4a98a  1      
  nop                                                                    #  383   0x4a98b  1      
  callq ._ZL15get_ttype_entryP16lsda_header_infom                        #  384   0x4a98c  5      
  movl %eax, %edi                                                        #  385   0x4a991  2      
  testq %rdi, %rdi                                                       #  386   0x4a993  3      
  je .L_4abe0                                                            #  387   0x4a996  6      
  cmpq $0x0, 0x60(%rsp)                                                  #  388   0x4a99c  6      
  je .L_4ab20                                                            #  389   0x4a9a2  6      
  movl 0x8(%rsp), %edx                                                   #  390   0x4a9a8  4      
  movl 0x60(%rsp), %esi                                                  #  391   0x4a9ac  4      
  callq ._ZL16get_adjusted_ptrPKSt9type_infoS1_PPv                       #  392   0x4a9b0  5      
  testb %al, %al                                                         #  393   0x4a9b5  2      
  jne .L_4abe0                                                           #  394   0x4a9b7  6      
  jmpq .L_4ab20                                                          #  395   0x4a9bd  5      
  nop                                                                    #  396   0x4a9c2  1      
  nop                                                                    #  397   0x4a9c3  1      
.L_4ac60:                                                                #        0x4a9c4  0      
  cmpb $0x0, 0x5b(%rsp)                                                  #  398   0x4a9c4  5      
  jne .L_4a940                                                           #  399   0x4a9c9  6      
  cmpl $0x1, %eax                                                        #  400   0x4a9cf  3      
  je .L_4a860                                                            #  401   0x4a9d2  6      
  testl %r13d, %r13d                                                     #  402   0x4a9d8  3      
  jns .L_4a960                                                           #  403   0x4a9db  6      
  nop                                                                    #  404   0x4a9e1  1      
  movl 0x48(%rsp), %esi                                                  #  405   0x4a9e2  4      
  movl 0x30(%rsp), %edi                                                  #  406   0x4a9e6  4      
  leal 0x70(%rsp), %edx                                                  #  407   0x4a9ea  4      
  nop                                                                    #  408   0x4a9ee  1      
  callq ._ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info  #  409   0x4a9ef  5      
  movzbl 0x84(%rsp), %edi                                                #  410   0x4a9f4  8      
  movl 0x30(%rsp), %esi                                                  #  411   0x4a9fc  4      
  nop                                                                    #  412   0x4aa00  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  413   0x4aa01  5      
  movq 0x50(%rsp), %rdx                                                  #  414   0x4aa06  5      
  movl %edx, %edx                                                        #  415   0x4aa0b  2      
  movl %eax, 0x24(%r15,%rdx,1)                                           #  416   0x4aa0d  5      
  jmpq .L_4a960                                                          #  417   0x4aa12  5      
  nop                                                                    #  418   0x4aa17  1      
.L_4ace0:                                                                #        0x4aa18  0      
  movl %esi, %ecx                                                        #  419   0x4aa18  2      
  movl 0x9c(%rsp), %edx                                                  #  420   0x4aa1a  7      
  movl 0x60(%rsp), %esi                                                  #  421   0x4aa21  4      
  movl 0x18(%rsp), %edi                                                  #  422   0x4aa25  4      
  nop                                                                    #  423   0x4aa29  1      
  callq ._ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl   #  424   0x4aa2a  5      
  xorl $0x1, %eax                                                        #  425   0x4aa2f  3      
  jmpq .L_4abc0                                                          #  426   0x4aa32  5      
  nop                                                                    #  427   0x4aa37  1      
  nop                                                                    #  428   0x4aa38  1      
.L_4ad20:                                                                #        0x4aa39  0      
  cmpb $0x0, 0x6b(%rsp)                                                  #  429   0x4aa39  5      
  je .L_4a8e0                                                            #  430   0x4aa3e  6      
  nop                                                                    #  431   0x4aa44  1      
  nop                                                                    #  432   0x4aa45  1      
.L_4ad40:                                                                #        0x4aa46  0      
  xorl %r13d, %r13d                                                      #  433   0x4aa46  3      
  movl $0x2, %eax                                                        #  434   0x4aa49  5      
  jmpq .L_4a780                                                          #  435   0x4aa4e  5      
  nop                                                                    #  436   0x4aa53  1      
  nop                                                                    #  437   0x4aa54  1      
.L_4ad60:                                                                #        0x4aa55  0      
  cmpb $0x0, 0x5b(%rsp)                                                  #  438   0x4aa55  5      
  movq $0x10020e84, 0x60(%rsp)                                           #  439   0x4aa5a  9      
  jne .L_4aa20                                                           #  440   0x4aa63  6      
  movq 0x40(%rsp), %rdx                                                  #  441   0x4aa69  5      
  movl %edx, %edx                                                        #  442   0x4aa6e  2      
  testb $0x1, (%r15,%rdx,1)                                              #  443   0x4aa70  5      
  je .L_4adc0                                                            #  444   0x4aa75  6      
  movl 0x40(%rsp), %eax                                                  #  445   0x4aa7b  4      
  subl $0x30, %eax                                                       #  446   0x4aa7f  3      
  movl %eax, %eax                                                        #  447   0x4aa82  2      
  movl (%r15,%rax,1), %eax                                               #  448   0x4aa84  4      
  xchgw %ax, %ax                                                         #  449   0x4aa88  3      
  nop                                                                    #  450   0x4aa8b  1      
.L_4ada0:                                                                #        0x4aa8c  0      
  movl %eax, 0x9c(%rsp)                                                  #  451   0x4aa8c  7      
  subl $0x50, %eax                                                       #  452   0x4aa93  3      
  movl %eax, %eax                                                        #  453   0x4aa96  2      
  movl (%r15,%rax,1), %eax                                               #  454   0x4aa98  4      
  movq %rax, 0x60(%rsp)                                                  #  455   0x4aa9c  5      
  jmpq .L_4aa20                                                          #  456   0x4aaa1  5      
  nop                                                                    #  457   0x4aaa6  1      
.L_4adc0:                                                                #        0x4aaa7  0      
  movl 0x40(%rsp), %eax                                                  #  458   0x4aaa7  4      
  addl $0x20, %eax                                                       #  459   0x4aaab  3      
  jmpq .L_4ada0                                                          #  460   0x4aaae  5      
  nop                                                                    #  461   0x4aab3  1      
  nop                                                                    #  462   0x4aab4  1      
.L_4ade0:                                                                #        0x4aab5  0      
  nop                                                                    #  463   0x4aab5  1      
  nop                                                                    #  464   0x4aab6  1      
  callq ._ZSt10unexpectedv                                               #  465   0x4aab7  5      
.L_4ae00:                                                                #        0x4aabc  0      
  nop                                                                    #  466   0x4aabc  1      
  nop                                                                    #  467   0x4aabd  1      
  callq ._ZSt9terminatev                                                 #  468   0x4aabe  5      
  movl %eax, %edi                                                        #  469   0x4aac3  2      
  nop                                                                    #  470   0x4aac5  1      
  nop                                                                    #  471   0x4aac6  1      
  callq .__cxa_begin_catch                                               #  472   0x4aac7  5      
  nop                                                                    #  473   0x4aacc  1      
  nop                                                                    #  474   0x4aacd  1      
  callq ._ZSt9terminatev                                                 #  475   0x4aace  5      
  movl %eax, %ebx                                                        #  476   0x4aad3  2      
  nop                                                                    #  477   0x4aad5  1      
  nop                                                                    #  478   0x4aad6  1      
  callq .__cxa_end_catch                                                 #  479   0x4aad7  5      
  movl %ebx, %edi                                                        #  480   0x4aadc  2      
  nop                                                                    #  481   0x4aade  1      
  nop                                                                    #  482   0x4aadf  1      
  callq ._Unwind_Resume                                                  #  483   0x4aae0  5      
                                                                                                  
.size __gxx_personality_v0, .-__gxx_personality_v0

