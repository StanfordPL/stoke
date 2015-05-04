  .text
  .globl _ZN2pp15WheelInputEventC1ERKNS_10InputEventE
  .type _ZN2pp15WheelInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x394e0
#! rip-offset  0x394e0
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC1ERKNS_10InputEventE:      #        0x394e0  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x394e0  5      
  movl %edi, %ebx                                   #  2     0x394e5  2      
  movq %r12, -0x10(%rsp)                            #  3     0x394e7  5      
  movq %r13, -0x8(%rsp)                             #  4     0x394ec  5      
  movl %ebx, %edi                                   #  5     0x394f1  2      
  subl $0x18, %esp                                  #  6     0x394f3  3      
  addq %r15, %rsp                                   #  7     0x394f6  3      
  movl %esi, %r12d                                  #  8     0x394f9  3      
  nop                                               #  9     0x394fc  1      
  nop                                               #  10    0x394fd  1      
  nop                                               #  11    0x394fe  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x394ff  5      
  movl %ebx, %ebx                                   #  13    0x39504  2      
  movl $0x10020808, (%r15,%rbx,1)                   #  14    0x39506  8      
  cmpb $0x0, 0xfff783b(%rip)                        #  15    0x3950e  7      
  je .L_39580                                       #  16    0x39515  6      
  nop                                               #  17    0x3951b  1      
.L_39540:                                           #        0x3951c  0      
  movl 0xfff7836(%rip), %eax                        #  18    0x3951c  6      
  testq %rax, %rax                                  #  19    0x39522  3      
  jne .L_39620                                      #  20    0x39525  6      
  xchgw %ax, %ax                                    #  21    0x3952b  3      
  nop                                               #  22    0x3952e  1      
.L_39560:                                           #        0x3952f  0      
  movq (%rsp), %rbx                                 #  23    0x3952f  4      
  movq 0x8(%rsp), %r12                              #  24    0x39533  5      
  movq 0x10(%rsp), %r13                             #  25    0x39538  5      
  addl $0x18, %esp                                  #  26    0x3953d  3      
  addq %r15, %rsp                                   #  27    0x39540  3      
  popq %r11                                         #  28    0x39543  3      
  andl $0xffffffe0, %r11d                           #  29    0x39546  7      
  addq %r15, %r11                                   #  30    0x3954d  3      
  jmpq %r11                                         #  31    0x39550  3      
.L_39580:                                           #        0x39553  0      
  movl $0x10030d50, %edi                            #  32    0x39553  5      
  nop                                               #  33    0x39558  1      
  nop                                               #  34    0x39559  1      
  callq .__cxa_guard_acquire                        #  35    0x3955a  5      
  testl %eax, %eax                                  #  36    0x3955f  2      
  je .L_39540                                       #  37    0x39561  6      
  nop                                               #  38    0x39567  1      
  nop                                               #  39    0x39568  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x39569  5      
  movl %eax, %edi                                   #  41    0x3956e  2      
  movl $0x100206c0, %esi                            #  42    0x39570  5      
  nop                                               #  43    0x39575  1      
  nop                                               #  44    0x39576  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x39577  5      
  movl $0x10030d50, %edi                            #  46    0x3957c  5      
  movl %eax, 0xfff77d1(%rip)                        #  47    0x39581  6      
  nop                                               #  48    0x39587  1      
  nop                                               #  49    0x39588  1      
  callq .__cxa_guard_release                        #  50    0x39589  5      
  movl 0xfff77c4(%rip), %eax                        #  51    0x3958e  6      
  testq %rax, %rax                                  #  52    0x39594  3      
  je .L_39560                                       #  53    0x39597  6      
  xchgw %ax, %ax                                    #  54    0x3959d  3      
  nop                                               #  55    0x395a0  1      
.L_39620:                                           #        0x395a1  0      
  cmpb $0x0, 0xfff77a8(%rip)                        #  56    0x395a1  7      
  je .L_396e0                                       #  57    0x395a8  6      
  nop                                               #  58    0x395ae  1      
  nop                                               #  59    0x395af  1      
.L_39640:                                           #        0x395b0  0      
  movl %eax, %eax                                   #  60    0x395b0  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x395b2  5      
  movl %r12d, %r12d                                 #  62    0x395b7  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x395ba  5      
  nop                                               #  64    0x395bf  1      
  andl $0xffffffe0, %eax                            #  65    0x395c0  5      
  addq %r15, %rax                                   #  66    0x395c5  3      
  callq %rax                                        #  67    0x395c8  2      
  testl %eax, %eax                                  #  68    0x395ca  2      
  je .L_39560                                       #  69    0x395cc  6      
  movl %r12d, %r12d                                 #  70    0x395d2  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x395d5  5      
  nop                                               #  72    0x395da  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x395db  5      
  movl %eax, %eax                                   #  74    0x395e0  2      
  movl %r13d, %edi                                  #  75    0x395e2  3      
  movl %eax, %eax                                   #  76    0x395e5  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x395e7  5      
  movl %eax, %eax                                   #  78    0x395ec  2      
  movl (%r15,%rax,1), %eax                          #  79    0x395ee  4      
  movl %eax, %eax                                   #  80    0x395f2  2      
  movl (%r15,%rax,1), %eax                          #  81    0x395f4  4      
  andl $0xffffffe0, %eax                            #  82    0x395f8  5      
  addq %r15, %rax                                   #  83    0x395fd  3      
  callq %rax                                        #  84    0x39600  2      
  movl %r12d, %r12d                                 #  85    0x39602  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x39605  5      
  movl %ebx, %edi                                   #  87    0x3960a  2      
  xchgw %ax, %ax                                    #  88    0x3960c  3      
  nop                                               #  89    0x3960f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x39610  5      
  jmpq .L_39560                                     #  91    0x39615  5      
  nop                                               #  92    0x3961a  1      
  nop                                               #  93    0x3961b  1      
.L_396e0:                                           #        0x3961c  0      
  movl $0x10030d50, %edi                            #  94    0x3961c  5      
  nop                                               #  95    0x39621  1      
  nop                                               #  96    0x39622  1      
  callq .__cxa_guard_acquire                        #  97    0x39623  5      
  testl %eax, %eax                                  #  98    0x39628  2      
  jne .L_39740                                      #  99    0x3962a  6      
  nop                                               #  100   0x39630  1      
  nop                                               #  101   0x39631  1      
.L_39720:                                           #        0x39632  0      
  movl 0xfff7720(%rip), %eax                        #  102   0x39632  6      
  jmpq .L_39640                                     #  103   0x39638  5      
  nop                                               #  104   0x3963d  1      
  nop                                               #  105   0x3963e  1      
.L_39740:                                           #        0x3963f  0      
  nop                                               #  106   0x3963f  1      
  nop                                               #  107   0x39640  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x39641  5      
  movl %eax, %edi                                   #  109   0x39646  2      
  movl $0x100206c0, %esi                            #  110   0x39648  5      
  nop                                               #  111   0x3964d  1      
  nop                                               #  112   0x3964e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3964f  5      
  movl $0x10030d50, %edi                            #  114   0x39654  5      
  movl %eax, 0xfff76f9(%rip)                        #  115   0x39659  6      
  nop                                               #  116   0x3965f  1      
  nop                                               #  117   0x39660  1      
  callq .__cxa_guard_release                        #  118   0x39661  5      
  jmpq .L_39720                                     #  119   0x39666  5      
  nop                                               #  120   0x3966b  1      
  nop                                               #  121   0x3966c  1      
.L_397c0:                                           #        0x3966d  0      
  movl $0x10030d50, %edi                            #  122   0x3966d  5      
  movl %eax, %r12d                                  #  123   0x39672  3      
  nop                                               #  124   0x39675  1      
  nop                                               #  125   0x39676  1      
  callq .__cxa_guard_abort                          #  126   0x39677  5      
.L_397e0:                                           #        0x3967c  0      
  movl %ebx, %edi                                   #  127   0x3967c  2      
  nop                                               #  128   0x3967e  1      
  nop                                               #  129   0x3967f  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x39680  5      
  movl %r12d, %edi                                  #  131   0x39685  3      
  nop                                               #  132   0x39688  1      
  nop                                               #  133   0x39689  1      
  callq ._Unwind_Resume                             #  134   0x3968a  5      
  movl %eax, %r12d                                  #  135   0x3968f  3      
  jmpq .L_397e0                                     #  136   0x39692  5      
  nop                                               #  137   0x39697  1      
  nop                                               #  138   0x39698  1      
  jmpq .L_397c0                                     #  139   0x39699  5      
  nop                                               #  140   0x3969e  1      
  nop                                               #  141   0x3969f  1      
  nop                                               #  142   0x396a0  1      
                                                                             
.size _ZN2pp15WheelInputEventC1ERKNS_10InputEventE, .-_ZN2pp15WheelInputEventC1ERKNS_10InputEventE

