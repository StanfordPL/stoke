  .text
  .globl __gxx_personality_v0
  .type __gxx_personality_v0, @function

#! file-offset 0x4a4e0
#! rip-offset  0x4a4e0
#! capacity    2624 bytes

# Text                                                                   #  Line  RIP      Bytes  
.__gxx_personality_v0:                                                   #        0x4a4e0  0      
  pushq %r14                                                             #  1     0x4a4e0  3      
  movl %ecx, %ecx                                                        #  2     0x4a4e3  2      
  movl %r8d, %r8d                                                        #  3     0x4a4e5  3      
  movl $0x3, %eax                                                        #  4     0x4a4e8  5      
  pushq %r13                                                             #  5     0x4a4ed  3      
  pushq %r12                                                             #  6     0x4a4f0  3      
  pushq %rbx                                                             #  7     0x4a4f3  2      
  subl $0xa8, %esp                                                       #  8     0x4a4f5  3      
  addq %r15, %rsp                                                        #  9     0x4a4f8  3      
  cmpl $0x1, %edi                                                        #  10    0x4a4fb  3      
  nop                                                                    #  11    0x4a4fe  1      
  movl %esi, 0x3c(%rsp)                                                  #  12    0x4a4ff  4      
  movq %rcx, 0x40(%rsp)                                                  #  13    0x4a503  5      
  movq %r8, 0x30(%rsp)                                                   #  14    0x4a508  5      
  je .L_4a540                                                            #  15    0x4a50d  6      
  nop                                                                    #  16    0x4a513  1      
  nop                                                                    #  17    0x4a514  1      
.L_4a520:                                                                #        0x4a515  0      
  addl $0xa8, %esp                                                       #  18    0x4a515  3      
  addq %r15, %rsp                                                        #  19    0x4a518  3      
  popq %rbx                                                              #  20    0x4a51b  2      
  popq %r12                                                              #  21    0x4a51d  3      
  popq %r13                                                              #  22    0x4a520  3      
  popq %r14                                                              #  23    0x4a523  3      
  popq %r11                                                              #  24    0x4a526  3      
  andl $0xffffffe0, %r11d                                                #  25    0x4a529  7      
  addq %r15, %r11                                                        #  26    0x4a530  3      
  jmpq %r11                                                              #  27    0x4a533  3      
  nop                                                                    #  28    0x4a536  1      
.L_4a540:                                                                #        0x4a537  0      
  movl 0x40(%rsp), %eax                                                  #  29    0x4a537  4      
  movl $0x0, 0x9c(%rsp)                                                  #  30    0x4a53b  11     
  movl $0x0, 0x98(%rsp)                                                  #  31    0x4a546  11     
  subl $0x30, %eax                                                       #  32    0x4a551  3      
  nop                                                                    #  33    0x4a554  1      
  movq %rax, 0x50(%rsp)                                                  #  34    0x4a555  5      
  movq $0xb8b1aabcbcd4d500, %rax                                         #  35    0x4a55a  10     
  addq %rax, %rdx                                                        #  36    0x4a564  3      
  cmpq $0x1, %rdx                                                        #  37    0x4a567  4      
  seta 0x5b(%rsp)                                                        #  38    0x4a56b  5      
  cmpl $0x6, %esi                                                        #  39    0x4a570  3      
  xchgw %ax, %ax                                                         #  40    0x4a573  3      
  je .L_4a8a0                                                            #  41    0x4a576  6      
  nop                                                                    #  42    0x4a57c  1      
  nop                                                                    #  43    0x4a57d  1      
.L_4a5a0:                                                                #        0x4a57e  0      
  movl 0x30(%rsp), %edi                                                  #  44    0x4a57e  4      
  nop                                                                    #  45    0x4a582  1      
  nop                                                                    #  46    0x4a583  1      
  callq ._Unwind_GetLanguageSpecificData                                 #  47    0x4a584  5      
  movl %eax, %eax                                                        #  48    0x4a589  2      
  testq %rax, %rax                                                       #  49    0x4a58b  3      
  movq %rax, 0x48(%rsp)                                                  #  50    0x4a58e  5      
  je .L_4a960                                                            #  51    0x4a593  6      
  leal 0x70(%rsp), %edx                                                  #  52    0x4a599  4      
  movl 0x30(%rsp), %edi                                                  #  53    0x4a59d  4      
  movl %eax, %esi                                                        #  54    0x4a5a1  2      
  nop                                                                    #  55    0x4a5a3  1      
  leal 0x94(%rsp), %r13d                                                 #  56    0x4a5a4  8      
  leal 0x90(%rsp), %r14d                                                 #  57    0x4a5ac  8      
  movq %rdx, 0x18(%rsp)                                                  #  58    0x4a5b4  5      
  movl 0x18(%rsp), %edx                                                  #  59    0x4a5b9  4      
  xchgw %ax, %ax                                                         #  60    0x4a5bd  3      
  callq ._ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info  #  61    0x4a5c0  5      
  movzbl 0x84(%rsp), %edi                                                #  62    0x4a5c5  8      
  movl 0x30(%rsp), %esi                                                  #  63    0x4a5cd  4      
  movl %eax, %edx                                                        #  64    0x4a5d1  2      
  movq %rdx, 0x28(%rsp)                                                  #  65    0x4a5d3  5      
  nop                                                                    #  66    0x4a5d8  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  67    0x4a5d9  5      
  movl 0x30(%rsp), %edi                                                  #  68    0x4a5de  4      
  leal 0x98(%rsp), %esi                                                  #  69    0x4a5e2  7      
  movl %eax, 0x78(%rsp)                                                  #  70    0x4a5e9  4      
  nop                                                                    #  71    0x4a5ed  1      
  callq ._Unwind_GetIPInfo                                               #  72    0x4a5ee  5      
  cmpl $0x1, 0x98(%rsp)                                                  #  73    0x4a5f3  8      
  movl %eax, %r12d                                                       #  74    0x4a5fb  3      
  movl 0x80(%rsp), %eax                                                  #  75    0x4a5fe  7      
  leal 0x8c(%rsp), %ecx                                                  #  76    0x4a605  7      
  movq 0x28(%rsp), %rdx                                                  #  77    0x4a60c  5      
  xchgw %ax, %ax                                                         #  78    0x4a611  3      
  movq %rcx, 0x10(%rsp)                                                  #  79    0x4a614  5      
  sbbl $0x0, %r12d                                                       #  80    0x4a619  4      
  nop                                                                    #  81    0x4a61d  1      
  nop                                                                    #  82    0x4a61e  1      
.L_4a680:                                                                #        0x4a61f  0      
  cmpl %eax, %edx                                                        #  83    0x4a61f  2      
  jae .L_4a7e0                                                           #  84    0x4a621  6      
  nop                                                                    #  85    0x4a627  1      
  nop                                                                    #  86    0x4a628  1      
.L_4a6a0:                                                                #        0x4a629  0      
  movzbl 0x85(%rsp), %ebx                                                #  87    0x4a629  8      
  xorl %esi, %esi                                                        #  88    0x4a631  2      
  movq %rdx, 0x28(%rsp)                                                  #  89    0x4a633  5      
  movl %ebx, %edi                                                        #  90    0x4a638  2      
  nop                                                                    #  91    0x4a63a  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  92    0x4a63b  5      
  movq 0x28(%rsp), %rdx                                                  #  93    0x4a640  5      
  movl %r13d, %ecx                                                       #  94    0x4a645  3      
  movl %ebx, %edi                                                        #  95    0x4a648  2      
  movl %eax, %esi                                                        #  96    0x4a64a  2      
  nop                                                                    #  97    0x4a64c  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj                        #  98    0x4a64d  5      
  movzbl 0x85(%rsp), %ebx                                                #  99    0x4a652  8      
  movl %eax, %edx                                                        #  100   0x4a65a  2      
  xorl %esi, %esi                                                        #  101   0x4a65c  2      
  movq %rdx, 0x28(%rsp)                                                  #  102   0x4a65e  5      
  movl %ebx, %edi                                                        #  103   0x4a663  2      
  nop                                                                    #  104   0x4a665  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  105   0x4a666  5      
  movq 0x28(%rsp), %rdx                                                  #  106   0x4a66b  5      
  movl %r14d, %ecx                                                       #  107   0x4a670  3      
  movl %ebx, %edi                                                        #  108   0x4a673  2      
  movl %eax, %esi                                                        #  109   0x4a675  2      
  nop                                                                    #  110   0x4a677  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj                        #  111   0x4a678  5      
  movzbl 0x85(%rsp), %ebx                                                #  112   0x4a67d  8      
  movl %eax, %edx                                                        #  113   0x4a685  2      
  xorl %esi, %esi                                                        #  114   0x4a687  2      
  movq %rdx, 0x28(%rsp)                                                  #  115   0x4a689  5      
  movl %ebx, %edi                                                        #  116   0x4a68e  2      
  nop                                                                    #  117   0x4a690  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  118   0x4a691  5      
  movl 0x10(%rsp), %ecx                                                  #  119   0x4a696  4      
  movq 0x28(%rsp), %rdx                                                  #  120   0x4a69a  5      
  movl %eax, %esi                                                        #  121   0x4a69f  2      
  movl %ebx, %edi                                                        #  122   0x4a6a1  2      
  nop                                                                    #  123   0x4a6a3  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj                        #  124   0x4a6a4  5      
  xorl %ecx, %ecx                                                        #  125   0x4a6a9  2      
  movl %eax, %edx                                                        #  126   0x4a6ab  2      
  xorl %eax, %eax                                                        #  127   0x4a6ad  2      
  nop                                                                    #  128   0x4a6af  1      
  nop                                                                    #  129   0x4a6b0  1      
.L_4a780:                                                                #        0x4a6b1  0      
  movl %edx, %edx                                                        #  130   0x4a6b1  2      
  movzbl (%r15,%rdx,1), %esi                                             #  131   0x4a6b3  5      
  addl $0x1, %edx                                                        #  132   0x4a6b8  3      
  movl %esi, %ebx                                                        #  133   0x4a6bb  2      
  andl $0x7f, %ebx                                                       #  134   0x4a6bd  3      
  shll %cl, %ebx                                                         #  135   0x4a6c0  2      
  addl $0x7, %ecx                                                        #  136   0x4a6c2  3      
  orl %ebx, %eax                                                         #  137   0x4a6c5  2      
  testb %sil, %sil                                                       #  138   0x4a6c7  3      
  js .L_4a780                                                            #  139   0x4a6ca  6      
  nop                                                                    #  140   0x4a6d0  1      
  movl 0x94(%rsp), %ecx                                                  #  141   0x4a6d1  7      
  addl 0x70(%rsp), %ecx                                                  #  142   0x4a6d8  4      
  cmpl %ecx, %r12d                                                       #  143   0x4a6dc  3      
  jae .L_4a880                                                           #  144   0x4a6df  6      
  movl 0x80(%rsp), %edx                                                  #  145   0x4a6e5  7      
  movq %rdx, %rax                                                        #  146   0x4a6ec  3      
  cmpl %eax, %edx                                                        #  147   0x4a6ef  2      
  jb .L_4a6a0                                                            #  148   0x4a6f1  6      
  nop                                                                    #  149   0x4a6f7  1      
  nop                                                                    #  150   0x4a6f8  1      
.L_4a7e0:                                                                #        0x4a6f9  0      
  xorl %r13d, %r13d                                                      #  151   0x4a6f9  3      
  movl $0x0, 0x5c(%rsp)                                                  #  152   0x4a6fc  8      
  xorl %r12d, %r12d                                                      #  153   0x4a704  3      
  movl $0x1, %eax                                                        #  154   0x4a707  5      
  nop                                                                    #  155   0x4a70c  1      
.L_4a800:                                                                #        0x4a70d  0      
  testb $0x1, 0x3c(%rsp)                                                 #  156   0x4a70d  5      
  je .L_4a9a0                                                            #  157   0x4a712  6      
  cmpl $0x2, %eax                                                        #  158   0x4a718  3      
  je .L_4a960                                                            #  159   0x4a71b  6      
  cmpb $0x0, 0x5b(%rsp)                                                  #  160   0x4a721  5      
  movl $0x6, %eax                                                        #  161   0x4a726  5      
  xchgw %ax, %ax                                                         #  162   0x4a72b  3      
  jne .L_4a520                                                           #  163   0x4a72e  6      
  movl 0x9c(%rsp), %eax                                                  #  164   0x4a734  7      
  movq 0x50(%rsp), %rdx                                                  #  165   0x4a73b  5      
  movl 0x48(%rsp), %ecx                                                  #  166   0x4a740  4      
  movl %edx, %edx                                                        #  167   0x4a744  2      
  movl %r13d, 0x18(%r15,%rdx,1)                                          #  168   0x4a746  5      
  nop                                                                    #  169   0x4a74b  1      
  movl %edx, %edx                                                        #  170   0x4a74c  2      
  movl %r12d, 0x1c(%r15,%rdx,1)                                          #  171   0x4a74e  5      
  movl %edx, %edx                                                        #  172   0x4a753  2      
  movl %eax, 0x28(%r15,%rdx,1)                                           #  173   0x4a755  5      
  movl 0x5c(%rsp), %eax                                                  #  174   0x4a75a  4      
  movl %edx, %edx                                                        #  175   0x4a75e  2      
  movl %ecx, 0x20(%r15,%rdx,1)                                           #  176   0x4a760  5      
  movl %edx, %edx                                                        #  177   0x4a765  2      
  movl %eax, 0x24(%r15,%rdx,1)                                           #  178   0x4a767  5      
  movl $0x6, %eax                                                        #  179   0x4a76c  5      
  jmpq .L_4a520                                                          #  180   0x4a771  5      
  nop                                                                    #  181   0x4a776  1      
  nop                                                                    #  182   0x4a777  1      
.L_4a880:                                                                #        0x4a778  0      
  addl 0x90(%rsp), %ecx                                                  #  183   0x4a778  7      
  cmpl %ecx, %r12d                                                       #  184   0x4a77f  3      
  jb .L_4a900                                                            #  185   0x4a782  6      
  movl 0x80(%rsp), %eax                                                  #  186   0x4a788  7      
  jmpq .L_4a680                                                          #  187   0x4a78f  5      
  nop                                                                    #  188   0x4a794  1      
.L_4a8a0:                                                                #        0x4a795  0      
  cmpb $0x0, 0x5b(%rsp)                                                  #  189   0x4a795  5      
  jne .L_4a5a0                                                           #  190   0x4a79a  6      
  movq 0x50(%rsp), %rdx                                                  #  191   0x4a7a0  5      
  movl %edx, %edx                                                        #  192   0x4a7a5  2      
  movl 0x24(%r15,%rdx,1), %eax                                           #  193   0x4a7a7  5      
  movl %edx, %edx                                                        #  194   0x4a7ac  2      
  movl 0x20(%r15,%rdx,1), %ecx                                           #  195   0x4a7ae  5      
  xchgw %ax, %ax                                                         #  196   0x4a7b3  3      
  movl %edx, %edx                                                        #  197   0x4a7b6  2      
  movl 0x18(%r15,%rdx,1), %r13d                                          #  198   0x4a7b8  5      
  testl %eax, %eax                                                       #  199   0x4a7bd  2      
  movl %eax, 0x5c(%rsp)                                                  #  200   0x4a7bf  4      
  movq %rcx, 0x48(%rsp)                                                  #  201   0x4a7c3  5      
  jne .L_4a980                                                           #  202   0x4a7c8  6      
  nop                                                                    #  203   0x4a7ce  1      
.L_4a8e0:                                                                #        0x4a7cf  0      
  movl 0x40(%rsp), %edi                                                  #  204   0x4a7cf  4      
  nop                                                                    #  205   0x4a7d3  1      
  nop                                                                    #  206   0x4a7d4  1      
  callq .__cxa_call_terminate                                            #  207   0x4a7d5  5      
.L_4a900:                                                                #        0x4a7da  0      
  movl 0x8c(%rsp), %edx                                                  #  208   0x4a7da  7      
  movl $0x0, 0x5c(%rsp)                                                  #  209   0x4a7e1  8      
  testl %edx, %edx                                                       #  210   0x4a7e9  2      
  je .L_4a920                                                            #  211   0x4a7eb  6      
  addl 0x74(%rsp), %edx                                                  #  212   0x4a7f1  4      
  movl %edx, 0x5c(%rsp)                                                  #  213   0x4a7f5  4      
  nop                                                                    #  214   0x4a7f9  1      
.L_4a920:                                                                #        0x4a7fa  0      
  xorl %r12d, %r12d                                                      #  215   0x4a7fa  3      
  testl %eax, %eax                                                       #  216   0x4a7fd  2      
  je .L_4a940                                                            #  217   0x4a7ff  6      
  movl 0x80(%rsp), %r12d                                                 #  218   0x4a805  8      
  subl $0x1, %eax                                                        #  219   0x4a80d  3      
  addl %eax, %r12d                                                       #  220   0x4a810  3      
  nop                                                                    #  221   0x4a813  1      
.L_4a940:                                                                #        0x4a814  0      
  movl 0x5c(%rsp), %edx                                                  #  222   0x4a814  4      
  testl %edx, %edx                                                       #  223   0x4a818  2      
  jne .L_4aa60                                                           #  224   0x4a81a  6      
  nop                                                                    #  225   0x4a820  1      
  nop                                                                    #  226   0x4a821  1      
.L_4a960:                                                                #        0x4a822  0      
  movl $0x8, %eax                                                        #  227   0x4a822  5      
  jmpq .L_4a520                                                          #  228   0x4a827  5      
  nop                                                                    #  229   0x4a82c  1      
  nop                                                                    #  230   0x4a82d  1      
.L_4a980:                                                                #        0x4a82e  0      
  movl $0x3, %eax                                                        #  231   0x4a82e  5      
  nop                                                                    #  232   0x4a833  1      
  nop                                                                    #  233   0x4a834  1      
.L_4a9a0:                                                                #        0x4a835  0      
  testb $0x8, 0x3c(%rsp)                                                 #  234   0x4a835  5      
  je .L_4ace0                                                            #  235   0x4a83a  6      
  nop                                                                    #  236   0x4a840  1      
  nop                                                                    #  237   0x4a841  1      
.L_4a9c0:                                                                #        0x4a842  0      
  cmpl $0x1, %eax                                                        #  238   0x4a842  3      
  je .L_4ae80                                                            #  239   0x4a845  6      
  testl %r13d, %r13d                                                     #  240   0x4a84b  3      
  js .L_4ae60                                                            #  241   0x4a84e  6      
  nop                                                                    #  242   0x4a854  1      
.L_4a9e0:                                                                #        0x4a855  0      
  movq 0x40(%rsp), %rdx                                                  #  243   0x4a855  5      
  movl 0x30(%rsp), %edi                                                  #  244   0x4a85a  4      
  xorl %esi, %esi                                                        #  245   0x4a85e  2      
  nop                                                                    #  246   0x4a860  1      
  nop                                                                    #  247   0x4a861  1      
  callq ._Unwind_SetGR                                                   #  248   0x4a862  5      
  movl 0x30(%rsp), %edi                                                  #  249   0x4a867  4      
  movslq %r13d, %rdx                                                     #  250   0x4a86b  3      
  movl $0x1, %esi                                                        #  251   0x4a86e  5      
  nop                                                                    #  252   0x4a873  1      
  callq ._Unwind_SetGR                                                   #  253   0x4a874  5      
  movl 0x5c(%rsp), %esi                                                  #  254   0x4a879  4      
  movl 0x30(%rsp), %edi                                                  #  255   0x4a87d  4      
  nop                                                                    #  256   0x4a881  1      
  nop                                                                    #  257   0x4a882  1      
  callq ._Unwind_SetIP                                                   #  258   0x4a883  5      
  movl $0x7, %eax                                                        #  259   0x4a888  5      
  jmpq .L_4a520                                                          #  260   0x4a88d  5      
  nop                                                                    #  261   0x4a892  1      
  nop                                                                    #  262   0x4a893  1      
.L_4aa60:                                                                #        0x4a894  0      
  testq %r12, %r12                                                       #  263   0x4a894  3      
  je .L_4adc0                                                            #  264   0x4a897  6      
  movl 0x3c(%rsp), %eax                                                  #  265   0x4a89d  4      
  andl $0x8, %eax                                                        #  266   0x4a8a1  3      
  movl %eax, 0x6c(%rsp)                                                  #  267   0x4a8a4  4      
  je .L_4ade0                                                            #  268   0x4a8a8  6      
  nop                                                                    #  269   0x4a8ae  1      
  movq $0x10020ec0, 0x60(%rsp)                                           #  270   0x4a8af  9      
  nop                                                                    #  271   0x4a8b8  1      
  nop                                                                    #  272   0x4a8b9  1      
.L_4aaa0:                                                                #        0x4a8ba  0      
  leal 0x9c(%rsp), %ecx                                                  #  273   0x4a8ba  7      
  movb $0x0, 0x6b(%rsp)                                                  #  274   0x4a8c1  5      
  movq %rcx, 0x8(%rsp)                                                   #  275   0x4a8c6  5      
  nop                                                                    #  276   0x4a8cb  1      
.L_4aac0:                                                                #        0x4a8cc  0      
  movq %r12, %rax                                                        #  277   0x4a8cc  3      
  xorl %esi, %esi                                                        #  278   0x4a8cf  2      
  xorl %ecx, %ecx                                                        #  279   0x4a8d1  2      
  nop                                                                    #  280   0x4a8d3  1      
  nop                                                                    #  281   0x4a8d4  1      
.L_4aae0:                                                                #        0x4a8d5  0      
  movl %eax, %eax                                                        #  282   0x4a8d5  2      
  movzbl (%r15,%rax,1), %edi                                             #  283   0x4a8d7  5      
  addl $0x1, %eax                                                        #  284   0x4a8dc  3      
  movzbl %dil, %ebx                                                      #  285   0x4a8df  4      
  movl %ebx, %edx                                                        #  286   0x4a8e3  2      
  andl $0x7f, %edx                                                       #  287   0x4a8e5  3      
  shll %cl, %edx                                                         #  288   0x4a8e8  2      
  addl $0x7, %ecx                                                        #  289   0x4a8ea  3      
  orl %edx, %esi                                                         #  290   0x4a8ed  2      
  testb %dil, %dil                                                       #  291   0x4a8ef  3      
  nop                                                                    #  292   0x4a8f2  1      
  js .L_4aae0                                                            #  293   0x4a8f3  6      
  cmpl $0x1f, %ecx                                                       #  294   0x4a8f9  3      
  movq %rax, %r13                                                        #  295   0x4a8fc  3      
  ja .L_4ab20                                                            #  296   0x4a8ff  6      
  andl $0x40, %ebx                                                       #  297   0x4a905  3      
  je .L_4ab20                                                            #  298   0x4a908  6      
  movl $0x1, %edx                                                        #  299   0x4a90e  5      
  shll %cl, %edx                                                         #  300   0x4a913  2      
  movl %edx, %ecx                                                        #  301   0x4a915  2      
  negl %ecx                                                              #  302   0x4a917  2      
  orl %ecx, %esi                                                         #  303   0x4a919  2      
  nop                                                                    #  304   0x4a91b  1      
.L_4ab20:                                                                #        0x4a91c  0      
  movl %esi, %r14d                                                       #  305   0x4a91c  3      
  xorl %ebx, %ebx                                                        #  306   0x4a91f  2      
  xorl %ecx, %ecx                                                        #  307   0x4a921  2      
  nop                                                                    #  308   0x4a923  1      
  nop                                                                    #  309   0x4a924  1      
.L_4ab40:                                                                #        0x4a925  0      
  movl %eax, %eax                                                        #  310   0x4a925  2      
  movzbl (%r15,%rax,1), %edi                                             #  311   0x4a927  5      
  addl $0x1, %eax                                                        #  312   0x4a92c  3      
  movzbl %dil, %r8d                                                      #  313   0x4a92f  4      
  movl %r8d, %edx                                                        #  314   0x4a933  3      
  andl $0x7f, %edx                                                       #  315   0x4a936  3      
  shll %cl, %edx                                                         #  316   0x4a939  2      
  addl $0x7, %ecx                                                        #  317   0x4a93b  3      
  orl %edx, %ebx                                                         #  318   0x4a93e  2      
  testb %dil, %dil                                                       #  319   0x4a940  3      
  xchgw %ax, %ax                                                         #  320   0x4a943  3      
  js .L_4ab40                                                            #  321   0x4a946  6      
  cmpl $0x1f, %ecx                                                       #  322   0x4a94c  3      
  ja .L_4ab80                                                            #  323   0x4a94f  6      
  andl $0x40, %r8d                                                       #  324   0x4a955  4      
  je .L_4ab80                                                            #  325   0x4a959  6      
  movl $0x1, %eax                                                        #  326   0x4a95f  5      
  shll %cl, %eax                                                         #  327   0x4a964  2      
  movl %eax, %ecx                                                        #  328   0x4a966  2      
  negl %ecx                                                              #  329   0x4a968  2      
  orl %ecx, %ebx                                                         #  330   0x4a96a  2      
  nop                                                                    #  331   0x4a96c  1      
.L_4ab80:                                                                #        0x4a96d  0      
  cmpl $0x0, %esi                                                        #  332   0x4a96d  3      
  jne .L_4abc0                                                           #  333   0x4a970  6      
  movb $0x1, 0x6b(%rsp)                                                  #  334   0x4a976  5      
  nop                                                                    #  335   0x4a97b  1      
  nop                                                                    #  336   0x4a97c  1      
.L_4aba0:                                                                #        0x4a97d  0      
  testl %ebx, %ebx                                                       #  337   0x4a97d  2      
  je .L_4ada0                                                            #  338   0x4a97f  6      
  leal (%rbx,%r13,1), %r12d                                              #  339   0x4a985  4      
  jmpq .L_4aac0                                                          #  340   0x4a989  5      
  nop                                                                    #  341   0x4a98e  1      
.L_4abc0:                                                                #        0x4a98f  0      
  jg .L_4ac80                                                            #  342   0x4a98f  6      
  cmpq $0x0, 0x60(%rsp)                                                  #  343   0x4a995  6      
  je .L_4ac00                                                            #  344   0x4a99b  6      
  movl 0x6c(%rsp), %eax                                                  #  345   0x4a9a1  4      
  testl %eax, %eax                                                       #  346   0x4a9a5  2      
  jne .L_4ac00                                                           #  347   0x4a9a7  6      
  cmpb $0x0, 0x5b(%rsp)                                                  #  348   0x4a9ad  5      
  nop                                                                    #  349   0x4a9b2  1      
  je .L_4ad60                                                            #  350   0x4a9b3  6      
  nop                                                                    #  351   0x4a9b9  1      
  nop                                                                    #  352   0x4a9ba  1      
.L_4ac00:                                                                #        0x4a9bb  0      
  movl 0x7c(%rsp), %edx                                                  #  353   0x4a9bb  4      
  notl %esi                                                              #  354   0x4a9bf  2      
  xorl %edi, %edi                                                        #  355   0x4a9c1  2      
  xorl %ecx, %ecx                                                        #  356   0x4a9c3  2      
  addl %esi, %edx                                                        #  357   0x4a9c5  2      
  nop                                                                    #  358   0x4a9c7  1      
  nop                                                                    #  359   0x4a9c8  1      
.L_4ac20:                                                                #        0x4a9c9  0      
  movl %edx, %edx                                                        #  360   0x4a9c9  2      
  movzbl (%r15,%rdx,1), %esi                                             #  361   0x4a9cb  5      
  addl $0x1, %edx                                                        #  362   0x4a9d0  3      
  movl %esi, %eax                                                        #  363   0x4a9d3  2      
  andl $0x7f, %eax                                                       #  364   0x4a9d5  3      
  shll %cl, %eax                                                         #  365   0x4a9d8  2      
  addl $0x7, %ecx                                                        #  366   0x4a9da  3      
  orl %eax, %edi                                                         #  367   0x4a9dd  2      
  testb %sil, %sil                                                       #  368   0x4a9df  3      
  js .L_4ac20                                                            #  369   0x4a9e2  6      
  testl %edi, %edi                                                       #  370   0x4a9e8  2      
  sete %al                                                               #  371   0x4a9ea  3      
.L_4ac40:                                                                #        0x4a9ed  0      
  testb %al, %al                                                         #  372   0x4a9ed  2      
  je .L_4aba0                                                            #  373   0x4a9ef  6      
  nop                                                                    #  374   0x4a9f5  1      
  nop                                                                    #  375   0x4a9f6  1      
.L_4ac60:                                                                #        0x4a9f7  0      
  movl %r14d, %r13d                                                      #  376   0x4a9f7  3      
  movl $0x3, %eax                                                        #  377   0x4a9fa  5      
  jmpq .L_4a800                                                          #  378   0x4a9ff  5      
  nop                                                                    #  379   0x4aa04  1      
  nop                                                                    #  380   0x4aa05  1      
.L_4ac80:                                                                #        0x4aa06  0      
  movl 0x18(%rsp), %edi                                                  #  381   0x4aa06  4      
  nop                                                                    #  382   0x4aa0a  1      
  nop                                                                    #  383   0x4aa0b  1      
  callq ._ZL15get_ttype_entryP16lsda_header_infom                        #  384   0x4aa0c  5      
  movl %eax, %edi                                                        #  385   0x4aa11  2      
  testq %rdi, %rdi                                                       #  386   0x4aa13  3      
  je .L_4ac60                                                            #  387   0x4aa16  6      
  cmpq $0x0, 0x60(%rsp)                                                  #  388   0x4aa1c  6      
  je .L_4aba0                                                            #  389   0x4aa22  6      
  movl 0x8(%rsp), %edx                                                   #  390   0x4aa28  4      
  movl 0x60(%rsp), %esi                                                  #  391   0x4aa2c  4      
  callq ._ZL16get_adjusted_ptrPKSt9type_infoS1_PPv                       #  392   0x4aa30  5      
  testb %al, %al                                                         #  393   0x4aa35  2      
  jne .L_4ac60                                                           #  394   0x4aa37  6      
  jmpq .L_4aba0                                                          #  395   0x4aa3d  5      
  nop                                                                    #  396   0x4aa42  1      
  nop                                                                    #  397   0x4aa43  1      
.L_4ace0:                                                                #        0x4aa44  0      
  cmpb $0x0, 0x5b(%rsp)                                                  #  398   0x4aa44  5      
  jne .L_4a9c0                                                           #  399   0x4aa49  6      
  cmpl $0x1, %eax                                                        #  400   0x4aa4f  3      
  je .L_4a8e0                                                            #  401   0x4aa52  6      
  testl %r13d, %r13d                                                     #  402   0x4aa58  3      
  jns .L_4a9e0                                                           #  403   0x4aa5b  6      
  nop                                                                    #  404   0x4aa61  1      
  movl 0x48(%rsp), %esi                                                  #  405   0x4aa62  4      
  movl 0x30(%rsp), %edi                                                  #  406   0x4aa66  4      
  leal 0x70(%rsp), %edx                                                  #  407   0x4aa6a  4      
  nop                                                                    #  408   0x4aa6e  1      
  callq ._ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info  #  409   0x4aa6f  5      
  movzbl 0x84(%rsp), %edi                                                #  410   0x4aa74  8      
  movl 0x30(%rsp), %esi                                                  #  411   0x4aa7c  4      
  nop                                                                    #  412   0x4aa80  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context                   #  413   0x4aa81  5      
  movq 0x50(%rsp), %rdx                                                  #  414   0x4aa86  5      
  movl %edx, %edx                                                        #  415   0x4aa8b  2      
  movl %eax, 0x24(%r15,%rdx,1)                                           #  416   0x4aa8d  5      
  jmpq .L_4a9e0                                                          #  417   0x4aa92  5      
  nop                                                                    #  418   0x4aa97  1      
.L_4ad60:                                                                #        0x4aa98  0      
  movl %esi, %ecx                                                        #  419   0x4aa98  2      
  movl 0x9c(%rsp), %edx                                                  #  420   0x4aa9a  7      
  movl 0x60(%rsp), %esi                                                  #  421   0x4aaa1  4      
  movl 0x18(%rsp), %edi                                                  #  422   0x4aaa5  4      
  nop                                                                    #  423   0x4aaa9  1      
  callq ._ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl   #  424   0x4aaaa  5      
  xorl $0x1, %eax                                                        #  425   0x4aaaf  3      
  jmpq .L_4ac40                                                          #  426   0x4aab2  5      
  nop                                                                    #  427   0x4aab7  1      
  nop                                                                    #  428   0x4aab8  1      
.L_4ada0:                                                                #        0x4aab9  0      
  cmpb $0x0, 0x6b(%rsp)                                                  #  429   0x4aab9  5      
  je .L_4a960                                                            #  430   0x4aabe  6      
  nop                                                                    #  431   0x4aac4  1      
  nop                                                                    #  432   0x4aac5  1      
.L_4adc0:                                                                #        0x4aac6  0      
  xorl %r13d, %r13d                                                      #  433   0x4aac6  3      
  movl $0x2, %eax                                                        #  434   0x4aac9  5      
  jmpq .L_4a800                                                          #  435   0x4aace  5      
  nop                                                                    #  436   0x4aad3  1      
  nop                                                                    #  437   0x4aad4  1      
.L_4ade0:                                                                #        0x4aad5  0      
  cmpb $0x0, 0x5b(%rsp)                                                  #  438   0x4aad5  5      
  movq $0x10020e84, 0x60(%rsp)                                           #  439   0x4aada  9      
  jne .L_4aaa0                                                           #  440   0x4aae3  6      
  movq 0x40(%rsp), %rdx                                                  #  441   0x4aae9  5      
  movl %edx, %edx                                                        #  442   0x4aaee  2      
  testb $0x1, (%r15,%rdx,1)                                              #  443   0x4aaf0  5      
  je .L_4ae40                                                            #  444   0x4aaf5  6      
  movl 0x40(%rsp), %eax                                                  #  445   0x4aafb  4      
  subl $0x30, %eax                                                       #  446   0x4aaff  3      
  movl %eax, %eax                                                        #  447   0x4ab02  2      
  movl (%r15,%rax,1), %eax                                               #  448   0x4ab04  4      
  xchgw %ax, %ax                                                         #  449   0x4ab08  3      
  nop                                                                    #  450   0x4ab0b  1      
.L_4ae20:                                                                #        0x4ab0c  0      
  movl %eax, 0x9c(%rsp)                                                  #  451   0x4ab0c  7      
  subl $0x50, %eax                                                       #  452   0x4ab13  3      
  movl %eax, %eax                                                        #  453   0x4ab16  2      
  movl (%r15,%rax,1), %eax                                               #  454   0x4ab18  4      
  movq %rax, 0x60(%rsp)                                                  #  455   0x4ab1c  5      
  jmpq .L_4aaa0                                                          #  456   0x4ab21  5      
  nop                                                                    #  457   0x4ab26  1      
.L_4ae40:                                                                #        0x4ab27  0      
  movl 0x40(%rsp), %eax                                                  #  458   0x4ab27  4      
  addl $0x20, %eax                                                       #  459   0x4ab2b  3      
  jmpq .L_4ae20                                                          #  460   0x4ab2e  5      
  nop                                                                    #  461   0x4ab33  1      
  nop                                                                    #  462   0x4ab34  1      
.L_4ae60:                                                                #        0x4ab35  0      
  nop                                                                    #  463   0x4ab35  1      
  nop                                                                    #  464   0x4ab36  1      
  callq ._ZSt10unexpectedv                                               #  465   0x4ab37  5      
.L_4ae80:                                                                #        0x4ab3c  0      
  nop                                                                    #  466   0x4ab3c  1      
  nop                                                                    #  467   0x4ab3d  1      
  callq ._ZSt9terminatev                                                 #  468   0x4ab3e  5      
  movl %eax, %edi                                                        #  469   0x4ab43  2      
  nop                                                                    #  470   0x4ab45  1      
  nop                                                                    #  471   0x4ab46  1      
  callq .__cxa_begin_catch                                               #  472   0x4ab47  5      
  nop                                                                    #  473   0x4ab4c  1      
  nop                                                                    #  474   0x4ab4d  1      
  callq ._ZSt9terminatev                                                 #  475   0x4ab4e  5      
  movl %eax, %ebx                                                        #  476   0x4ab53  2      
  nop                                                                    #  477   0x4ab55  1      
  nop                                                                    #  478   0x4ab56  1      
  callq .__cxa_end_catch                                                 #  479   0x4ab57  5      
  movl %ebx, %edi                                                        #  480   0x4ab5c  2      
  nop                                                                    #  481   0x4ab5e  1      
  nop                                                                    #  482   0x4ab5f  1      
  callq ._Unwind_Resume                                                  #  483   0x4ab60  5      
                                                                                                  
.size __gxx_personality_v0, .-__gxx_personality_v0

