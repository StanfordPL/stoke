  .text
  .globl _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_
  .type _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_, @function

#! file-offset 0x3f2c0
#! rip-offset  0x3f2c0
#! capacity    1344 bytes

# Text                                                                                     #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_:  #        0x3f2c0  0      
  movq %rbx, -0x20(%rsp)                                                                   #  1     0x3f2c0  5      
  movl %edi, %ebx                                                                          #  2     0x3f2c5  2      
  movq %r12, -0x18(%rsp)                                                                   #  3     0x3f2c7  5      
  movq %r13, -0x10(%rsp)                                                                   #  4     0x3f2cc  5      
  movq %r14, -0x8(%rsp)                                                                    #  5     0x3f2d1  5      
  movl %ebx, %edi                                                                          #  6     0x3f2d6  2      
  nop                                                                                      #  7     0x3f2d8  1      
  subl $0x88, %esp                                                                         #  8     0x3f2d9  3      
  addq %r15, %rsp                                                                          #  9     0x3f2dc  3      
  movl %esi, %r14d                                                                         #  10    0x3f2df  3      
  movl %r9d, %r13d                                                                         #  11    0x3f2e2  3      
  movl %edx, 0x1c(%rsp)                                                                    #  12    0x3f2e5  4      
  movsd %xmm0, 0x20(%rsp)                                                                  #  13    0x3f2e9  6      
  movl %ecx, 0x28(%rsp)                                                                    #  14    0x3f2ef  4      
  nop                                                                                      #  15    0x3f2f3  1      
  movl %r8d, 0x2c(%rsp)                                                                    #  16    0x3f2f4  5      
  movl 0x90(%rsp), %r12d                                                                   #  17    0x3f2f9  8      
  nop                                                                                      #  18    0x3f301  1      
  callq ._ZN2pp10InputEventC2Ev                                                            #  19    0x3f302  5      
  movl %ebx, %ebx                                                                          #  20    0x3f307  2      
  movl $0x100207c8, (%r15,%rbx,1)                                                          #  21    0x3f309  8      
  cmpb $0x0, 0xfff1a18(%rip)                                                               #  22    0x3f311  7      
  je .L_3f500                                                                              #  23    0x3f318  6      
  nop                                                                                      #  24    0x3f31e  1      
.L_3f340:                                                                                  #        0x3f31f  0      
  movl 0xfff1a13(%rip), %eax                                                               #  25    0x3f31f  6      
  testq %rax, %rax                                                                         #  26    0x3f325  3      
  je .L_3f440                                                                              #  27    0x3f328  6      
  cmpb $0x0, 0xfff19fb(%rip)                                                               #  28    0x3f32e  7      
  je .L_3f5a0                                                                              #  29    0x3f335  6      
  nop                                                                                      #  30    0x3f33b  1      
.L_3f360:                                                                                  #        0x3f33c  0      
  movl %r12d, %r12d                                                                        #  31    0x3f33c  3      
  movq 0x8(%r15,%r12,1), %rcx                                                              #  32    0x3f33f  5      
  movl %r13d, %r13d                                                                        #  33    0x3f344  3      
  movq 0x8(%r15,%r13,1), %r8                                                               #  34    0x3f347  5      
  movl %r13d, %r13d                                                                        #  35    0x3f34c  3      
  movq 0x10(%r15,%r13,1), %r9                                                              #  36    0x3f34f  5      
  movl %eax, %eax                                                                          #  37    0x3f354  2      
  movl (%r15,%rax,1), %eax                                                                 #  38    0x3f356  4      
  xchgw %ax, %ax                                                                           #  39    0x3f35a  3      
  movsd 0x20(%rsp), %xmm0                                                                  #  40    0x3f35d  6      
  movl 0x1c(%rsp), %esi                                                                    #  41    0x3f363  4      
  movq %rcx, 0x50(%rsp)                                                                    #  42    0x3f367  5      
  movl %r12d, %r12d                                                                        #  43    0x3f36c  3      
  movq 0x10(%r15,%r12,1), %rdx                                                             #  44    0x3f36f  5      
  movl %r14d, %r14d                                                                        #  45    0x3f374  3      
  movl (%r15,%r14,1), %edi                                                                 #  46    0x3f377  4      
  xchgw %ax, %ax                                                                           #  47    0x3f37b  3      
  movq %rcx, (%rsp)                                                                        #  48    0x3f37e  4      
  movq %r8, 0x40(%rsp)                                                                     #  49    0x3f382  5      
  movq %r9, 0x48(%rsp)                                                                     #  50    0x3f387  5      
  movq %rdx, 0x58(%rsp)                                                                    #  51    0x3f38c  5      
  movq %rdx, 0x8(%rsp)                                                                     #  52    0x3f391  5      
  movl 0x2c(%rsp), %ecx                                                                    #  53    0x3f396  4      
  movl 0x28(%rsp), %edx                                                                    #  54    0x3f39a  4      
  nop                                                                                      #  55    0x3f39e  1      
  nop                                                                                      #  56    0x3f39f  1      
  andl $0xffffffe0, %eax                                                                   #  57    0x3f3a0  5      
  addq %r15, %rax                                                                          #  58    0x3f3a5  3      
  callq %rax                                                                               #  59    0x3f3a8  2      
.L_3f3e0:                                                                                  #        0x3f3aa  0      
  movl %eax, %esi                                                                          #  60    0x3f3aa  2      
  movl %ebx, %edi                                                                          #  61    0x3f3ac  2      
  nop                                                                                      #  62    0x3f3ae  1      
  nop                                                                                      #  63    0x3f3af  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                         #  64    0x3f3b0  5      
.L_3f400:                                                                                  #        0x3f3b5  0      
  movq 0x68(%rsp), %rbx                                                                    #  65    0x3f3b5  5      
  movq 0x70(%rsp), %r12                                                                    #  66    0x3f3ba  5      
  movq 0x78(%rsp), %r13                                                                    #  67    0x3f3bf  5      
  movq 0x80(%rsp), %r14                                                                    #  68    0x3f3c4  8      
  addl $0x88, %esp                                                                         #  69    0x3f3cc  3      
  addq %r15, %rsp                                                                          #  70    0x3f3cf  3      
  popq %r11                                                                                #  71    0x3f3d2  3      
  andl $0xffffffe0, %r11d                                                                  #  72    0x3f3d5  7      
  addq %r15, %r11                                                                          #  73    0x3f3dc  3      
  jmpq %r11                                                                                #  74    0x3f3df  3      
  nop                                                                                      #  75    0x3f3e2  1      
  nop                                                                                      #  76    0x3f3e3  1      
.L_3f440:                                                                                  #        0x3f3e4  0      
  cmpb $0x0, 0xfff1955(%rip)                                                               #  77    0x3f3e4  7      
  je .L_3f600                                                                              #  78    0x3f3eb  6      
  nop                                                                                      #  79    0x3f3f1  1      
  nop                                                                                      #  80    0x3f3f2  1      
.L_3f460:                                                                                  #        0x3f3f3  0      
  movl 0xfff194f(%rip), %edi                                                               #  81    0x3f3f3  6      
  testl %edi, %edi                                                                         #  82    0x3f3f9  2      
  je .L_3f400                                                                              #  83    0x3f3fb  6      
  xchgw %ax, %ax                                                                           #  84    0x3f401  3      
  nop                                                                                      #  85    0x3f404  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v           #  86    0x3f405  5      
  movl %r13d, %r13d                                                                        #  87    0x3f40a  3      
  movq 0x8(%r15,%r13,1), %r8                                                               #  88    0x3f40d  5      
  movl %r13d, %r13d                                                                        #  89    0x3f412  3      
  movq 0x10(%r15,%r13,1), %r9                                                              #  90    0x3f415  5      
  movl %eax, %eax                                                                          #  91    0x3f41a  2      
  movl %eax, %eax                                                                          #  92    0x3f41c  2      
  movl (%r15,%rax,1), %eax                                                                 #  93    0x3f41e  4      
  movl 0x2c(%rsp), %ecx                                                                    #  94    0x3f422  4      
  movl 0x28(%rsp), %edx                                                                    #  95    0x3f426  4      
  movsd 0x20(%rsp), %xmm0                                                                  #  96    0x3f42a  6      
  movq %r8, 0x30(%rsp)                                                                     #  97    0x3f430  5      
  movq %r9, 0x38(%rsp)                                                                     #  98    0x3f435  5      
  movl 0x1c(%rsp), %esi                                                                    #  99    0x3f43a  4      
  movl %r14d, %r14d                                                                        #  100   0x3f43e  3      
  movl (%r15,%r14,1), %edi                                                                 #  101   0x3f441  4      
  nop                                                                                      #  102   0x3f445  1      
  nop                                                                                      #  103   0x3f446  1      
  nop                                                                                      #  104   0x3f447  1      
  andl $0xffffffe0, %eax                                                                   #  105   0x3f448  5      
  addq %r15, %rax                                                                          #  106   0x3f44d  3      
  callq %rax                                                                               #  107   0x3f450  2      
  jmpq .L_3f3e0                                                                            #  108   0x3f452  5      
  nop                                                                                      #  109   0x3f457  1      
  nop                                                                                      #  110   0x3f458  1      
.L_3f500:                                                                                  #        0x3f459  0      
  movl $0x10030d30, %edi                                                                   #  111   0x3f459  5      
  nop                                                                                      #  112   0x3f45e  1      
  nop                                                                                      #  113   0x3f45f  1      
  callq .__cxa_guard_acquire                                                               #  114   0x3f460  5      
  testl %eax, %eax                                                                         #  115   0x3f465  2      
  je .L_3f340                                                                              #  116   0x3f467  6      
  nop                                                                                      #  117   0x3f46d  1      
  nop                                                                                      #  118   0x3f46e  1      
  callq ._ZN2pp6Module3GetEv                                                               #  119   0x3f46f  5      
  movl %eax, %edi                                                                          #  120   0x3f474  2      
  movl $0x1002068a, %esi                                                                   #  121   0x3f476  5      
  nop                                                                                      #  122   0x3f47b  1      
  nop                                                                                      #  123   0x3f47c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                            #  124   0x3f47d  5      
  movl $0x10030d30, %edi                                                                   #  125   0x3f482  5      
  movl %eax, 0xfff18ab(%rip)                                                               #  126   0x3f487  6      
  nop                                                                                      #  127   0x3f48d  1      
  nop                                                                                      #  128   0x3f48e  1      
  callq .__cxa_guard_release                                                               #  129   0x3f48f  5      
  jmpq .L_3f340                                                                            #  130   0x3f494  5      
  nop                                                                                      #  131   0x3f499  1      
  nop                                                                                      #  132   0x3f49a  1      
.L_3f5a0:                                                                                  #        0x3f49b  0      
  movl $0x10030d30, %edi                                                                   #  133   0x3f49b  5      
  nop                                                                                      #  134   0x3f4a0  1      
  nop                                                                                      #  135   0x3f4a1  1      
  callq .__cxa_guard_acquire                                                               #  136   0x3f4a2  5      
  testl %eax, %eax                                                                         #  137   0x3f4a7  2      
  jne .L_3f6a0                                                                             #  138   0x3f4a9  6      
  nop                                                                                      #  139   0x3f4af  1      
  nop                                                                                      #  140   0x3f4b0  1      
.L_3f5e0:                                                                                  #        0x3f4b1  0      
  movl 0xfff1881(%rip), %eax                                                               #  141   0x3f4b1  6      
  jmpq .L_3f360                                                                            #  142   0x3f4b7  5      
  nop                                                                                      #  143   0x3f4bc  1      
  nop                                                                                      #  144   0x3f4bd  1      
.L_3f600:                                                                                  #        0x3f4be  0      
  movl $0x10030d40, %edi                                                                   #  145   0x3f4be  5      
  nop                                                                                      #  146   0x3f4c3  1      
  nop                                                                                      #  147   0x3f4c4  1      
  callq .__cxa_guard_acquire                                                               #  148   0x3f4c5  5      
  testl %eax, %eax                                                                         #  149   0x3f4ca  2      
  je .L_3f460                                                                              #  150   0x3f4cc  6      
  nop                                                                                      #  151   0x3f4d2  1      
  nop                                                                                      #  152   0x3f4d3  1      
  callq ._ZN2pp6Module3GetEv                                                               #  153   0x3f4d4  5      
  movl %eax, %edi                                                                          #  154   0x3f4d9  2      
  movl $0x100206a5, %esi                                                                   #  155   0x3f4db  5      
  nop                                                                                      #  156   0x3f4e0  1      
  nop                                                                                      #  157   0x3f4e1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                            #  158   0x3f4e2  5      
  movl $0x10030d40, %edi                                                                   #  159   0x3f4e7  5      
  movl %eax, 0xfff1856(%rip)                                                               #  160   0x3f4ec  6      
  nop                                                                                      #  161   0x3f4f2  1      
  nop                                                                                      #  162   0x3f4f3  1      
  callq .__cxa_guard_release                                                               #  163   0x3f4f4  5      
  jmpq .L_3f460                                                                            #  164   0x3f4f9  5      
  nop                                                                                      #  165   0x3f4fe  1      
  nop                                                                                      #  166   0x3f4ff  1      
.L_3f6a0:                                                                                  #        0x3f500  0      
  nop                                                                                      #  167   0x3f500  1      
  nop                                                                                      #  168   0x3f501  1      
  callq ._ZN2pp6Module3GetEv                                                               #  169   0x3f502  5      
  movl %eax, %edi                                                                          #  170   0x3f507  2      
  movl $0x1002068a, %esi                                                                   #  171   0x3f509  5      
  nop                                                                                      #  172   0x3f50e  1      
  nop                                                                                      #  173   0x3f50f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                            #  174   0x3f510  5      
  movl $0x10030d30, %edi                                                                   #  175   0x3f515  5      
  movl %eax, 0xfff1818(%rip)                                                               #  176   0x3f51a  6      
  nop                                                                                      #  177   0x3f520  1      
  nop                                                                                      #  178   0x3f521  1      
  callq .__cxa_guard_release                                                               #  179   0x3f522  5      
  jmpq .L_3f5e0                                                                            #  180   0x3f527  5      
  nop                                                                                      #  181   0x3f52c  1      
  nop                                                                                      #  182   0x3f52d  1      
  movl $0x10030d40, %edi                                                                   #  183   0x3f52e  5      
  movl %eax, %r12d                                                                         #  184   0x3f533  3      
  nop                                                                                      #  185   0x3f536  1      
  nop                                                                                      #  186   0x3f537  1      
  callq .__cxa_guard_abort                                                                 #  187   0x3f538  5      
.L_3f740:                                                                                  #        0x3f53d  0      
  movl %ebx, %edi                                                                          #  188   0x3f53d  2      
  nop                                                                                      #  189   0x3f53f  1      
  nop                                                                                      #  190   0x3f540  1      
  callq ._ZN2pp10InputEventD2Ev                                                            #  191   0x3f541  5      
  movl %r12d, %edi                                                                         #  192   0x3f546  3      
  nop                                                                                      #  193   0x3f549  1      
  nop                                                                                      #  194   0x3f54a  1      
  callq ._Unwind_Resume                                                                    #  195   0x3f54b  5      
  movl %eax, %r12d                                                                         #  196   0x3f550  3      
  jmpq .L_3f740                                                                            #  197   0x3f553  5      
  nop                                                                                      #  198   0x3f558  1      
  nop                                                                                      #  199   0x3f559  1      
.L_3f7a0:                                                                                  #        0x3f55a  0      
  movl $0x10030d30, %edi                                                                   #  200   0x3f55a  5      
  movl %eax, %r12d                                                                         #  201   0x3f55f  3      
  nop                                                                                      #  202   0x3f562  1      
  nop                                                                                      #  203   0x3f563  1      
  callq .__cxa_guard_abort                                                                 #  204   0x3f564  5      
  jmpq .L_3f740                                                                            #  205   0x3f569  5      
  nop                                                                                      #  206   0x3f56e  1      
  nop                                                                                      #  207   0x3f56f  1      
  jmpq .L_3f7a0                                                                            #  208   0x3f570  5      
  nop                                                                                      #  209   0x3f575  1      
  nop                                                                                      #  210   0x3f576  1      
  nop                                                                                      #  211   0x3f577  1      
  nop                                                                                      #  212   0x3f578  1      
  nop                                                                                      #  213   0x3f579  1      
  nop                                                                                      #  214   0x3f57a  1      
  nop                                                                                      #  215   0x3f57b  1      
  nop                                                                                      #  216   0x3f57c  1      
  nop                                                                                      #  217   0x3f57d  1      
  nop                                                                                      #  218   0x3f57e  1      
  nop                                                                                      #  219   0x3f57f  1      
  nop                                                                                      #  220   0x3f580  1      
  nop                                                                                      #  221   0x3f581  1      
  nop                                                                                      #  222   0x3f582  1      
  nop                                                                                      #  223   0x3f583  1      
  nop                                                                                      #  224   0x3f584  1      
  nop                                                                                      #  225   0x3f585  1      
  nop                                                                                      #  226   0x3f586  1      
  nop                                                                                      #  227   0x3f587  1      
  nop                                                                                      #  228   0x3f588  1      
  nop                                                                                      #  229   0x3f589  1      
  nop                                                                                      #  230   0x3f58a  1      
  nop                                                                                      #  231   0x3f58b  1      
  nop                                                                                      #  232   0x3f58c  1      
  nop                                                                                      #  233   0x3f58d  1      
  nop                                                                                      #  234   0x3f58e  1      
  nop                                                                                      #  235   0x3f58f  1      
  nop                                                                                      #  236   0x3f590  1      
  nop                                                                                      #  237   0x3f591  1      
  nop                                                                                      #  238   0x3f592  1      
                                                                                                                    
.size _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_, .-_ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_

