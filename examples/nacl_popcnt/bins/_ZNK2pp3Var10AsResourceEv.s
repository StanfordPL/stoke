  .text
  .globl _ZNK2pp3Var10AsResourceEv
  .type _ZNK2pp3Var10AsResourceEv, @function

#! file-offset 0x2d360
#! rip-offset  0x2d360
#! capacity    800 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp3Var10AsResourceEv:                      #        0x2d360  0      
  movq %r12, -0x8(%rsp)                          #  1     0x2d360  5      
  movl %esi, %r12d                               #  2     0x2d365  3      
  movq %rbx, -0x10(%rsp)                         #  3     0x2d368  5      
  subl $0x28, %esp                               #  4     0x2d36d  3      
  addq %r15, %rsp                                #  5     0x2d370  3      
  movl %r12d, %r12d                              #  6     0x2d373  3      
  cmpl $0xa, 0x8(%r15,%r12,1)                    #  7     0x2d376  6      
  movl %edi, %ebx                                #  8     0x2d37c  2      
  xchgw %ax, %ax                                 #  9     0x2d37e  3      
  je .L_2d3e0                                    #  10    0x2d381  6      
  nop                                            #  11    0x2d387  1      
  nop                                            #  12    0x2d388  1      
.L_2d3a0:                                        #        0x2d389  0      
  movl %ebx, %edi                                #  13    0x2d389  2      
  nop                                            #  14    0x2d38b  1      
  nop                                            #  15    0x2d38c  1      
  callq ._ZN2pp8ResourceC1Ev                     #  16    0x2d38d  5      
.L_2d3c0:                                        #        0x2d392  0      
  movl %ebx, %eax                                #  17    0x2d392  2      
  movq 0x20(%rsp), %r12                          #  18    0x2d394  5      
  movq 0x18(%rsp), %rbx                          #  19    0x2d399  5      
  addl $0x28, %esp                               #  20    0x2d39e  3      
  addq %r15, %rsp                                #  21    0x2d3a1  3      
  popq %r11                                      #  22    0x2d3a4  3      
  andl $0xffffffe0, %r11d                        #  23    0x2d3a7  7      
  addq %r15, %r11                                #  24    0x2d3ae  3      
  jmpq %r11                                      #  25    0x2d3b1  3      
  xchgw %ax, %ax                                 #  26    0x2d3b4  3      
.L_2d3e0:                                        #        0x2d3b7  0      
  cmpb $0x0, 0x100038c2(%rip)                    #  27    0x2d3b7  7      
  je .L_2d4a0                                    #  28    0x2d3be  6      
  nop                                            #  29    0x2d3c4  1      
  nop                                            #  30    0x2d3c5  1      
.L_2d400:                                        #        0x2d3c6  0      
  movl 0x100038bc(%rip), %eax                    #  31    0x2d3c6  6      
  testq %rax, %rax                               #  32    0x2d3cc  3      
  je .L_2d3a0                                    #  33    0x2d3cf  6      
  cmpb $0x0, 0x100038a4(%rip)                    #  34    0x2d3d5  7      
  je .L_2d540                                    #  35    0x2d3dc  6      
  nop                                            #  36    0x2d3e2  1      
.L_2d420:                                        #        0x2d3e3  0      
  movl %r12d, %r12d                              #  37    0x2d3e3  3      
  movq 0x8(%r15,%r12,1), %rdi                    #  38    0x2d3e6  5      
  movl %r12d, %r12d                              #  39    0x2d3eb  3      
  movq 0x10(%r15,%r12,1), %rsi                   #  40    0x2d3ee  5      
  movl %eax, %eax                                #  41    0x2d3f3  2      
  movl 0x10(%r15,%rax,1), %eax                   #  42    0x2d3f5  5      
  movq %rdi, (%rsp)                              #  43    0x2d3fa  4      
  movq %rsi, 0x8(%rsp)                           #  44    0x2d3fe  5      
  nop                                            #  45    0x2d403  1      
  nop                                            #  46    0x2d404  1      
  andl $0xffffffe0, %eax                         #  47    0x2d405  5      
  addq %r15, %rax                                #  48    0x2d40a  3      
  callq %rax                                     #  49    0x2d40d  2      
  xorl %esi, %esi                                #  50    0x2d40f  2      
  movl %eax, %edx                                #  51    0x2d411  2      
  movl %ebx, %edi                                #  52    0x2d413  2      
  nop                                            #  53    0x2d415  1      
  nop                                            #  54    0x2d416  1      
  callq ._ZN2pp8ResourceC1ENS_7PassRefEi         #  55    0x2d417  5      
  jmpq .L_2d3c0                                  #  56    0x2d41c  5      
  nop                                            #  57    0x2d421  1      
  nop                                            #  58    0x2d422  1      
.L_2d4a0:                                        #        0x2d423  0      
  movl $0x10030c80, %edi                         #  59    0x2d423  5      
  nop                                            #  60    0x2d428  1      
  nop                                            #  61    0x2d429  1      
  callq .__cxa_guard_acquire                     #  62    0x2d42a  5      
  testl %eax, %eax                               #  63    0x2d42f  2      
  je .L_2d400                                    #  64    0x2d431  6      
  nop                                            #  65    0x2d437  1      
  nop                                            #  66    0x2d438  1      
  callq ._ZN2pp6Module3GetEv                     #  67    0x2d439  5      
  movl %eax, %edi                                #  68    0x2d43e  2      
  movl $0x10020516, %esi                         #  69    0x2d440  5      
  nop                                            #  70    0x2d445  1      
  nop                                            #  71    0x2d446  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  72    0x2d447  5      
  movl $0x10030c80, %edi                         #  73    0x2d44c  5      
  movl %eax, 0x10003831(%rip)                    #  74    0x2d451  6      
  nop                                            #  75    0x2d457  1      
  nop                                            #  76    0x2d458  1      
  callq .__cxa_guard_release                     #  77    0x2d459  5      
  jmpq .L_2d400                                  #  78    0x2d45e  5      
  nop                                            #  79    0x2d463  1      
  nop                                            #  80    0x2d464  1      
.L_2d540:                                        #        0x2d465  0      
  movl $0x10030c80, %edi                         #  81    0x2d465  5      
  nop                                            #  82    0x2d46a  1      
  nop                                            #  83    0x2d46b  1      
  callq .__cxa_guard_acquire                     #  84    0x2d46c  5      
  testl %eax, %eax                               #  85    0x2d471  2      
  jne .L_2d5a0                                   #  86    0x2d473  6      
  nop                                            #  87    0x2d479  1      
  nop                                            #  88    0x2d47a  1      
.L_2d580:                                        #        0x2d47b  0      
  movl 0x10003807(%rip), %eax                    #  89    0x2d47b  6      
  jmpq .L_2d420                                  #  90    0x2d481  5      
  nop                                            #  91    0x2d486  1      
  nop                                            #  92    0x2d487  1      
.L_2d5a0:                                        #        0x2d488  0      
  nop                                            #  93    0x2d488  1      
  nop                                            #  94    0x2d489  1      
  callq ._ZN2pp6Module3GetEv                     #  95    0x2d48a  5      
  movl %eax, %edi                                #  96    0x2d48f  2      
  movl $0x10020516, %esi                         #  97    0x2d491  5      
  nop                                            #  98    0x2d496  1      
  nop                                            #  99    0x2d497  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  100   0x2d498  5      
  movl $0x10030c80, %edi                         #  101   0x2d49d  5      
  movl %eax, 0x100037e0(%rip)                    #  102   0x2d4a2  6      
  nop                                            #  103   0x2d4a8  1      
  nop                                            #  104   0x2d4a9  1      
  callq .__cxa_guard_release                     #  105   0x2d4aa  5      
  jmpq .L_2d580                                  #  106   0x2d4af  5      
  nop                                            #  107   0x2d4b4  1      
  nop                                            #  108   0x2d4b5  1      
.L_2d620:                                        #        0x2d4b6  0      
  movl %eax, %ebx                                #  109   0x2d4b6  2      
  movl $0x10030c80, %edi                         #  110   0x2d4b8  5      
  nop                                            #  111   0x2d4bd  1      
  nop                                            #  112   0x2d4be  1      
  callq .__cxa_guard_abort                       #  113   0x2d4bf  5      
  movl %ebx, %edi                                #  114   0x2d4c4  2      
  nop                                            #  115   0x2d4c6  1      
  nop                                            #  116   0x2d4c7  1      
  callq ._Unwind_Resume                          #  117   0x2d4c8  5      
  jmpq .L_2d620                                  #  118   0x2d4cd  5      
  nop                                            #  119   0x2d4d2  1      
  nop                                            #  120   0x2d4d3  1      
  nop                                            #  121   0x2d4d4  1      
  nop                                            #  122   0x2d4d5  1      
  nop                                            #  123   0x2d4d6  1      
  nop                                            #  124   0x2d4d7  1      
  nop                                            #  125   0x2d4d8  1      
  nop                                            #  126   0x2d4d9  1      
  nop                                            #  127   0x2d4da  1      
  nop                                            #  128   0x2d4db  1      
  nop                                            #  129   0x2d4dc  1      
  nop                                            #  130   0x2d4dd  1      
  nop                                            #  131   0x2d4de  1      
  nop                                            #  132   0x2d4df  1      
  nop                                            #  133   0x2d4e0  1      
  nop                                            #  134   0x2d4e1  1      
  nop                                            #  135   0x2d4e2  1      
  nop                                            #  136   0x2d4e3  1      
  nop                                            #  137   0x2d4e4  1      
  nop                                            #  138   0x2d4e5  1      
  nop                                            #  139   0x2d4e6  1      
  nop                                            #  140   0x2d4e7  1      
  nop                                            #  141   0x2d4e8  1      
  nop                                            #  142   0x2d4e9  1      
  nop                                            #  143   0x2d4ea  1      
  nop                                            #  144   0x2d4eb  1      
  nop                                            #  145   0x2d4ec  1      
  nop                                            #  146   0x2d4ed  1      
  nop                                            #  147   0x2d4ee  1      
  nop                                            #  148   0x2d4ef  1      
                                                                          
.size _ZNK2pp3Var10AsResourceEv, .-_ZNK2pp3Var10AsResourceEv

