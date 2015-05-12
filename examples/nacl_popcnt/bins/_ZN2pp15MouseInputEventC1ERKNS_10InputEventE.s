  .text
  .globl _ZN2pp15MouseInputEventC1ERKNS_10InputEventE
  .type _ZN2pp15MouseInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x3be00
#! rip-offset  0x3be00
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC1ERKNS_10InputEventE:      #        0x3be00  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x3be00  5      
  movl %edi, %ebx                                   #  2     0x3be05  2      
  movq %r12, -0x10(%rsp)                            #  3     0x3be07  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3be0c  5      
  movl %ebx, %edi                                   #  5     0x3be11  2      
  subl $0x18, %esp                                  #  6     0x3be13  3      
  addq %r15, %rsp                                   #  7     0x3be16  3      
  movl %esi, %r12d                                  #  8     0x3be19  3      
  nop                                               #  9     0x3be1c  1      
  nop                                               #  10    0x3be1d  1      
  nop                                               #  11    0x3be1e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3be1f  5      
  movl %ebx, %ebx                                   #  13    0x3be24  2      
  movl $0x10020848, (%r15,%rbx,1)                   #  14    0x3be26  8      
  cmpb $0x0, 0xfff4f2b(%rip)                        #  15    0x3be2e  7      
  je .L_3bea0                                       #  16    0x3be35  6      
  nop                                               #  17    0x3be3b  1      
.L_3be60:                                           #        0x3be3c  0      
  movl 0xfff4f26(%rip), %eax                        #  18    0x3be3c  6      
  testq %rax, %rax                                  #  19    0x3be42  3      
  jne .L_3bf40                                      #  20    0x3be45  6      
  xchgw %ax, %ax                                    #  21    0x3be4b  3      
  nop                                               #  22    0x3be4e  1      
.L_3be80:                                           #        0x3be4f  0      
  movq (%rsp), %rbx                                 #  23    0x3be4f  4      
  movq 0x8(%rsp), %r12                              #  24    0x3be53  5      
  movq 0x10(%rsp), %r13                             #  25    0x3be58  5      
  addl $0x18, %esp                                  #  26    0x3be5d  3      
  addq %r15, %rsp                                   #  27    0x3be60  3      
  popq %r11                                         #  28    0x3be63  3      
  andl $0xffffffe0, %r11d                           #  29    0x3be66  7      
  addq %r15, %r11                                   #  30    0x3be6d  3      
  jmpq %r11                                         #  31    0x3be70  3      
.L_3bea0:                                           #        0x3be73  0      
  movl $0x10030d60, %edi                            #  32    0x3be73  5      
  nop                                               #  33    0x3be78  1      
  nop                                               #  34    0x3be79  1      
  callq .__cxa_guard_acquire                        #  35    0x3be7a  5      
  testl %eax, %eax                                  #  36    0x3be7f  2      
  je .L_3be60                                       #  37    0x3be81  6      
  nop                                               #  38    0x3be87  1      
  nop                                               #  39    0x3be88  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x3be89  5      
  movl %eax, %edi                                   #  41    0x3be8e  2      
  movl $0x100206f0, %esi                            #  42    0x3be90  5      
  nop                                               #  43    0x3be95  1      
  nop                                               #  44    0x3be96  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x3be97  5      
  movl $0x10030d60, %edi                            #  46    0x3be9c  5      
  movl %eax, 0xfff4ec1(%rip)                        #  47    0x3bea1  6      
  nop                                               #  48    0x3bea7  1      
  nop                                               #  49    0x3bea8  1      
  callq .__cxa_guard_release                        #  50    0x3bea9  5      
  movl 0xfff4eb4(%rip), %eax                        #  51    0x3beae  6      
  testq %rax, %rax                                  #  52    0x3beb4  3      
  je .L_3be80                                       #  53    0x3beb7  6      
  xchgw %ax, %ax                                    #  54    0x3bebd  3      
  nop                                               #  55    0x3bec0  1      
.L_3bf40:                                           #        0x3bec1  0      
  cmpb $0x0, 0xfff4e98(%rip)                        #  56    0x3bec1  7      
  je .L_3c000                                       #  57    0x3bec8  6      
  nop                                               #  58    0x3bece  1      
  nop                                               #  59    0x3becf  1      
.L_3bf60:                                           #        0x3bed0  0      
  movl %eax, %eax                                   #  60    0x3bed0  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x3bed2  5      
  movl %r12d, %r12d                                 #  62    0x3bed7  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3beda  5      
  nop                                               #  64    0x3bedf  1      
  andl $0xffffffe0, %eax                            #  65    0x3bee0  5      
  addq %r15, %rax                                   #  66    0x3bee5  3      
  callq %rax                                        #  67    0x3bee8  2      
  testl %eax, %eax                                  #  68    0x3beea  2      
  je .L_3be80                                       #  69    0x3beec  6      
  movl %r12d, %r12d                                 #  70    0x3bef2  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x3bef5  5      
  nop                                               #  72    0x3befa  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3befb  5      
  movl %eax, %eax                                   #  74    0x3bf00  2      
  movl %r13d, %edi                                  #  75    0x3bf02  3      
  movl %eax, %eax                                   #  76    0x3bf05  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x3bf07  5      
  movl %eax, %eax                                   #  78    0x3bf0c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3bf0e  4      
  movl %eax, %eax                                   #  80    0x3bf12  2      
  movl (%r15,%rax,1), %eax                          #  81    0x3bf14  4      
  andl $0xffffffe0, %eax                            #  82    0x3bf18  5      
  addq %r15, %rax                                   #  83    0x3bf1d  3      
  callq %rax                                        #  84    0x3bf20  2      
  movl %r12d, %r12d                                 #  85    0x3bf22  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x3bf25  5      
  movl %ebx, %edi                                   #  87    0x3bf2a  2      
  xchgw %ax, %ax                                    #  88    0x3bf2c  3      
  nop                                               #  89    0x3bf2f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x3bf30  5      
  jmpq .L_3be80                                     #  91    0x3bf35  5      
  nop                                               #  92    0x3bf3a  1      
  nop                                               #  93    0x3bf3b  1      
.L_3c000:                                           #        0x3bf3c  0      
  movl $0x10030d60, %edi                            #  94    0x3bf3c  5      
  nop                                               #  95    0x3bf41  1      
  nop                                               #  96    0x3bf42  1      
  callq .__cxa_guard_acquire                        #  97    0x3bf43  5      
  testl %eax, %eax                                  #  98    0x3bf48  2      
  jne .L_3c060                                      #  99    0x3bf4a  6      
  nop                                               #  100   0x3bf50  1      
  nop                                               #  101   0x3bf51  1      
.L_3c040:                                           #        0x3bf52  0      
  movl 0xfff4e10(%rip), %eax                        #  102   0x3bf52  6      
  jmpq .L_3bf60                                     #  103   0x3bf58  5      
  nop                                               #  104   0x3bf5d  1      
  nop                                               #  105   0x3bf5e  1      
.L_3c060:                                           #        0x3bf5f  0      
  nop                                               #  106   0x3bf5f  1      
  nop                                               #  107   0x3bf60  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3bf61  5      
  movl %eax, %edi                                   #  109   0x3bf66  2      
  movl $0x100206f0, %esi                            #  110   0x3bf68  5      
  nop                                               #  111   0x3bf6d  1      
  nop                                               #  112   0x3bf6e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3bf6f  5      
  movl $0x10030d60, %edi                            #  114   0x3bf74  5      
  movl %eax, 0xfff4de9(%rip)                        #  115   0x3bf79  6      
  nop                                               #  116   0x3bf7f  1      
  nop                                               #  117   0x3bf80  1      
  callq .__cxa_guard_release                        #  118   0x3bf81  5      
  jmpq .L_3c040                                     #  119   0x3bf86  5      
  nop                                               #  120   0x3bf8b  1      
  nop                                               #  121   0x3bf8c  1      
.L_3c0e0:                                           #        0x3bf8d  0      
  movl $0x10030d60, %edi                            #  122   0x3bf8d  5      
  movl %eax, %r12d                                  #  123   0x3bf92  3      
  nop                                               #  124   0x3bf95  1      
  nop                                               #  125   0x3bf96  1      
  callq .__cxa_guard_abort                          #  126   0x3bf97  5      
.L_3c100:                                           #        0x3bf9c  0      
  movl %ebx, %edi                                   #  127   0x3bf9c  2      
  nop                                               #  128   0x3bf9e  1      
  nop                                               #  129   0x3bf9f  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x3bfa0  5      
  movl %r12d, %edi                                  #  131   0x3bfa5  3      
  nop                                               #  132   0x3bfa8  1      
  nop                                               #  133   0x3bfa9  1      
  callq ._Unwind_Resume                             #  134   0x3bfaa  5      
  movl %eax, %r12d                                  #  135   0x3bfaf  3      
  jmpq .L_3c100                                     #  136   0x3bfb2  5      
  nop                                               #  137   0x3bfb7  1      
  nop                                               #  138   0x3bfb8  1      
  jmpq .L_3c0e0                                     #  139   0x3bfb9  5      
  nop                                               #  140   0x3bfbe  1      
  nop                                               #  141   0x3bfbf  1      
  nop                                               #  142   0x3bfc0  1      
                                                                             
.size _ZN2pp15MouseInputEventC1ERKNS_10InputEventE, .-_ZN2pp15MouseInputEventC1ERKNS_10InputEventE

