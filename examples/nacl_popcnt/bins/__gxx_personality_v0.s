  .text
  .globl __gxx_personality_v0
  .type __gxx_personality_v0, @function

#! file-offset 0x4a440
#! rip-offset  0x4a440
#! capacity    2624 bytes

# Text                                                                   #  Line  RIP      Bytes  
.__gxx_personality_v0:                                                   #        0x4a440  0      
  pushq %r14                                                             #  1     0x4a440  3      
  movl %ecx, %ecx                                                        #  2     0x4a443  2      
  movl %r8d, %r8d                                                        #  3     0x4a445  3      
  movl $0x3, %eax                                                        #  4     0x4a448  5      
  pushq %r13                                                             #  5     0x4a44d  3      
  pushq %r12                                                             #  6     0x4a450  3      
  pushq %rbx                                                             #  7     0x4a453  2      
  subl $0xa8, %esp                                                       #  8     0x4a455  3      
  addq %r15, %rsp                                                        #  9     0x4a458  3      
  cmpl $0x1, %edi                                                        #  10    0x4a45b  3      
  nop                                                                    #  11    0x4a45e  1      
  movl %esi, 0x3c(%rsp)                                                  #  12    0x4a45f  4      
  movq %rcx, 0x40(%rsp)                                                  #  13    0x4a463  5      
  movq %r8, 0x30(%rsp)                                                   #  14    0x4a468  5      
  je .L_4a4a0                                                            #  15    0x4a46d  6      
  nop                                                                    #  16    0x4a473  1      
  nop                                                                    #  17    0x4a474  1      
.L_4a480:                                                                #        0x4a475  0      
  addl $0xa8, %esp                                                       #  18    0x4a475  3      
  addq %r15, %rsp                                                        #  19    0x4a478  3      
  popq %rbx                                                              #  20    0x4a47b  2      
  popq %r12                                                              #  21    0x4a47d  3      
  popq %r13                                                              #  22    0x4a480  3      
  popq %r14                                                              #  23    0x4a483  3      
  popq %r11                                                              #  24    0x4a486  3      
  andl $0xffffffe0, %r11d                                                #  25    0x4a489  7      
  addq %r15, %r11                                                        #  26    0x4a490  3      
  jmpq %r11                                                              #  27    0x4a493  3      
  nop                                                                    #  28    0x4a496  1      
.L_4a4a0:                                                                #        0x4a497  0      
  movl 0x40(%rsp), %eax                                                  #  29    0x4a497  4      
  movl $0x0, 0x9c(%rsp)                                                  #  30    0x4a49b  11     
  movl $0x0, 0x98(%rsp)                                                  #  31    0x4a4a6  11     
  subl $0x30, %eax                                                       #  32    0x4a4b1  3      
  nop                                                                    #  33    0x4a4b4  1      
  movq %rax, 0x50(%rsp)                                                  #  34    0x4a4b5  5      
  movq $0xb8b1aabcbcd4d500, %rax                                         #  35    0x4a4ba  10     
  addq %rax, %rdx                                                        #  36    0x4a4c4  3      
  cmpq $0x1, %rdx                                                        #  37    0x4a4c7  4      
  seta 0x5b(%rsp)                                                        #  38    0x4a4cb  5      
  cmpl $0x6, %esi                                                        #  39    0x4a4d0  3      
  xchgw %ax, %ax                                                         #  40    0x4a4d3  3      
  je .L_4a800                                                            #  41    0x4a4d6  6      
  nop                                                                    #  42    0x4a4dc  1      
  nop                                                                    #  43    0x4a4dd  1      
.L_4a500:                                                                #        0x4a4de  0      
  movl 0x30(%rsp), %edi                                                  #  44    0x4a4de  4      
  nop                                                                    #  45    0x4a4e2  1      
  nop                                                                    #  46    0x4a4e3  1      
  callq ._Unwind_GetLanguageSpecificData                                 #  47    0x4a4e4  5      
  movl %eax, %eax                                                        #  48    0x4a4e9  2      
  testq %rax, %rax                                                       #  49    0x4a4eb  3      
  movq %rax, 0x48(%rsp)                                                  #  50    0x4a4ee  5      
  je .L_4a8c0                                                            #  51    0x4a4f3  6      
  leal 0x70(%rsp), %edx                                                  #  52    0x4a4f9  4      
  movl 0x30(%rsp), %edi                                                  #  53    0x4a4fd  4      
  movl %eax, %esi                                                        #  54    0x4a501  2      
  nop                                                                    #  55    0x4a503  1      
  leal 0x94(%rsp), %r13d                                                 #  56    0x4a504  8      
  leal 0x90(%rsp), %r14d                                                 #  57    0x4a50c  8      
  movq %rdx, 0x18(%rsp)                                                  #  58    0x4a514  5      
  movl 0x18(%rsp), %edx                                                  #  59    0x4a519  4      
  xchgw %ax, %ax                                                         #  60    0x4a51d  3      
  callq ._ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info  #  61    0x4a520  5      
  movzbl 0x84(%rsp), %edi                                                #  62    0x4a525  8      
  movl 0x30(%rsp), %esi                                                  #  63    0x4a52d  4      
  movl %eax, %edx                                                        #  64    0x4a531  2      
  movq %rdx, 0x28(%rsp)                                                  #  65    0x4a533  5      
  nop                                                                    #  66    0x4a538  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  67    0x4a539  5      
  movl 0x30(%rsp), %edi                                                  #  68    0x4a53e  4      
  leal 0x98(%rsp), %esi                                                  #  69    0x4a542  7      
  movl %eax, 0x78(%rsp)                                                  #  70    0x4a549  4      
  nop                                                                    #  71    0x4a54d  1      
  callq ._Unwind_GetIPInfo                                               #  72    0x4a54e  5      
  cmpl $0x1, 0x98(%rsp)                                                  #  73    0x4a553  8      
  movl %eax, %r12d                                                       #  74    0x4a55b  3      
  movl 0x80(%rsp), %eax                                                  #  75    0x4a55e  7      
  leal 0x8c(%rsp), %ecx                                                  #  76    0x4a565  7      
  movq 0x28(%rsp), %rdx                                                  #  77    0x4a56c  5      
  xchgw %ax, %ax                                                         #  78    0x4a571  3      
  movq %rcx, 0x10(%rsp)                                                  #  79    0x4a574  5      
  sbbl $0x0, %r12d                                                       #  80    0x4a579  4      
  nop                                                                    #  81    0x4a57d  1      
  nop                                                                    #  82    0x4a57e  1      
.L_4a5e0:                                                                #        0x4a57f  0      
  cmpl %eax, %edx                                                        #  83    0x4a57f  2      
  jae .L_4a740                                                           #  84    0x4a581  6      
  nop                                                                    #  85    0x4a587  1      
  nop                                                                    #  86    0x4a588  1      
.L_4a600:                                                                #        0x4a589  0      
  movzbl 0x85(%rsp), %ebx                                                #  87    0x4a589  8      
  xorl %esi, %esi                                                        #  88    0x4a591  2      
  movq %rdx, 0x28(%rsp)                                                  #  89    0x4a593  5      
  movl %ebx, %edi                                                        #  90    0x4a598  2      
  nop                                                                    #  91    0x4a59a  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  92    0x4a59b  5      
  movq 0x28(%rsp), %rdx                                                  #  93    0x4a5a0  5      
  movl %r13d, %ecx                                                       #  94    0x4a5a5  3      
  movl %ebx, %edi                                                        #  95    0x4a5a8  2      
  movl %eax, %esi                                                        #  96    0x4a5aa  2      
  nop                                                                    #  97    0x4a5ac  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj                        #  98    0x4a5ad  5      
  movzbl 0x85(%rsp), %ebx                                                #  99    0x4a5b2  8      
  movl %eax, %edx                                                        #  100   0x4a5ba  2      
  xorl %esi, %esi                                                        #  101   0x4a5bc  2      
  movq %rdx, 0x28(%rsp)                                                  #  102   0x4a5be  5      
  movl %ebx, %edi                                                        #  103   0x4a5c3  2      
  nop                                                                    #  104   0x4a5c5  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  105   0x4a5c6  5      
  movq 0x28(%rsp), %rdx                                                  #  106   0x4a5cb  5      
  movl %r14d, %ecx                                                       #  107   0x4a5d0  3      
  movl %ebx, %edi                                                        #  108   0x4a5d3  2      
  movl %eax, %esi                                                        #  109   0x4a5d5  2      
  nop                                                                    #  110   0x4a5d7  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj                        #  111   0x4a5d8  5      
  movzbl 0x85(%rsp), %ebx                                                #  112   0x4a5dd  8      
  movl %eax, %edx                                                        #  113   0x4a5e5  2      
  xorl %esi, %esi                                                        #  114   0x4a5e7  2      
  movq %rdx, 0x28(%rsp)                                                  #  115   0x4a5e9  5      
  movl %ebx, %edi                                                        #  116   0x4a5ee  2      
  nop                                                                    #  117   0x4a5f0  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  118   0x4a5f1  5      
  movl 0x10(%rsp), %ecx                                                  #  119   0x4a5f6  4      
  movq 0x28(%rsp), %rdx                                                  #  120   0x4a5fa  5      
  movl %eax, %esi                                                        #  121   0x4a5ff  2      
  movl %ebx, %edi                                                        #  122   0x4a601  2      
  nop                                                                    #  123   0x4a603  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj                        #  124   0x4a604  5      
  xorl %ecx, %ecx                                                        #  125   0x4a609  2      
  movl %eax, %edx                                                        #  126   0x4a60b  2      
  xorl %eax, %eax                                                        #  127   0x4a60d  2      
  nop                                                                    #  128   0x4a60f  1      
  nop                                                                    #  129   0x4a610  1      
.L_4a6e0:                                                                #        0x4a611  0      
  movl %edx, %edx                                                        #  130   0x4a611  2      
  movzbl (%r15,%rdx,1), %esi                                             #  131   0x4a613  5      
  addl $0x1, %edx                                                        #  132   0x4a618  3      
  movl %esi, %ebx                                                        #  133   0x4a61b  2      
  andl $0x7f, %ebx                                                       #  134   0x4a61d  3      
  shll %cl, %ebx                                                         #  135   0x4a620  2      
  addl $0x7, %ecx                                                        #  136   0x4a622  3      
  orl %ebx, %eax                                                         #  137   0x4a625  2      
  testb %sil, %sil                                                       #  138   0x4a627  3      
  js .L_4a6e0                                                            #  139   0x4a62a  6      
  nop                                                                    #  140   0x4a630  1      
  movl 0x94(%rsp), %ecx                                                  #  141   0x4a631  7      
  addl 0x70(%rsp), %ecx                                                  #  142   0x4a638  4      
  cmpl %ecx, %r12d                                                       #  143   0x4a63c  3      
  jae .L_4a7e0                                                           #  144   0x4a63f  6      
  movl 0x80(%rsp), %edx                                                  #  145   0x4a645  7      
  movq %rdx, %rax                                                        #  146   0x4a64c  3      
  cmpl %eax, %edx                                                        #  147   0x4a64f  2      
  jb .L_4a600                                                            #  148   0x4a651  6      
  nop                                                                    #  149   0x4a657  1      
  nop                                                                    #  150   0x4a658  1      
.L_4a740:                                                                #        0x4a659  0      
  xorl %r13d, %r13d                                                      #  151   0x4a659  3      
  movl $0x0, 0x5c(%rsp)                                                  #  152   0x4a65c  8      
  xorl %r12d, %r12d                                                      #  153   0x4a664  3      
  movl $0x1, %eax                                                        #  154   0x4a667  5      
  nop                                                                    #  155   0x4a66c  1      
.L_4a760:                                                                #        0x4a66d  0      
  testb $0x1, 0x3c(%rsp)                                                 #  156   0x4a66d  5      
  je .L_4a900                                                            #  157   0x4a672  6      
  cmpl $0x2, %eax                                                        #  158   0x4a678  3      
  je .L_4a8c0                                                            #  159   0x4a67b  6      
  cmpb $0x0, 0x5b(%rsp)                                                  #  160   0x4a681  5      
  movl $0x6, %eax                                                        #  161   0x4a686  5      
  xchgw %ax, %ax                                                         #  162   0x4a68b  3      
  jne .L_4a480                                                           #  163   0x4a68e  6      
  movl 0x9c(%rsp), %eax                                                  #  164   0x4a694  7      
  movq 0x50(%rsp), %rdx                                                  #  165   0x4a69b  5      
  movl 0x48(%rsp), %ecx                                                  #  166   0x4a6a0  4      
  movl %edx, %edx                                                        #  167   0x4a6a4  2      
  movl %r13d, 0x18(%r15,%rdx,1)                                          #  168   0x4a6a6  5      
  nop                                                                    #  169   0x4a6ab  1      
  movl %edx, %edx                                                        #  170   0x4a6ac  2      
  movl %r12d, 0x1c(%r15,%rdx,1)                                          #  171   0x4a6ae  5      
  movl %edx, %edx                                                        #  172   0x4a6b3  2      
  movl %eax, 0x28(%r15,%rdx,1)                                           #  173   0x4a6b5  5      
  movl 0x5c(%rsp), %eax                                                  #  174   0x4a6ba  4      
  movl %edx, %edx                                                        #  175   0x4a6be  2      
  movl %ecx, 0x20(%r15,%rdx,1)                                           #  176   0x4a6c0  5      
  movl %edx, %edx                                                        #  177   0x4a6c5  2      
  movl %eax, 0x24(%r15,%rdx,1)                                           #  178   0x4a6c7  5      
  movl $0x6, %eax                                                        #  179   0x4a6cc  5      
  jmpq .L_4a480                                                          #  180   0x4a6d1  5      
  nop                                                                    #  181   0x4a6d6  1      
  nop                                                                    #  182   0x4a6d7  1      
.L_4a7e0:                                                                #        0x4a6d8  0      
  addl 0x90(%rsp), %ecx                                                  #  183   0x4a6d8  7      
  cmpl %ecx, %r12d                                                       #  184   0x4a6df  3      
  jb .L_4a860                                                            #  185   0x4a6e2  6      
  movl 0x80(%rsp), %eax                                                  #  186   0x4a6e8  7      
  jmpq .L_4a5e0                                                          #  187   0x4a6ef  5      
  nop                                                                    #  188   0x4a6f4  1      
.L_4a800:                                                                #        0x4a6f5  0      
  cmpb $0x0, 0x5b(%rsp)                                                  #  189   0x4a6f5  5      
  jne .L_4a500                                                           #  190   0x4a6fa  6      
  movq 0x50(%rsp), %rdx                                                  #  191   0x4a700  5      
  movl %edx, %edx                                                        #  192   0x4a705  2      
  movl 0x24(%r15,%rdx,1), %eax                                           #  193   0x4a707  5      
  movl %edx, %edx                                                        #  194   0x4a70c  2      
  movl 0x20(%r15,%rdx,1), %ecx                                           #  195   0x4a70e  5      
  xchgw %ax, %ax                                                         #  196   0x4a713  3      
  movl %edx, %edx                                                        #  197   0x4a716  2      
  movl 0x18(%r15,%rdx,1), %r13d                                          #  198   0x4a718  5      
  testl %eax, %eax                                                       #  199   0x4a71d  2      
  movl %eax, 0x5c(%rsp)                                                  #  200   0x4a71f  4      
  movq %rcx, 0x48(%rsp)                                                  #  201   0x4a723  5      
  jne .L_4a8e0                                                           #  202   0x4a728  6      
  nop                                                                    #  203   0x4a72e  1      
.L_4a840:                                                                #        0x4a72f  0      
  movl 0x40(%rsp), %edi                                                  #  204   0x4a72f  4      
  nop                                                                    #  205   0x4a733  1      
  nop                                                                    #  206   0x4a734  1      
  callq .__cxa_call_terminate                                            #  207   0x4a735  5      
.L_4a860:                                                                #        0x4a73a  0      
  movl 0x8c(%rsp), %edx                                                  #  208   0x4a73a  7      
  movl $0x0, 0x5c(%rsp)                                                  #  209   0x4a741  8      
  testl %edx, %edx                                                       #  210   0x4a749  2      
  je .L_4a880                                                            #  211   0x4a74b  6      
  addl 0x74(%rsp), %edx                                                  #  212   0x4a751  4      
  movl %edx, 0x5c(%rsp)                                                  #  213   0x4a755  4      
  nop                                                                    #  214   0x4a759  1      
.L_4a880:                                                                #        0x4a75a  0      
  xorl %r12d, %r12d                                                      #  215   0x4a75a  3      
  testl %eax, %eax                                                       #  216   0x4a75d  2      
  je .L_4a8a0                                                            #  217   0x4a75f  6      
  movl 0x80(%rsp), %r12d                                                 #  218   0x4a765  8      
  subl $0x1, %eax                                                        #  219   0x4a76d  3      
  addl %eax, %r12d                                                       #  220   0x4a770  3      
  nop                                                                    #  221   0x4a773  1      
.L_4a8a0:                                                                #        0x4a774  0      
  movl 0x5c(%rsp), %edx                                                  #  222   0x4a774  4      
  testl %edx, %edx                                                       #  223   0x4a778  2      
  jne .L_4a9c0                                                           #  224   0x4a77a  6      
  nop                                                                    #  225   0x4a780  1      
  nop                                                                    #  226   0x4a781  1      
.L_4a8c0:                                                                #        0x4a782  0      
  movl $0x8, %eax                                                        #  227   0x4a782  5      
  jmpq .L_4a480                                                          #  228   0x4a787  5      
  nop                                                                    #  229   0x4a78c  1      
  nop                                                                    #  230   0x4a78d  1      
.L_4a8e0:                                                                #        0x4a78e  0      
  movl $0x3, %eax                                                        #  231   0x4a78e  5      
  nop                                                                    #  232   0x4a793  1      
  nop                                                                    #  233   0x4a794  1      
.L_4a900:                                                                #        0x4a795  0      
  testb $0x8, 0x3c(%rsp)                                                 #  234   0x4a795  5      
  je .L_4ac40                                                            #  235   0x4a79a  6      
  nop                                                                    #  236   0x4a7a0  1      
  nop                                                                    #  237   0x4a7a1  1      
.L_4a920:                                                                #        0x4a7a2  0      
  cmpl $0x1, %eax                                                        #  238   0x4a7a2  3      
  je .L_4ade0                                                            #  239   0x4a7a5  6      
  testl %r13d, %r13d                                                     #  240   0x4a7ab  3      
  js .L_4adc0                                                            #  241   0x4a7ae  6      
  nop                                                                    #  242   0x4a7b4  1      
.L_4a940:                                                                #        0x4a7b5  0      
  movq 0x40(%rsp), %rdx                                                  #  243   0x4a7b5  5      
  movl 0x30(%rsp), %edi                                                  #  244   0x4a7ba  4      
  xorl %esi, %esi                                                        #  245   0x4a7be  2      
  nop                                                                    #  246   0x4a7c0  1      
  nop                                                                    #  247   0x4a7c1  1      
  callq ._Unwind_SetGR                                                   #  248   0x4a7c2  5      
  movl 0x30(%rsp), %edi                                                  #  249   0x4a7c7  4      
  movslq %r13d, %rdx                                                     #  250   0x4a7cb  3      
  movl $0x1, %esi                                                        #  251   0x4a7ce  5      
  nop                                                                    #  252   0x4a7d3  1      
  callq ._Unwind_SetGR                                                   #  253   0x4a7d4  5      
  movl 0x5c(%rsp), %esi                                                  #  254   0x4a7d9  4      
  movl 0x30(%rsp), %edi                                                  #  255   0x4a7dd  4      
  nop                                                                    #  256   0x4a7e1  1      
  nop                                                                    #  257   0x4a7e2  1      
  callq ._Unwind_SetIP                                                   #  258   0x4a7e3  5      
  movl $0x7, %eax                                                        #  259   0x4a7e8  5      
  jmpq .L_4a480                                                          #  260   0x4a7ed  5      
  nop                                                                    #  261   0x4a7f2  1      
  nop                                                                    #  262   0x4a7f3  1      
.L_4a9c0:                                                                #        0x4a7f4  0      
  testq %r12, %r12                                                       #  263   0x4a7f4  3      
  je .L_4ad20                                                            #  264   0x4a7f7  6      
  movl 0x3c(%rsp), %eax                                                  #  265   0x4a7fd  4      
  andl $0x8, %eax                                                        #  266   0x4a801  3      
  movl %eax, 0x6c(%rsp)                                                  #  267   0x4a804  4      
  je .L_4ad40                                                            #  268   0x4a808  6      
  nop                                                                    #  269   0x4a80e  1      
  movq $0x10020ec0, 0x60(%rsp)                                           #  270   0x4a80f  9      
  nop                                                                    #  271   0x4a818  1      
  nop                                                                    #  272   0x4a819  1      
.L_4aa00:                                                                #        0x4a81a  0      
  leal 0x9c(%rsp), %ecx                                                  #  273   0x4a81a  7      
  movb $0x0, 0x6b(%rsp)                                                  #  274   0x4a821  5      
  movq %rcx, 0x8(%rsp)                                                   #  275   0x4a826  5      
  nop                                                                    #  276   0x4a82b  1      
.L_4aa20:                                                                #        0x4a82c  0      
  movq %r12, %rax                                                        #  277   0x4a82c  3      
  xorl %esi, %esi                                                        #  278   0x4a82f  2      
  xorl %ecx, %ecx                                                        #  279   0x4a831  2      
  nop                                                                    #  280   0x4a833  1      
  nop                                                                    #  281   0x4a834  1      
.L_4aa40:                                                                #        0x4a835  0      
  movl %eax, %eax                                                        #  282   0x4a835  2      
  movzbl (%r15,%rax,1), %edi                                             #  283   0x4a837  5      
  addl $0x1, %eax                                                        #  284   0x4a83c  3      
  movzbl %dil, %ebx                                                      #  285   0x4a83f  4      
  movl %ebx, %edx                                                        #  286   0x4a843  2      
  andl $0x7f, %edx                                                       #  287   0x4a845  3      
  shll %cl, %edx                                                         #  288   0x4a848  2      
  addl $0x7, %ecx                                                        #  289   0x4a84a  3      
  orl %edx, %esi                                                         #  290   0x4a84d  2      
  testb %dil, %dil                                                       #  291   0x4a84f  3      
  nop                                                                    #  292   0x4a852  1      
  js .L_4aa40                                                            #  293   0x4a853  6      
  cmpl $0x1f, %ecx                                                       #  294   0x4a859  3      
  movq %rax, %r13                                                        #  295   0x4a85c  3      
  ja .L_4aa80                                                            #  296   0x4a85f  6      
  andl $0x40, %ebx                                                       #  297   0x4a865  3      
  je .L_4aa80                                                            #  298   0x4a868  6      
  movl $0x1, %edx                                                        #  299   0x4a86e  5      
  shll %cl, %edx                                                         #  300   0x4a873  2      
  movl %edx, %ecx                                                        #  301   0x4a875  2      
  negl %ecx                                                              #  302   0x4a877  2      
  orl %ecx, %esi                                                         #  303   0x4a879  2      
  nop                                                                    #  304   0x4a87b  1      
.L_4aa80:                                                                #        0x4a87c  0      
  movl %esi, %r14d                                                       #  305   0x4a87c  3      
  xorl %ebx, %ebx                                                        #  306   0x4a87f  2      
  xorl %ecx, %ecx                                                        #  307   0x4a881  2      
  nop                                                                    #  308   0x4a883  1      
  nop                                                                    #  309   0x4a884  1      
.L_4aaa0:                                                                #        0x4a885  0      
  movl %eax, %eax                                                        #  310   0x4a885  2      
  movzbl (%r15,%rax,1), %edi                                             #  311   0x4a887  5      
  addl $0x1, %eax                                                        #  312   0x4a88c  3      
  movzbl %dil, %r8d                                                      #  313   0x4a88f  4      
  movl %r8d, %edx                                                        #  314   0x4a893  3      
  andl $0x7f, %edx                                                       #  315   0x4a896  3      
  shll %cl, %edx                                                         #  316   0x4a899  2      
  addl $0x7, %ecx                                                        #  317   0x4a89b  3      
  orl %edx, %ebx                                                         #  318   0x4a89e  2      
  testb %dil, %dil                                                       #  319   0x4a8a0  3      
  xchgw %ax, %ax                                                         #  320   0x4a8a3  3      
  js .L_4aaa0                                                            #  321   0x4a8a6  6      
  cmpl $0x1f, %ecx                                                       #  322   0x4a8ac  3      
  ja .L_4aae0                                                            #  323   0x4a8af  6      
  andl $0x40, %r8d                                                       #  324   0x4a8b5  4      
  je .L_4aae0                                                            #  325   0x4a8b9  6      
  movl $0x1, %eax                                                        #  326   0x4a8bf  5      
  shll %cl, %eax                                                         #  327   0x4a8c4  2      
  movl %eax, %ecx                                                        #  328   0x4a8c6  2      
  negl %ecx                                                              #  329   0x4a8c8  2      
  orl %ecx, %ebx                                                         #  330   0x4a8ca  2      
  nop                                                                    #  331   0x4a8cc  1      
.L_4aae0:                                                                #        0x4a8cd  0      
  cmpl $0x0, %esi                                                        #  332   0x4a8cd  3      
  jne .L_4ab20                                                           #  333   0x4a8d0  6      
  movb $0x1, 0x6b(%rsp)                                                  #  334   0x4a8d6  5      
  nop                                                                    #  335   0x4a8db  1      
  nop                                                                    #  336   0x4a8dc  1      
.L_4ab00:                                                                #        0x4a8dd  0      
  testl %ebx, %ebx                                                       #  337   0x4a8dd  2      
  je .L_4ad00                                                            #  338   0x4a8df  6      
  leal (%rbx,%r13,1), %r12d                                              #  339   0x4a8e5  4      
  jmpq .L_4aa20                                                          #  340   0x4a8e9  5      
  nop                                                                    #  341   0x4a8ee  1      
.L_4ab20:                                                                #        0x4a8ef  0      
  jg .L_4abe0                                                            #  342   0x4a8ef  6      
  cmpq $0x0, 0x60(%rsp)                                                  #  343   0x4a8f5  6      
  je .L_4ab60                                                            #  344   0x4a8fb  6      
  movl 0x6c(%rsp), %eax                                                  #  345   0x4a901  4      
  testl %eax, %eax                                                       #  346   0x4a905  2      
  jne .L_4ab60                                                           #  347   0x4a907  6      
  cmpb $0x0, 0x5b(%rsp)                                                  #  348   0x4a90d  5      
  nop                                                                    #  349   0x4a912  1      
  je .L_4acc0                                                            #  350   0x4a913  6      
  nop                                                                    #  351   0x4a919  1      
  nop                                                                    #  352   0x4a91a  1      
.L_4ab60:                                                                #        0x4a91b  0      
  movl 0x7c(%rsp), %edx                                                  #  353   0x4a91b  4      
  notl %esi                                                              #  354   0x4a91f  2      
  xorl %edi, %edi                                                        #  355   0x4a921  2      
  xorl %ecx, %ecx                                                        #  356   0x4a923  2      
  addl %esi, %edx                                                        #  357   0x4a925  2      
  nop                                                                    #  358   0x4a927  1      
  nop                                                                    #  359   0x4a928  1      
.L_4ab80:                                                                #        0x4a929  0      
  movl %edx, %edx                                                        #  360   0x4a929  2      
  movzbl (%r15,%rdx,1), %esi                                             #  361   0x4a92b  5      
  addl $0x1, %edx                                                        #  362   0x4a930  3      
  movl %esi, %eax                                                        #  363   0x4a933  2      
  andl $0x7f, %eax                                                       #  364   0x4a935  3      
  shll %cl, %eax                                                         #  365   0x4a938  2      
  addl $0x7, %ecx                                                        #  366   0x4a93a  3      
  orl %eax, %edi                                                         #  367   0x4a93d  2      
  testb %sil, %sil                                                       #  368   0x4a93f  3      
  js .L_4ab80                                                            #  369   0x4a942  6      
  testl %edi, %edi                                                       #  370   0x4a948  2      
  sete %al                                                               #  371   0x4a94a  3      
.L_4aba0:                                                                #        0x4a94d  0      
  testb %al, %al                                                         #  372   0x4a94d  2      
  je .L_4ab00                                                            #  373   0x4a94f  6      
  nop                                                                    #  374   0x4a955  1      
  nop                                                                    #  375   0x4a956  1      
.L_4abc0:                                                                #        0x4a957  0      
  movl %r14d, %r13d                                                      #  376   0x4a957  3      
  movl $0x3, %eax                                                        #  377   0x4a95a  5      
  jmpq .L_4a760                                                          #  378   0x4a95f  5      
  nop                                                                    #  379   0x4a964  1      
  nop                                                                    #  380   0x4a965  1      
.L_4abe0:                                                                #        0x4a966  0      
  movl 0x18(%rsp), %edi                                                  #  381   0x4a966  4      
  nop                                                                    #  382   0x4a96a  1      
  nop                                                                    #  383   0x4a96b  1      
  callq ._ZL15get_ttype_entryP16lsda_header_infom                        #  384   0x4a96c  5      
  movl %eax, %edi                                                        #  385   0x4a971  2      
  testq %rdi, %rdi                                                       #  386   0x4a973  3      
  je .L_4abc0                                                            #  387   0x4a976  6      
  cmpq $0x0, 0x60(%rsp)                                                  #  388   0x4a97c  6      
  je .L_4ab00                                                            #  389   0x4a982  6      
  movl 0x8(%rsp), %edx                                                   #  390   0x4a988  4      
  movl 0x60(%rsp), %esi                                                  #  391   0x4a98c  4      
  callq ._ZL16get_adjusted_ptrPKSt9type_infoS1_PPv                       #  392   0x4a990  5      
  testb %al, %al                                                         #  393   0x4a995  2      
  jne .L_4abc0                                                           #  394   0x4a997  6      
  jmpq .L_4ab00                                                          #  395   0x4a99d  5      
  nop                                                                    #  396   0x4a9a2  1      
  nop                                                                    #  397   0x4a9a3  1      
.L_4ac40:                                                                #        0x4a9a4  0      
  cmpb $0x0, 0x5b(%rsp)                                                  #  398   0x4a9a4  5      
  jne .L_4a920                                                           #  399   0x4a9a9  6      
  cmpl $0x1, %eax                                                        #  400   0x4a9af  3      
  je .L_4a840                                                            #  401   0x4a9b2  6      
  testl %r13d, %r13d                                                     #  402   0x4a9b8  3      
  jns .L_4a940                                                           #  403   0x4a9bb  6      
  nop                                                                    #  404   0x4a9c1  1      
  movl 0x48(%rsp), %esi                                                  #  405   0x4a9c2  4      
  movl 0x30(%rsp), %edi                                                  #  406   0x4a9c6  4      
  leal 0x70(%rsp), %edx                                                  #  407   0x4a9ca  4      
  nop                                                                    #  408   0x4a9ce  1      
  callq ._ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info  #  409   0x4a9cf  5      
  movzbl 0x84(%rsp), %edi                                                #  410   0x4a9d4  8      
  movl 0x30(%rsp), %esi                                                  #  411   0x4a9dc  4      
  nop                                                                    #  412   0x4a9e0  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  413   0x4a9e1  5      
  movq 0x50(%rsp), %rdx                                                  #  414   0x4a9e6  5      
  movl %edx, %edx                                                        #  415   0x4a9eb  2      
  movl %eax, 0x24(%r15,%rdx,1)                                           #  416   0x4a9ed  5      
  jmpq .L_4a940                                                          #  417   0x4a9f2  5      
  nop                                                                    #  418   0x4a9f7  1      
.L_4acc0:                                                                #        0x4a9f8  0      
  movl %esi, %ecx                                                        #  419   0x4a9f8  2      
  movl 0x9c(%rsp), %edx                                                  #  420   0x4a9fa  7      
  movl 0x60(%rsp), %esi                                                  #  421   0x4aa01  4      
  movl 0x18(%rsp), %edi                                                  #  422   0x4aa05  4      
  nop                                                                    #  423   0x4aa09  1      
  callq ._ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl   #  424   0x4aa0a  5      
  xorl $0x1, %eax                                                        #  425   0x4aa0f  3      
  jmpq .L_4aba0                                                          #  426   0x4aa12  5      
  nop                                                                    #  427   0x4aa17  1      
  nop                                                                    #  428   0x4aa18  1      
.L_4ad00:                                                                #        0x4aa19  0      
  cmpb $0x0, 0x6b(%rsp)                                                  #  429   0x4aa19  5      
  je .L_4a8c0                                                            #  430   0x4aa1e  6      
  nop                                                                    #  431   0x4aa24  1      
  nop                                                                    #  432   0x4aa25  1      
.L_4ad20:                                                                #        0x4aa26  0      
  xorl %r13d, %r13d                                                      #  433   0x4aa26  3      
  movl $0x2, %eax                                                        #  434   0x4aa29  5      
  jmpq .L_4a760                                                          #  435   0x4aa2e  5      
  nop                                                                    #  436   0x4aa33  1      
  nop                                                                    #  437   0x4aa34  1      
.L_4ad40:                                                                #        0x4aa35  0      
  cmpb $0x0, 0x5b(%rsp)                                                  #  438   0x4aa35  5      
  movq $0x10020e84, 0x60(%rsp)                                           #  439   0x4aa3a  9      
  jne .L_4aa00                                                           #  440   0x4aa43  6      
  movq 0x40(%rsp), %rdx                                                  #  441   0x4aa49  5      
  movl %edx, %edx                                                        #  442   0x4aa4e  2      
  testb $0x1, (%r15,%rdx,1)                                              #  443   0x4aa50  5      
  je .L_4ada0                                                            #  444   0x4aa55  6      
  movl 0x40(%rsp), %eax                                                  #  445   0x4aa5b  4      
  subl $0x30, %eax                                                       #  446   0x4aa5f  3      
  movl %eax, %eax                                                        #  447   0x4aa62  2      
  movl (%r15,%rax,1), %eax                                               #  448   0x4aa64  4      
  xchgw %ax, %ax                                                         #  449   0x4aa68  3      
  nop                                                                    #  450   0x4aa6b  1      
.L_4ad80:                                                                #        0x4aa6c  0      
  movl %eax, 0x9c(%rsp)                                                  #  451   0x4aa6c  7      
  subl $0x50, %eax                                                       #  452   0x4aa73  3      
  movl %eax, %eax                                                        #  453   0x4aa76  2      
  movl (%r15,%rax,1), %eax                                               #  454   0x4aa78  4      
  movq %rax, 0x60(%rsp)                                                  #  455   0x4aa7c  5      
  jmpq .L_4aa00                                                          #  456   0x4aa81  5      
  nop                                                                    #  457   0x4aa86  1      
.L_4ada0:                                                                #        0x4aa87  0      
  movl 0x40(%rsp), %eax                                                  #  458   0x4aa87  4      
  addl $0x20, %eax                                                       #  459   0x4aa8b  3      
  jmpq .L_4ad80                                                          #  460   0x4aa8e  5      
  nop                                                                    #  461   0x4aa93  1      
  nop                                                                    #  462   0x4aa94  1      
.L_4adc0:                                                                #        0x4aa95  0      
  nop                                                                    #  463   0x4aa95  1      
  nop                                                                    #  464   0x4aa96  1      
  callq ._ZSt10unexpectedv                                               #  465   0x4aa97  5      
.L_4ade0:                                                                #        0x4aa9c  0      
  nop                                                                    #  466   0x4aa9c  1      
  nop                                                                    #  467   0x4aa9d  1      
  callq ._ZSt9terminatev                                                 #  468   0x4aa9e  5      
  movl %eax, %edi                                                        #  469   0x4aaa3  2      
  nop                                                                    #  470   0x4aaa5  1      
  nop                                                                    #  471   0x4aaa6  1      
  callq .__cxa_begin_catch                                               #  472   0x4aaa7  5      
  nop                                                                    #  473   0x4aaac  1      
  nop                                                                    #  474   0x4aaad  1      
  callq ._ZSt9terminatev                                                 #  475   0x4aaae  5      
  movl %eax, %ebx                                                        #  476   0x4aab3  2      
  nop                                                                    #  477   0x4aab5  1      
  nop                                                                    #  478   0x4aab6  1      
  callq .__cxa_end_catch                                                 #  479   0x4aab7  5      
  movl %ebx, %edi                                                        #  480   0x4aabc  2      
  nop                                                                    #  481   0x4aabe  1      
  nop                                                                    #  482   0x4aabf  1      
  callq ._Unwind_Resume                                                  #  483   0x4aac0  5      
                                                                                                  
.size __gxx_personality_v0, .-__gxx_personality_v0

