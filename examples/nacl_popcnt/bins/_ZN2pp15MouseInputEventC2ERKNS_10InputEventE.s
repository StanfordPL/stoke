  .text
  .globl _ZN2pp15MouseInputEventC2ERKNS_10InputEventE
  .type _ZN2pp15MouseInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x3abc0
#! rip-offset  0x3abc0
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC2ERKNS_10InputEventE:      #        0x3abc0  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x3abc0  5      
  movl %edi, %ebx                                   #  2     0x3abc5  2      
  movq %r12, -0x10(%rsp)                            #  3     0x3abc7  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3abcc  5      
  movl %ebx, %edi                                   #  5     0x3abd1  2      
  subl $0x18, %esp                                  #  6     0x3abd3  3      
  addq %r15, %rsp                                   #  7     0x3abd6  3      
  movl %esi, %r12d                                  #  8     0x3abd9  3      
  nop                                               #  9     0x3abdc  1      
  nop                                               #  10    0x3abdd  1      
  nop                                               #  11    0x3abde  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3abdf  5      
  movl %ebx, %ebx                                   #  13    0x3abe4  2      
  movl $0x10020848, (%r15,%rbx,1)                   #  14    0x3abe6  8      
  cmpb $0x0, 0xfff616b(%rip)                        #  15    0x3abee  7      
  je .L_3ac60                                       #  16    0x3abf5  6      
  nop                                               #  17    0x3abfb  1      
.L_3ac20:                                           #        0x3abfc  0      
  movl 0xfff6166(%rip), %eax                        #  18    0x3abfc  6      
  testq %rax, %rax                                  #  19    0x3ac02  3      
  jne .L_3ad00                                      #  20    0x3ac05  6      
  xchgw %ax, %ax                                    #  21    0x3ac0b  3      
  nop                                               #  22    0x3ac0e  1      
.L_3ac40:                                           #        0x3ac0f  0      
  movq (%rsp), %rbx                                 #  23    0x3ac0f  4      
  movq 0x8(%rsp), %r12                              #  24    0x3ac13  5      
  movq 0x10(%rsp), %r13                             #  25    0x3ac18  5      
  addl $0x18, %esp                                  #  26    0x3ac1d  3      
  addq %r15, %rsp                                   #  27    0x3ac20  3      
  popq %r11                                         #  28    0x3ac23  3      
  andl $0xffffffe0, %r11d                           #  29    0x3ac26  7      
  addq %r15, %r11                                   #  30    0x3ac2d  3      
  jmpq %r11                                         #  31    0x3ac30  3      
.L_3ac60:                                           #        0x3ac33  0      
  movl $0x10030d60, %edi                            #  32    0x3ac33  5      
  nop                                               #  33    0x3ac38  1      
  nop                                               #  34    0x3ac39  1      
  callq .__cxa_guard_acquire                        #  35    0x3ac3a  5      
  testl %eax, %eax                                  #  36    0x3ac3f  2      
  je .L_3ac20                                       #  37    0x3ac41  6      
  nop                                               #  38    0x3ac47  1      
  nop                                               #  39    0x3ac48  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x3ac49  5      
  movl %eax, %edi                                   #  41    0x3ac4e  2      
  movl $0x100206f0, %esi                            #  42    0x3ac50  5      
  nop                                               #  43    0x3ac55  1      
  nop                                               #  44    0x3ac56  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x3ac57  5      
  movl $0x10030d60, %edi                            #  46    0x3ac5c  5      
  movl %eax, 0xfff6101(%rip)                        #  47    0x3ac61  6      
  nop                                               #  48    0x3ac67  1      
  nop                                               #  49    0x3ac68  1      
  callq .__cxa_guard_release                        #  50    0x3ac69  5      
  movl 0xfff60f4(%rip), %eax                        #  51    0x3ac6e  6      
  testq %rax, %rax                                  #  52    0x3ac74  3      
  je .L_3ac40                                       #  53    0x3ac77  6      
  xchgw %ax, %ax                                    #  54    0x3ac7d  3      
  nop                                               #  55    0x3ac80  1      
.L_3ad00:                                           #        0x3ac81  0      
  cmpb $0x0, 0xfff60d8(%rip)                        #  56    0x3ac81  7      
  je .L_3adc0                                       #  57    0x3ac88  6      
  nop                                               #  58    0x3ac8e  1      
  nop                                               #  59    0x3ac8f  1      
.L_3ad20:                                           #        0x3ac90  0      
  movl %eax, %eax                                   #  60    0x3ac90  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x3ac92  5      
  movl %r12d, %r12d                                 #  62    0x3ac97  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3ac9a  5      
  nop                                               #  64    0x3ac9f  1      
  andl $0xffffffe0, %eax                            #  65    0x3aca0  5      
  addq %r15, %rax                                   #  66    0x3aca5  3      
  callq %rax                                        #  67    0x3aca8  2      
  testl %eax, %eax                                  #  68    0x3acaa  2      
  je .L_3ac40                                       #  69    0x3acac  6      
  movl %r12d, %r12d                                 #  70    0x3acb2  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x3acb5  5      
  nop                                               #  72    0x3acba  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3acbb  5      
  movl %eax, %eax                                   #  74    0x3acc0  2      
  movl %r13d, %edi                                  #  75    0x3acc2  3      
  movl %eax, %eax                                   #  76    0x3acc5  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x3acc7  5      
  movl %eax, %eax                                   #  78    0x3accc  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3acce  4      
  movl %eax, %eax                                   #  80    0x3acd2  2      
  movl (%r15,%rax,1), %eax                          #  81    0x3acd4  4      
  andl $0xffffffe0, %eax                            #  82    0x3acd8  5      
  addq %r15, %rax                                   #  83    0x3acdd  3      
  callq %rax                                        #  84    0x3ace0  2      
  movl %r12d, %r12d                                 #  85    0x3ace2  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x3ace5  5      
  movl %ebx, %edi                                   #  87    0x3acea  2      
  xchgw %ax, %ax                                    #  88    0x3acec  3      
  nop                                               #  89    0x3acef  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x3acf0  5      
  jmpq .L_3ac40                                     #  91    0x3acf5  5      
  nop                                               #  92    0x3acfa  1      
  nop                                               #  93    0x3acfb  1      
.L_3adc0:                                           #        0x3acfc  0      
  movl $0x10030d60, %edi                            #  94    0x3acfc  5      
  nop                                               #  95    0x3ad01  1      
  nop                                               #  96    0x3ad02  1      
  callq .__cxa_guard_acquire                        #  97    0x3ad03  5      
  testl %eax, %eax                                  #  98    0x3ad08  2      
  jne .L_3ae20                                      #  99    0x3ad0a  6      
  nop                                               #  100   0x3ad10  1      
  nop                                               #  101   0x3ad11  1      
.L_3ae00:                                           #        0x3ad12  0      
  movl 0xfff6050(%rip), %eax                        #  102   0x3ad12  6      
  jmpq .L_3ad20                                     #  103   0x3ad18  5      
  nop                                               #  104   0x3ad1d  1      
  nop                                               #  105   0x3ad1e  1      
.L_3ae20:                                           #        0x3ad1f  0      
  nop                                               #  106   0x3ad1f  1      
  nop                                               #  107   0x3ad20  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3ad21  5      
  movl %eax, %edi                                   #  109   0x3ad26  2      
  movl $0x100206f0, %esi                            #  110   0x3ad28  5      
  nop                                               #  111   0x3ad2d  1      
  nop                                               #  112   0x3ad2e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3ad2f  5      
  movl $0x10030d60, %edi                            #  114   0x3ad34  5      
  movl %eax, 0xfff6029(%rip)                        #  115   0x3ad39  6      
  nop                                               #  116   0x3ad3f  1      
  nop                                               #  117   0x3ad40  1      
  callq .__cxa_guard_release                        #  118   0x3ad41  5      
  jmpq .L_3ae00                                     #  119   0x3ad46  5      
  nop                                               #  120   0x3ad4b  1      
  nop                                               #  121   0x3ad4c  1      
.L_3aea0:                                           #        0x3ad4d  0      
  movl $0x10030d60, %edi                            #  122   0x3ad4d  5      
  movl %eax, %r12d                                  #  123   0x3ad52  3      
  nop                                               #  124   0x3ad55  1      
  nop                                               #  125   0x3ad56  1      
  callq .__cxa_guard_abort                          #  126   0x3ad57  5      
.L_3aec0:                                           #        0x3ad5c  0      
  movl %ebx, %edi                                   #  127   0x3ad5c  2      
  nop                                               #  128   0x3ad5e  1      
  nop                                               #  129   0x3ad5f  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x3ad60  5      
  movl %r12d, %edi                                  #  131   0x3ad65  3      
  nop                                               #  132   0x3ad68  1      
  nop                                               #  133   0x3ad69  1      
  callq ._Unwind_Resume                             #  134   0x3ad6a  5      
  movl %eax, %r12d                                  #  135   0x3ad6f  3      
  jmpq .L_3aec0                                     #  136   0x3ad72  5      
  nop                                               #  137   0x3ad77  1      
  nop                                               #  138   0x3ad78  1      
  jmpq .L_3aea0                                     #  139   0x3ad79  5      
  nop                                               #  140   0x3ad7e  1      
  nop                                               #  141   0x3ad7f  1      
  nop                                               #  142   0x3ad80  1      
                                                                             
.size _ZN2pp15MouseInputEventC2ERKNS_10InputEventE, .-_ZN2pp15MouseInputEventC2ERKNS_10InputEventE

