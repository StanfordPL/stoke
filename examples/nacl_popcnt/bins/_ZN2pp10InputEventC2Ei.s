  .text
  .globl _ZN2pp10InputEventC2Ei
  .type _ZN2pp10InputEventC2Ei, @function

#! file-offset 0x363e0
#! rip-offset  0x363e0
#! capacity    864 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp10InputEventC2Ei:                            #        0x363e0  0      
  pushq %r12                                        #  1     0x363e0  3      
  movl %esi, %r12d                                  #  2     0x363e3  3      
  pushq %rbx                                        #  3     0x363e6  2      
  movl %edi, %ebx                                   #  4     0x363e8  2      
  movl %ebx, %edi                                   #  5     0x363ea  2      
  subl $0x8, %esp                                   #  6     0x363ec  3      
  addq %r15, %rsp                                   #  7     0x363ef  3      
  nop                                               #  8     0x363f2  1      
  callq ._ZN2pp8ResourceC2Ev                        #  9     0x363f3  5      
  movl %ebx, %ebx                                   #  10    0x363f8  2      
  movl $0x10020718, (%r15,%rbx,1)                   #  11    0x363fa  8      
  cmpb $0x0, 0xfffa967(%rip)                        #  12    0x36402  7      
  je .L_36460                                       #  13    0x36409  6      
  nop                                               #  14    0x3640f  1      
.L_36420:                                           #        0x36410  0      
  movl 0xfffa962(%rip), %eax                        #  15    0x36410  6      
  testq %rax, %rax                                  #  16    0x36416  3      
  jne .L_36500                                      #  17    0x36419  6      
  xchgw %ax, %ax                                    #  18    0x3641f  3      
  nop                                               #  19    0x36422  1      
.L_36440:                                           #        0x36423  0      
  addl $0x8, %esp                                   #  20    0x36423  3      
  addq %r15, %rsp                                   #  21    0x36426  3      
  popq %rbx                                         #  22    0x36429  2      
  popq %r12                                         #  23    0x3642b  3      
  popq %r11                                         #  24    0x3642e  3      
  andl $0xffffffe0, %r11d                           #  25    0x36431  7      
  addq %r15, %r11                                   #  26    0x36438  3      
  jmpq %r11                                         #  27    0x3643b  3      
  nop                                               #  28    0x3643e  1      
.L_36460:                                           #        0x3643f  0      
  movl $0x10030d70, %edi                            #  29    0x3643f  5      
  nop                                               #  30    0x36444  1      
  nop                                               #  31    0x36445  1      
  callq .__cxa_guard_acquire                        #  32    0x36446  5      
  testl %eax, %eax                                  #  33    0x3644b  2      
  je .L_36420                                       #  34    0x3644d  6      
  nop                                               #  35    0x36453  1      
  nop                                               #  36    0x36454  1      
  callq ._ZN2pp6Module3GetEv                        #  37    0x36455  5      
  movl %eax, %edi                                   #  38    0x3645a  2      
  movl $0x100202c8, %esi                            #  39    0x3645c  5      
  nop                                               #  40    0x36461  1      
  nop                                               #  41    0x36462  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  42    0x36463  5      
  movl $0x10030d70, %edi                            #  43    0x36468  5      
  movl %eax, 0xfffa905(%rip)                        #  44    0x3646d  6      
  nop                                               #  45    0x36473  1      
  nop                                               #  46    0x36474  1      
  callq .__cxa_guard_release                        #  47    0x36475  5      
  movl 0xfffa8f8(%rip), %eax                        #  48    0x3647a  6      
  testq %rax, %rax                                  #  49    0x36480  3      
  je .L_36440                                       #  50    0x36483  6      
  xchgw %ax, %ax                                    #  51    0x36489  3      
  nop                                               #  52    0x3648c  1      
.L_36500:                                           #        0x3648d  0      
  cmpb $0x0, 0xfffa8dc(%rip)                        #  53    0x3648d  7      
  je .L_365c0                                       #  54    0x36494  6      
  nop                                               #  55    0x3649a  1      
  nop                                               #  56    0x3649b  1      
.L_36520:                                           #        0x3649c  0      
  movl %eax, %eax                                   #  57    0x3649c  2      
  movl 0xc(%r15,%rax,1), %eax                       #  58    0x3649e  5      
  movl %r12d, %edi                                  #  59    0x364a3  3      
  nop                                               #  60    0x364a6  1      
  andl $0xffffffe0, %eax                            #  61    0x364a7  5      
  addq %r15, %rax                                   #  62    0x364ac  3      
  callq %rax                                        #  63    0x364af  2      
  testl %eax, %eax                                  #  64    0x364b1  2      
  je .L_36440                                       #  65    0x364b3  6      
  nop                                               #  66    0x364b9  1      
  nop                                               #  67    0x364ba  1      
  callq ._ZN2pp6Module3GetEv                        #  68    0x364bb  5      
  movl %eax, %eax                                   #  69    0x364c0  2      
  movl %r12d, %edi                                  #  70    0x364c2  3      
  movl %eax, %eax                                   #  71    0x364c5  2      
  movl 0x24(%r15,%rax,1), %eax                      #  72    0x364c7  5      
  movl %eax, %eax                                   #  73    0x364cc  2      
  movl (%r15,%rax,1), %eax                          #  74    0x364ce  4      
  movl %eax, %eax                                   #  75    0x364d2  2      
  movl (%r15,%rax,1), %eax                          #  76    0x364d4  4      
  andl $0xffffffe0, %eax                            #  77    0x364d8  5      
  addq %r15, %rax                                   #  78    0x364dd  3      
  callq %rax                                        #  79    0x364e0  2      
  movl %r12d, %esi                                  #  80    0x364e2  3      
  movl %ebx, %edi                                   #  81    0x364e5  2      
  nop                                               #  82    0x364e7  1      
  nop                                               #  83    0x364e8  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  84    0x364e9  5      
  addl $0x8, %esp                                   #  85    0x364ee  3      
  addq %r15, %rsp                                   #  86    0x364f1  3      
  popq %rbx                                         #  87    0x364f4  2      
  popq %r12                                         #  88    0x364f6  3      
  popq %r11                                         #  89    0x364f9  3      
  andl $0xffffffe0, %r11d                           #  90    0x364fc  7      
  addq %r15, %r11                                   #  91    0x36503  3      
  jmpq %r11                                         #  92    0x36506  3      
  nop                                               #  93    0x36509  1      
.L_365c0:                                           #        0x3650a  0      
  movl $0x10030d70, %edi                            #  94    0x3650a  5      
  nop                                               #  95    0x3650f  1      
  nop                                               #  96    0x36510  1      
  callq .__cxa_guard_acquire                        #  97    0x36511  5      
  testl %eax, %eax                                  #  98    0x36516  2      
  jne .L_36620                                      #  99    0x36518  6      
  nop                                               #  100   0x3651e  1      
  nop                                               #  101   0x3651f  1      
.L_36600:                                           #        0x36520  0      
  movl 0xfffa852(%rip), %eax                        #  102   0x36520  6      
  jmpq .L_36520                                     #  103   0x36526  5      
  nop                                               #  104   0x3652b  1      
  nop                                               #  105   0x3652c  1      
.L_36620:                                           #        0x3652d  0      
  nop                                               #  106   0x3652d  1      
  nop                                               #  107   0x3652e  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3652f  5      
  movl %eax, %edi                                   #  109   0x36534  2      
  movl $0x100202c8, %esi                            #  110   0x36536  5      
  nop                                               #  111   0x3653b  1      
  nop                                               #  112   0x3653c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3653d  5      
  movl $0x10030d70, %edi                            #  114   0x36542  5      
  movl %eax, 0xfffa82b(%rip)                        #  115   0x36547  6      
  nop                                               #  116   0x3654d  1      
  nop                                               #  117   0x3654e  1      
  callq .__cxa_guard_release                        #  118   0x3654f  5      
  jmpq .L_36600                                     #  119   0x36554  5      
  nop                                               #  120   0x36559  1      
  nop                                               #  121   0x3655a  1      
.L_366a0:                                           #        0x3655b  0      
  movl $0x10030d70, %edi                            #  122   0x3655b  5      
  movl %eax, %r12d                                  #  123   0x36560  3      
  nop                                               #  124   0x36563  1      
  nop                                               #  125   0x36564  1      
  callq .__cxa_guard_abort                          #  126   0x36565  5      
.L_366c0:                                           #        0x3656a  0      
  movl %ebx, %edi                                   #  127   0x3656a  2      
  nop                                               #  128   0x3656c  1      
  nop                                               #  129   0x3656d  1      
  callq ._ZN2pp8ResourceD2Ev                        #  130   0x3656e  5      
  movl %r12d, %edi                                  #  131   0x36573  3      
  nop                                               #  132   0x36576  1      
  nop                                               #  133   0x36577  1      
  callq ._Unwind_Resume                             #  134   0x36578  5      
  movl %eax, %r12d                                  #  135   0x3657d  3      
  jmpq .L_366c0                                     #  136   0x36580  5      
  nop                                               #  137   0x36585  1      
  nop                                               #  138   0x36586  1      
  jmpq .L_366a0                                     #  139   0x36587  5      
  nop                                               #  140   0x3658c  1      
  nop                                               #  141   0x3658d  1      
  nop                                               #  142   0x3658e  1      
                                                                             
.size _ZN2pp10InputEventC2Ei, .-_ZN2pp10InputEventC2Ei

