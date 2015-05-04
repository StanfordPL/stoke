  .text
  .globl _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_
  .type _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_, @function

#! file-offset 0x3f340
#! rip-offset  0x3f340
#! capacity    1344 bytes

# Text                                                                                     #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_:  #        0x3f340  0      
  movq %rbx, -0x20(%rsp)                                                                   #  1     0x3f340  5      
  movl %edi, %ebx                                                                          #  2     0x3f345  2      
  movq %r12, -0x18(%rsp)                                                                   #  3     0x3f347  5      
  movq %r13, -0x10(%rsp)                                                                   #  4     0x3f34c  5      
  movq %r14, -0x8(%rsp)                                                                    #  5     0x3f351  5      
  movl %ebx, %edi                                                                          #  6     0x3f356  2      
  nop                                                                                      #  7     0x3f358  1      
  subl $0x88, %esp                                                                         #  8     0x3f359  3      
  addq %r15, %rsp                                                                          #  9     0x3f35c  3      
  movl %esi, %r14d                                                                         #  10    0x3f35f  3      
  movl %r9d, %r13d                                                                         #  11    0x3f362  3      
  movl %edx, 0x1c(%rsp)                                                                    #  12    0x3f365  4      
  movsd %xmm0, 0x20(%rsp)                                                                  #  13    0x3f369  6      
  movl %ecx, 0x28(%rsp)                                                                    #  14    0x3f36f  4      
  nop                                                                                      #  15    0x3f373  1      
  movl %r8d, 0x2c(%rsp)                                                                    #  16    0x3f374  5      
  movl 0x90(%rsp), %r12d                                                                   #  17    0x3f379  8      
  nop                                                                                      #  18    0x3f381  1      
  callq ._ZN2pp10InputEventC2Ev                                                            #  19    0x3f382  5      
  movl %ebx, %ebx                                                                          #  20    0x3f387  2      
  movl $0x100207c8, (%r15,%rbx,1)                                                          #  21    0x3f389  8      
  cmpb $0x0, 0xfff1998(%rip)                                                               #  22    0x3f391  7      
  je .L_3f580                                                                              #  23    0x3f398  6      
  nop                                                                                      #  24    0x3f39e  1      
.L_3f3c0:                                                                                  #        0x3f39f  0      
  movl 0xfff1993(%rip), %eax                                                               #  25    0x3f39f  6      
  testq %rax, %rax                                                                         #  26    0x3f3a5  3      
  je .L_3f4c0                                                                              #  27    0x3f3a8  6      
  cmpb $0x0, 0xfff197b(%rip)                                                               #  28    0x3f3ae  7      
  je .L_3f620                                                                              #  29    0x3f3b5  6      
  nop                                                                                      #  30    0x3f3bb  1      
.L_3f3e0:                                                                                  #        0x3f3bc  0      
  movl %r12d, %r12d                                                                        #  31    0x3f3bc  3      
  movq 0x8(%r15,%r12,1), %rcx                                                              #  32    0x3f3bf  5      
  movl %r13d, %r13d                                                                        #  33    0x3f3c4  3      
  movq 0x8(%r15,%r13,1), %r8                                                               #  34    0x3f3c7  5      
  movl %r13d, %r13d                                                                        #  35    0x3f3cc  3      
  movq 0x10(%r15,%r13,1), %r9                                                              #  36    0x3f3cf  5      
  movl %eax, %eax                                                                          #  37    0x3f3d4  2      
  movl (%r15,%rax,1), %eax                                                                 #  38    0x3f3d6  4      
  xchgw %ax, %ax                                                                           #  39    0x3f3da  3      
  movsd 0x20(%rsp), %xmm0                                                                  #  40    0x3f3dd  6      
  movl 0x1c(%rsp), %esi                                                                    #  41    0x3f3e3  4      
  movq %rcx, 0x50(%rsp)                                                                    #  42    0x3f3e7  5      
  movl %r12d, %r12d                                                                        #  43    0x3f3ec  3      
  movq 0x10(%r15,%r12,1), %rdx                                                             #  44    0x3f3ef  5      
  movl %r14d, %r14d                                                                        #  45    0x3f3f4  3      
  movl (%r15,%r14,1), %edi                                                                 #  46    0x3f3f7  4      
  xchgw %ax, %ax                                                                           #  47    0x3f3fb  3      
  movq %rcx, (%rsp)                                                                        #  48    0x3f3fe  4      
  movq %r8, 0x40(%rsp)                                                                     #  49    0x3f402  5      
  movq %r9, 0x48(%rsp)                                                                     #  50    0x3f407  5      
  movq %rdx, 0x58(%rsp)                                                                    #  51    0x3f40c  5      
  movq %rdx, 0x8(%rsp)                                                                     #  52    0x3f411  5      
  movl 0x2c(%rsp), %ecx                                                                    #  53    0x3f416  4      
  movl 0x28(%rsp), %edx                                                                    #  54    0x3f41a  4      
  nop                                                                                      #  55    0x3f41e  1      
  nop                                                                                      #  56    0x3f41f  1      
  andl $0xffffffe0, %eax                                                                   #  57    0x3f420  5      
  addq %r15, %rax                                                                          #  58    0x3f425  3      
  callq %rax                                                                               #  59    0x3f428  2      
.L_3f460:                                                                                  #        0x3f42a  0      
  movl %eax, %esi                                                                          #  60    0x3f42a  2      
  movl %ebx, %edi                                                                          #  61    0x3f42c  2      
  nop                                                                                      #  62    0x3f42e  1      
  nop                                                                                      #  63    0x3f42f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                         #  64    0x3f430  5      
.L_3f480:                                                                                  #        0x3f435  0      
  movq 0x68(%rsp), %rbx                                                                    #  65    0x3f435  5      
  movq 0x70(%rsp), %r12                                                                    #  66    0x3f43a  5      
  movq 0x78(%rsp), %r13                                                                    #  67    0x3f43f  5      
  movq 0x80(%rsp), %r14                                                                    #  68    0x3f444  8      
  addl $0x88, %esp                                                                         #  69    0x3f44c  3      
  addq %r15, %rsp                                                                          #  70    0x3f44f  3      
  popq %r11                                                                                #  71    0x3f452  3      
  andl $0xffffffe0, %r11d                                                                  #  72    0x3f455  7      
  addq %r15, %r11                                                                          #  73    0x3f45c  3      
  jmpq %r11                                                                                #  74    0x3f45f  3      
  nop                                                                                      #  75    0x3f462  1      
  nop                                                                                      #  76    0x3f463  1      
.L_3f4c0:                                                                                  #        0x3f464  0      
  cmpb $0x0, 0xfff18d5(%rip)                                                               #  77    0x3f464  7      
  je .L_3f680                                                                              #  78    0x3f46b  6      
  nop                                                                                      #  79    0x3f471  1      
  nop                                                                                      #  80    0x3f472  1      
.L_3f4e0:                                                                                  #        0x3f473  0      
  movl 0xfff18cf(%rip), %edi                                                               #  81    0x3f473  6      
  testl %edi, %edi                                                                         #  82    0x3f479  2      
  je .L_3f480                                                                              #  83    0x3f47b  6      
  xchgw %ax, %ax                                                                           #  84    0x3f481  3      
  nop                                                                                      #  85    0x3f484  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v           #  86    0x3f485  5      
  movl %r13d, %r13d                                                                        #  87    0x3f48a  3      
  movq 0x8(%r15,%r13,1), %r8                                                               #  88    0x3f48d  5      
  movl %r13d, %r13d                                                                        #  89    0x3f492  3      
  movq 0x10(%r15,%r13,1), %r9                                                              #  90    0x3f495  5      
  movl %eax, %eax                                                                          #  91    0x3f49a  2      
  movl %eax, %eax                                                                          #  92    0x3f49c  2      
  movl (%r15,%rax,1), %eax                                                                 #  93    0x3f49e  4      
  movl 0x2c(%rsp), %ecx                                                                    #  94    0x3f4a2  4      
  movl 0x28(%rsp), %edx                                                                    #  95    0x3f4a6  4      
  movsd 0x20(%rsp), %xmm0                                                                  #  96    0x3f4aa  6      
  movq %r8, 0x30(%rsp)                                                                     #  97    0x3f4b0  5      
  movq %r9, 0x38(%rsp)                                                                     #  98    0x3f4b5  5      
  movl 0x1c(%rsp), %esi                                                                    #  99    0x3f4ba  4      
  movl %r14d, %r14d                                                                        #  100   0x3f4be  3      
  movl (%r15,%r14,1), %edi                                                                 #  101   0x3f4c1  4      
  nop                                                                                      #  102   0x3f4c5  1      
  nop                                                                                      #  103   0x3f4c6  1      
  nop                                                                                      #  104   0x3f4c7  1      
  andl $0xffffffe0, %eax                                                                   #  105   0x3f4c8  5      
  addq %r15, %rax                                                                          #  106   0x3f4cd  3      
  callq %rax                                                                               #  107   0x3f4d0  2      
  jmpq .L_3f460                                                                            #  108   0x3f4d2  5      
  nop                                                                                      #  109   0x3f4d7  1      
  nop                                                                                      #  110   0x3f4d8  1      
.L_3f580:                                                                                  #        0x3f4d9  0      
  movl $0x10030d30, %edi                                                                   #  111   0x3f4d9  5      
  nop                                                                                      #  112   0x3f4de  1      
  nop                                                                                      #  113   0x3f4df  1      
  callq .__cxa_guard_acquire                                                               #  114   0x3f4e0  5      
  testl %eax, %eax                                                                         #  115   0x3f4e5  2      
  je .L_3f3c0                                                                              #  116   0x3f4e7  6      
  nop                                                                                      #  117   0x3f4ed  1      
  nop                                                                                      #  118   0x3f4ee  1      
  callq ._ZN2pp6Module3GetEv                                                               #  119   0x3f4ef  5      
  movl %eax, %edi                                                                          #  120   0x3f4f4  2      
  movl $0x1002068a, %esi                                                                   #  121   0x3f4f6  5      
  nop                                                                                      #  122   0x3f4fb  1      
  nop                                                                                      #  123   0x3f4fc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                            #  124   0x3f4fd  5      
  movl $0x10030d30, %edi                                                                   #  125   0x3f502  5      
  movl %eax, 0xfff182b(%rip)                                                               #  126   0x3f507  6      
  nop                                                                                      #  127   0x3f50d  1      
  nop                                                                                      #  128   0x3f50e  1      
  callq .__cxa_guard_release                                                               #  129   0x3f50f  5      
  jmpq .L_3f3c0                                                                            #  130   0x3f514  5      
  nop                                                                                      #  131   0x3f519  1      
  nop                                                                                      #  132   0x3f51a  1      
.L_3f620:                                                                                  #        0x3f51b  0      
  movl $0x10030d30, %edi                                                                   #  133   0x3f51b  5      
  nop                                                                                      #  134   0x3f520  1      
  nop                                                                                      #  135   0x3f521  1      
  callq .__cxa_guard_acquire                                                               #  136   0x3f522  5      
  testl %eax, %eax                                                                         #  137   0x3f527  2      
  jne .L_3f720                                                                             #  138   0x3f529  6      
  nop                                                                                      #  139   0x3f52f  1      
  nop                                                                                      #  140   0x3f530  1      
.L_3f660:                                                                                  #        0x3f531  0      
  movl 0xfff1801(%rip), %eax                                                               #  141   0x3f531  6      
  jmpq .L_3f3e0                                                                            #  142   0x3f537  5      
  nop                                                                                      #  143   0x3f53c  1      
  nop                                                                                      #  144   0x3f53d  1      
.L_3f680:                                                                                  #        0x3f53e  0      
  movl $0x10030d40, %edi                                                                   #  145   0x3f53e  5      
  nop                                                                                      #  146   0x3f543  1      
  nop                                                                                      #  147   0x3f544  1      
  callq .__cxa_guard_acquire                                                               #  148   0x3f545  5      
  testl %eax, %eax                                                                         #  149   0x3f54a  2      
  je .L_3f4e0                                                                              #  150   0x3f54c  6      
  nop                                                                                      #  151   0x3f552  1      
  nop                                                                                      #  152   0x3f553  1      
  callq ._ZN2pp6Module3GetEv                                                               #  153   0x3f554  5      
  movl %eax, %edi                                                                          #  154   0x3f559  2      
  movl $0x100206a5, %esi                                                                   #  155   0x3f55b  5      
  nop                                                                                      #  156   0x3f560  1      
  nop                                                                                      #  157   0x3f561  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                            #  158   0x3f562  5      
  movl $0x10030d40, %edi                                                                   #  159   0x3f567  5      
  movl %eax, 0xfff17d6(%rip)                                                               #  160   0x3f56c  6      
  nop                                                                                      #  161   0x3f572  1      
  nop                                                                                      #  162   0x3f573  1      
  callq .__cxa_guard_release                                                               #  163   0x3f574  5      
  jmpq .L_3f4e0                                                                            #  164   0x3f579  5      
  nop                                                                                      #  165   0x3f57e  1      
  nop                                                                                      #  166   0x3f57f  1      
.L_3f720:                                                                                  #        0x3f580  0      
  nop                                                                                      #  167   0x3f580  1      
  nop                                                                                      #  168   0x3f581  1      
  callq ._ZN2pp6Module3GetEv                                                               #  169   0x3f582  5      
  movl %eax, %edi                                                                          #  170   0x3f587  2      
  movl $0x1002068a, %esi                                                                   #  171   0x3f589  5      
  nop                                                                                      #  172   0x3f58e  1      
  nop                                                                                      #  173   0x3f58f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                            #  174   0x3f590  5      
  movl $0x10030d30, %edi                                                                   #  175   0x3f595  5      
  movl %eax, 0xfff1798(%rip)                                                               #  176   0x3f59a  6      
  nop                                                                                      #  177   0x3f5a0  1      
  nop                                                                                      #  178   0x3f5a1  1      
  callq .__cxa_guard_release                                                               #  179   0x3f5a2  5      
  jmpq .L_3f660                                                                            #  180   0x3f5a7  5      
  nop                                                                                      #  181   0x3f5ac  1      
  nop                                                                                      #  182   0x3f5ad  1      
  movl $0x10030d40, %edi                                                                   #  183   0x3f5ae  5      
  movl %eax, %r12d                                                                         #  184   0x3f5b3  3      
  nop                                                                                      #  185   0x3f5b6  1      
  nop                                                                                      #  186   0x3f5b7  1      
  callq .__cxa_guard_abort                                                                 #  187   0x3f5b8  5      
.L_3f7c0:                                                                                  #        0x3f5bd  0      
  movl %ebx, %edi                                                                          #  188   0x3f5bd  2      
  nop                                                                                      #  189   0x3f5bf  1      
  nop                                                                                      #  190   0x3f5c0  1      
  callq ._ZN2pp10InputEventD2Ev                                                            #  191   0x3f5c1  5      
  movl %r12d, %edi                                                                         #  192   0x3f5c6  3      
  nop                                                                                      #  193   0x3f5c9  1      
  nop                                                                                      #  194   0x3f5ca  1      
  callq ._Unwind_Resume                                                                    #  195   0x3f5cb  5      
  movl %eax, %r12d                                                                         #  196   0x3f5d0  3      
  jmpq .L_3f7c0                                                                            #  197   0x3f5d3  5      
  nop                                                                                      #  198   0x3f5d8  1      
  nop                                                                                      #  199   0x3f5d9  1      
.L_3f820:                                                                                  #        0x3f5da  0      
  movl $0x10030d30, %edi                                                                   #  200   0x3f5da  5      
  movl %eax, %r12d                                                                         #  201   0x3f5df  3      
  nop                                                                                      #  202   0x3f5e2  1      
  nop                                                                                      #  203   0x3f5e3  1      
  callq .__cxa_guard_abort                                                                 #  204   0x3f5e4  5      
  jmpq .L_3f7c0                                                                            #  205   0x3f5e9  5      
  nop                                                                                      #  206   0x3f5ee  1      
  nop                                                                                      #  207   0x3f5ef  1      
  jmpq .L_3f820                                                                            #  208   0x3f5f0  5      
  nop                                                                                      #  209   0x3f5f5  1      
  nop                                                                                      #  210   0x3f5f6  1      
  nop                                                                                      #  211   0x3f5f7  1      
  nop                                                                                      #  212   0x3f5f8  1      
  nop                                                                                      #  213   0x3f5f9  1      
  nop                                                                                      #  214   0x3f5fa  1      
  nop                                                                                      #  215   0x3f5fb  1      
  nop                                                                                      #  216   0x3f5fc  1      
  nop                                                                                      #  217   0x3f5fd  1      
  nop                                                                                      #  218   0x3f5fe  1      
  nop                                                                                      #  219   0x3f5ff  1      
  nop                                                                                      #  220   0x3f600  1      
  nop                                                                                      #  221   0x3f601  1      
  nop                                                                                      #  222   0x3f602  1      
  nop                                                                                      #  223   0x3f603  1      
  nop                                                                                      #  224   0x3f604  1      
  nop                                                                                      #  225   0x3f605  1      
  nop                                                                                      #  226   0x3f606  1      
  nop                                                                                      #  227   0x3f607  1      
  nop                                                                                      #  228   0x3f608  1      
  nop                                                                                      #  229   0x3f609  1      
  nop                                                                                      #  230   0x3f60a  1      
  nop                                                                                      #  231   0x3f60b  1      
  nop                                                                                      #  232   0x3f60c  1      
  nop                                                                                      #  233   0x3f60d  1      
  nop                                                                                      #  234   0x3f60e  1      
  nop                                                                                      #  235   0x3f60f  1      
  nop                                                                                      #  236   0x3f610  1      
  nop                                                                                      #  237   0x3f611  1      
  nop                                                                                      #  238   0x3f612  1      
                                                                                                                    
.size _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_, .-_ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_

