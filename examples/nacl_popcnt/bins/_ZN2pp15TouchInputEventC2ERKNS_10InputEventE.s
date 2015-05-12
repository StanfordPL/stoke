  .text
  .globl _ZN2pp15TouchInputEventC2ERKNS_10InputEventE
  .type _ZN2pp15TouchInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x397e0
#! rip-offset  0x397e0
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC2ERKNS_10InputEventE:      #        0x397e0  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x397e0  5      
  movl %edi, %ebx                                   #  2     0x397e5  2      
  movq %r12, -0x10(%rsp)                            #  3     0x397e7  5      
  movq %r13, -0x8(%rsp)                             #  4     0x397ec  5      
  movl %ebx, %edi                                   #  5     0x397f1  2      
  subl $0x18, %esp                                  #  6     0x397f3  3      
  addq %r15, %rsp                                   #  7     0x397f6  3      
  movl %esi, %r12d                                  #  8     0x397f9  3      
  nop                                               #  9     0x397fc  1      
  nop                                               #  10    0x397fd  1      
  nop                                               #  11    0x397fe  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x397ff  5      
  movl %ebx, %ebx                                   #  13    0x39804  2      
  movl $0x10020788, (%r15,%rbx,1)                   #  14    0x39806  8      
  cmpb $0x0, 0xfff750b(%rip)                        #  15    0x3980e  7      
  je .L_39880                                       #  16    0x39815  6      
  nop                                               #  17    0x3981b  1      
.L_39840:                                           #        0x3981c  0      
  movl 0xfff7506(%rip), %eax                        #  18    0x3981c  6      
  testq %rax, %rax                                  #  19    0x39822  3      
  jne .L_39920                                      #  20    0x39825  6      
  xchgw %ax, %ax                                    #  21    0x3982b  3      
  nop                                               #  22    0x3982e  1      
.L_39860:                                           #        0x3982f  0      
  movq (%rsp), %rbx                                 #  23    0x3982f  4      
  movq 0x8(%rsp), %r12                              #  24    0x39833  5      
  movq 0x10(%rsp), %r13                             #  25    0x39838  5      
  addl $0x18, %esp                                  #  26    0x3983d  3      
  addq %r15, %rsp                                   #  27    0x39840  3      
  popq %r11                                         #  28    0x39843  3      
  andl $0xffffffe0, %r11d                           #  29    0x39846  7      
  addq %r15, %r11                                   #  30    0x3984d  3      
  jmpq %r11                                         #  31    0x39850  3      
.L_39880:                                           #        0x39853  0      
  movl $0x10030d20, %edi                            #  32    0x39853  5      
  nop                                               #  33    0x39858  1      
  nop                                               #  34    0x39859  1      
  callq .__cxa_guard_acquire                        #  35    0x3985a  5      
  testl %eax, %eax                                  #  36    0x3985f  2      
  je .L_39840                                       #  37    0x39861  6      
  nop                                               #  38    0x39867  1      
  nop                                               #  39    0x39868  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x39869  5      
  movl %eax, %edi                                   #  41    0x3986e  2      
  movl $0x100206d8, %esi                            #  42    0x39870  5      
  nop                                               #  43    0x39875  1      
  nop                                               #  44    0x39876  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x39877  5      
  movl $0x10030d20, %edi                            #  46    0x3987c  5      
  movl %eax, 0xfff74a1(%rip)                        #  47    0x39881  6      
  nop                                               #  48    0x39887  1      
  nop                                               #  49    0x39888  1      
  callq .__cxa_guard_release                        #  50    0x39889  5      
  movl 0xfff7494(%rip), %eax                        #  51    0x3988e  6      
  testq %rax, %rax                                  #  52    0x39894  3      
  je .L_39860                                       #  53    0x39897  6      
  xchgw %ax, %ax                                    #  54    0x3989d  3      
  nop                                               #  55    0x398a0  1      
.L_39920:                                           #        0x398a1  0      
  cmpb $0x0, 0xfff7478(%rip)                        #  56    0x398a1  7      
  je .L_399e0                                       #  57    0x398a8  6      
  nop                                               #  58    0x398ae  1      
  nop                                               #  59    0x398af  1      
.L_39940:                                           #        0x398b0  0      
  movl %eax, %eax                                   #  60    0x398b0  2      
  movl 0x8(%r15,%rax,1), %eax                       #  61    0x398b2  5      
  movl %r12d, %r12d                                 #  62    0x398b7  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x398ba  5      
  nop                                               #  64    0x398bf  1      
  andl $0xffffffe0, %eax                            #  65    0x398c0  5      
  addq %r15, %rax                                   #  66    0x398c5  3      
  callq %rax                                        #  67    0x398c8  2      
  testl %eax, %eax                                  #  68    0x398ca  2      
  je .L_39860                                       #  69    0x398cc  6      
  movl %r12d, %r12d                                 #  70    0x398d2  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x398d5  5      
  nop                                               #  72    0x398da  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x398db  5      
  movl %eax, %eax                                   #  74    0x398e0  2      
  movl %r13d, %edi                                  #  75    0x398e2  3      
  movl %eax, %eax                                   #  76    0x398e5  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x398e7  5      
  movl %eax, %eax                                   #  78    0x398ec  2      
  movl (%r15,%rax,1), %eax                          #  79    0x398ee  4      
  movl %eax, %eax                                   #  80    0x398f2  2      
  movl (%r15,%rax,1), %eax                          #  81    0x398f4  4      
  andl $0xffffffe0, %eax                            #  82    0x398f8  5      
  addq %r15, %rax                                   #  83    0x398fd  3      
  callq %rax                                        #  84    0x39900  2      
  movl %r12d, %r12d                                 #  85    0x39902  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x39905  5      
  movl %ebx, %edi                                   #  87    0x3990a  2      
  xchgw %ax, %ax                                    #  88    0x3990c  3      
  nop                                               #  89    0x3990f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x39910  5      
  jmpq .L_39860                                     #  91    0x39915  5      
  nop                                               #  92    0x3991a  1      
  nop                                               #  93    0x3991b  1      
.L_399e0:                                           #        0x3991c  0      
  movl $0x10030d20, %edi                            #  94    0x3991c  5      
  nop                                               #  95    0x39921  1      
  nop                                               #  96    0x39922  1      
  callq .__cxa_guard_acquire                        #  97    0x39923  5      
  testl %eax, %eax                                  #  98    0x39928  2      
  jne .L_39a40                                      #  99    0x3992a  6      
  nop                                               #  100   0x39930  1      
  nop                                               #  101   0x39931  1      
.L_39a20:                                           #        0x39932  0      
  movl 0xfff73f0(%rip), %eax                        #  102   0x39932  6      
  jmpq .L_39940                                     #  103   0x39938  5      
  nop                                               #  104   0x3993d  1      
  nop                                               #  105   0x3993e  1      
.L_39a40:                                           #        0x3993f  0      
  nop                                               #  106   0x3993f  1      
  nop                                               #  107   0x39940  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x39941  5      
  movl %eax, %edi                                   #  109   0x39946  2      
  movl $0x100206d8, %esi                            #  110   0x39948  5      
  nop                                               #  111   0x3994d  1      
  nop                                               #  112   0x3994e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3994f  5      
  movl $0x10030d20, %edi                            #  114   0x39954  5      
  movl %eax, 0xfff73c9(%rip)                        #  115   0x39959  6      
  nop                                               #  116   0x3995f  1      
  nop                                               #  117   0x39960  1      
  callq .__cxa_guard_release                        #  118   0x39961  5      
  jmpq .L_39a20                                     #  119   0x39966  5      
  nop                                               #  120   0x3996b  1      
  nop                                               #  121   0x3996c  1      
.L_39ac0:                                           #        0x3996d  0      
  movl $0x10030d20, %edi                            #  122   0x3996d  5      
  movl %eax, %r12d                                  #  123   0x39972  3      
  nop                                               #  124   0x39975  1      
  nop                                               #  125   0x39976  1      
  callq .__cxa_guard_abort                          #  126   0x39977  5      
.L_39ae0:                                           #        0x3997c  0      
  movl %ebx, %edi                                   #  127   0x3997c  2      
  nop                                               #  128   0x3997e  1      
  nop                                               #  129   0x3997f  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x39980  5      
  movl %r12d, %edi                                  #  131   0x39985  3      
  nop                                               #  132   0x39988  1      
  nop                                               #  133   0x39989  1      
  callq ._Unwind_Resume                             #  134   0x3998a  5      
  movl %eax, %r12d                                  #  135   0x3998f  3      
  jmpq .L_39ae0                                     #  136   0x39992  5      
  nop                                               #  137   0x39997  1      
  nop                                               #  138   0x39998  1      
  jmpq .L_39ac0                                     #  139   0x39999  5      
  nop                                               #  140   0x3999e  1      
  nop                                               #  141   0x3999f  1      
  nop                                               #  142   0x399a0  1      
                                                                             
.size _ZN2pp15TouchInputEventC2ERKNS_10InputEventE, .-_ZN2pp15TouchInputEventC2ERKNS_10InputEventE

