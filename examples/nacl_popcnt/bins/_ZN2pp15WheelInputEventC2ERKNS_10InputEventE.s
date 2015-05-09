  .text
  .globl _ZN2pp15WheelInputEventC2ERKNS_10InputEventE
  .type _ZN2pp15WheelInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x37b60
#! rip-offset  0x37b60
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC2ERKNS_10InputEventE:      #        0x37b60  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x37b60  5      
  movl %edi, %ebx                                   #  2     0x37b65  2      
  movq %r12, -0x10(%rsp)                            #  3     0x37b67  5      
  movq %r13, -0x8(%rsp)                             #  4     0x37b6c  5      
  movl %ebx, %edi                                   #  5     0x37b71  2      
  subl $0x18, %esp                                  #  6     0x37b73  3      
  addq %r15, %rsp                                   #  7     0x37b76  3      
  movl %esi, %r12d                                  #  8     0x37b79  3      
  nop                                               #  9     0x37b7c  1      
  nop                                               #  10    0x37b7d  1      
  nop                                               #  11    0x37b7e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x37b7f  5      
  movl %ebx, %ebx                                   #  13    0x37b84  2      
  movl $0x10020808, (%r15,%rbx,1)                   #  14    0x37b86  8      
  cmpb $0x0, 0xfff91bb(%rip)                        #  15    0x37b8e  7      
  je .L_37c00                                       #  16    0x37b95  6      
  nop                                               #  17    0x37b9b  1      
.L_37bc0:                                           #        0x37b9c  0      
  movl 0xfff91b6(%rip), %eax                        #  18    0x37b9c  6      
  testq %rax, %rax                                  #  19    0x37ba2  3      
  jne .L_37ca0                                      #  20    0x37ba5  6      
  xchgw %ax, %ax                                    #  21    0x37bab  3      
  nop                                               #  22    0x37bae  1      
.L_37be0:                                           #        0x37baf  0      
  movq (%rsp), %rbx                                 #  23    0x37baf  4      
  movq 0x8(%rsp), %r12                              #  24    0x37bb3  5      
  movq 0x10(%rsp), %r13                             #  25    0x37bb8  5      
  addl $0x18, %esp                                  #  26    0x37bbd  3      
  addq %r15, %rsp                                   #  27    0x37bc0  3      
  popq %r11                                         #  28    0x37bc3  3      
  andl $0xffffffe0, %r11d                           #  29    0x37bc6  7      
  addq %r15, %r11                                   #  30    0x37bcd  3      
  jmpq %r11                                         #  31    0x37bd0  3      
.L_37c00:                                           #        0x37bd3  0      
  movl $0x10030d50, %edi                            #  32    0x37bd3  5      
  nop                                               #  33    0x37bd8  1      
  nop                                               #  34    0x37bd9  1      
  callq .__cxa_guard_acquire                        #  35    0x37bda  5      
  testl %eax, %eax                                  #  36    0x37bdf  2      
  je .L_37bc0                                       #  37    0x37be1  6      
  nop                                               #  38    0x37be7  1      
  nop                                               #  39    0x37be8  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x37be9  5      
  movl %eax, %edi                                   #  41    0x37bee  2      
  movl $0x100206c0, %esi                            #  42    0x37bf0  5      
  nop                                               #  43    0x37bf5  1      
  nop                                               #  44    0x37bf6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x37bf7  5      
  movl $0x10030d50, %edi                            #  46    0x37bfc  5      
  movl %eax, 0xfff9151(%rip)                        #  47    0x37c01  6      
  nop                                               #  48    0x37c07  1      
  nop                                               #  49    0x37c08  1      
  callq .__cxa_guard_release                        #  50    0x37c09  5      
  movl 0xfff9144(%rip), %eax                        #  51    0x37c0e  6      
  testq %rax, %rax                                  #  52    0x37c14  3      
  je .L_37be0                                       #  53    0x37c17  6      
  xchgw %ax, %ax                                    #  54    0x37c1d  3      
  nop                                               #  55    0x37c20  1      
.L_37ca0:                                           #        0x37c21  0      
  cmpb $0x0, 0xfff9128(%rip)                        #  56    0x37c21  7      
  je .L_37d60                                       #  57    0x37c28  6      
  nop                                               #  58    0x37c2e  1      
  nop                                               #  59    0x37c2f  1      
.L_37cc0:                                           #        0x37c30  0      
  movl %eax, %eax                                   #  60    0x37c30  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x37c32  5      
  movl %r12d, %r12d                                 #  62    0x37c37  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x37c3a  5      
  nop                                               #  64    0x37c3f  1      
  andl $0xffffffe0, %eax                            #  65    0x37c40  5      
  addq %r15, %rax                                   #  66    0x37c45  3      
  callq %rax                                        #  67    0x37c48  2      
  testl %eax, %eax                                  #  68    0x37c4a  2      
  je .L_37be0                                       #  69    0x37c4c  6      
  movl %r12d, %r12d                                 #  70    0x37c52  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x37c55  5      
  nop                                               #  72    0x37c5a  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x37c5b  5      
  movl %eax, %eax                                   #  74    0x37c60  2      
  movl %r13d, %edi                                  #  75    0x37c62  3      
  movl %eax, %eax                                   #  76    0x37c65  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x37c67  5      
  movl %eax, %eax                                   #  78    0x37c6c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x37c6e  4      
  movl %eax, %eax                                   #  80    0x37c72  2      
  movl (%r15,%rax,1), %eax                          #  81    0x37c74  4      
  andl $0xffffffe0, %eax                            #  82    0x37c78  5      
  addq %r15, %rax                                   #  83    0x37c7d  3      
  callq %rax                                        #  84    0x37c80  2      
  movl %r12d, %r12d                                 #  85    0x37c82  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x37c85  5      
  movl %ebx, %edi                                   #  87    0x37c8a  2      
  xchgw %ax, %ax                                    #  88    0x37c8c  3      
  nop                                               #  89    0x37c8f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x37c90  5      
  jmpq .L_37be0                                     #  91    0x37c95  5      
  nop                                               #  92    0x37c9a  1      
  nop                                               #  93    0x37c9b  1      
.L_37d60:                                           #        0x37c9c  0      
  movl $0x10030d50, %edi                            #  94    0x37c9c  5      
  nop                                               #  95    0x37ca1  1      
  nop                                               #  96    0x37ca2  1      
  callq .__cxa_guard_acquire                        #  97    0x37ca3  5      
  testl %eax, %eax                                  #  98    0x37ca8  2      
  jne .L_37dc0                                      #  99    0x37caa  6      
  nop                                               #  100   0x37cb0  1      
  nop                                               #  101   0x37cb1  1      
.L_37da0:                                           #        0x37cb2  0      
  movl 0xfff90a0(%rip), %eax                        #  102   0x37cb2  6      
  jmpq .L_37cc0                                     #  103   0x37cb8  5      
  nop                                               #  104   0x37cbd  1      
  nop                                               #  105   0x37cbe  1      
.L_37dc0:                                           #        0x37cbf  0      
  nop                                               #  106   0x37cbf  1      
  nop                                               #  107   0x37cc0  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x37cc1  5      
  movl %eax, %edi                                   #  109   0x37cc6  2      
  movl $0x100206c0, %esi                            #  110   0x37cc8  5      
  nop                                               #  111   0x37ccd  1      
  nop                                               #  112   0x37cce  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x37ccf  5      
  movl $0x10030d50, %edi                            #  114   0x37cd4  5      
  movl %eax, 0xfff9079(%rip)                        #  115   0x37cd9  6      
  nop                                               #  116   0x37cdf  1      
  nop                                               #  117   0x37ce0  1      
  callq .__cxa_guard_release                        #  118   0x37ce1  5      
  jmpq .L_37da0                                     #  119   0x37ce6  5      
  nop                                               #  120   0x37ceb  1      
  nop                                               #  121   0x37cec  1      
.L_37e40:                                           #        0x37ced  0      
  movl $0x10030d50, %edi                            #  122   0x37ced  5      
  movl %eax, %r12d                                  #  123   0x37cf2  3      
  nop                                               #  124   0x37cf5  1      
  nop                                               #  125   0x37cf6  1      
  callq .__cxa_guard_abort                          #  126   0x37cf7  5      
.L_37e60:                                           #        0x37cfc  0      
  movl %ebx, %edi                                   #  127   0x37cfc  2      
  nop                                               #  128   0x37cfe  1      
  nop                                               #  129   0x37cff  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x37d00  5      
  movl %r12d, %edi                                  #  131   0x37d05  3      
  nop                                               #  132   0x37d08  1      
  nop                                               #  133   0x37d09  1      
  callq ._Unwind_Resume                             #  134   0x37d0a  5      
  movl %eax, %r12d                                  #  135   0x37d0f  3      
  jmpq .L_37e60                                     #  136   0x37d12  5      
  nop                                               #  137   0x37d17  1      
  nop                                               #  138   0x37d18  1      
  jmpq .L_37e40                                     #  139   0x37d19  5      
  nop                                               #  140   0x37d1e  1      
  nop                                               #  141   0x37d1f  1      
  nop                                               #  142   0x37d20  1      
                                                                             
.size _ZN2pp15WheelInputEventC2ERKNS_10InputEventE, .-_ZN2pp15WheelInputEventC2ERKNS_10InputEventE

