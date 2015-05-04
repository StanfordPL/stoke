  .text
  .globl _ZNK2pp3Var10AsResourceEv
  .type _ZNK2pp3Var10AsResourceEv, @function

#! file-offset 0x2d400
#! rip-offset  0x2d400
#! capacity    800 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp3Var10AsResourceEv:                      #        0x2d400  0      
  movq %r12, -0x8(%rsp)                          #  1     0x2d400  5      
  movl %esi, %r12d                               #  2     0x2d405  3      
  movq %rbx, -0x10(%rsp)                         #  3     0x2d408  5      
  subl $0x28, %esp                               #  4     0x2d40d  3      
  addq %r15, %rsp                                #  5     0x2d410  3      
  movl %r12d, %r12d                              #  6     0x2d413  3      
  cmpl $0xa, 0x8(%r15,%r12,1)                    #  7     0x2d416  6      
  movl %edi, %ebx                                #  8     0x2d41c  2      
  xchgw %ax, %ax                                 #  9     0x2d41e  3      
  je .L_2d480                                    #  10    0x2d421  6      
  nop                                            #  11    0x2d427  1      
  nop                                            #  12    0x2d428  1      
.L_2d440:                                        #        0x2d429  0      
  movl %ebx, %edi                                #  13    0x2d429  2      
  nop                                            #  14    0x2d42b  1      
  nop                                            #  15    0x2d42c  1      
  callq ._ZN2pp8ResourceC1Ev                     #  16    0x2d42d  5      
.L_2d460:                                        #        0x2d432  0      
  movl %ebx, %eax                                #  17    0x2d432  2      
  movq 0x20(%rsp), %r12                          #  18    0x2d434  5      
  movq 0x18(%rsp), %rbx                          #  19    0x2d439  5      
  addl $0x28, %esp                               #  20    0x2d43e  3      
  addq %r15, %rsp                                #  21    0x2d441  3      
  popq %r11                                      #  22    0x2d444  3      
  andl $0xffffffe0, %r11d                        #  23    0x2d447  7      
  addq %r15, %r11                                #  24    0x2d44e  3      
  jmpq %r11                                      #  25    0x2d451  3      
  xchgw %ax, %ax                                 #  26    0x2d454  3      
.L_2d480:                                        #        0x2d457  0      
  cmpb $0x0, 0x10003822(%rip)                    #  27    0x2d457  7      
  je .L_2d540                                    #  28    0x2d45e  6      
  nop                                            #  29    0x2d464  1      
  nop                                            #  30    0x2d465  1      
.L_2d4a0:                                        #        0x2d466  0      
  movl 0x1000381c(%rip), %eax                    #  31    0x2d466  6      
  testq %rax, %rax                               #  32    0x2d46c  3      
  je .L_2d440                                    #  33    0x2d46f  6      
  cmpb $0x0, 0x10003804(%rip)                    #  34    0x2d475  7      
  je .L_2d5e0                                    #  35    0x2d47c  6      
  nop                                            #  36    0x2d482  1      
.L_2d4c0:                                        #        0x2d483  0      
  movl %r12d, %r12d                              #  37    0x2d483  3      
  movq 0x8(%r15,%r12,1), %rdi                    #  38    0x2d486  5      
  movl %r12d, %r12d                              #  39    0x2d48b  3      
  movq 0x10(%r15,%r12,1), %rsi                   #  40    0x2d48e  5      
  movl %eax, %eax                                #  41    0x2d493  2      
  movl 0x10(%r15,%rax,1), %eax                   #  42    0x2d495  5      
  movq %rdi, (%rsp)                              #  43    0x2d49a  4      
  movq %rsi, 0x8(%rsp)                           #  44    0x2d49e  5      
  nop                                            #  45    0x2d4a3  1      
  nop                                            #  46    0x2d4a4  1      
  andl $0xffffffe0, %eax                         #  47    0x2d4a5  5      
  addq %r15, %rax                                #  48    0x2d4aa  3      
  callq %rax                                     #  49    0x2d4ad  2      
  xorl %esi, %esi                                #  50    0x2d4af  2      
  movl %eax, %edx                                #  51    0x2d4b1  2      
  movl %ebx, %edi                                #  52    0x2d4b3  2      
  nop                                            #  53    0x2d4b5  1      
  nop                                            #  54    0x2d4b6  1      
  callq ._ZN2pp8ResourceC1ENS_7PassRefEi         #  55    0x2d4b7  5      
  jmpq .L_2d460                                  #  56    0x2d4bc  5      
  nop                                            #  57    0x2d4c1  1      
  nop                                            #  58    0x2d4c2  1      
.L_2d540:                                        #        0x2d4c3  0      
  movl $0x10030c80, %edi                         #  59    0x2d4c3  5      
  nop                                            #  60    0x2d4c8  1      
  nop                                            #  61    0x2d4c9  1      
  callq .__cxa_guard_acquire                     #  62    0x2d4ca  5      
  testl %eax, %eax                               #  63    0x2d4cf  2      
  je .L_2d4a0                                    #  64    0x2d4d1  6      
  nop                                            #  65    0x2d4d7  1      
  nop                                            #  66    0x2d4d8  1      
  callq ._ZN2pp6Module3GetEv                     #  67    0x2d4d9  5      
  movl %eax, %edi                                #  68    0x2d4de  2      
  movl $0x10020516, %esi                         #  69    0x2d4e0  5      
  nop                                            #  70    0x2d4e5  1      
  nop                                            #  71    0x2d4e6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  72    0x2d4e7  5      
  movl $0x10030c80, %edi                         #  73    0x2d4ec  5      
  movl %eax, 0x10003791(%rip)                    #  74    0x2d4f1  6      
  nop                                            #  75    0x2d4f7  1      
  nop                                            #  76    0x2d4f8  1      
  callq .__cxa_guard_release                     #  77    0x2d4f9  5      
  jmpq .L_2d4a0                                  #  78    0x2d4fe  5      
  nop                                            #  79    0x2d503  1      
  nop                                            #  80    0x2d504  1      
.L_2d5e0:                                        #        0x2d505  0      
  movl $0x10030c80, %edi                         #  81    0x2d505  5      
  nop                                            #  82    0x2d50a  1      
  nop                                            #  83    0x2d50b  1      
  callq .__cxa_guard_acquire                     #  84    0x2d50c  5      
  testl %eax, %eax                               #  85    0x2d511  2      
  jne .L_2d640                                   #  86    0x2d513  6      
  nop                                            #  87    0x2d519  1      
  nop                                            #  88    0x2d51a  1      
.L_2d620:                                        #        0x2d51b  0      
  movl 0x10003767(%rip), %eax                    #  89    0x2d51b  6      
  jmpq .L_2d4c0                                  #  90    0x2d521  5      
  nop                                            #  91    0x2d526  1      
  nop                                            #  92    0x2d527  1      
.L_2d640:                                        #        0x2d528  0      
  nop                                            #  93    0x2d528  1      
  nop                                            #  94    0x2d529  1      
  callq ._ZN2pp6Module3GetEv                     #  95    0x2d52a  5      
  movl %eax, %edi                                #  96    0x2d52f  2      
  movl $0x10020516, %esi                         #  97    0x2d531  5      
  nop                                            #  98    0x2d536  1      
  nop                                            #  99    0x2d537  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  100   0x2d538  5      
  movl $0x10030c80, %edi                         #  101   0x2d53d  5      
  movl %eax, 0x10003740(%rip)                    #  102   0x2d542  6      
  nop                                            #  103   0x2d548  1      
  nop                                            #  104   0x2d549  1      
  callq .__cxa_guard_release                     #  105   0x2d54a  5      
  jmpq .L_2d620                                  #  106   0x2d54f  5      
  nop                                            #  107   0x2d554  1      
  nop                                            #  108   0x2d555  1      
.L_2d6c0:                                        #        0x2d556  0      
  movl %eax, %ebx                                #  109   0x2d556  2      
  movl $0x10030c80, %edi                         #  110   0x2d558  5      
  nop                                            #  111   0x2d55d  1      
  nop                                            #  112   0x2d55e  1      
  callq .__cxa_guard_abort                       #  113   0x2d55f  5      
  movl %ebx, %edi                                #  114   0x2d564  2      
  nop                                            #  115   0x2d566  1      
  nop                                            #  116   0x2d567  1      
  callq ._Unwind_Resume                          #  117   0x2d568  5      
  jmpq .L_2d6c0                                  #  118   0x2d56d  5      
  nop                                            #  119   0x2d572  1      
  nop                                            #  120   0x2d573  1      
  nop                                            #  121   0x2d574  1      
  nop                                            #  122   0x2d575  1      
  nop                                            #  123   0x2d576  1      
  nop                                            #  124   0x2d577  1      
  nop                                            #  125   0x2d578  1      
  nop                                            #  126   0x2d579  1      
  nop                                            #  127   0x2d57a  1      
  nop                                            #  128   0x2d57b  1      
  nop                                            #  129   0x2d57c  1      
  nop                                            #  130   0x2d57d  1      
  nop                                            #  131   0x2d57e  1      
  nop                                            #  132   0x2d57f  1      
  nop                                            #  133   0x2d580  1      
  nop                                            #  134   0x2d581  1      
  nop                                            #  135   0x2d582  1      
  nop                                            #  136   0x2d583  1      
  nop                                            #  137   0x2d584  1      
  nop                                            #  138   0x2d585  1      
  nop                                            #  139   0x2d586  1      
  nop                                            #  140   0x2d587  1      
  nop                                            #  141   0x2d588  1      
  nop                                            #  142   0x2d589  1      
  nop                                            #  143   0x2d58a  1      
  nop                                            #  144   0x2d58b  1      
  nop                                            #  145   0x2d58c  1      
  nop                                            #  146   0x2d58d  1      
  nop                                            #  147   0x2d58e  1      
  nop                                            #  148   0x2d58f  1      
                                                                          
.size _ZNK2pp3Var10AsResourceEv, .-_ZNK2pp3Var10AsResourceEv

