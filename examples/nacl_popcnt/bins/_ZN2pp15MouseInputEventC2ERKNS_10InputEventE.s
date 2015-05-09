  .text
  .globl _ZN2pp15MouseInputEventC2ERKNS_10InputEventE
  .type _ZN2pp15MouseInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x3ab20
#! rip-offset  0x3ab20
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC2ERKNS_10InputEventE:      #        0x3ab20  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x3ab20  5      
  movl %edi, %ebx                                   #  2     0x3ab25  2      
  movq %r12, -0x10(%rsp)                            #  3     0x3ab27  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3ab2c  5      
  movl %ebx, %edi                                   #  5     0x3ab31  2      
  subl $0x18, %esp                                  #  6     0x3ab33  3      
  addq %r15, %rsp                                   #  7     0x3ab36  3      
  movl %esi, %r12d                                  #  8     0x3ab39  3      
  nop                                               #  9     0x3ab3c  1      
  nop                                               #  10    0x3ab3d  1      
  nop                                               #  11    0x3ab3e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3ab3f  5      
  movl %ebx, %ebx                                   #  13    0x3ab44  2      
  movl $0x10020848, (%r15,%rbx,1)                   #  14    0x3ab46  8      
  cmpb $0x0, 0xfff620b(%rip)                        #  15    0x3ab4e  7      
  je .L_3abc0                                       #  16    0x3ab55  6      
  nop                                               #  17    0x3ab5b  1      
.L_3ab80:                                           #        0x3ab5c  0      
  movl 0xfff6206(%rip), %eax                        #  18    0x3ab5c  6      
  testq %rax, %rax                                  #  19    0x3ab62  3      
  jne .L_3ac60                                      #  20    0x3ab65  6      
  xchgw %ax, %ax                                    #  21    0x3ab6b  3      
  nop                                               #  22    0x3ab6e  1      
.L_3aba0:                                           #        0x3ab6f  0      
  movq (%rsp), %rbx                                 #  23    0x3ab6f  4      
  movq 0x8(%rsp), %r12                              #  24    0x3ab73  5      
  movq 0x10(%rsp), %r13                             #  25    0x3ab78  5      
  addl $0x18, %esp                                  #  26    0x3ab7d  3      
  addq %r15, %rsp                                   #  27    0x3ab80  3      
  popq %r11                                         #  28    0x3ab83  3      
  andl $0xffffffe0, %r11d                           #  29    0x3ab86  7      
  addq %r15, %r11                                   #  30    0x3ab8d  3      
  jmpq %r11                                         #  31    0x3ab90  3      
.L_3abc0:                                           #        0x3ab93  0      
  movl $0x10030d60, %edi                            #  32    0x3ab93  5      
  nop                                               #  33    0x3ab98  1      
  nop                                               #  34    0x3ab99  1      
  callq .__cxa_guard_acquire                        #  35    0x3ab9a  5      
  testl %eax, %eax                                  #  36    0x3ab9f  2      
  je .L_3ab80                                       #  37    0x3aba1  6      
  nop                                               #  38    0x3aba7  1      
  nop                                               #  39    0x3aba8  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x3aba9  5      
  movl %eax, %edi                                   #  41    0x3abae  2      
  movl $0x100206f0, %esi                            #  42    0x3abb0  5      
  nop                                               #  43    0x3abb5  1      
  nop                                               #  44    0x3abb6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x3abb7  5      
  movl $0x10030d60, %edi                            #  46    0x3abbc  5      
  movl %eax, 0xfff61a1(%rip)                        #  47    0x3abc1  6      
  nop                                               #  48    0x3abc7  1      
  nop                                               #  49    0x3abc8  1      
  callq .__cxa_guard_release                        #  50    0x3abc9  5      
  movl 0xfff6194(%rip), %eax                        #  51    0x3abce  6      
  testq %rax, %rax                                  #  52    0x3abd4  3      
  je .L_3aba0                                       #  53    0x3abd7  6      
  xchgw %ax, %ax                                    #  54    0x3abdd  3      
  nop                                               #  55    0x3abe0  1      
.L_3ac60:                                           #        0x3abe1  0      
  cmpb $0x0, 0xfff6178(%rip)                        #  56    0x3abe1  7      
  je .L_3ad20                                       #  57    0x3abe8  6      
  nop                                               #  58    0x3abee  1      
  nop                                               #  59    0x3abef  1      
.L_3ac80:                                           #        0x3abf0  0      
  movl %eax, %eax                                   #  60    0x3abf0  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x3abf2  5      
  movl %r12d, %r12d                                 #  62    0x3abf7  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3abfa  5      
  nop                                               #  64    0x3abff  1      
  andl $0xffffffe0, %eax                            #  65    0x3ac00  5      
  addq %r15, %rax                                   #  66    0x3ac05  3      
  callq %rax                                        #  67    0x3ac08  2      
  testl %eax, %eax                                  #  68    0x3ac0a  2      
  je .L_3aba0                                       #  69    0x3ac0c  6      
  movl %r12d, %r12d                                 #  70    0x3ac12  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x3ac15  5      
  nop                                               #  72    0x3ac1a  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3ac1b  5      
  movl %eax, %eax                                   #  74    0x3ac20  2      
  movl %r13d, %edi                                  #  75    0x3ac22  3      
  movl %eax, %eax                                   #  76    0x3ac25  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x3ac27  5      
  movl %eax, %eax                                   #  78    0x3ac2c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3ac2e  4      
  movl %eax, %eax                                   #  80    0x3ac32  2      
  movl (%r15,%rax,1), %eax                          #  81    0x3ac34  4      
  andl $0xffffffe0, %eax                            #  82    0x3ac38  5      
  addq %r15, %rax                                   #  83    0x3ac3d  3      
  callq %rax                                        #  84    0x3ac40  2      
  movl %r12d, %r12d                                 #  85    0x3ac42  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x3ac45  5      
  movl %ebx, %edi                                   #  87    0x3ac4a  2      
  xchgw %ax, %ax                                    #  88    0x3ac4c  3      
  nop                                               #  89    0x3ac4f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x3ac50  5      
  jmpq .L_3aba0                                     #  91    0x3ac55  5      
  nop                                               #  92    0x3ac5a  1      
  nop                                               #  93    0x3ac5b  1      
.L_3ad20:                                           #        0x3ac5c  0      
  movl $0x10030d60, %edi                            #  94    0x3ac5c  5      
  nop                                               #  95    0x3ac61  1      
  nop                                               #  96    0x3ac62  1      
  callq .__cxa_guard_acquire                        #  97    0x3ac63  5      
  testl %eax, %eax                                  #  98    0x3ac68  2      
  jne .L_3ad80                                      #  99    0x3ac6a  6      
  nop                                               #  100   0x3ac70  1      
  nop                                               #  101   0x3ac71  1      
.L_3ad60:                                           #        0x3ac72  0      
  movl 0xfff60f0(%rip), %eax                        #  102   0x3ac72  6      
  jmpq .L_3ac80                                     #  103   0x3ac78  5      
  nop                                               #  104   0x3ac7d  1      
  nop                                               #  105   0x3ac7e  1      
.L_3ad80:                                           #        0x3ac7f  0      
  nop                                               #  106   0x3ac7f  1      
  nop                                               #  107   0x3ac80  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3ac81  5      
  movl %eax, %edi                                   #  109   0x3ac86  2      
  movl $0x100206f0, %esi                            #  110   0x3ac88  5      
  nop                                               #  111   0x3ac8d  1      
  nop                                               #  112   0x3ac8e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3ac8f  5      
  movl $0x10030d60, %edi                            #  114   0x3ac94  5      
  movl %eax, 0xfff60c9(%rip)                        #  115   0x3ac99  6      
  nop                                               #  116   0x3ac9f  1      
  nop                                               #  117   0x3aca0  1      
  callq .__cxa_guard_release                        #  118   0x3aca1  5      
  jmpq .L_3ad60                                     #  119   0x3aca6  5      
  nop                                               #  120   0x3acab  1      
  nop                                               #  121   0x3acac  1      
.L_3ae00:                                           #        0x3acad  0      
  movl $0x10030d60, %edi                            #  122   0x3acad  5      
  movl %eax, %r12d                                  #  123   0x3acb2  3      
  nop                                               #  124   0x3acb5  1      
  nop                                               #  125   0x3acb6  1      
  callq .__cxa_guard_abort                          #  126   0x3acb7  5      
.L_3ae20:                                           #        0x3acbc  0      
  movl %ebx, %edi                                   #  127   0x3acbc  2      
  nop                                               #  128   0x3acbe  1      
  nop                                               #  129   0x3acbf  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x3acc0  5      
  movl %r12d, %edi                                  #  131   0x3acc5  3      
  nop                                               #  132   0x3acc8  1      
  nop                                               #  133   0x3acc9  1      
  callq ._Unwind_Resume                             #  134   0x3acca  5      
  movl %eax, %r12d                                  #  135   0x3accf  3      
  jmpq .L_3ae20                                     #  136   0x3acd2  5      
  nop                                               #  137   0x3acd7  1      
  nop                                               #  138   0x3acd8  1      
  jmpq .L_3ae00                                     #  139   0x3acd9  5      
  nop                                               #  140   0x3acde  1      
  nop                                               #  141   0x3acdf  1      
  nop                                               #  142   0x3ace0  1      
                                                                             
.size _ZN2pp15MouseInputEventC2ERKNS_10InputEventE, .-_ZN2pp15MouseInputEventC2ERKNS_10InputEventE

