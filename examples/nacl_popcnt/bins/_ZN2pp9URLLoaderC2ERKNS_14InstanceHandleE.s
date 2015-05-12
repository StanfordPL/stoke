  .text
  .globl _ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE
  .type _ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE, @function

#! file-offset 0x28240
#! rip-offset  0x28240
#! capacity    800 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE:         #        0x28240  0      
  pushq %r12                                        #  1     0x28240  3      
  movl %esi, %r12d                                  #  2     0x28243  3      
  pushq %rbx                                        #  3     0x28246  2      
  movl %edi, %ebx                                   #  4     0x28248  2      
  movl %ebx, %edi                                   #  5     0x2824a  2      
  subl $0x8, %esp                                   #  6     0x2824c  3      
  addq %r15, %rsp                                   #  7     0x2824f  3      
  nop                                               #  8     0x28252  1      
  callq ._ZN2pp8ResourceC2Ev                        #  9     0x28253  5      
  movl %ebx, %ebx                                   #  10    0x28258  2      
  movl $0x100203f8, (%r15,%rbx,1)                   #  11    0x2825a  8      
  cmpb $0x0, 0x100089f7(%rip)                       #  12    0x28262  7      
  je .L_282c0                                       #  13    0x28269  6      
  nop                                               #  14    0x2826f  1      
.L_28280:                                           #        0x28270  0      
  movl 0x100089f2(%rip), %eax                       #  15    0x28270  6      
  testq %rax, %rax                                  #  16    0x28276  3      
  jne .L_28360                                      #  17    0x28279  6      
  xchgw %ax, %ax                                    #  18    0x2827f  3      
  nop                                               #  19    0x28282  1      
.L_282a0:                                           #        0x28283  0      
  addl $0x8, %esp                                   #  20    0x28283  3      
  addq %r15, %rsp                                   #  21    0x28286  3      
  popq %rbx                                         #  22    0x28289  2      
  popq %r12                                         #  23    0x2828b  3      
  popq %r11                                         #  24    0x2828e  3      
  andl $0xffffffe0, %r11d                           #  25    0x28291  7      
  addq %r15, %r11                                   #  26    0x28298  3      
  jmpq %r11                                         #  27    0x2829b  3      
  nop                                               #  28    0x2829e  1      
.L_282c0:                                           #        0x2829f  0      
  movl $0x10030c60, %edi                            #  29    0x2829f  5      
  nop                                               #  30    0x282a4  1      
  nop                                               #  31    0x282a5  1      
  callq .__cxa_guard_acquire                        #  32    0x282a6  5      
  testl %eax, %eax                                  #  33    0x282ab  2      
  je .L_28280                                       #  34    0x282ad  6      
  nop                                               #  35    0x282b3  1      
  nop                                               #  36    0x282b4  1      
  callq ._ZN2pp6Module3GetEv                        #  37    0x282b5  5      
  movl %eax, %edi                                   #  38    0x282ba  2      
  movl $0x10020478, %esi                            #  39    0x282bc  5      
  nop                                               #  40    0x282c1  1      
  nop                                               #  41    0x282c2  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  42    0x282c3  5      
  movl $0x10030c60, %edi                            #  43    0x282c8  5      
  movl %eax, 0x10008995(%rip)                       #  44    0x282cd  6      
  nop                                               #  45    0x282d3  1      
  nop                                               #  46    0x282d4  1      
  callq .__cxa_guard_release                        #  47    0x282d5  5      
  movl 0x10008988(%rip), %eax                       #  48    0x282da  6      
  testq %rax, %rax                                  #  49    0x282e0  3      
  je .L_282a0                                       #  50    0x282e3  6      
  xchgw %ax, %ax                                    #  51    0x282e9  3      
  nop                                               #  52    0x282ec  1      
.L_28360:                                           #        0x282ed  0      
  cmpb $0x0, 0x1000896c(%rip)                       #  53    0x282ed  7      
  je .L_283e0                                       #  54    0x282f4  6      
  nop                                               #  55    0x282fa  1      
  nop                                               #  56    0x282fb  1      
.L_28380:                                           #        0x282fc  0      
  movl %eax, %eax                                   #  57    0x282fc  2      
  movl (%r15,%rax,1), %eax                          #  58    0x282fe  4      
  movl %r12d, %r12d                                 #  59    0x28302  3      
  movl (%r15,%r12,1), %edi                          #  60    0x28305  4      
  nop                                               #  61    0x28309  1      
  andl $0xffffffe0, %eax                            #  62    0x2830a  5      
  addq %r15, %rax                                   #  63    0x2830f  3      
  callq %rax                                        #  64    0x28312  2      
  movl %eax, %esi                                   #  65    0x28314  2      
  movl %ebx, %edi                                   #  66    0x28316  2      
  nop                                               #  67    0x28318  1      
  nop                                               #  68    0x28319  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  69    0x2831a  5      
  addl $0x8, %esp                                   #  70    0x2831f  3      
  addq %r15, %rsp                                   #  71    0x28322  3      
  popq %rbx                                         #  72    0x28325  2      
  popq %r12                                         #  73    0x28327  3      
  popq %r11                                         #  74    0x2832a  3      
  andl $0xffffffe0, %r11d                           #  75    0x2832d  7      
  addq %r15, %r11                                   #  76    0x28334  3      
  jmpq %r11                                         #  77    0x28337  3      
  nop                                               #  78    0x2833a  1      
.L_283e0:                                           #        0x2833b  0      
  movl $0x10030c60, %edi                            #  79    0x2833b  5      
  nop                                               #  80    0x28340  1      
  nop                                               #  81    0x28341  1      
  callq .__cxa_guard_acquire                        #  82    0x28342  5      
  testl %eax, %eax                                  #  83    0x28347  2      
  jne .L_28440                                      #  84    0x28349  6      
  nop                                               #  85    0x2834f  1      
  nop                                               #  86    0x28350  1      
.L_28420:                                           #        0x28351  0      
  movl 0x10008911(%rip), %eax                       #  87    0x28351  6      
  jmpq .L_28380                                     #  88    0x28357  5      
  nop                                               #  89    0x2835c  1      
  nop                                               #  90    0x2835d  1      
.L_28440:                                           #        0x2835e  0      
  nop                                               #  91    0x2835e  1      
  nop                                               #  92    0x2835f  1      
  callq ._ZN2pp6Module3GetEv                        #  93    0x28360  5      
  movl %eax, %edi                                   #  94    0x28365  2      
  movl $0x10020478, %esi                            #  95    0x28367  5      
  nop                                               #  96    0x2836c  1      
  nop                                               #  97    0x2836d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  98    0x2836e  5      
  movl $0x10030c60, %edi                            #  99    0x28373  5      
  movl %eax, 0x100088ea(%rip)                       #  100   0x28378  6      
  nop                                               #  101   0x2837e  1      
  nop                                               #  102   0x2837f  1      
  callq .__cxa_guard_release                        #  103   0x28380  5      
  jmpq .L_28420                                     #  104   0x28385  5      
  nop                                               #  105   0x2838a  1      
  nop                                               #  106   0x2838b  1      
.L_284c0:                                           #        0x2838c  0      
  movl $0x10030c60, %edi                            #  107   0x2838c  5      
  movl %eax, %r12d                                  #  108   0x28391  3      
  nop                                               #  109   0x28394  1      
  nop                                               #  110   0x28395  1      
  callq .__cxa_guard_abort                          #  111   0x28396  5      
.L_284e0:                                           #        0x2839b  0      
  movl %ebx, %edi                                   #  112   0x2839b  2      
  nop                                               #  113   0x2839d  1      
  nop                                               #  114   0x2839e  1      
  callq ._ZN2pp8ResourceD2Ev                        #  115   0x2839f  5      
  movl %r12d, %edi                                  #  116   0x283a4  3      
  nop                                               #  117   0x283a7  1      
  nop                                               #  118   0x283a8  1      
  callq ._Unwind_Resume                             #  119   0x283a9  5      
  movl %eax, %r12d                                  #  120   0x283ae  3      
  jmpq .L_284e0                                     #  121   0x283b1  5      
  nop                                               #  122   0x283b6  1      
  nop                                               #  123   0x283b7  1      
  jmpq .L_284c0                                     #  124   0x283b8  5      
  nop                                               #  125   0x283bd  1      
  nop                                               #  126   0x283be  1      
  nop                                               #  127   0x283bf  1      
                                                                             
.size _ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE, .-_ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE

