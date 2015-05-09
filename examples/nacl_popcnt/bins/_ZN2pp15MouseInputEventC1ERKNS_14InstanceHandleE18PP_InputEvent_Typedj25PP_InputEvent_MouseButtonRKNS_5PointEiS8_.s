  .text
  .globl _ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_
  .type _ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_, @function

#! file-offset 0x3b6a0
#! rip-offset  0x3b6a0
#! capacity    928 bytes

# Text                                                                                                               #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_:  #        0x3b6a0  0      
  movq %rbx, -0x20(%rsp)                                                                                             #  1     0x3b6a0  5      
  movl %edi, %ebx                                                                                                    #  2     0x3b6a5  2      
  movq %r12, -0x18(%rsp)                                                                                             #  3     0x3b6a7  5      
  movq %r13, -0x10(%rsp)                                                                                             #  4     0x3b6ac  5      
  movq %r14, -0x8(%rsp)                                                                                              #  5     0x3b6b1  5      
  movl %ebx, %edi                                                                                                    #  6     0x3b6b6  2      
  subl $0x58, %esp                                                                                                   #  7     0x3b6b8  3      
  addq %r15, %rsp                                                                                                    #  8     0x3b6bb  3      
  xchgw %ax, %ax                                                                                                     #  9     0x3b6be  3      
  movl %esi, %r13d                                                                                                   #  10    0x3b6c1  3      
  movl %r9d, %r14d                                                                                                   #  11    0x3b6c4  3      
  movl %edx, 0x1c(%rsp)                                                                                              #  12    0x3b6c7  4      
  movsd %xmm0, 0x20(%rsp)                                                                                            #  13    0x3b6cb  6      
  movl %ecx, 0x28(%rsp)                                                                                              #  14    0x3b6d1  4      
  movl %r8d, 0x2c(%rsp)                                                                                              #  15    0x3b6d5  5      
  movl 0x68(%rsp), %r12d                                                                                             #  16    0x3b6da  5      
  xchgw %ax, %ax                                                                                                     #  17    0x3b6df  3      
  nop                                                                                                                #  18    0x3b6e2  1      
  nop                                                                                                                #  19    0x3b6e3  1      
  callq ._ZN2pp10InputEventC2Ev                                                                                      #  20    0x3b6e4  5      
  movl %ebx, %ebx                                                                                                    #  21    0x3b6e9  2      
  movl $0x10020848, (%r15,%rbx,1)                                                                                    #  22    0x3b6eb  8      
  cmpb $0x0, 0xfff5666(%rip)                                                                                         #  23    0x3b6f3  7      
  je .L_3b780                                                                                                        #  24    0x3b6fa  6      
  nop                                                                                                                #  25    0x3b700  1      
.L_3b720:                                                                                                            #        0x3b701  0      
  movl 0xfff5661(%rip), %eax                                                                                         #  26    0x3b701  6      
  testq %rax, %rax                                                                                                   #  27    0x3b707  3      
  jne .L_3b820                                                                                                       #  28    0x3b70a  6      
  xchgw %ax, %ax                                                                                                     #  29    0x3b710  3      
  nop                                                                                                                #  30    0x3b713  1      
.L_3b740:                                                                                                            #        0x3b714  0      
  movq 0x38(%rsp), %rbx                                                                                              #  31    0x3b714  5      
  movq 0x40(%rsp), %r12                                                                                              #  32    0x3b719  5      
  movq 0x48(%rsp), %r13                                                                                              #  33    0x3b71e  5      
  movq 0x50(%rsp), %r14                                                                                              #  34    0x3b723  5      
  addl $0x58, %esp                                                                                                   #  35    0x3b728  3      
  addq %r15, %rsp                                                                                                    #  36    0x3b72b  3      
  popq %r11                                                                                                          #  37    0x3b72e  3      
  nop                                                                                                                #  38    0x3b731  1      
  andl $0xffffffe0, %r11d                                                                                            #  39    0x3b732  7      
  addq %r15, %r11                                                                                                    #  40    0x3b739  3      
  jmpq %r11                                                                                                          #  41    0x3b73c  3      
  nop                                                                                                                #  42    0x3b73f  1      
  nop                                                                                                                #  43    0x3b740  1      
.L_3b780:                                                                                                            #        0x3b741  0      
  movl $0x10030d60, %edi                                                                                             #  44    0x3b741  5      
  nop                                                                                                                #  45    0x3b746  1      
  nop                                                                                                                #  46    0x3b747  1      
  callq .__cxa_guard_acquire                                                                                         #  47    0x3b748  5      
  testl %eax, %eax                                                                                                   #  48    0x3b74d  2      
  je .L_3b720                                                                                                        #  49    0x3b74f  6      
  nop                                                                                                                #  50    0x3b755  1      
  nop                                                                                                                #  51    0x3b756  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  52    0x3b757  5      
  movl %eax, %edi                                                                                                    #  53    0x3b75c  2      
  movl $0x100206f0, %esi                                                                                             #  54    0x3b75e  5      
  nop                                                                                                                #  55    0x3b763  1      
  nop                                                                                                                #  56    0x3b764  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  57    0x3b765  5      
  movl $0x10030d60, %edi                                                                                             #  58    0x3b76a  5      
  movl %eax, 0xfff55f3(%rip)                                                                                         #  59    0x3b76f  6      
  nop                                                                                                                #  60    0x3b775  1      
  nop                                                                                                                #  61    0x3b776  1      
  callq .__cxa_guard_release                                                                                         #  62    0x3b777  5      
  movl 0xfff55e6(%rip), %eax                                                                                         #  63    0x3b77c  6      
  testq %rax, %rax                                                                                                   #  64    0x3b782  3      
  je .L_3b740                                                                                                        #  65    0x3b785  6      
  xchgw %ax, %ax                                                                                                     #  66    0x3b78b  3      
  nop                                                                                                                #  67    0x3b78e  1      
.L_3b820:                                                                                                            #        0x3b78f  0      
  cmpb $0x0, 0xfff55ca(%rip)                                                                                         #  68    0x3b78f  7      
  je .L_3b8c0                                                                                                        #  69    0x3b796  6      
  nop                                                                                                                #  70    0x3b79c  1      
  nop                                                                                                                #  71    0x3b79d  1      
.L_3b840:                                                                                                            #        0x3b79e  0      
  movl %r12d, (%rsp)                                                                                                 #  72    0x3b79e  4      
  movl %eax, %eax                                                                                                    #  73    0x3b7a2  2      
  movl (%r15,%rax,1), %eax                                                                                           #  74    0x3b7a4  4      
  movl %r14d, %r8d                                                                                                   #  75    0x3b7a8  3      
  movl 0x60(%rsp), %r9d                                                                                              #  76    0x3b7ab  5      
  movl 0x2c(%rsp), %ecx                                                                                              #  77    0x3b7b0  4      
  movl 0x28(%rsp), %edx                                                                                              #  78    0x3b7b4  4      
  movsd 0x20(%rsp), %xmm0                                                                                            #  79    0x3b7b8  6      
  movl 0x1c(%rsp), %esi                                                                                              #  80    0x3b7be  4      
  movl %r13d, %r13d                                                                                                  #  81    0x3b7c2  3      
  movl (%r15,%r13,1), %edi                                                                                           #  82    0x3b7c5  4      
  nop                                                                                                                #  83    0x3b7c9  1      
  andl $0xffffffe0, %eax                                                                                             #  84    0x3b7ca  5      
  addq %r15, %rax                                                                                                    #  85    0x3b7cf  3      
  callq %rax                                                                                                         #  86    0x3b7d2  2      
  movl %eax, %esi                                                                                                    #  87    0x3b7d4  2      
  movl %ebx, %edi                                                                                                    #  88    0x3b7d6  2      
  nop                                                                                                                #  89    0x3b7d8  1      
  nop                                                                                                                #  90    0x3b7d9  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                                                   #  91    0x3b7da  5      
  jmpq .L_3b740                                                                                                      #  92    0x3b7df  5      
  nop                                                                                                                #  93    0x3b7e4  1      
  nop                                                                                                                #  94    0x3b7e5  1      
.L_3b8c0:                                                                                                            #        0x3b7e6  0      
  movl $0x10030d60, %edi                                                                                             #  95    0x3b7e6  5      
  nop                                                                                                                #  96    0x3b7eb  1      
  nop                                                                                                                #  97    0x3b7ec  1      
  callq .__cxa_guard_acquire                                                                                         #  98    0x3b7ed  5      
  testl %eax, %eax                                                                                                   #  99    0x3b7f2  2      
  jne .L_3b920                                                                                                       #  100   0x3b7f4  6      
  nop                                                                                                                #  101   0x3b7fa  1      
  nop                                                                                                                #  102   0x3b7fb  1      
.L_3b900:                                                                                                            #        0x3b7fc  0      
  movl 0xfff5566(%rip), %eax                                                                                         #  103   0x3b7fc  6      
  jmpq .L_3b840                                                                                                      #  104   0x3b802  5      
  nop                                                                                                                #  105   0x3b807  1      
  nop                                                                                                                #  106   0x3b808  1      
.L_3b920:                                                                                                            #        0x3b809  0      
  nop                                                                                                                #  107   0x3b809  1      
  nop                                                                                                                #  108   0x3b80a  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  109   0x3b80b  5      
  movl %eax, %edi                                                                                                    #  110   0x3b810  2      
  movl $0x100206f0, %esi                                                                                             #  111   0x3b812  5      
  nop                                                                                                                #  112   0x3b817  1      
  nop                                                                                                                #  113   0x3b818  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  114   0x3b819  5      
  movl $0x10030d60, %edi                                                                                             #  115   0x3b81e  5      
  movl %eax, 0xfff553f(%rip)                                                                                         #  116   0x3b823  6      
  nop                                                                                                                #  117   0x3b829  1      
  nop                                                                                                                #  118   0x3b82a  1      
  callq .__cxa_guard_release                                                                                         #  119   0x3b82b  5      
  jmpq .L_3b900                                                                                                      #  120   0x3b830  5      
  nop                                                                                                                #  121   0x3b835  1      
  nop                                                                                                                #  122   0x3b836  1      
.L_3b9a0:                                                                                                            #        0x3b837  0      
  movl $0x10030d60, %edi                                                                                             #  123   0x3b837  5      
  movl %eax, %r12d                                                                                                   #  124   0x3b83c  3      
  nop                                                                                                                #  125   0x3b83f  1      
  nop                                                                                                                #  126   0x3b840  1      
  callq .__cxa_guard_abort                                                                                           #  127   0x3b841  5      
.L_3b9c0:                                                                                                            #        0x3b846  0      
  movl %ebx, %edi                                                                                                    #  128   0x3b846  2      
  nop                                                                                                                #  129   0x3b848  1      
  nop                                                                                                                #  130   0x3b849  1      
  callq ._ZN2pp10InputEventD2Ev                                                                                      #  131   0x3b84a  5      
  movl %r12d, %edi                                                                                                   #  132   0x3b84f  3      
  nop                                                                                                                #  133   0x3b852  1      
  nop                                                                                                                #  134   0x3b853  1      
  callq ._Unwind_Resume                                                                                              #  135   0x3b854  5      
  movl %eax, %r12d                                                                                                   #  136   0x3b859  3      
  jmpq .L_3b9c0                                                                                                      #  137   0x3b85c  5      
  nop                                                                                                                #  138   0x3b861  1      
  nop                                                                                                                #  139   0x3b862  1      
  jmpq .L_3b9a0                                                                                                      #  140   0x3b863  5      
  nop                                                                                                                #  141   0x3b868  1      
  nop                                                                                                                #  142   0x3b869  1      
  nop                                                                                                                #  143   0x3b86a  1      
                                                                                                                                              
.size _ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_, .-_ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_

