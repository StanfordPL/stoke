  .text
  .globl _ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE
  .type _ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE, @function

#! file-offset 0x282c0
#! rip-offset  0x282c0
#! capacity    800 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE:         #        0x282c0  0      
  pushq %r12                                        #  1     0x282c0  3      
  movl %esi, %r12d                                  #  2     0x282c3  3      
  pushq %rbx                                        #  3     0x282c6  2      
  movl %edi, %ebx                                   #  4     0x282c8  2      
  movl %ebx, %edi                                   #  5     0x282ca  2      
  subl $0x8, %esp                                   #  6     0x282cc  3      
  addq %r15, %rsp                                   #  7     0x282cf  3      
  nop                                               #  8     0x282d2  1      
  callq ._ZN2pp8ResourceC2Ev                        #  9     0x282d3  5      
  movl %ebx, %ebx                                   #  10    0x282d8  2      
  movl $0x100203f8, (%r15,%rbx,1)                   #  11    0x282da  8      
  cmpb $0x0, 0x10008977(%rip)                       #  12    0x282e2  7      
  je .L_28340                                       #  13    0x282e9  6      
  nop                                               #  14    0x282ef  1      
.L_28300:                                           #        0x282f0  0      
  movl 0x10008972(%rip), %eax                       #  15    0x282f0  6      
  testq %rax, %rax                                  #  16    0x282f6  3      
  jne .L_283e0                                      #  17    0x282f9  6      
  xchgw %ax, %ax                                    #  18    0x282ff  3      
  nop                                               #  19    0x28302  1      
.L_28320:                                           #        0x28303  0      
  addl $0x8, %esp                                   #  20    0x28303  3      
  addq %r15, %rsp                                   #  21    0x28306  3      
  popq %rbx                                         #  22    0x28309  2      
  popq %r12                                         #  23    0x2830b  3      
  popq %r11                                         #  24    0x2830e  3      
  andl $0xffffffe0, %r11d                           #  25    0x28311  7      
  addq %r15, %r11                                   #  26    0x28318  3      
  jmpq %r11                                         #  27    0x2831b  3      
  nop                                               #  28    0x2831e  1      
.L_28340:                                           #        0x2831f  0      
  movl $0x10030c60, %edi                            #  29    0x2831f  5      
  nop                                               #  30    0x28324  1      
  nop                                               #  31    0x28325  1      
  callq .__cxa_guard_acquire                        #  32    0x28326  5      
  testl %eax, %eax                                  #  33    0x2832b  2      
  je .L_28300                                       #  34    0x2832d  6      
  nop                                               #  35    0x28333  1      
  nop                                               #  36    0x28334  1      
  callq ._ZN2pp6Module3GetEv                        #  37    0x28335  5      
  movl %eax, %edi                                   #  38    0x2833a  2      
  movl $0x10020478, %esi                            #  39    0x2833c  5      
  nop                                               #  40    0x28341  1      
  nop                                               #  41    0x28342  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  42    0x28343  5      
  movl $0x10030c60, %edi                            #  43    0x28348  5      
  movl %eax, 0x10008915(%rip)                       #  44    0x2834d  6      
  nop                                               #  45    0x28353  1      
  nop                                               #  46    0x28354  1      
  callq .__cxa_guard_release                        #  47    0x28355  5      
  movl 0x10008908(%rip), %eax                       #  48    0x2835a  6      
  testq %rax, %rax                                  #  49    0x28360  3      
  je .L_28320                                       #  50    0x28363  6      
  xchgw %ax, %ax                                    #  51    0x28369  3      
  nop                                               #  52    0x2836c  1      
.L_283e0:                                           #        0x2836d  0      
  cmpb $0x0, 0x100088ec(%rip)                       #  53    0x2836d  7      
  je .L_28460                                       #  54    0x28374  6      
  nop                                               #  55    0x2837a  1      
  nop                                               #  56    0x2837b  1      
.L_28400:                                           #        0x2837c  0      
  movl %eax, %eax                                   #  57    0x2837c  2      
  movl (%r15,%rax,1), %eax                          #  58    0x2837e  4      
  movl %r12d, %r12d                                 #  59    0x28382  3      
  movl (%r15,%r12,1), %edi                          #  60    0x28385  4      
  nop                                               #  61    0x28389  1      
  andl $0xffffffe0, %eax                            #  62    0x2838a  5      
  addq %r15, %rax                                   #  63    0x2838f  3      
  callq %rax                                        #  64    0x28392  2      
  movl %eax, %esi                                   #  65    0x28394  2      
  movl %ebx, %edi                                   #  66    0x28396  2      
  nop                                               #  67    0x28398  1      
  nop                                               #  68    0x28399  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  69    0x2839a  5      
  addl $0x8, %esp                                   #  70    0x2839f  3      
  addq %r15, %rsp                                   #  71    0x283a2  3      
  popq %rbx                                         #  72    0x283a5  2      
  popq %r12                                         #  73    0x283a7  3      
  popq %r11                                         #  74    0x283aa  3      
  andl $0xffffffe0, %r11d                           #  75    0x283ad  7      
  addq %r15, %r11                                   #  76    0x283b4  3      
  jmpq %r11                                         #  77    0x283b7  3      
  nop                                               #  78    0x283ba  1      
.L_28460:                                           #        0x283bb  0      
  movl $0x10030c60, %edi                            #  79    0x283bb  5      
  nop                                               #  80    0x283c0  1      
  nop                                               #  81    0x283c1  1      
  callq .__cxa_guard_acquire                        #  82    0x283c2  5      
  testl %eax, %eax                                  #  83    0x283c7  2      
  jne .L_284c0                                      #  84    0x283c9  6      
  nop                                               #  85    0x283cf  1      
  nop                                               #  86    0x283d0  1      
.L_284a0:                                           #        0x283d1  0      
  movl 0x10008891(%rip), %eax                       #  87    0x283d1  6      
  jmpq .L_28400                                     #  88    0x283d7  5      
  nop                                               #  89    0x283dc  1      
  nop                                               #  90    0x283dd  1      
.L_284c0:                                           #        0x283de  0      
  nop                                               #  91    0x283de  1      
  nop                                               #  92    0x283df  1      
  callq ._ZN2pp6Module3GetEv                        #  93    0x283e0  5      
  movl %eax, %edi                                   #  94    0x283e5  2      
  movl $0x10020478, %esi                            #  95    0x283e7  5      
  nop                                               #  96    0x283ec  1      
  nop                                               #  97    0x283ed  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  98    0x283ee  5      
  movl $0x10030c60, %edi                            #  99    0x283f3  5      
  movl %eax, 0x1000886a(%rip)                       #  100   0x283f8  6      
  nop                                               #  101   0x283fe  1      
  nop                                               #  102   0x283ff  1      
  callq .__cxa_guard_release                        #  103   0x28400  5      
  jmpq .L_284a0                                     #  104   0x28405  5      
  nop                                               #  105   0x2840a  1      
  nop                                               #  106   0x2840b  1      
.L_28540:                                           #        0x2840c  0      
  movl $0x10030c60, %edi                            #  107   0x2840c  5      
  movl %eax, %r12d                                  #  108   0x28411  3      
  nop                                               #  109   0x28414  1      
  nop                                               #  110   0x28415  1      
  callq .__cxa_guard_abort                          #  111   0x28416  5      
.L_28560:                                           #        0x2841b  0      
  movl %ebx, %edi                                   #  112   0x2841b  2      
  nop                                               #  113   0x2841d  1      
  nop                                               #  114   0x2841e  1      
  callq ._ZN2pp8ResourceD2Ev                        #  115   0x2841f  5      
  movl %r12d, %edi                                  #  116   0x28424  3      
  nop                                               #  117   0x28427  1      
  nop                                               #  118   0x28428  1      
  callq ._Unwind_Resume                             #  119   0x28429  5      
  movl %eax, %r12d                                  #  120   0x2842e  3      
  jmpq .L_28560                                     #  121   0x28431  5      
  nop                                               #  122   0x28436  1      
  nop                                               #  123   0x28437  1      
  jmpq .L_28540                                     #  124   0x28438  5      
  nop                                               #  125   0x2843d  1      
  nop                                               #  126   0x2843e  1      
  nop                                               #  127   0x2843f  1      
                                                                             
.size _ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE, .-_ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE

