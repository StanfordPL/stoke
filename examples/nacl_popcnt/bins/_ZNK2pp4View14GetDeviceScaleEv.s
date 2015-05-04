  .text
  .globl _ZNK2pp4View14GetDeviceScaleEv
  .type _ZNK2pp4View14GetDeviceScaleEv, @function

#! file-offset 0x2e2a0
#! rip-offset  0x2e2a0
#! capacity    1120 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View14GetDeviceScaleEv:                 #        0x2e2a0  0      
  cmpb $0x0, 0x10002a09(%rip)                    #  1     0x2e2a0  7      
  pushq %rbx                                     #  2     0x2e2a7  2      
  movl %edi, %ebx                                #  3     0x2e2a9  2      
  je .L_2e440                                    #  4     0x2e2ab  6      
  nop                                            #  5     0x2e2b1  1      
  nop                                            #  6     0x2e2b2  1      
.L_2e2c0:                                        #        0x2e2b3  0      
  movl 0x100029ff(%rip), %eax                    #  7     0x2e2b3  6      
  testq %rax, %rax                               #  8     0x2e2b9  3      
  jne .L_2e3e0                                   #  9     0x2e2bc  6      
  cmpb $0x0, 0x100029f7(%rip)                    #  10    0x2e2c2  7      
  je .L_2e340                                    #  11    0x2e2c9  6      
  nop                                            #  12    0x2e2cf  1      
.L_2e2e0:                                        #        0x2e2d0  0      
  movl 0x100029f2(%rip), %eax                    #  13    0x2e2d0  6      
  testq %rax, %rax                               #  14    0x2e2d6  3      
  jne .L_2e300                                   #  15    0x2e2d9  6      
  popq %rbx                                      #  16    0x2e2df  2      
  popq %r11                                      #  17    0x2e2e1  3      
  movss 0xfff2354(%rip), %xmm0                   #  18    0x2e2e4  8      
  andl $0xffffffe0, %r11d                        #  19    0x2e2ec  7      
  addq %r15, %r11                                #  20    0x2e2f3  3      
  jmpq %r11                                      #  21    0x2e2f6  3      
.L_2e300:                                        #        0x2e2f9  0      
  cmpb $0x0, 0x100029c0(%rip)                    #  22    0x2e2f9  7      
  je .L_2e4e0                                    #  23    0x2e300  6      
  nop                                            #  24    0x2e306  1      
  nop                                            #  25    0x2e307  1      
.L_2e320:                                        #        0x2e308  0      
  movl %ebx, %ebx                                #  26    0x2e308  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  27    0x2e30a  5      
  movl %eax, %eax                                #  28    0x2e30f  2      
  movl 0x18(%r15,%rax,1), %eax                   #  29    0x2e311  5      
  popq %rbx                                      #  30    0x2e316  2      
  andl $0xffffffe0, %eax                         #  31    0x2e318  5      
  addq %r15, %rax                                #  32    0x2e31d  3      
  jmpq %rax                                      #  33    0x2e320  2      
  nop                                            #  34    0x2e322  1      
.L_2e340:                                        #        0x2e323  0      
  movl $0x10030cc0, %edi                         #  35    0x2e323  5      
  nop                                            #  36    0x2e328  1      
  nop                                            #  37    0x2e329  1      
  callq .__cxa_guard_acquire                     #  38    0x2e32a  5      
  testl %eax, %eax                               #  39    0x2e32f  2      
  je .L_2e2e0                                    #  40    0x2e331  6      
  nop                                            #  41    0x2e337  1      
  nop                                            #  42    0x2e338  1      
  callq ._ZN2pp6Module3GetEv                     #  43    0x2e339  5      
  movl %eax, %edi                                #  44    0x2e33e  2      
  movl $0x10020632, %esi                         #  45    0x2e340  5      
  nop                                            #  46    0x2e345  1      
  nop                                            #  47    0x2e346  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  48    0x2e347  5      
  movl $0x10030cc0, %edi                         #  49    0x2e34c  5      
  movl %eax, 0x10002971(%rip)                    #  50    0x2e351  6      
  nop                                            #  51    0x2e357  1      
  nop                                            #  52    0x2e358  1      
  callq .__cxa_guard_release                     #  53    0x2e359  5      
  jmpq .L_2e2e0                                  #  54    0x2e35e  5      
  nop                                            #  55    0x2e363  1      
  nop                                            #  56    0x2e364  1      
.L_2e3e0:                                        #        0x2e365  0      
  cmpb $0x0, 0x10002944(%rip)                    #  57    0x2e365  7      
  jne .L_2e320                                   #  58    0x2e36c  6      
  movl $0x10030cb0, %edi                         #  59    0x2e372  5      
  nop                                            #  60    0x2e377  1      
  callq .__cxa_guard_acquire                     #  61    0x2e378  5      
  testl %eax, %eax                               #  62    0x2e37d  2      
  jne .L_2e540                                   #  63    0x2e37f  6      
  nop                                            #  64    0x2e385  1      
  nop                                            #  65    0x2e386  1      
.L_2e420:                                        #        0x2e387  0      
  movl 0x1000292b(%rip), %eax                    #  66    0x2e387  6      
  movl %ebx, %ebx                                #  67    0x2e38d  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  68    0x2e38f  5      
  popq %rbx                                      #  69    0x2e394  2      
  movl %eax, %eax                                #  70    0x2e396  2      
  movl 0x18(%r15,%rax,1), %eax                   #  71    0x2e398  5      
  andl $0xffffffe0, %eax                         #  72    0x2e39d  5      
  addq %r15, %rax                                #  73    0x2e3a2  3      
  jmpq %rax                                      #  74    0x2e3a5  2      
  nop                                            #  75    0x2e3a7  1      
.L_2e440:                                        #        0x2e3a8  0      
  movl $0x10030cb0, %edi                         #  76    0x2e3a8  5      
  nop                                            #  77    0x2e3ad  1      
  nop                                            #  78    0x2e3ae  1      
  callq .__cxa_guard_acquire                     #  79    0x2e3af  5      
  testl %eax, %eax                               #  80    0x2e3b4  2      
  je .L_2e2c0                                    #  81    0x2e3b6  6      
  nop                                            #  82    0x2e3bc  1      
  nop                                            #  83    0x2e3bd  1      
  callq ._ZN2pp6Module3GetEv                     #  84    0x2e3be  5      
  movl %eax, %edi                                #  85    0x2e3c3  2      
  movl $0x10020625, %esi                         #  86    0x2e3c5  5      
  nop                                            #  87    0x2e3ca  1      
  nop                                            #  88    0x2e3cb  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  89    0x2e3cc  5      
  movl $0x10030cb0, %edi                         #  90    0x2e3d1  5      
  movl %eax, 0x100028dc(%rip)                    #  91    0x2e3d6  6      
  nop                                            #  92    0x2e3dc  1      
  nop                                            #  93    0x2e3dd  1      
  callq .__cxa_guard_release                     #  94    0x2e3de  5      
  jmpq .L_2e2c0                                  #  95    0x2e3e3  5      
  nop                                            #  96    0x2e3e8  1      
  nop                                            #  97    0x2e3e9  1      
.L_2e4e0:                                        #        0x2e3ea  0      
  movl $0x10030cc0, %edi                         #  98    0x2e3ea  5      
  nop                                            #  99    0x2e3ef  1      
  nop                                            #  100   0x2e3f0  1      
  callq .__cxa_guard_acquire                     #  101   0x2e3f1  5      
  testl %eax, %eax                               #  102   0x2e3f6  2      
  jne .L_2e5c0                                   #  103   0x2e3f8  6      
  nop                                            #  104   0x2e3fe  1      
  nop                                            #  105   0x2e3ff  1      
.L_2e520:                                        #        0x2e400  0      
  movl 0x100028c2(%rip), %eax                    #  106   0x2e400  6      
  jmpq .L_2e320                                  #  107   0x2e406  5      
  nop                                            #  108   0x2e40b  1      
  nop                                            #  109   0x2e40c  1      
.L_2e540:                                        #        0x2e40d  0      
  nop                                            #  110   0x2e40d  1      
  nop                                            #  111   0x2e40e  1      
  callq ._ZN2pp6Module3GetEv                     #  112   0x2e40f  5      
  movl %eax, %edi                                #  113   0x2e414  2      
  movl $0x10020625, %esi                         #  114   0x2e416  5      
  nop                                            #  115   0x2e41b  1      
  nop                                            #  116   0x2e41c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  117   0x2e41d  5      
  movl $0x10030cb0, %edi                         #  118   0x2e422  5      
  movl %eax, 0x1000288b(%rip)                    #  119   0x2e427  6      
  nop                                            #  120   0x2e42d  1      
  nop                                            #  121   0x2e42e  1      
  callq .__cxa_guard_release                     #  122   0x2e42f  5      
  jmpq .L_2e420                                  #  123   0x2e434  5      
  nop                                            #  124   0x2e439  1      
  nop                                            #  125   0x2e43a  1      
.L_2e5c0:                                        #        0x2e43b  0      
  nop                                            #  126   0x2e43b  1      
  nop                                            #  127   0x2e43c  1      
  callq ._ZN2pp6Module3GetEv                     #  128   0x2e43d  5      
  movl %eax, %edi                                #  129   0x2e442  2      
  movl $0x10020632, %esi                         #  130   0x2e444  5      
  nop                                            #  131   0x2e449  1      
  nop                                            #  132   0x2e44a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  133   0x2e44b  5      
  movl $0x10030cc0, %edi                         #  134   0x2e450  5      
  movl %eax, 0x1000286d(%rip)                    #  135   0x2e455  6      
  nop                                            #  136   0x2e45b  1      
  nop                                            #  137   0x2e45c  1      
  callq .__cxa_guard_release                     #  138   0x2e45d  5      
  jmpq .L_2e520                                  #  139   0x2e462  5      
  nop                                            #  140   0x2e467  1      
  nop                                            #  141   0x2e468  1      
.L_2e640:                                        #        0x2e469  0      
  movl %eax, %ebx                                #  142   0x2e469  2      
  movl $0x10030cc0, %edi                         #  143   0x2e46b  5      
  nop                                            #  144   0x2e470  1      
  nop                                            #  145   0x2e471  1      
  callq .__cxa_guard_abort                       #  146   0x2e472  5      
  movl %ebx, %edi                                #  147   0x2e477  2      
  nop                                            #  148   0x2e479  1      
  nop                                            #  149   0x2e47a  1      
  callq ._Unwind_Resume                          #  150   0x2e47b  5      
  jmpq .L_2e640                                  #  151   0x2e480  5      
  nop                                            #  152   0x2e485  1      
  nop                                            #  153   0x2e486  1      
.L_2e6a0:                                        #        0x2e487  0      
  movl %eax, %ebx                                #  154   0x2e487  2      
  movl $0x10030cb0, %edi                         #  155   0x2e489  5      
  nop                                            #  156   0x2e48e  1      
  nop                                            #  157   0x2e48f  1      
  callq .__cxa_guard_abort                       #  158   0x2e490  5      
  movl %ebx, %edi                                #  159   0x2e495  2      
  nop                                            #  160   0x2e497  1      
  nop                                            #  161   0x2e498  1      
  callq ._Unwind_Resume                          #  162   0x2e499  5      
  jmpq .L_2e6a0                                  #  163   0x2e49e  5      
  nop                                            #  164   0x2e4a3  1      
  nop                                            #  165   0x2e4a4  1      
                                                                          
.size _ZNK2pp4View14GetDeviceScaleEv, .-_ZNK2pp4View14GetDeviceScaleEv

