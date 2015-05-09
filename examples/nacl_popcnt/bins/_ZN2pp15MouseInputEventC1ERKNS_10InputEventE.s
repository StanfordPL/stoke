  .text
  .globl _ZN2pp15MouseInputEventC1ERKNS_10InputEventE
  .type _ZN2pp15MouseInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x3bde0
#! rip-offset  0x3bde0
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC1ERKNS_10InputEventE:      #        0x3bde0  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x3bde0  5      
  movl %edi, %ebx                                   #  2     0x3bde5  2      
  movq %r12, -0x10(%rsp)                            #  3     0x3bde7  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3bdec  5      
  movl %ebx, %edi                                   #  5     0x3bdf1  2      
  subl $0x18, %esp                                  #  6     0x3bdf3  3      
  addq %r15, %rsp                                   #  7     0x3bdf6  3      
  movl %esi, %r12d                                  #  8     0x3bdf9  3      
  nop                                               #  9     0x3bdfc  1      
  nop                                               #  10    0x3bdfd  1      
  nop                                               #  11    0x3bdfe  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3bdff  5      
  movl %ebx, %ebx                                   #  13    0x3be04  2      
  movl $0x10020848, (%r15,%rbx,1)                   #  14    0x3be06  8      
  cmpb $0x0, 0xfff4f4b(%rip)                        #  15    0x3be0e  7      
  je .L_3be80                                       #  16    0x3be15  6      
  nop                                               #  17    0x3be1b  1      
.L_3be40:                                           #        0x3be1c  0      
  movl 0xfff4f46(%rip), %eax                        #  18    0x3be1c  6      
  testq %rax, %rax                                  #  19    0x3be22  3      
  jne .L_3bf20                                      #  20    0x3be25  6      
  xchgw %ax, %ax                                    #  21    0x3be2b  3      
  nop                                               #  22    0x3be2e  1      
.L_3be60:                                           #        0x3be2f  0      
  movq (%rsp), %rbx                                 #  23    0x3be2f  4      
  movq 0x8(%rsp), %r12                              #  24    0x3be33  5      
  movq 0x10(%rsp), %r13                             #  25    0x3be38  5      
  addl $0x18, %esp                                  #  26    0x3be3d  3      
  addq %r15, %rsp                                   #  27    0x3be40  3      
  popq %r11                                         #  28    0x3be43  3      
  andl $0xffffffe0, %r11d                           #  29    0x3be46  7      
  addq %r15, %r11                                   #  30    0x3be4d  3      
  jmpq %r11                                         #  31    0x3be50  3      
.L_3be80:                                           #        0x3be53  0      
  movl $0x10030d60, %edi                            #  32    0x3be53  5      
  nop                                               #  33    0x3be58  1      
  nop                                               #  34    0x3be59  1      
  callq .__cxa_guard_acquire                        #  35    0x3be5a  5      
  testl %eax, %eax                                  #  36    0x3be5f  2      
  je .L_3be40                                       #  37    0x3be61  6      
  nop                                               #  38    0x3be67  1      
  nop                                               #  39    0x3be68  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x3be69  5      
  movl %eax, %edi                                   #  41    0x3be6e  2      
  movl $0x100206f0, %esi                            #  42    0x3be70  5      
  nop                                               #  43    0x3be75  1      
  nop                                               #  44    0x3be76  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x3be77  5      
  movl $0x10030d60, %edi                            #  46    0x3be7c  5      
  movl %eax, 0xfff4ee1(%rip)                        #  47    0x3be81  6      
  nop                                               #  48    0x3be87  1      
  nop                                               #  49    0x3be88  1      
  callq .__cxa_guard_release                        #  50    0x3be89  5      
  movl 0xfff4ed4(%rip), %eax                        #  51    0x3be8e  6      
  testq %rax, %rax                                  #  52    0x3be94  3      
  je .L_3be60                                       #  53    0x3be97  6      
  xchgw %ax, %ax                                    #  54    0x3be9d  3      
  nop                                               #  55    0x3bea0  1      
.L_3bf20:                                           #        0x3bea1  0      
  cmpb $0x0, 0xfff4eb8(%rip)                        #  56    0x3bea1  7      
  je .L_3bfe0                                       #  57    0x3bea8  6      
  nop                                               #  58    0x3beae  1      
  nop                                               #  59    0x3beaf  1      
.L_3bf40:                                           #        0x3beb0  0      
  movl %eax, %eax                                   #  60    0x3beb0  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x3beb2  5      
  movl %r12d, %r12d                                 #  62    0x3beb7  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3beba  5      
  nop                                               #  64    0x3bebf  1      
  andl $0xffffffe0, %eax                            #  65    0x3bec0  5      
  addq %r15, %rax                                   #  66    0x3bec5  3      
  callq %rax                                        #  67    0x3bec8  2      
  testl %eax, %eax                                  #  68    0x3beca  2      
  je .L_3be60                                       #  69    0x3becc  6      
  movl %r12d, %r12d                                 #  70    0x3bed2  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x3bed5  5      
  nop                                               #  72    0x3beda  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3bedb  5      
  movl %eax, %eax                                   #  74    0x3bee0  2      
  movl %r13d, %edi                                  #  75    0x3bee2  3      
  movl %eax, %eax                                   #  76    0x3bee5  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x3bee7  5      
  movl %eax, %eax                                   #  78    0x3beec  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3beee  4      
  movl %eax, %eax                                   #  80    0x3bef2  2      
  movl (%r15,%rax,1), %eax                          #  81    0x3bef4  4      
  andl $0xffffffe0, %eax                            #  82    0x3bef8  5      
  addq %r15, %rax                                   #  83    0x3befd  3      
  callq %rax                                        #  84    0x3bf00  2      
  movl %r12d, %r12d                                 #  85    0x3bf02  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x3bf05  5      
  movl %ebx, %edi                                   #  87    0x3bf0a  2      
  xchgw %ax, %ax                                    #  88    0x3bf0c  3      
  nop                                               #  89    0x3bf0f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x3bf10  5      
  jmpq .L_3be60                                     #  91    0x3bf15  5      
  nop                                               #  92    0x3bf1a  1      
  nop                                               #  93    0x3bf1b  1      
.L_3bfe0:                                           #        0x3bf1c  0      
  movl $0x10030d60, %edi                            #  94    0x3bf1c  5      
  nop                                               #  95    0x3bf21  1      
  nop                                               #  96    0x3bf22  1      
  callq .__cxa_guard_acquire                        #  97    0x3bf23  5      
  testl %eax, %eax                                  #  98    0x3bf28  2      
  jne .L_3c040                                      #  99    0x3bf2a  6      
  nop                                               #  100   0x3bf30  1      
  nop                                               #  101   0x3bf31  1      
.L_3c020:                                           #        0x3bf32  0      
  movl 0xfff4e30(%rip), %eax                        #  102   0x3bf32  6      
  jmpq .L_3bf40                                     #  103   0x3bf38  5      
  nop                                               #  104   0x3bf3d  1      
  nop                                               #  105   0x3bf3e  1      
.L_3c040:                                           #        0x3bf3f  0      
  nop                                               #  106   0x3bf3f  1      
  nop                                               #  107   0x3bf40  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3bf41  5      
  movl %eax, %edi                                   #  109   0x3bf46  2      
  movl $0x100206f0, %esi                            #  110   0x3bf48  5      
  nop                                               #  111   0x3bf4d  1      
  nop                                               #  112   0x3bf4e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3bf4f  5      
  movl $0x10030d60, %edi                            #  114   0x3bf54  5      
  movl %eax, 0xfff4e09(%rip)                        #  115   0x3bf59  6      
  nop                                               #  116   0x3bf5f  1      
  nop                                               #  117   0x3bf60  1      
  callq .__cxa_guard_release                        #  118   0x3bf61  5      
  jmpq .L_3c020                                     #  119   0x3bf66  5      
  nop                                               #  120   0x3bf6b  1      
  nop                                               #  121   0x3bf6c  1      
.L_3c0c0:                                           #        0x3bf6d  0      
  movl $0x10030d60, %edi                            #  122   0x3bf6d  5      
  movl %eax, %r12d                                  #  123   0x3bf72  3      
  nop                                               #  124   0x3bf75  1      
  nop                                               #  125   0x3bf76  1      
  callq .__cxa_guard_abort                          #  126   0x3bf77  5      
.L_3c0e0:                                           #        0x3bf7c  0      
  movl %ebx, %edi                                   #  127   0x3bf7c  2      
  nop                                               #  128   0x3bf7e  1      
  nop                                               #  129   0x3bf7f  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x3bf80  5      
  movl %r12d, %edi                                  #  131   0x3bf85  3      
  nop                                               #  132   0x3bf88  1      
  nop                                               #  133   0x3bf89  1      
  callq ._Unwind_Resume                             #  134   0x3bf8a  5      
  movl %eax, %r12d                                  #  135   0x3bf8f  3      
  jmpq .L_3c0e0                                     #  136   0x3bf92  5      
  nop                                               #  137   0x3bf97  1      
  nop                                               #  138   0x3bf98  1      
  jmpq .L_3c0c0                                     #  139   0x3bf99  5      
  nop                                               #  140   0x3bf9e  1      
  nop                                               #  141   0x3bf9f  1      
  nop                                               #  142   0x3bfa0  1      
                                                                             
.size _ZN2pp15MouseInputEventC1ERKNS_10InputEventE, .-_ZN2pp15MouseInputEventC1ERKNS_10InputEventE

