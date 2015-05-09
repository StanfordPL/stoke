  .text
  .globl _ZNK2pp4View14GetDeviceScaleEv
  .type _ZNK2pp4View14GetDeviceScaleEv, @function

#! file-offset 0x2e200
#! rip-offset  0x2e200
#! capacity    1120 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View14GetDeviceScaleEv:                 #        0x2e200  0      
  cmpb $0x0, 0x10002aa9(%rip)                    #  1     0x2e200  7      
  pushq %rbx                                     #  2     0x2e207  2      
  movl %edi, %ebx                                #  3     0x2e209  2      
  je .L_2e3a0                                    #  4     0x2e20b  6      
  nop                                            #  5     0x2e211  1      
  nop                                            #  6     0x2e212  1      
.L_2e220:                                        #        0x2e213  0      
  movl 0x10002a9f(%rip), %eax                    #  7     0x2e213  6      
  testq %rax, %rax                               #  8     0x2e219  3      
  jne .L_2e340                                   #  9     0x2e21c  6      
  cmpb $0x0, 0x10002a97(%rip)                    #  10    0x2e222  7      
  je .L_2e2a0                                    #  11    0x2e229  6      
  nop                                            #  12    0x2e22f  1      
.L_2e240:                                        #        0x2e230  0      
  movl 0x10002a92(%rip), %eax                    #  13    0x2e230  6      
  testq %rax, %rax                               #  14    0x2e236  3      
  jne .L_2e260                                   #  15    0x2e239  6      
  popq %rbx                                      #  16    0x2e23f  2      
  popq %r11                                      #  17    0x2e241  3      
  movss 0xfff23f4(%rip), %xmm0                   #  18    0x2e244  8      
  andl $0xffffffe0, %r11d                        #  19    0x2e24c  7      
  addq %r15, %r11                                #  20    0x2e253  3      
  jmpq %r11                                      #  21    0x2e256  3      
.L_2e260:                                        #        0x2e259  0      
  cmpb $0x0, 0x10002a60(%rip)                    #  22    0x2e259  7      
  je .L_2e440                                    #  23    0x2e260  6      
  nop                                            #  24    0x2e266  1      
  nop                                            #  25    0x2e267  1      
.L_2e280:                                        #        0x2e268  0      
  movl %ebx, %ebx                                #  26    0x2e268  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  27    0x2e26a  5      
  movl %eax, %eax                                #  28    0x2e26f  2      
  movl 0x18(%r15,%rax,1), %eax                   #  29    0x2e271  5      
  popq %rbx                                      #  30    0x2e276  2      
  andl $0xffffffe0, %eax                         #  31    0x2e278  5      
  addq %r15, %rax                                #  32    0x2e27d  3      
  jmpq %rax                                      #  33    0x2e280  2      
  nop                                            #  34    0x2e282  1      
.L_2e2a0:                                        #        0x2e283  0      
  movl $0x10030cc0, %edi                         #  35    0x2e283  5      
  nop                                            #  36    0x2e288  1      
  nop                                            #  37    0x2e289  1      
  callq .__cxa_guard_acquire                     #  38    0x2e28a  5      
  testl %eax, %eax                               #  39    0x2e28f  2      
  je .L_2e240                                    #  40    0x2e291  6      
  nop                                            #  41    0x2e297  1      
  nop                                            #  42    0x2e298  1      
  callq ._ZN2pp6Module3GetEv                     #  43    0x2e299  5      
  movl %eax, %edi                                #  44    0x2e29e  2      
  movl $0x10020632, %esi                         #  45    0x2e2a0  5      
  nop                                            #  46    0x2e2a5  1      
  nop                                            #  47    0x2e2a6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  48    0x2e2a7  5      
  movl $0x10030cc0, %edi                         #  49    0x2e2ac  5      
  movl %eax, 0x10002a11(%rip)                    #  50    0x2e2b1  6      
  nop                                            #  51    0x2e2b7  1      
  nop                                            #  52    0x2e2b8  1      
  callq .__cxa_guard_release                     #  53    0x2e2b9  5      
  jmpq .L_2e240                                  #  54    0x2e2be  5      
  nop                                            #  55    0x2e2c3  1      
  nop                                            #  56    0x2e2c4  1      
.L_2e340:                                        #        0x2e2c5  0      
  cmpb $0x0, 0x100029e4(%rip)                    #  57    0x2e2c5  7      
  jne .L_2e280                                   #  58    0x2e2cc  6      
  movl $0x10030cb0, %edi                         #  59    0x2e2d2  5      
  nop                                            #  60    0x2e2d7  1      
  callq .__cxa_guard_acquire                     #  61    0x2e2d8  5      
  testl %eax, %eax                               #  62    0x2e2dd  2      
  jne .L_2e4a0                                   #  63    0x2e2df  6      
  nop                                            #  64    0x2e2e5  1      
  nop                                            #  65    0x2e2e6  1      
.L_2e380:                                        #        0x2e2e7  0      
  movl 0x100029cb(%rip), %eax                    #  66    0x2e2e7  6      
  movl %ebx, %ebx                                #  67    0x2e2ed  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  68    0x2e2ef  5      
  popq %rbx                                      #  69    0x2e2f4  2      
  movl %eax, %eax                                #  70    0x2e2f6  2      
  movl 0x18(%r15,%rax,1), %eax                   #  71    0x2e2f8  5      
  andl $0xffffffe0, %eax                         #  72    0x2e2fd  5      
  addq %r15, %rax                                #  73    0x2e302  3      
  jmpq %rax                                      #  74    0x2e305  2      
  nop                                            #  75    0x2e307  1      
.L_2e3a0:                                        #        0x2e308  0      
  movl $0x10030cb0, %edi                         #  76    0x2e308  5      
  nop                                            #  77    0x2e30d  1      
  nop                                            #  78    0x2e30e  1      
  callq .__cxa_guard_acquire                     #  79    0x2e30f  5      
  testl %eax, %eax                               #  80    0x2e314  2      
  je .L_2e220                                    #  81    0x2e316  6      
  nop                                            #  82    0x2e31c  1      
  nop                                            #  83    0x2e31d  1      
  callq ._ZN2pp6Module3GetEv                     #  84    0x2e31e  5      
  movl %eax, %edi                                #  85    0x2e323  2      
  movl $0x10020625, %esi                         #  86    0x2e325  5      
  nop                                            #  87    0x2e32a  1      
  nop                                            #  88    0x2e32b  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  89    0x2e32c  5      
  movl $0x10030cb0, %edi                         #  90    0x2e331  5      
  movl %eax, 0x1000297c(%rip)                    #  91    0x2e336  6      
  nop                                            #  92    0x2e33c  1      
  nop                                            #  93    0x2e33d  1      
  callq .__cxa_guard_release                     #  94    0x2e33e  5      
  jmpq .L_2e220                                  #  95    0x2e343  5      
  nop                                            #  96    0x2e348  1      
  nop                                            #  97    0x2e349  1      
.L_2e440:                                        #        0x2e34a  0      
  movl $0x10030cc0, %edi                         #  98    0x2e34a  5      
  nop                                            #  99    0x2e34f  1      
  nop                                            #  100   0x2e350  1      
  callq .__cxa_guard_acquire                     #  101   0x2e351  5      
  testl %eax, %eax                               #  102   0x2e356  2      
  jne .L_2e520                                   #  103   0x2e358  6      
  nop                                            #  104   0x2e35e  1      
  nop                                            #  105   0x2e35f  1      
.L_2e480:                                        #        0x2e360  0      
  movl 0x10002962(%rip), %eax                    #  106   0x2e360  6      
  jmpq .L_2e280                                  #  107   0x2e366  5      
  nop                                            #  108   0x2e36b  1      
  nop                                            #  109   0x2e36c  1      
.L_2e4a0:                                        #        0x2e36d  0      
  nop                                            #  110   0x2e36d  1      
  nop                                            #  111   0x2e36e  1      
  callq ._ZN2pp6Module3GetEv                     #  112   0x2e36f  5      
  movl %eax, %edi                                #  113   0x2e374  2      
  movl $0x10020625, %esi                         #  114   0x2e376  5      
  nop                                            #  115   0x2e37b  1      
  nop                                            #  116   0x2e37c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  117   0x2e37d  5      
  movl $0x10030cb0, %edi                         #  118   0x2e382  5      
  movl %eax, 0x1000292b(%rip)                    #  119   0x2e387  6      
  nop                                            #  120   0x2e38d  1      
  nop                                            #  121   0x2e38e  1      
  callq .__cxa_guard_release                     #  122   0x2e38f  5      
  jmpq .L_2e380                                  #  123   0x2e394  5      
  nop                                            #  124   0x2e399  1      
  nop                                            #  125   0x2e39a  1      
.L_2e520:                                        #        0x2e39b  0      
  nop                                            #  126   0x2e39b  1      
  nop                                            #  127   0x2e39c  1      
  callq ._ZN2pp6Module3GetEv                     #  128   0x2e39d  5      
  movl %eax, %edi                                #  129   0x2e3a2  2      
  movl $0x10020632, %esi                         #  130   0x2e3a4  5      
  nop                                            #  131   0x2e3a9  1      
  nop                                            #  132   0x2e3aa  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  133   0x2e3ab  5      
  movl $0x10030cc0, %edi                         #  134   0x2e3b0  5      
  movl %eax, 0x1000290d(%rip)                    #  135   0x2e3b5  6      
  nop                                            #  136   0x2e3bb  1      
  nop                                            #  137   0x2e3bc  1      
  callq .__cxa_guard_release                     #  138   0x2e3bd  5      
  jmpq .L_2e480                                  #  139   0x2e3c2  5      
  nop                                            #  140   0x2e3c7  1      
  nop                                            #  141   0x2e3c8  1      
.L_2e5a0:                                        #        0x2e3c9  0      
  movl %eax, %ebx                                #  142   0x2e3c9  2      
  movl $0x10030cc0, %edi                         #  143   0x2e3cb  5      
  nop                                            #  144   0x2e3d0  1      
  nop                                            #  145   0x2e3d1  1      
  callq .__cxa_guard_abort                       #  146   0x2e3d2  5      
  movl %ebx, %edi                                #  147   0x2e3d7  2      
  nop                                            #  148   0x2e3d9  1      
  nop                                            #  149   0x2e3da  1      
  callq ._Unwind_Resume                          #  150   0x2e3db  5      
  jmpq .L_2e5a0                                  #  151   0x2e3e0  5      
  nop                                            #  152   0x2e3e5  1      
  nop                                            #  153   0x2e3e6  1      
.L_2e600:                                        #        0x2e3e7  0      
  movl %eax, %ebx                                #  154   0x2e3e7  2      
  movl $0x10030cb0, %edi                         #  155   0x2e3e9  5      
  nop                                            #  156   0x2e3ee  1      
  nop                                            #  157   0x2e3ef  1      
  callq .__cxa_guard_abort                       #  158   0x2e3f0  5      
  movl %ebx, %edi                                #  159   0x2e3f5  2      
  nop                                            #  160   0x2e3f7  1      
  nop                                            #  161   0x2e3f8  1      
  callq ._Unwind_Resume                          #  162   0x2e3f9  5      
  jmpq .L_2e600                                  #  163   0x2e3fe  5      
  nop                                            #  164   0x2e403  1      
  nop                                            #  165   0x2e404  1      
                                                                          
.size _ZNK2pp4View14GetDeviceScaleEv, .-_ZNK2pp4View14GetDeviceScaleEv

