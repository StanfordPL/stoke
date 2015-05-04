  .text
  .globl _ZN2pp15TouchInputEventC1ERKNS_10InputEventE
  .type _ZN2pp15TouchInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x3a500
#! rip-offset  0x3a500
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC1ERKNS_10InputEventE:      #        0x3a500  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x3a500  5      
  movl %edi, %ebx                                   #  2     0x3a505  2      
  movq %r12, -0x10(%rsp)                            #  3     0x3a507  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3a50c  5      
  movl %ebx, %edi                                   #  5     0x3a511  2      
  subl $0x18, %esp                                  #  6     0x3a513  3      
  addq %r15, %rsp                                   #  7     0x3a516  3      
  movl %esi, %r12d                                  #  8     0x3a519  3      
  nop                                               #  9     0x3a51c  1      
  nop                                               #  10    0x3a51d  1      
  nop                                               #  11    0x3a51e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3a51f  5      
  movl %ebx, %ebx                                   #  13    0x3a524  2      
  movl $0x10020788, (%r15,%rbx,1)                   #  14    0x3a526  8      
  cmpb $0x0, 0xfff67eb(%rip)                        #  15    0x3a52e  7      
  je .L_3a5a0                                       #  16    0x3a535  6      
  nop                                               #  17    0x3a53b  1      
.L_3a560:                                           #        0x3a53c  0      
  movl 0xfff67e6(%rip), %eax                        #  18    0x3a53c  6      
  testq %rax, %rax                                  #  19    0x3a542  3      
  jne .L_3a640                                      #  20    0x3a545  6      
  xchgw %ax, %ax                                    #  21    0x3a54b  3      
  nop                                               #  22    0x3a54e  1      
.L_3a580:                                           #        0x3a54f  0      
  movq (%rsp), %rbx                                 #  23    0x3a54f  4      
  movq 0x8(%rsp), %r12                              #  24    0x3a553  5      
  movq 0x10(%rsp), %r13                             #  25    0x3a558  5      
  addl $0x18, %esp                                  #  26    0x3a55d  3      
  addq %r15, %rsp                                   #  27    0x3a560  3      
  popq %r11                                         #  28    0x3a563  3      
  andl $0xffffffe0, %r11d                           #  29    0x3a566  7      
  addq %r15, %r11                                   #  30    0x3a56d  3      
  jmpq %r11                                         #  31    0x3a570  3      
.L_3a5a0:                                           #        0x3a573  0      
  movl $0x10030d20, %edi                            #  32    0x3a573  5      
  nop                                               #  33    0x3a578  1      
  nop                                               #  34    0x3a579  1      
  callq .__cxa_guard_acquire                        #  35    0x3a57a  5      
  testl %eax, %eax                                  #  36    0x3a57f  2      
  je .L_3a560                                       #  37    0x3a581  6      
  nop                                               #  38    0x3a587  1      
  nop                                               #  39    0x3a588  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x3a589  5      
  movl %eax, %edi                                   #  41    0x3a58e  2      
  movl $0x100206d8, %esi                            #  42    0x3a590  5      
  nop                                               #  43    0x3a595  1      
  nop                                               #  44    0x3a596  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x3a597  5      
  movl $0x10030d20, %edi                            #  46    0x3a59c  5      
  movl %eax, 0xfff6781(%rip)                        #  47    0x3a5a1  6      
  nop                                               #  48    0x3a5a7  1      
  nop                                               #  49    0x3a5a8  1      
  callq .__cxa_guard_release                        #  50    0x3a5a9  5      
  movl 0xfff6774(%rip), %eax                        #  51    0x3a5ae  6      
  testq %rax, %rax                                  #  52    0x3a5b4  3      
  je .L_3a580                                       #  53    0x3a5b7  6      
  xchgw %ax, %ax                                    #  54    0x3a5bd  3      
  nop                                               #  55    0x3a5c0  1      
.L_3a640:                                           #        0x3a5c1  0      
  cmpb $0x0, 0xfff6758(%rip)                        #  56    0x3a5c1  7      
  je .L_3a700                                       #  57    0x3a5c8  6      
  nop                                               #  58    0x3a5ce  1      
  nop                                               #  59    0x3a5cf  1      
.L_3a660:                                           #        0x3a5d0  0      
  movl %eax, %eax                                   #  60    0x3a5d0  2      
  movl 0x8(%r15,%rax,1), %eax                       #  61    0x3a5d2  5      
  movl %r12d, %r12d                                 #  62    0x3a5d7  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3a5da  5      
  nop                                               #  64    0x3a5df  1      
  andl $0xffffffe0, %eax                            #  65    0x3a5e0  5      
  addq %r15, %rax                                   #  66    0x3a5e5  3      
  callq %rax                                        #  67    0x3a5e8  2      
  testl %eax, %eax                                  #  68    0x3a5ea  2      
  je .L_3a580                                       #  69    0x3a5ec  6      
  movl %r12d, %r12d                                 #  70    0x3a5f2  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x3a5f5  5      
  nop                                               #  72    0x3a5fa  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3a5fb  5      
  movl %eax, %eax                                   #  74    0x3a600  2      
  movl %r13d, %edi                                  #  75    0x3a602  3      
  movl %eax, %eax                                   #  76    0x3a605  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x3a607  5      
  movl %eax, %eax                                   #  78    0x3a60c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3a60e  4      
  movl %eax, %eax                                   #  80    0x3a612  2      
  movl (%r15,%rax,1), %eax                          #  81    0x3a614  4      
  andl $0xffffffe0, %eax                            #  82    0x3a618  5      
  addq %r15, %rax                                   #  83    0x3a61d  3      
  callq %rax                                        #  84    0x3a620  2      
  movl %r12d, %r12d                                 #  85    0x3a622  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x3a625  5      
  movl %ebx, %edi                                   #  87    0x3a62a  2      
  xchgw %ax, %ax                                    #  88    0x3a62c  3      
  nop                                               #  89    0x3a62f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x3a630  5      
  jmpq .L_3a580                                     #  91    0x3a635  5      
  nop                                               #  92    0x3a63a  1      
  nop                                               #  93    0x3a63b  1      
.L_3a700:                                           #        0x3a63c  0      
  movl $0x10030d20, %edi                            #  94    0x3a63c  5      
  nop                                               #  95    0x3a641  1      
  nop                                               #  96    0x3a642  1      
  callq .__cxa_guard_acquire                        #  97    0x3a643  5      
  testl %eax, %eax                                  #  98    0x3a648  2      
  jne .L_3a760                                      #  99    0x3a64a  6      
  nop                                               #  100   0x3a650  1      
  nop                                               #  101   0x3a651  1      
.L_3a740:                                           #        0x3a652  0      
  movl 0xfff66d0(%rip), %eax                        #  102   0x3a652  6      
  jmpq .L_3a660                                     #  103   0x3a658  5      
  nop                                               #  104   0x3a65d  1      
  nop                                               #  105   0x3a65e  1      
.L_3a760:                                           #        0x3a65f  0      
  nop                                               #  106   0x3a65f  1      
  nop                                               #  107   0x3a660  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3a661  5      
  movl %eax, %edi                                   #  109   0x3a666  2      
  movl $0x100206d8, %esi                            #  110   0x3a668  5      
  nop                                               #  111   0x3a66d  1      
  nop                                               #  112   0x3a66e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3a66f  5      
  movl $0x10030d20, %edi                            #  114   0x3a674  5      
  movl %eax, 0xfff66a9(%rip)                        #  115   0x3a679  6      
  nop                                               #  116   0x3a67f  1      
  nop                                               #  117   0x3a680  1      
  callq .__cxa_guard_release                        #  118   0x3a681  5      
  jmpq .L_3a740                                     #  119   0x3a686  5      
  nop                                               #  120   0x3a68b  1      
  nop                                               #  121   0x3a68c  1      
.L_3a7e0:                                           #        0x3a68d  0      
  movl $0x10030d20, %edi                            #  122   0x3a68d  5      
  movl %eax, %r12d                                  #  123   0x3a692  3      
  nop                                               #  124   0x3a695  1      
  nop                                               #  125   0x3a696  1      
  callq .__cxa_guard_abort                          #  126   0x3a697  5      
.L_3a800:                                           #        0x3a69c  0      
  movl %ebx, %edi                                   #  127   0x3a69c  2      
  nop                                               #  128   0x3a69e  1      
  nop                                               #  129   0x3a69f  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x3a6a0  5      
  movl %r12d, %edi                                  #  131   0x3a6a5  3      
  nop                                               #  132   0x3a6a8  1      
  nop                                               #  133   0x3a6a9  1      
  callq ._Unwind_Resume                             #  134   0x3a6aa  5      
  movl %eax, %r12d                                  #  135   0x3a6af  3      
  jmpq .L_3a800                                     #  136   0x3a6b2  5      
  nop                                               #  137   0x3a6b7  1      
  nop                                               #  138   0x3a6b8  1      
  jmpq .L_3a7e0                                     #  139   0x3a6b9  5      
  nop                                               #  140   0x3a6be  1      
  nop                                               #  141   0x3a6bf  1      
  nop                                               #  142   0x3a6c0  1      
                                                                             
.size _ZN2pp15TouchInputEventC1ERKNS_10InputEventE, .-_ZN2pp15TouchInputEventC1ERKNS_10InputEventE

