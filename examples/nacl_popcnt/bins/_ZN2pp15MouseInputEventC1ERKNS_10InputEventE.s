  .text
  .globl _ZN2pp15MouseInputEventC1ERKNS_10InputEventE
  .type _ZN2pp15MouseInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x3be80
#! rip-offset  0x3be80
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC1ERKNS_10InputEventE:      #        0x3be80  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x3be80  5      
  movl %edi, %ebx                                   #  2     0x3be85  2      
  movq %r12, -0x10(%rsp)                            #  3     0x3be87  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3be8c  5      
  movl %ebx, %edi                                   #  5     0x3be91  2      
  subl $0x18, %esp                                  #  6     0x3be93  3      
  addq %r15, %rsp                                   #  7     0x3be96  3      
  movl %esi, %r12d                                  #  8     0x3be99  3      
  nop                                               #  9     0x3be9c  1      
  nop                                               #  10    0x3be9d  1      
  nop                                               #  11    0x3be9e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3be9f  5      
  movl %ebx, %ebx                                   #  13    0x3bea4  2      
  movl $0x10020848, (%r15,%rbx,1)                   #  14    0x3bea6  8      
  cmpb $0x0, 0xfff4eab(%rip)                        #  15    0x3beae  7      
  je .L_3bf20                                       #  16    0x3beb5  6      
  nop                                               #  17    0x3bebb  1      
.L_3bee0:                                           #        0x3bebc  0      
  movl 0xfff4ea6(%rip), %eax                        #  18    0x3bebc  6      
  testq %rax, %rax                                  #  19    0x3bec2  3      
  jne .L_3bfc0                                      #  20    0x3bec5  6      
  xchgw %ax, %ax                                    #  21    0x3becb  3      
  nop                                               #  22    0x3bece  1      
.L_3bf00:                                           #        0x3becf  0      
  movq (%rsp), %rbx                                 #  23    0x3becf  4      
  movq 0x8(%rsp), %r12                              #  24    0x3bed3  5      
  movq 0x10(%rsp), %r13                             #  25    0x3bed8  5      
  addl $0x18, %esp                                  #  26    0x3bedd  3      
  addq %r15, %rsp                                   #  27    0x3bee0  3      
  popq %r11                                         #  28    0x3bee3  3      
  andl $0xffffffe0, %r11d                           #  29    0x3bee6  7      
  addq %r15, %r11                                   #  30    0x3beed  3      
  jmpq %r11                                         #  31    0x3bef0  3      
.L_3bf20:                                           #        0x3bef3  0      
  movl $0x10030d60, %edi                            #  32    0x3bef3  5      
  nop                                               #  33    0x3bef8  1      
  nop                                               #  34    0x3bef9  1      
  callq .__cxa_guard_acquire                        #  35    0x3befa  5      
  testl %eax, %eax                                  #  36    0x3beff  2      
  je .L_3bee0                                       #  37    0x3bf01  6      
  nop                                               #  38    0x3bf07  1      
  nop                                               #  39    0x3bf08  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x3bf09  5      
  movl %eax, %edi                                   #  41    0x3bf0e  2      
  movl $0x100206f0, %esi                            #  42    0x3bf10  5      
  nop                                               #  43    0x3bf15  1      
  nop                                               #  44    0x3bf16  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x3bf17  5      
  movl $0x10030d60, %edi                            #  46    0x3bf1c  5      
  movl %eax, 0xfff4e41(%rip)                        #  47    0x3bf21  6      
  nop                                               #  48    0x3bf27  1      
  nop                                               #  49    0x3bf28  1      
  callq .__cxa_guard_release                        #  50    0x3bf29  5      
  movl 0xfff4e34(%rip), %eax                        #  51    0x3bf2e  6      
  testq %rax, %rax                                  #  52    0x3bf34  3      
  je .L_3bf00                                       #  53    0x3bf37  6      
  xchgw %ax, %ax                                    #  54    0x3bf3d  3      
  nop                                               #  55    0x3bf40  1      
.L_3bfc0:                                           #        0x3bf41  0      
  cmpb $0x0, 0xfff4e18(%rip)                        #  56    0x3bf41  7      
  je .L_3c080                                       #  57    0x3bf48  6      
  nop                                               #  58    0x3bf4e  1      
  nop                                               #  59    0x3bf4f  1      
.L_3bfe0:                                           #        0x3bf50  0      
  movl %eax, %eax                                   #  60    0x3bf50  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x3bf52  5      
  movl %r12d, %r12d                                 #  62    0x3bf57  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3bf5a  5      
  nop                                               #  64    0x3bf5f  1      
  andl $0xffffffe0, %eax                            #  65    0x3bf60  5      
  addq %r15, %rax                                   #  66    0x3bf65  3      
  callq %rax                                        #  67    0x3bf68  2      
  testl %eax, %eax                                  #  68    0x3bf6a  2      
  je .L_3bf00                                       #  69    0x3bf6c  6      
  movl %r12d, %r12d                                 #  70    0x3bf72  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x3bf75  5      
  nop                                               #  72    0x3bf7a  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3bf7b  5      
  movl %eax, %eax                                   #  74    0x3bf80  2      
  movl %r13d, %edi                                  #  75    0x3bf82  3      
  movl %eax, %eax                                   #  76    0x3bf85  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x3bf87  5      
  movl %eax, %eax                                   #  78    0x3bf8c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3bf8e  4      
  movl %eax, %eax                                   #  80    0x3bf92  2      
  movl (%r15,%rax,1), %eax                          #  81    0x3bf94  4      
  andl $0xffffffe0, %eax                            #  82    0x3bf98  5      
  addq %r15, %rax                                   #  83    0x3bf9d  3      
  callq %rax                                        #  84    0x3bfa0  2      
  movl %r12d, %r12d                                 #  85    0x3bfa2  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x3bfa5  5      
  movl %ebx, %edi                                   #  87    0x3bfaa  2      
  xchgw %ax, %ax                                    #  88    0x3bfac  3      
  nop                                               #  89    0x3bfaf  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x3bfb0  5      
  jmpq .L_3bf00                                     #  91    0x3bfb5  5      
  nop                                               #  92    0x3bfba  1      
  nop                                               #  93    0x3bfbb  1      
.L_3c080:                                           #        0x3bfbc  0      
  movl $0x10030d60, %edi                            #  94    0x3bfbc  5      
  nop                                               #  95    0x3bfc1  1      
  nop                                               #  96    0x3bfc2  1      
  callq .__cxa_guard_acquire                        #  97    0x3bfc3  5      
  testl %eax, %eax                                  #  98    0x3bfc8  2      
  jne .L_3c0e0                                      #  99    0x3bfca  6      
  nop                                               #  100   0x3bfd0  1      
  nop                                               #  101   0x3bfd1  1      
.L_3c0c0:                                           #        0x3bfd2  0      
  movl 0xfff4d90(%rip), %eax                        #  102   0x3bfd2  6      
  jmpq .L_3bfe0                                     #  103   0x3bfd8  5      
  nop                                               #  104   0x3bfdd  1      
  nop                                               #  105   0x3bfde  1      
.L_3c0e0:                                           #        0x3bfdf  0      
  nop                                               #  106   0x3bfdf  1      
  nop                                               #  107   0x3bfe0  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3bfe1  5      
  movl %eax, %edi                                   #  109   0x3bfe6  2      
  movl $0x100206f0, %esi                            #  110   0x3bfe8  5      
  nop                                               #  111   0x3bfed  1      
  nop                                               #  112   0x3bfee  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3bfef  5      
  movl $0x10030d60, %edi                            #  114   0x3bff4  5      
  movl %eax, 0xfff4d69(%rip)                        #  115   0x3bff9  6      
  nop                                               #  116   0x3bfff  1      
  nop                                               #  117   0x3c000  1      
  callq .__cxa_guard_release                        #  118   0x3c001  5      
  jmpq .L_3c0c0                                     #  119   0x3c006  5      
  nop                                               #  120   0x3c00b  1      
  nop                                               #  121   0x3c00c  1      
.L_3c160:                                           #        0x3c00d  0      
  movl $0x10030d60, %edi                            #  122   0x3c00d  5      
  movl %eax, %r12d                                  #  123   0x3c012  3      
  nop                                               #  124   0x3c015  1      
  nop                                               #  125   0x3c016  1      
  callq .__cxa_guard_abort                          #  126   0x3c017  5      
.L_3c180:                                           #        0x3c01c  0      
  movl %ebx, %edi                                   #  127   0x3c01c  2      
  nop                                               #  128   0x3c01e  1      
  nop                                               #  129   0x3c01f  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x3c020  5      
  movl %r12d, %edi                                  #  131   0x3c025  3      
  nop                                               #  132   0x3c028  1      
  nop                                               #  133   0x3c029  1      
  callq ._Unwind_Resume                             #  134   0x3c02a  5      
  movl %eax, %r12d                                  #  135   0x3c02f  3      
  jmpq .L_3c180                                     #  136   0x3c032  5      
  nop                                               #  137   0x3c037  1      
  nop                                               #  138   0x3c038  1      
  jmpq .L_3c160                                     #  139   0x3c039  5      
  nop                                               #  140   0x3c03e  1      
  nop                                               #  141   0x3c03f  1      
  nop                                               #  142   0x3c040  1      
                                                                             
.size _ZN2pp15MouseInputEventC1ERKNS_10InputEventE, .-_ZN2pp15MouseInputEventC1ERKNS_10InputEventE

