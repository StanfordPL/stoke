  .text
  .globl _ZN2pp15MouseInputEventC2ERKNS_10InputEventE
  .type _ZN2pp15MouseInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x3ab40
#! rip-offset  0x3ab40
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC2ERKNS_10InputEventE:      #        0x3ab40  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x3ab40  5      
  movl %edi, %ebx                                   #  2     0x3ab45  2      
  movq %r12, -0x10(%rsp)                            #  3     0x3ab47  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3ab4c  5      
  movl %ebx, %edi                                   #  5     0x3ab51  2      
  subl $0x18, %esp                                  #  6     0x3ab53  3      
  addq %r15, %rsp                                   #  7     0x3ab56  3      
  movl %esi, %r12d                                  #  8     0x3ab59  3      
  nop                                               #  9     0x3ab5c  1      
  nop                                               #  10    0x3ab5d  1      
  nop                                               #  11    0x3ab5e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3ab5f  5      
  movl %ebx, %ebx                                   #  13    0x3ab64  2      
  movl $0x10020848, (%r15,%rbx,1)                   #  14    0x3ab66  8      
  cmpb $0x0, 0xfff61eb(%rip)                        #  15    0x3ab6e  7      
  je .L_3abe0                                       #  16    0x3ab75  6      
  nop                                               #  17    0x3ab7b  1      
.L_3aba0:                                           #        0x3ab7c  0      
  movl 0xfff61e6(%rip), %eax                        #  18    0x3ab7c  6      
  testq %rax, %rax                                  #  19    0x3ab82  3      
  jne .L_3ac80                                      #  20    0x3ab85  6      
  xchgw %ax, %ax                                    #  21    0x3ab8b  3      
  nop                                               #  22    0x3ab8e  1      
.L_3abc0:                                           #        0x3ab8f  0      
  movq (%rsp), %rbx                                 #  23    0x3ab8f  4      
  movq 0x8(%rsp), %r12                              #  24    0x3ab93  5      
  movq 0x10(%rsp), %r13                             #  25    0x3ab98  5      
  addl $0x18, %esp                                  #  26    0x3ab9d  3      
  addq %r15, %rsp                                   #  27    0x3aba0  3      
  popq %r11                                         #  28    0x3aba3  3      
  andl $0xffffffe0, %r11d                           #  29    0x3aba6  7      
  addq %r15, %r11                                   #  30    0x3abad  3      
  jmpq %r11                                         #  31    0x3abb0  3      
.L_3abe0:                                           #        0x3abb3  0      
  movl $0x10030d60, %edi                            #  32    0x3abb3  5      
  nop                                               #  33    0x3abb8  1      
  nop                                               #  34    0x3abb9  1      
  callq .__cxa_guard_acquire                        #  35    0x3abba  5      
  testl %eax, %eax                                  #  36    0x3abbf  2      
  je .L_3aba0                                       #  37    0x3abc1  6      
  nop                                               #  38    0x3abc7  1      
  nop                                               #  39    0x3abc8  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x3abc9  5      
  movl %eax, %edi                                   #  41    0x3abce  2      
  movl $0x100206f0, %esi                            #  42    0x3abd0  5      
  nop                                               #  43    0x3abd5  1      
  nop                                               #  44    0x3abd6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x3abd7  5      
  movl $0x10030d60, %edi                            #  46    0x3abdc  5      
  movl %eax, 0xfff6181(%rip)                        #  47    0x3abe1  6      
  nop                                               #  48    0x3abe7  1      
  nop                                               #  49    0x3abe8  1      
  callq .__cxa_guard_release                        #  50    0x3abe9  5      
  movl 0xfff6174(%rip), %eax                        #  51    0x3abee  6      
  testq %rax, %rax                                  #  52    0x3abf4  3      
  je .L_3abc0                                       #  53    0x3abf7  6      
  xchgw %ax, %ax                                    #  54    0x3abfd  3      
  nop                                               #  55    0x3ac00  1      
.L_3ac80:                                           #        0x3ac01  0      
  cmpb $0x0, 0xfff6158(%rip)                        #  56    0x3ac01  7      
  je .L_3ad40                                       #  57    0x3ac08  6      
  nop                                               #  58    0x3ac0e  1      
  nop                                               #  59    0x3ac0f  1      
.L_3aca0:                                           #        0x3ac10  0      
  movl %eax, %eax                                   #  60    0x3ac10  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x3ac12  5      
  movl %r12d, %r12d                                 #  62    0x3ac17  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3ac1a  5      
  nop                                               #  64    0x3ac1f  1      
  andl $0xffffffe0, %eax                            #  65    0x3ac20  5      
  addq %r15, %rax                                   #  66    0x3ac25  3      
  callq %rax                                        #  67    0x3ac28  2      
  testl %eax, %eax                                  #  68    0x3ac2a  2      
  je .L_3abc0                                       #  69    0x3ac2c  6      
  movl %r12d, %r12d                                 #  70    0x3ac32  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x3ac35  5      
  nop                                               #  72    0x3ac3a  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3ac3b  5      
  movl %eax, %eax                                   #  74    0x3ac40  2      
  movl %r13d, %edi                                  #  75    0x3ac42  3      
  movl %eax, %eax                                   #  76    0x3ac45  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x3ac47  5      
  movl %eax, %eax                                   #  78    0x3ac4c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3ac4e  4      
  movl %eax, %eax                                   #  80    0x3ac52  2      
  movl (%r15,%rax,1), %eax                          #  81    0x3ac54  4      
  andl $0xffffffe0, %eax                            #  82    0x3ac58  5      
  addq %r15, %rax                                   #  83    0x3ac5d  3      
  callq %rax                                        #  84    0x3ac60  2      
  movl %r12d, %r12d                                 #  85    0x3ac62  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x3ac65  5      
  movl %ebx, %edi                                   #  87    0x3ac6a  2      
  xchgw %ax, %ax                                    #  88    0x3ac6c  3      
  nop                                               #  89    0x3ac6f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x3ac70  5      
  jmpq .L_3abc0                                     #  91    0x3ac75  5      
  nop                                               #  92    0x3ac7a  1      
  nop                                               #  93    0x3ac7b  1      
.L_3ad40:                                           #        0x3ac7c  0      
  movl $0x10030d60, %edi                            #  94    0x3ac7c  5      
  nop                                               #  95    0x3ac81  1      
  nop                                               #  96    0x3ac82  1      
  callq .__cxa_guard_acquire                        #  97    0x3ac83  5      
  testl %eax, %eax                                  #  98    0x3ac88  2      
  jne .L_3ada0                                      #  99    0x3ac8a  6      
  nop                                               #  100   0x3ac90  1      
  nop                                               #  101   0x3ac91  1      
.L_3ad80:                                           #        0x3ac92  0      
  movl 0xfff60d0(%rip), %eax                        #  102   0x3ac92  6      
  jmpq .L_3aca0                                     #  103   0x3ac98  5      
  nop                                               #  104   0x3ac9d  1      
  nop                                               #  105   0x3ac9e  1      
.L_3ada0:                                           #        0x3ac9f  0      
  nop                                               #  106   0x3ac9f  1      
  nop                                               #  107   0x3aca0  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3aca1  5      
  movl %eax, %edi                                   #  109   0x3aca6  2      
  movl $0x100206f0, %esi                            #  110   0x3aca8  5      
  nop                                               #  111   0x3acad  1      
  nop                                               #  112   0x3acae  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3acaf  5      
  movl $0x10030d60, %edi                            #  114   0x3acb4  5      
  movl %eax, 0xfff60a9(%rip)                        #  115   0x3acb9  6      
  nop                                               #  116   0x3acbf  1      
  nop                                               #  117   0x3acc0  1      
  callq .__cxa_guard_release                        #  118   0x3acc1  5      
  jmpq .L_3ad80                                     #  119   0x3acc6  5      
  nop                                               #  120   0x3accb  1      
  nop                                               #  121   0x3accc  1      
.L_3ae20:                                           #        0x3accd  0      
  movl $0x10030d60, %edi                            #  122   0x3accd  5      
  movl %eax, %r12d                                  #  123   0x3acd2  3      
  nop                                               #  124   0x3acd5  1      
  nop                                               #  125   0x3acd6  1      
  callq .__cxa_guard_abort                          #  126   0x3acd7  5      
.L_3ae40:                                           #        0x3acdc  0      
  movl %ebx, %edi                                   #  127   0x3acdc  2      
  nop                                               #  128   0x3acde  1      
  nop                                               #  129   0x3acdf  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x3ace0  5      
  movl %r12d, %edi                                  #  131   0x3ace5  3      
  nop                                               #  132   0x3ace8  1      
  nop                                               #  133   0x3ace9  1      
  callq ._Unwind_Resume                             #  134   0x3acea  5      
  movl %eax, %r12d                                  #  135   0x3acef  3      
  jmpq .L_3ae40                                     #  136   0x3acf2  5      
  nop                                               #  137   0x3acf7  1      
  nop                                               #  138   0x3acf8  1      
  jmpq .L_3ae20                                     #  139   0x3acf9  5      
  nop                                               #  140   0x3acfe  1      
  nop                                               #  141   0x3acff  1      
  nop                                               #  142   0x3ad00  1      
                                                                             
.size _ZN2pp15MouseInputEventC2ERKNS_10InputEventE, .-_ZN2pp15MouseInputEventC2ERKNS_10InputEventE

