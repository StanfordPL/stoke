  .text
  .globl _ZNK2pp4View14GetDeviceScaleEv
  .type _ZNK2pp4View14GetDeviceScaleEv, @function

#! file-offset 0x2e220
#! rip-offset  0x2e220
#! capacity    1120 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View14GetDeviceScaleEv:                 #        0x2e220  0      
  cmpb $0x0, 0x10002a89(%rip)                    #  1     0x2e220  7      
  pushq %rbx                                     #  2     0x2e227  2      
  movl %edi, %ebx                                #  3     0x2e229  2      
  je .L_2e3c0                                    #  4     0x2e22b  6      
  nop                                            #  5     0x2e231  1      
  nop                                            #  6     0x2e232  1      
.L_2e240:                                        #        0x2e233  0      
  movl 0x10002a7f(%rip), %eax                    #  7     0x2e233  6      
  testq %rax, %rax                               #  8     0x2e239  3      
  jne .L_2e360                                   #  9     0x2e23c  6      
  cmpb $0x0, 0x10002a77(%rip)                    #  10    0x2e242  7      
  je .L_2e2c0                                    #  11    0x2e249  6      
  nop                                            #  12    0x2e24f  1      
.L_2e260:                                        #        0x2e250  0      
  movl 0x10002a72(%rip), %eax                    #  13    0x2e250  6      
  testq %rax, %rax                               #  14    0x2e256  3      
  jne .L_2e280                                   #  15    0x2e259  6      
  popq %rbx                                      #  16    0x2e25f  2      
  popq %r11                                      #  17    0x2e261  3      
  movss 0xfff23d4(%rip), %xmm0                   #  18    0x2e264  8      
  andl $0xffffffe0, %r11d                        #  19    0x2e26c  7      
  addq %r15, %r11                                #  20    0x2e273  3      
  jmpq %r11                                      #  21    0x2e276  3      
.L_2e280:                                        #        0x2e279  0      
  cmpb $0x0, 0x10002a40(%rip)                    #  22    0x2e279  7      
  je .L_2e460                                    #  23    0x2e280  6      
  nop                                            #  24    0x2e286  1      
  nop                                            #  25    0x2e287  1      
.L_2e2a0:                                        #        0x2e288  0      
  movl %ebx, %ebx                                #  26    0x2e288  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  27    0x2e28a  5      
  movl %eax, %eax                                #  28    0x2e28f  2      
  movl 0x18(%r15,%rax,1), %eax                   #  29    0x2e291  5      
  popq %rbx                                      #  30    0x2e296  2      
  andl $0xffffffe0, %eax                         #  31    0x2e298  5      
  addq %r15, %rax                                #  32    0x2e29d  3      
  jmpq %rax                                      #  33    0x2e2a0  2      
  nop                                            #  34    0x2e2a2  1      
.L_2e2c0:                                        #        0x2e2a3  0      
  movl $0x10030cc0, %edi                         #  35    0x2e2a3  5      
  nop                                            #  36    0x2e2a8  1      
  nop                                            #  37    0x2e2a9  1      
  callq .__cxa_guard_acquire                     #  38    0x2e2aa  5      
  testl %eax, %eax                               #  39    0x2e2af  2      
  je .L_2e260                                    #  40    0x2e2b1  6      
  nop                                            #  41    0x2e2b7  1      
  nop                                            #  42    0x2e2b8  1      
  callq ._ZN2pp6Module3GetEv                     #  43    0x2e2b9  5      
  movl %eax, %edi                                #  44    0x2e2be  2      
  movl $0x10020632, %esi                         #  45    0x2e2c0  5      
  nop                                            #  46    0x2e2c5  1      
  nop                                            #  47    0x2e2c6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  48    0x2e2c7  5      
  movl $0x10030cc0, %edi                         #  49    0x2e2cc  5      
  movl %eax, 0x100029f1(%rip)                    #  50    0x2e2d1  6      
  nop                                            #  51    0x2e2d7  1      
  nop                                            #  52    0x2e2d8  1      
  callq .__cxa_guard_release                     #  53    0x2e2d9  5      
  jmpq .L_2e260                                  #  54    0x2e2de  5      
  nop                                            #  55    0x2e2e3  1      
  nop                                            #  56    0x2e2e4  1      
.L_2e360:                                        #        0x2e2e5  0      
  cmpb $0x0, 0x100029c4(%rip)                    #  57    0x2e2e5  7      
  jne .L_2e2a0                                   #  58    0x2e2ec  6      
  movl $0x10030cb0, %edi                         #  59    0x2e2f2  5      
  nop                                            #  60    0x2e2f7  1      
  callq .__cxa_guard_acquire                     #  61    0x2e2f8  5      
  testl %eax, %eax                               #  62    0x2e2fd  2      
  jne .L_2e4c0                                   #  63    0x2e2ff  6      
  nop                                            #  64    0x2e305  1      
  nop                                            #  65    0x2e306  1      
.L_2e3a0:                                        #        0x2e307  0      
  movl 0x100029ab(%rip), %eax                    #  66    0x2e307  6      
  movl %ebx, %ebx                                #  67    0x2e30d  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  68    0x2e30f  5      
  popq %rbx                                      #  69    0x2e314  2      
  movl %eax, %eax                                #  70    0x2e316  2      
  movl 0x18(%r15,%rax,1), %eax                   #  71    0x2e318  5      
  andl $0xffffffe0, %eax                         #  72    0x2e31d  5      
  addq %r15, %rax                                #  73    0x2e322  3      
  jmpq %rax                                      #  74    0x2e325  2      
  nop                                            #  75    0x2e327  1      
.L_2e3c0:                                        #        0x2e328  0      
  movl $0x10030cb0, %edi                         #  76    0x2e328  5      
  nop                                            #  77    0x2e32d  1      
  nop                                            #  78    0x2e32e  1      
  callq .__cxa_guard_acquire                     #  79    0x2e32f  5      
  testl %eax, %eax                               #  80    0x2e334  2      
  je .L_2e240                                    #  81    0x2e336  6      
  nop                                            #  82    0x2e33c  1      
  nop                                            #  83    0x2e33d  1      
  callq ._ZN2pp6Module3GetEv                     #  84    0x2e33e  5      
  movl %eax, %edi                                #  85    0x2e343  2      
  movl $0x10020625, %esi                         #  86    0x2e345  5      
  nop                                            #  87    0x2e34a  1      
  nop                                            #  88    0x2e34b  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  89    0x2e34c  5      
  movl $0x10030cb0, %edi                         #  90    0x2e351  5      
  movl %eax, 0x1000295c(%rip)                    #  91    0x2e356  6      
  nop                                            #  92    0x2e35c  1      
  nop                                            #  93    0x2e35d  1      
  callq .__cxa_guard_release                     #  94    0x2e35e  5      
  jmpq .L_2e240                                  #  95    0x2e363  5      
  nop                                            #  96    0x2e368  1      
  nop                                            #  97    0x2e369  1      
.L_2e460:                                        #        0x2e36a  0      
  movl $0x10030cc0, %edi                         #  98    0x2e36a  5      
  nop                                            #  99    0x2e36f  1      
  nop                                            #  100   0x2e370  1      
  callq .__cxa_guard_acquire                     #  101   0x2e371  5      
  testl %eax, %eax                               #  102   0x2e376  2      
  jne .L_2e540                                   #  103   0x2e378  6      
  nop                                            #  104   0x2e37e  1      
  nop                                            #  105   0x2e37f  1      
.L_2e4a0:                                        #        0x2e380  0      
  movl 0x10002942(%rip), %eax                    #  106   0x2e380  6      
  jmpq .L_2e2a0                                  #  107   0x2e386  5      
  nop                                            #  108   0x2e38b  1      
  nop                                            #  109   0x2e38c  1      
.L_2e4c0:                                        #        0x2e38d  0      
  nop                                            #  110   0x2e38d  1      
  nop                                            #  111   0x2e38e  1      
  callq ._ZN2pp6Module3GetEv                     #  112   0x2e38f  5      
  movl %eax, %edi                                #  113   0x2e394  2      
  movl $0x10020625, %esi                         #  114   0x2e396  5      
  nop                                            #  115   0x2e39b  1      
  nop                                            #  116   0x2e39c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  117   0x2e39d  5      
  movl $0x10030cb0, %edi                         #  118   0x2e3a2  5      
  movl %eax, 0x1000290b(%rip)                    #  119   0x2e3a7  6      
  nop                                            #  120   0x2e3ad  1      
  nop                                            #  121   0x2e3ae  1      
  callq .__cxa_guard_release                     #  122   0x2e3af  5      
  jmpq .L_2e3a0                                  #  123   0x2e3b4  5      
  nop                                            #  124   0x2e3b9  1      
  nop                                            #  125   0x2e3ba  1      
.L_2e540:                                        #        0x2e3bb  0      
  nop                                            #  126   0x2e3bb  1      
  nop                                            #  127   0x2e3bc  1      
  callq ._ZN2pp6Module3GetEv                     #  128   0x2e3bd  5      
  movl %eax, %edi                                #  129   0x2e3c2  2      
  movl $0x10020632, %esi                         #  130   0x2e3c4  5      
  nop                                            #  131   0x2e3c9  1      
  nop                                            #  132   0x2e3ca  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  133   0x2e3cb  5      
  movl $0x10030cc0, %edi                         #  134   0x2e3d0  5      
  movl %eax, 0x100028ed(%rip)                    #  135   0x2e3d5  6      
  nop                                            #  136   0x2e3db  1      
  nop                                            #  137   0x2e3dc  1      
  callq .__cxa_guard_release                     #  138   0x2e3dd  5      
  jmpq .L_2e4a0                                  #  139   0x2e3e2  5      
  nop                                            #  140   0x2e3e7  1      
  nop                                            #  141   0x2e3e8  1      
.L_2e5c0:                                        #        0x2e3e9  0      
  movl %eax, %ebx                                #  142   0x2e3e9  2      
  movl $0x10030cc0, %edi                         #  143   0x2e3eb  5      
  nop                                            #  144   0x2e3f0  1      
  nop                                            #  145   0x2e3f1  1      
  callq .__cxa_guard_abort                       #  146   0x2e3f2  5      
  movl %ebx, %edi                                #  147   0x2e3f7  2      
  nop                                            #  148   0x2e3f9  1      
  nop                                            #  149   0x2e3fa  1      
  callq ._Unwind_Resume                          #  150   0x2e3fb  5      
  jmpq .L_2e5c0                                  #  151   0x2e400  5      
  nop                                            #  152   0x2e405  1      
  nop                                            #  153   0x2e406  1      
.L_2e620:                                        #        0x2e407  0      
  movl %eax, %ebx                                #  154   0x2e407  2      
  movl $0x10030cb0, %edi                         #  155   0x2e409  5      
  nop                                            #  156   0x2e40e  1      
  nop                                            #  157   0x2e40f  1      
  callq .__cxa_guard_abort                       #  158   0x2e410  5      
  movl %ebx, %edi                                #  159   0x2e415  2      
  nop                                            #  160   0x2e417  1      
  nop                                            #  161   0x2e418  1      
  callq ._Unwind_Resume                          #  162   0x2e419  5      
  jmpq .L_2e620                                  #  163   0x2e41e  5      
  nop                                            #  164   0x2e423  1      
  nop                                            #  165   0x2e424  1      
                                                                          
.size _ZNK2pp4View14GetDeviceScaleEv, .-_ZNK2pp4View14GetDeviceScaleEv

