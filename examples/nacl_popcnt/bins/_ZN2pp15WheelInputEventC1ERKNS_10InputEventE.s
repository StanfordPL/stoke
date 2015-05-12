  .text
  .globl _ZN2pp15WheelInputEventC1ERKNS_10InputEventE
  .type _ZN2pp15WheelInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x39460
#! rip-offset  0x39460
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC1ERKNS_10InputEventE:      #        0x39460  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x39460  5      
  movl %edi, %ebx                                   #  2     0x39465  2      
  movq %r12, -0x10(%rsp)                            #  3     0x39467  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3946c  5      
  movl %ebx, %edi                                   #  5     0x39471  2      
  subl $0x18, %esp                                  #  6     0x39473  3      
  addq %r15, %rsp                                   #  7     0x39476  3      
  movl %esi, %r12d                                  #  8     0x39479  3      
  nop                                               #  9     0x3947c  1      
  nop                                               #  10    0x3947d  1      
  nop                                               #  11    0x3947e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3947f  5      
  movl %ebx, %ebx                                   #  13    0x39484  2      
  movl $0x10020808, (%r15,%rbx,1)                   #  14    0x39486  8      
  cmpb $0x0, 0xfff78bb(%rip)                        #  15    0x3948e  7      
  je .L_39500                                       #  16    0x39495  6      
  nop                                               #  17    0x3949b  1      
.L_394c0:                                           #        0x3949c  0      
  movl 0xfff78b6(%rip), %eax                        #  18    0x3949c  6      
  testq %rax, %rax                                  #  19    0x394a2  3      
  jne .L_395a0                                      #  20    0x394a5  6      
  xchgw %ax, %ax                                    #  21    0x394ab  3      
  nop                                               #  22    0x394ae  1      
.L_394e0:                                           #        0x394af  0      
  movq (%rsp), %rbx                                 #  23    0x394af  4      
  movq 0x8(%rsp), %r12                              #  24    0x394b3  5      
  movq 0x10(%rsp), %r13                             #  25    0x394b8  5      
  addl $0x18, %esp                                  #  26    0x394bd  3      
  addq %r15, %rsp                                   #  27    0x394c0  3      
  popq %r11                                         #  28    0x394c3  3      
  andl $0xffffffe0, %r11d                           #  29    0x394c6  7      
  addq %r15, %r11                                   #  30    0x394cd  3      
  jmpq %r11                                         #  31    0x394d0  3      
.L_39500:                                           #        0x394d3  0      
  movl $0x10030d50, %edi                            #  32    0x394d3  5      
  nop                                               #  33    0x394d8  1      
  nop                                               #  34    0x394d9  1      
  callq .__cxa_guard_acquire                        #  35    0x394da  5      
  testl %eax, %eax                                  #  36    0x394df  2      
  je .L_394c0                                       #  37    0x394e1  6      
  nop                                               #  38    0x394e7  1      
  nop                                               #  39    0x394e8  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x394e9  5      
  movl %eax, %edi                                   #  41    0x394ee  2      
  movl $0x100206c0, %esi                            #  42    0x394f0  5      
  nop                                               #  43    0x394f5  1      
  nop                                               #  44    0x394f6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x394f7  5      
  movl $0x10030d50, %edi                            #  46    0x394fc  5      
  movl %eax, 0xfff7851(%rip)                        #  47    0x39501  6      
  nop                                               #  48    0x39507  1      
  nop                                               #  49    0x39508  1      
  callq .__cxa_guard_release                        #  50    0x39509  5      
  movl 0xfff7844(%rip), %eax                        #  51    0x3950e  6      
  testq %rax, %rax                                  #  52    0x39514  3      
  je .L_394e0                                       #  53    0x39517  6      
  xchgw %ax, %ax                                    #  54    0x3951d  3      
  nop                                               #  55    0x39520  1      
.L_395a0:                                           #        0x39521  0      
  cmpb $0x0, 0xfff7828(%rip)                        #  56    0x39521  7      
  je .L_39660                                       #  57    0x39528  6      
  nop                                               #  58    0x3952e  1      
  nop                                               #  59    0x3952f  1      
.L_395c0:                                           #        0x39530  0      
  movl %eax, %eax                                   #  60    0x39530  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x39532  5      
  movl %r12d, %r12d                                 #  62    0x39537  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3953a  5      
  nop                                               #  64    0x3953f  1      
  andl $0xffffffe0, %eax                            #  65    0x39540  5      
  addq %r15, %rax                                   #  66    0x39545  3      
  callq %rax                                        #  67    0x39548  2      
  testl %eax, %eax                                  #  68    0x3954a  2      
  je .L_394e0                                       #  69    0x3954c  6      
  movl %r12d, %r12d                                 #  70    0x39552  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x39555  5      
  nop                                               #  72    0x3955a  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3955b  5      
  movl %eax, %eax                                   #  74    0x39560  2      
  movl %r13d, %edi                                  #  75    0x39562  3      
  movl %eax, %eax                                   #  76    0x39565  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x39567  5      
  movl %eax, %eax                                   #  78    0x3956c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3956e  4      
  movl %eax, %eax                                   #  80    0x39572  2      
  movl (%r15,%rax,1), %eax                          #  81    0x39574  4      
  andl $0xffffffe0, %eax                            #  82    0x39578  5      
  addq %r15, %rax                                   #  83    0x3957d  3      
  callq %rax                                        #  84    0x39580  2      
  movl %r12d, %r12d                                 #  85    0x39582  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x39585  5      
  movl %ebx, %edi                                   #  87    0x3958a  2      
  xchgw %ax, %ax                                    #  88    0x3958c  3      
  nop                                               #  89    0x3958f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x39590  5      
  jmpq .L_394e0                                     #  91    0x39595  5      
  nop                                               #  92    0x3959a  1      
  nop                                               #  93    0x3959b  1      
.L_39660:                                           #        0x3959c  0      
  movl $0x10030d50, %edi                            #  94    0x3959c  5      
  nop                                               #  95    0x395a1  1      
  nop                                               #  96    0x395a2  1      
  callq .__cxa_guard_acquire                        #  97    0x395a3  5      
  testl %eax, %eax                                  #  98    0x395a8  2      
  jne .L_396c0                                      #  99    0x395aa  6      
  nop                                               #  100   0x395b0  1      
  nop                                               #  101   0x395b1  1      
.L_396a0:                                           #        0x395b2  0      
  movl 0xfff77a0(%rip), %eax                        #  102   0x395b2  6      
  jmpq .L_395c0                                     #  103   0x395b8  5      
  nop                                               #  104   0x395bd  1      
  nop                                               #  105   0x395be  1      
.L_396c0:                                           #        0x395bf  0      
  nop                                               #  106   0x395bf  1      
  nop                                               #  107   0x395c0  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x395c1  5      
  movl %eax, %edi                                   #  109   0x395c6  2      
  movl $0x100206c0, %esi                            #  110   0x395c8  5      
  nop                                               #  111   0x395cd  1      
  nop                                               #  112   0x395ce  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x395cf  5      
  movl $0x10030d50, %edi                            #  114   0x395d4  5      
  movl %eax, 0xfff7779(%rip)                        #  115   0x395d9  6      
  nop                                               #  116   0x395df  1      
  nop                                               #  117   0x395e0  1      
  callq .__cxa_guard_release                        #  118   0x395e1  5      
  jmpq .L_396a0                                     #  119   0x395e6  5      
  nop                                               #  120   0x395eb  1      
  nop                                               #  121   0x395ec  1      
.L_39740:                                           #        0x395ed  0      
  movl $0x10030d50, %edi                            #  122   0x395ed  5      
  movl %eax, %r12d                                  #  123   0x395f2  3      
  nop                                               #  124   0x395f5  1      
  nop                                               #  125   0x395f6  1      
  callq .__cxa_guard_abort                          #  126   0x395f7  5      
.L_39760:                                           #        0x395fc  0      
  movl %ebx, %edi                                   #  127   0x395fc  2      
  nop                                               #  128   0x395fe  1      
  nop                                               #  129   0x395ff  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x39600  5      
  movl %r12d, %edi                                  #  131   0x39605  3      
  nop                                               #  132   0x39608  1      
  nop                                               #  133   0x39609  1      
  callq ._Unwind_Resume                             #  134   0x3960a  5      
  movl %eax, %r12d                                  #  135   0x3960f  3      
  jmpq .L_39760                                     #  136   0x39612  5      
  nop                                               #  137   0x39617  1      
  nop                                               #  138   0x39618  1      
  jmpq .L_39740                                     #  139   0x39619  5      
  nop                                               #  140   0x3961e  1      
  nop                                               #  141   0x3961f  1      
  nop                                               #  142   0x39620  1      
                                                                             
.size _ZN2pp15WheelInputEventC1ERKNS_10InputEventE, .-_ZN2pp15WheelInputEventC1ERKNS_10InputEventE

