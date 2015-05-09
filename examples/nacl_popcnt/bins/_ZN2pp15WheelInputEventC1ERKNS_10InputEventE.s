  .text
  .globl _ZN2pp15WheelInputEventC1ERKNS_10InputEventE
  .type _ZN2pp15WheelInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x39440
#! rip-offset  0x39440
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC1ERKNS_10InputEventE:      #        0x39440  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x39440  5      
  movl %edi, %ebx                                   #  2     0x39445  2      
  movq %r12, -0x10(%rsp)                            #  3     0x39447  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3944c  5      
  movl %ebx, %edi                                   #  5     0x39451  2      
  subl $0x18, %esp                                  #  6     0x39453  3      
  addq %r15, %rsp                                   #  7     0x39456  3      
  movl %esi, %r12d                                  #  8     0x39459  3      
  nop                                               #  9     0x3945c  1      
  nop                                               #  10    0x3945d  1      
  nop                                               #  11    0x3945e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3945f  5      
  movl %ebx, %ebx                                   #  13    0x39464  2      
  movl $0x10020808, (%r15,%rbx,1)                   #  14    0x39466  8      
  cmpb $0x0, 0xfff78db(%rip)                        #  15    0x3946e  7      
  je .L_394e0                                       #  16    0x39475  6      
  nop                                               #  17    0x3947b  1      
.L_394a0:                                           #        0x3947c  0      
  movl 0xfff78d6(%rip), %eax                        #  18    0x3947c  6      
  testq %rax, %rax                                  #  19    0x39482  3      
  jne .L_39580                                      #  20    0x39485  6      
  xchgw %ax, %ax                                    #  21    0x3948b  3      
  nop                                               #  22    0x3948e  1      
.L_394c0:                                           #        0x3948f  0      
  movq (%rsp), %rbx                                 #  23    0x3948f  4      
  movq 0x8(%rsp), %r12                              #  24    0x39493  5      
  movq 0x10(%rsp), %r13                             #  25    0x39498  5      
  addl $0x18, %esp                                  #  26    0x3949d  3      
  addq %r15, %rsp                                   #  27    0x394a0  3      
  popq %r11                                         #  28    0x394a3  3      
  andl $0xffffffe0, %r11d                           #  29    0x394a6  7      
  addq %r15, %r11                                   #  30    0x394ad  3      
  jmpq %r11                                         #  31    0x394b0  3      
.L_394e0:                                           #        0x394b3  0      
  movl $0x10030d50, %edi                            #  32    0x394b3  5      
  nop                                               #  33    0x394b8  1      
  nop                                               #  34    0x394b9  1      
  callq .__cxa_guard_acquire                        #  35    0x394ba  5      
  testl %eax, %eax                                  #  36    0x394bf  2      
  je .L_394a0                                       #  37    0x394c1  6      
  nop                                               #  38    0x394c7  1      
  nop                                               #  39    0x394c8  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x394c9  5      
  movl %eax, %edi                                   #  41    0x394ce  2      
  movl $0x100206c0, %esi                            #  42    0x394d0  5      
  nop                                               #  43    0x394d5  1      
  nop                                               #  44    0x394d6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x394d7  5      
  movl $0x10030d50, %edi                            #  46    0x394dc  5      
  movl %eax, 0xfff7871(%rip)                        #  47    0x394e1  6      
  nop                                               #  48    0x394e7  1      
  nop                                               #  49    0x394e8  1      
  callq .__cxa_guard_release                        #  50    0x394e9  5      
  movl 0xfff7864(%rip), %eax                        #  51    0x394ee  6      
  testq %rax, %rax                                  #  52    0x394f4  3      
  je .L_394c0                                       #  53    0x394f7  6      
  xchgw %ax, %ax                                    #  54    0x394fd  3      
  nop                                               #  55    0x39500  1      
.L_39580:                                           #        0x39501  0      
  cmpb $0x0, 0xfff7848(%rip)                        #  56    0x39501  7      
  je .L_39640                                       #  57    0x39508  6      
  nop                                               #  58    0x3950e  1      
  nop                                               #  59    0x3950f  1      
.L_395a0:                                           #        0x39510  0      
  movl %eax, %eax                                   #  60    0x39510  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x39512  5      
  movl %r12d, %r12d                                 #  62    0x39517  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3951a  5      
  nop                                               #  64    0x3951f  1      
  andl $0xffffffe0, %eax                            #  65    0x39520  5      
  addq %r15, %rax                                   #  66    0x39525  3      
  callq %rax                                        #  67    0x39528  2      
  testl %eax, %eax                                  #  68    0x3952a  2      
  je .L_394c0                                       #  69    0x3952c  6      
  movl %r12d, %r12d                                 #  70    0x39532  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x39535  5      
  nop                                               #  72    0x3953a  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3953b  5      
  movl %eax, %eax                                   #  74    0x39540  2      
  movl %r13d, %edi                                  #  75    0x39542  3      
  movl %eax, %eax                                   #  76    0x39545  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x39547  5      
  movl %eax, %eax                                   #  78    0x3954c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3954e  4      
  movl %eax, %eax                                   #  80    0x39552  2      
  movl (%r15,%rax,1), %eax                          #  81    0x39554  4      
  andl $0xffffffe0, %eax                            #  82    0x39558  5      
  addq %r15, %rax                                   #  83    0x3955d  3      
  callq %rax                                        #  84    0x39560  2      
  movl %r12d, %r12d                                 #  85    0x39562  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x39565  5      
  movl %ebx, %edi                                   #  87    0x3956a  2      
  xchgw %ax, %ax                                    #  88    0x3956c  3      
  nop                                               #  89    0x3956f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x39570  5      
  jmpq .L_394c0                                     #  91    0x39575  5      
  nop                                               #  92    0x3957a  1      
  nop                                               #  93    0x3957b  1      
.L_39640:                                           #        0x3957c  0      
  movl $0x10030d50, %edi                            #  94    0x3957c  5      
  nop                                               #  95    0x39581  1      
  nop                                               #  96    0x39582  1      
  callq .__cxa_guard_acquire                        #  97    0x39583  5      
  testl %eax, %eax                                  #  98    0x39588  2      
  jne .L_396a0                                      #  99    0x3958a  6      
  nop                                               #  100   0x39590  1      
  nop                                               #  101   0x39591  1      
.L_39680:                                           #        0x39592  0      
  movl 0xfff77c0(%rip), %eax                        #  102   0x39592  6      
  jmpq .L_395a0                                     #  103   0x39598  5      
  nop                                               #  104   0x3959d  1      
  nop                                               #  105   0x3959e  1      
.L_396a0:                                           #        0x3959f  0      
  nop                                               #  106   0x3959f  1      
  nop                                               #  107   0x395a0  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x395a1  5      
  movl %eax, %edi                                   #  109   0x395a6  2      
  movl $0x100206c0, %esi                            #  110   0x395a8  5      
  nop                                               #  111   0x395ad  1      
  nop                                               #  112   0x395ae  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x395af  5      
  movl $0x10030d50, %edi                            #  114   0x395b4  5      
  movl %eax, 0xfff7799(%rip)                        #  115   0x395b9  6      
  nop                                               #  116   0x395bf  1      
  nop                                               #  117   0x395c0  1      
  callq .__cxa_guard_release                        #  118   0x395c1  5      
  jmpq .L_39680                                     #  119   0x395c6  5      
  nop                                               #  120   0x395cb  1      
  nop                                               #  121   0x395cc  1      
.L_39720:                                           #        0x395cd  0      
  movl $0x10030d50, %edi                            #  122   0x395cd  5      
  movl %eax, %r12d                                  #  123   0x395d2  3      
  nop                                               #  124   0x395d5  1      
  nop                                               #  125   0x395d6  1      
  callq .__cxa_guard_abort                          #  126   0x395d7  5      
.L_39740:                                           #        0x395dc  0      
  movl %ebx, %edi                                   #  127   0x395dc  2      
  nop                                               #  128   0x395de  1      
  nop                                               #  129   0x395df  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x395e0  5      
  movl %r12d, %edi                                  #  131   0x395e5  3      
  nop                                               #  132   0x395e8  1      
  nop                                               #  133   0x395e9  1      
  callq ._Unwind_Resume                             #  134   0x395ea  5      
  movl %eax, %r12d                                  #  135   0x395ef  3      
  jmpq .L_39740                                     #  136   0x395f2  5      
  nop                                               #  137   0x395f7  1      
  nop                                               #  138   0x395f8  1      
  jmpq .L_39720                                     #  139   0x395f9  5      
  nop                                               #  140   0x395fe  1      
  nop                                               #  141   0x395ff  1      
  nop                                               #  142   0x39600  1      
                                                                             
.size _ZN2pp15WheelInputEventC1ERKNS_10InputEventE, .-_ZN2pp15WheelInputEventC1ERKNS_10InputEventE

