  .text
  .globl _ZN2pp10InputEventC2Ei
  .type _ZN2pp10InputEventC2Ei, @function

#! file-offset 0x36480
#! rip-offset  0x36480
#! capacity    864 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp10InputEventC2Ei:                            #        0x36480  0      
  pushq %r12                                        #  1     0x36480  3      
  movl %esi, %r12d                                  #  2     0x36483  3      
  pushq %rbx                                        #  3     0x36486  2      
  movl %edi, %ebx                                   #  4     0x36488  2      
  movl %ebx, %edi                                   #  5     0x3648a  2      
  subl $0x8, %esp                                   #  6     0x3648c  3      
  addq %r15, %rsp                                   #  7     0x3648f  3      
  nop                                               #  8     0x36492  1      
  callq ._ZN2pp8ResourceC2Ev                        #  9     0x36493  5      
  movl %ebx, %ebx                                   #  10    0x36498  2      
  movl $0x10020718, (%r15,%rbx,1)                   #  11    0x3649a  8      
  cmpb $0x0, 0xfffa8c7(%rip)                        #  12    0x364a2  7      
  je .L_36500                                       #  13    0x364a9  6      
  nop                                               #  14    0x364af  1      
.L_364c0:                                           #        0x364b0  0      
  movl 0xfffa8c2(%rip), %eax                        #  15    0x364b0  6      
  testq %rax, %rax                                  #  16    0x364b6  3      
  jne .L_365a0                                      #  17    0x364b9  6      
  xchgw %ax, %ax                                    #  18    0x364bf  3      
  nop                                               #  19    0x364c2  1      
.L_364e0:                                           #        0x364c3  0      
  addl $0x8, %esp                                   #  20    0x364c3  3      
  addq %r15, %rsp                                   #  21    0x364c6  3      
  popq %rbx                                         #  22    0x364c9  2      
  popq %r12                                         #  23    0x364cb  3      
  popq %r11                                         #  24    0x364ce  3      
  andl $0xffffffe0, %r11d                           #  25    0x364d1  7      
  addq %r15, %r11                                   #  26    0x364d8  3      
  jmpq %r11                                         #  27    0x364db  3      
  nop                                               #  28    0x364de  1      
.L_36500:                                           #        0x364df  0      
  movl $0x10030d70, %edi                            #  29    0x364df  5      
  nop                                               #  30    0x364e4  1      
  nop                                               #  31    0x364e5  1      
  callq .__cxa_guard_acquire                        #  32    0x364e6  5      
  testl %eax, %eax                                  #  33    0x364eb  2      
  je .L_364c0                                       #  34    0x364ed  6      
  nop                                               #  35    0x364f3  1      
  nop                                               #  36    0x364f4  1      
  callq ._ZN2pp6Module3GetEv                        #  37    0x364f5  5      
  movl %eax, %edi                                   #  38    0x364fa  2      
  movl $0x100202c8, %esi                            #  39    0x364fc  5      
  nop                                               #  40    0x36501  1      
  nop                                               #  41    0x36502  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  42    0x36503  5      
  movl $0x10030d70, %edi                            #  43    0x36508  5      
  movl %eax, 0xfffa865(%rip)                        #  44    0x3650d  6      
  nop                                               #  45    0x36513  1      
  nop                                               #  46    0x36514  1      
  callq .__cxa_guard_release                        #  47    0x36515  5      
  movl 0xfffa858(%rip), %eax                        #  48    0x3651a  6      
  testq %rax, %rax                                  #  49    0x36520  3      
  je .L_364e0                                       #  50    0x36523  6      
  xchgw %ax, %ax                                    #  51    0x36529  3      
  nop                                               #  52    0x3652c  1      
.L_365a0:                                           #        0x3652d  0      
  cmpb $0x0, 0xfffa83c(%rip)                        #  53    0x3652d  7      
  je .L_36660                                       #  54    0x36534  6      
  nop                                               #  55    0x3653a  1      
  nop                                               #  56    0x3653b  1      
.L_365c0:                                           #        0x3653c  0      
  movl %eax, %eax                                   #  57    0x3653c  2      
  movl 0xc(%r15,%rax,1), %eax                       #  58    0x3653e  5      
  movl %r12d, %edi                                  #  59    0x36543  3      
  nop                                               #  60    0x36546  1      
  andl $0xffffffe0, %eax                            #  61    0x36547  5      
  addq %r15, %rax                                   #  62    0x3654c  3      
  callq %rax                                        #  63    0x3654f  2      
  testl %eax, %eax                                  #  64    0x36551  2      
  je .L_364e0                                       #  65    0x36553  6      
  nop                                               #  66    0x36559  1      
  nop                                               #  67    0x3655a  1      
  callq ._ZN2pp6Module3GetEv                        #  68    0x3655b  5      
  movl %eax, %eax                                   #  69    0x36560  2      
  movl %r12d, %edi                                  #  70    0x36562  3      
  movl %eax, %eax                                   #  71    0x36565  2      
  movl 0x24(%r15,%rax,1), %eax                      #  72    0x36567  5      
  movl %eax, %eax                                   #  73    0x3656c  2      
  movl (%r15,%rax,1), %eax                          #  74    0x3656e  4      
  movl %eax, %eax                                   #  75    0x36572  2      
  movl (%r15,%rax,1), %eax                          #  76    0x36574  4      
  andl $0xffffffe0, %eax                            #  77    0x36578  5      
  addq %r15, %rax                                   #  78    0x3657d  3      
  callq %rax                                        #  79    0x36580  2      
  movl %r12d, %esi                                  #  80    0x36582  3      
  movl %ebx, %edi                                   #  81    0x36585  2      
  nop                                               #  82    0x36587  1      
  nop                                               #  83    0x36588  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  84    0x36589  5      
  addl $0x8, %esp                                   #  85    0x3658e  3      
  addq %r15, %rsp                                   #  86    0x36591  3      
  popq %rbx                                         #  87    0x36594  2      
  popq %r12                                         #  88    0x36596  3      
  popq %r11                                         #  89    0x36599  3      
  andl $0xffffffe0, %r11d                           #  90    0x3659c  7      
  addq %r15, %r11                                   #  91    0x365a3  3      
  jmpq %r11                                         #  92    0x365a6  3      
  nop                                               #  93    0x365a9  1      
.L_36660:                                           #        0x365aa  0      
  movl $0x10030d70, %edi                            #  94    0x365aa  5      
  nop                                               #  95    0x365af  1      
  nop                                               #  96    0x365b0  1      
  callq .__cxa_guard_acquire                        #  97    0x365b1  5      
  testl %eax, %eax                                  #  98    0x365b6  2      
  jne .L_366c0                                      #  99    0x365b8  6      
  nop                                               #  100   0x365be  1      
  nop                                               #  101   0x365bf  1      
.L_366a0:                                           #        0x365c0  0      
  movl 0xfffa7b2(%rip), %eax                        #  102   0x365c0  6      
  jmpq .L_365c0                                     #  103   0x365c6  5      
  nop                                               #  104   0x365cb  1      
  nop                                               #  105   0x365cc  1      
.L_366c0:                                           #        0x365cd  0      
  nop                                               #  106   0x365cd  1      
  nop                                               #  107   0x365ce  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x365cf  5      
  movl %eax, %edi                                   #  109   0x365d4  2      
  movl $0x100202c8, %esi                            #  110   0x365d6  5      
  nop                                               #  111   0x365db  1      
  nop                                               #  112   0x365dc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x365dd  5      
  movl $0x10030d70, %edi                            #  114   0x365e2  5      
  movl %eax, 0xfffa78b(%rip)                        #  115   0x365e7  6      
  nop                                               #  116   0x365ed  1      
  nop                                               #  117   0x365ee  1      
  callq .__cxa_guard_release                        #  118   0x365ef  5      
  jmpq .L_366a0                                     #  119   0x365f4  5      
  nop                                               #  120   0x365f9  1      
  nop                                               #  121   0x365fa  1      
.L_36740:                                           #        0x365fb  0      
  movl $0x10030d70, %edi                            #  122   0x365fb  5      
  movl %eax, %r12d                                  #  123   0x36600  3      
  nop                                               #  124   0x36603  1      
  nop                                               #  125   0x36604  1      
  callq .__cxa_guard_abort                          #  126   0x36605  5      
.L_36760:                                           #        0x3660a  0      
  movl %ebx, %edi                                   #  127   0x3660a  2      
  nop                                               #  128   0x3660c  1      
  nop                                               #  129   0x3660d  1      
  callq ._ZN2pp8ResourceD2Ev                        #  130   0x3660e  5      
  movl %r12d, %edi                                  #  131   0x36613  3      
  nop                                               #  132   0x36616  1      
  nop                                               #  133   0x36617  1      
  callq ._Unwind_Resume                             #  134   0x36618  5      
  movl %eax, %r12d                                  #  135   0x3661d  3      
  jmpq .L_36760                                     #  136   0x36620  5      
  nop                                               #  137   0x36625  1      
  nop                                               #  138   0x36626  1      
  jmpq .L_36740                                     #  139   0x36627  5      
  nop                                               #  140   0x3662c  1      
  nop                                               #  141   0x3662d  1      
  nop                                               #  142   0x3662e  1      
                                                                             
.size _ZN2pp10InputEventC2Ei, .-_ZN2pp10InputEventC2Ei

