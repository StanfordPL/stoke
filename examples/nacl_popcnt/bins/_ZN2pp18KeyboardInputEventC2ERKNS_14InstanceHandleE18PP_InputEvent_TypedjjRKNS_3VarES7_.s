  .text
  .globl _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_
  .type _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_, @function

#! file-offset 0x3f2a0
#! rip-offset  0x3f2a0
#! capacity    1344 bytes

# Text                                                                                     #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_:  #        0x3f2a0  0      
  movq %rbx, -0x20(%rsp)                                                                   #  1     0x3f2a0  5      
  movl %edi, %ebx                                                                          #  2     0x3f2a5  2      
  movq %r12, -0x18(%rsp)                                                                   #  3     0x3f2a7  5      
  movq %r13, -0x10(%rsp)                                                                   #  4     0x3f2ac  5      
  movq %r14, -0x8(%rsp)                                                                    #  5     0x3f2b1  5      
  movl %ebx, %edi                                                                          #  6     0x3f2b6  2      
  nop                                                                                      #  7     0x3f2b8  1      
  subl $0x88, %esp                                                                         #  8     0x3f2b9  3      
  addq %r15, %rsp                                                                          #  9     0x3f2bc  3      
  movl %esi, %r14d                                                                         #  10    0x3f2bf  3      
  movl %r9d, %r13d                                                                         #  11    0x3f2c2  3      
  movl %edx, 0x1c(%rsp)                                                                    #  12    0x3f2c5  4      
  movsd %xmm0, 0x20(%rsp)                                                                  #  13    0x3f2c9  6      
  movl %ecx, 0x28(%rsp)                                                                    #  14    0x3f2cf  4      
  nop                                                                                      #  15    0x3f2d3  1      
  movl %r8d, 0x2c(%rsp)                                                                    #  16    0x3f2d4  5      
  movl 0x90(%rsp), %r12d                                                                   #  17    0x3f2d9  8      
  nop                                                                                      #  18    0x3f2e1  1      
  callq ._ZN2pp10InputEventC2Ev                                                            #  19    0x3f2e2  5      
  movl %ebx, %ebx                                                                          #  20    0x3f2e7  2      
  movl $0x100207c8, (%r15,%rbx,1)                                                          #  21    0x3f2e9  8      
  cmpb $0x0, 0xfff1a38(%rip)                                                               #  22    0x3f2f1  7      
  je .L_3f4e0                                                                              #  23    0x3f2f8  6      
  nop                                                                                      #  24    0x3f2fe  1      
.L_3f320:                                                                                  #        0x3f2ff  0      
  movl 0xfff1a33(%rip), %eax                                                               #  25    0x3f2ff  6      
  testq %rax, %rax                                                                         #  26    0x3f305  3      
  je .L_3f420                                                                              #  27    0x3f308  6      
  cmpb $0x0, 0xfff1a1b(%rip)                                                               #  28    0x3f30e  7      
  je .L_3f580                                                                              #  29    0x3f315  6      
  nop                                                                                      #  30    0x3f31b  1      
.L_3f340:                                                                                  #        0x3f31c  0      
  movl %r12d, %r12d                                                                        #  31    0x3f31c  3      
  movq 0x8(%r15,%r12,1), %rcx                                                              #  32    0x3f31f  5      
  movl %r13d, %r13d                                                                        #  33    0x3f324  3      
  movq 0x8(%r15,%r13,1), %r8                                                               #  34    0x3f327  5      
  movl %r13d, %r13d                                                                        #  35    0x3f32c  3      
  movq 0x10(%r15,%r13,1), %r9                                                              #  36    0x3f32f  5      
  movl %eax, %eax                                                                          #  37    0x3f334  2      
  movl (%r15,%rax,1), %eax                                                                 #  38    0x3f336  4      
  xchgw %ax, %ax                                                                           #  39    0x3f33a  3      
  movsd 0x20(%rsp), %xmm0                                                                  #  40    0x3f33d  6      
  movl 0x1c(%rsp), %esi                                                                    #  41    0x3f343  4      
  movq %rcx, 0x50(%rsp)                                                                    #  42    0x3f347  5      
  movl %r12d, %r12d                                                                        #  43    0x3f34c  3      
  movq 0x10(%r15,%r12,1), %rdx                                                             #  44    0x3f34f  5      
  movl %r14d, %r14d                                                                        #  45    0x3f354  3      
  movl (%r15,%r14,1), %edi                                                                 #  46    0x3f357  4      
  xchgw %ax, %ax                                                                           #  47    0x3f35b  3      
  movq %rcx, (%rsp)                                                                        #  48    0x3f35e  4      
  movq %r8, 0x40(%rsp)                                                                     #  49    0x3f362  5      
  movq %r9, 0x48(%rsp)                                                                     #  50    0x3f367  5      
  movq %rdx, 0x58(%rsp)                                                                    #  51    0x3f36c  5      
  movq %rdx, 0x8(%rsp)                                                                     #  52    0x3f371  5      
  movl 0x2c(%rsp), %ecx                                                                    #  53    0x3f376  4      
  movl 0x28(%rsp), %edx                                                                    #  54    0x3f37a  4      
  nop                                                                                      #  55    0x3f37e  1      
  nop                                                                                      #  56    0x3f37f  1      
  andl $0xffffffe0, %eax                                                                   #  57    0x3f380  5      
  addq %r15, %rax                                                                          #  58    0x3f385  3      
  callq %rax                                                                               #  59    0x3f388  2      
.L_3f3c0:                                                                                  #        0x3f38a  0      
  movl %eax, %esi                                                                          #  60    0x3f38a  2      
  movl %ebx, %edi                                                                          #  61    0x3f38c  2      
  nop                                                                                      #  62    0x3f38e  1      
  nop                                                                                      #  63    0x3f38f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                         #  64    0x3f390  5      
.L_3f3e0:                                                                                  #        0x3f395  0      
  movq 0x68(%rsp), %rbx                                                                    #  65    0x3f395  5      
  movq 0x70(%rsp), %r12                                                                    #  66    0x3f39a  5      
  movq 0x78(%rsp), %r13                                                                    #  67    0x3f39f  5      
  movq 0x80(%rsp), %r14                                                                    #  68    0x3f3a4  8      
  addl $0x88, %esp                                                                         #  69    0x3f3ac  3      
  addq %r15, %rsp                                                                          #  70    0x3f3af  3      
  popq %r11                                                                                #  71    0x3f3b2  3      
  andl $0xffffffe0, %r11d                                                                  #  72    0x3f3b5  7      
  addq %r15, %r11                                                                          #  73    0x3f3bc  3      
  jmpq %r11                                                                                #  74    0x3f3bf  3      
  nop                                                                                      #  75    0x3f3c2  1      
  nop                                                                                      #  76    0x3f3c3  1      
.L_3f420:                                                                                  #        0x3f3c4  0      
  cmpb $0x0, 0xfff1975(%rip)                                                               #  77    0x3f3c4  7      
  je .L_3f5e0                                                                              #  78    0x3f3cb  6      
  nop                                                                                      #  79    0x3f3d1  1      
  nop                                                                                      #  80    0x3f3d2  1      
.L_3f440:                                                                                  #        0x3f3d3  0      
  movl 0xfff196f(%rip), %edi                                                               #  81    0x3f3d3  6      
  testl %edi, %edi                                                                         #  82    0x3f3d9  2      
  je .L_3f3e0                                                                              #  83    0x3f3db  6      
  xchgw %ax, %ax                                                                           #  84    0x3f3e1  3      
  nop                                                                                      #  85    0x3f3e4  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v           #  86    0x3f3e5  5      
  movl %r13d, %r13d                                                                        #  87    0x3f3ea  3      
  movq 0x8(%r15,%r13,1), %r8                                                               #  88    0x3f3ed  5      
  movl %r13d, %r13d                                                                        #  89    0x3f3f2  3      
  movq 0x10(%r15,%r13,1), %r9                                                              #  90    0x3f3f5  5      
  movl %eax, %eax                                                                          #  91    0x3f3fa  2      
  movl %eax, %eax                                                                          #  92    0x3f3fc  2      
  movl (%r15,%rax,1), %eax                                                                 #  93    0x3f3fe  4      
  movl 0x2c(%rsp), %ecx                                                                    #  94    0x3f402  4      
  movl 0x28(%rsp), %edx                                                                    #  95    0x3f406  4      
  movsd 0x20(%rsp), %xmm0                                                                  #  96    0x3f40a  6      
  movq %r8, 0x30(%rsp)                                                                     #  97    0x3f410  5      
  movq %r9, 0x38(%rsp)                                                                     #  98    0x3f415  5      
  movl 0x1c(%rsp), %esi                                                                    #  99    0x3f41a  4      
  movl %r14d, %r14d                                                                        #  100   0x3f41e  3      
  movl (%r15,%r14,1), %edi                                                                 #  101   0x3f421  4      
  nop                                                                                      #  102   0x3f425  1      
  nop                                                                                      #  103   0x3f426  1      
  nop                                                                                      #  104   0x3f427  1      
  andl $0xffffffe0, %eax                                                                   #  105   0x3f428  5      
  addq %r15, %rax                                                                          #  106   0x3f42d  3      
  callq %rax                                                                               #  107   0x3f430  2      
  jmpq .L_3f3c0                                                                            #  108   0x3f432  5      
  nop                                                                                      #  109   0x3f437  1      
  nop                                                                                      #  110   0x3f438  1      
.L_3f4e0:                                                                                  #        0x3f439  0      
  movl $0x10030d30, %edi                                                                   #  111   0x3f439  5      
  nop                                                                                      #  112   0x3f43e  1      
  nop                                                                                      #  113   0x3f43f  1      
  callq .__cxa_guard_acquire                                                               #  114   0x3f440  5      
  testl %eax, %eax                                                                         #  115   0x3f445  2      
  je .L_3f320                                                                              #  116   0x3f447  6      
  nop                                                                                      #  117   0x3f44d  1      
  nop                                                                                      #  118   0x3f44e  1      
  callq ._ZN2pp6Module3GetEv                                                               #  119   0x3f44f  5      
  movl %eax, %edi                                                                          #  120   0x3f454  2      
  movl $0x1002068a, %esi                                                                   #  121   0x3f456  5      
  nop                                                                                      #  122   0x3f45b  1      
  nop                                                                                      #  123   0x3f45c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                            #  124   0x3f45d  5      
  movl $0x10030d30, %edi                                                                   #  125   0x3f462  5      
  movl %eax, 0xfff18cb(%rip)                                                               #  126   0x3f467  6      
  nop                                                                                      #  127   0x3f46d  1      
  nop                                                                                      #  128   0x3f46e  1      
  callq .__cxa_guard_release                                                               #  129   0x3f46f  5      
  jmpq .L_3f320                                                                            #  130   0x3f474  5      
  nop                                                                                      #  131   0x3f479  1      
  nop                                                                                      #  132   0x3f47a  1      
.L_3f580:                                                                                  #        0x3f47b  0      
  movl $0x10030d30, %edi                                                                   #  133   0x3f47b  5      
  nop                                                                                      #  134   0x3f480  1      
  nop                                                                                      #  135   0x3f481  1      
  callq .__cxa_guard_acquire                                                               #  136   0x3f482  5      
  testl %eax, %eax                                                                         #  137   0x3f487  2      
  jne .L_3f680                                                                             #  138   0x3f489  6      
  nop                                                                                      #  139   0x3f48f  1      
  nop                                                                                      #  140   0x3f490  1      
.L_3f5c0:                                                                                  #        0x3f491  0      
  movl 0xfff18a1(%rip), %eax                                                               #  141   0x3f491  6      
  jmpq .L_3f340                                                                            #  142   0x3f497  5      
  nop                                                                                      #  143   0x3f49c  1      
  nop                                                                                      #  144   0x3f49d  1      
.L_3f5e0:                                                                                  #        0x3f49e  0      
  movl $0x10030d40, %edi                                                                   #  145   0x3f49e  5      
  nop                                                                                      #  146   0x3f4a3  1      
  nop                                                                                      #  147   0x3f4a4  1      
  callq .__cxa_guard_acquire                                                               #  148   0x3f4a5  5      
  testl %eax, %eax                                                                         #  149   0x3f4aa  2      
  je .L_3f440                                                                              #  150   0x3f4ac  6      
  nop                                                                                      #  151   0x3f4b2  1      
  nop                                                                                      #  152   0x3f4b3  1      
  callq ._ZN2pp6Module3GetEv                                                               #  153   0x3f4b4  5      
  movl %eax, %edi                                                                          #  154   0x3f4b9  2      
  movl $0x100206a5, %esi                                                                   #  155   0x3f4bb  5      
  nop                                                                                      #  156   0x3f4c0  1      
  nop                                                                                      #  157   0x3f4c1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                            #  158   0x3f4c2  5      
  movl $0x10030d40, %edi                                                                   #  159   0x3f4c7  5      
  movl %eax, 0xfff1876(%rip)                                                               #  160   0x3f4cc  6      
  nop                                                                                      #  161   0x3f4d2  1      
  nop                                                                                      #  162   0x3f4d3  1      
  callq .__cxa_guard_release                                                               #  163   0x3f4d4  5      
  jmpq .L_3f440                                                                            #  164   0x3f4d9  5      
  nop                                                                                      #  165   0x3f4de  1      
  nop                                                                                      #  166   0x3f4df  1      
.L_3f680:                                                                                  #        0x3f4e0  0      
  nop                                                                                      #  167   0x3f4e0  1      
  nop                                                                                      #  168   0x3f4e1  1      
  callq ._ZN2pp6Module3GetEv                                                               #  169   0x3f4e2  5      
  movl %eax, %edi                                                                          #  170   0x3f4e7  2      
  movl $0x1002068a, %esi                                                                   #  171   0x3f4e9  5      
  nop                                                                                      #  172   0x3f4ee  1      
  nop                                                                                      #  173   0x3f4ef  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                            #  174   0x3f4f0  5      
  movl $0x10030d30, %edi                                                                   #  175   0x3f4f5  5      
  movl %eax, 0xfff1838(%rip)                                                               #  176   0x3f4fa  6      
  nop                                                                                      #  177   0x3f500  1      
  nop                                                                                      #  178   0x3f501  1      
  callq .__cxa_guard_release                                                               #  179   0x3f502  5      
  jmpq .L_3f5c0                                                                            #  180   0x3f507  5      
  nop                                                                                      #  181   0x3f50c  1      
  nop                                                                                      #  182   0x3f50d  1      
  movl $0x10030d40, %edi                                                                   #  183   0x3f50e  5      
  movl %eax, %r12d                                                                         #  184   0x3f513  3      
  nop                                                                                      #  185   0x3f516  1      
  nop                                                                                      #  186   0x3f517  1      
  callq .__cxa_guard_abort                                                                 #  187   0x3f518  5      
.L_3f720:                                                                                  #        0x3f51d  0      
  movl %ebx, %edi                                                                          #  188   0x3f51d  2      
  nop                                                                                      #  189   0x3f51f  1      
  nop                                                                                      #  190   0x3f520  1      
  callq ._ZN2pp10InputEventD2Ev                                                            #  191   0x3f521  5      
  movl %r12d, %edi                                                                         #  192   0x3f526  3      
  nop                                                                                      #  193   0x3f529  1      
  nop                                                                                      #  194   0x3f52a  1      
  callq ._Unwind_Resume                                                                    #  195   0x3f52b  5      
  movl %eax, %r12d                                                                         #  196   0x3f530  3      
  jmpq .L_3f720                                                                            #  197   0x3f533  5      
  nop                                                                                      #  198   0x3f538  1      
  nop                                                                                      #  199   0x3f539  1      
.L_3f780:                                                                                  #        0x3f53a  0      
  movl $0x10030d30, %edi                                                                   #  200   0x3f53a  5      
  movl %eax, %r12d                                                                         #  201   0x3f53f  3      
  nop                                                                                      #  202   0x3f542  1      
  nop                                                                                      #  203   0x3f543  1      
  callq .__cxa_guard_abort                                                                 #  204   0x3f544  5      
  jmpq .L_3f720                                                                            #  205   0x3f549  5      
  nop                                                                                      #  206   0x3f54e  1      
  nop                                                                                      #  207   0x3f54f  1      
  jmpq .L_3f780                                                                            #  208   0x3f550  5      
  nop                                                                                      #  209   0x3f555  1      
  nop                                                                                      #  210   0x3f556  1      
  nop                                                                                      #  211   0x3f557  1      
  nop                                                                                      #  212   0x3f558  1      
  nop                                                                                      #  213   0x3f559  1      
  nop                                                                                      #  214   0x3f55a  1      
  nop                                                                                      #  215   0x3f55b  1      
  nop                                                                                      #  216   0x3f55c  1      
  nop                                                                                      #  217   0x3f55d  1      
  nop                                                                                      #  218   0x3f55e  1      
  nop                                                                                      #  219   0x3f55f  1      
  nop                                                                                      #  220   0x3f560  1      
  nop                                                                                      #  221   0x3f561  1      
  nop                                                                                      #  222   0x3f562  1      
  nop                                                                                      #  223   0x3f563  1      
  nop                                                                                      #  224   0x3f564  1      
  nop                                                                                      #  225   0x3f565  1      
  nop                                                                                      #  226   0x3f566  1      
  nop                                                                                      #  227   0x3f567  1      
  nop                                                                                      #  228   0x3f568  1      
  nop                                                                                      #  229   0x3f569  1      
  nop                                                                                      #  230   0x3f56a  1      
  nop                                                                                      #  231   0x3f56b  1      
  nop                                                                                      #  232   0x3f56c  1      
  nop                                                                                      #  233   0x3f56d  1      
  nop                                                                                      #  234   0x3f56e  1      
  nop                                                                                      #  235   0x3f56f  1      
  nop                                                                                      #  236   0x3f570  1      
  nop                                                                                      #  237   0x3f571  1      
  nop                                                                                      #  238   0x3f572  1      
                                                                                                                    
.size _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_, .-_ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_

