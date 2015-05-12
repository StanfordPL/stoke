  .text
  .globl _ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_
  .type _ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_, @function

#! file-offset 0x3b6c0
#! rip-offset  0x3b6c0
#! capacity    928 bytes

# Text                                                                                                               #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_:  #        0x3b6c0  0      
  movq %rbx, -0x20(%rsp)                                                                                             #  1     0x3b6c0  5      
  movl %edi, %ebx                                                                                                    #  2     0x3b6c5  2      
  movq %r12, -0x18(%rsp)                                                                                             #  3     0x3b6c7  5      
  movq %r13, -0x10(%rsp)                                                                                             #  4     0x3b6cc  5      
  movq %r14, -0x8(%rsp)                                                                                              #  5     0x3b6d1  5      
  movl %ebx, %edi                                                                                                    #  6     0x3b6d6  2      
  subl $0x58, %esp                                                                                                   #  7     0x3b6d8  3      
  addq %r15, %rsp                                                                                                    #  8     0x3b6db  3      
  xchgw %ax, %ax                                                                                                     #  9     0x3b6de  3      
  movl %esi, %r13d                                                                                                   #  10    0x3b6e1  3      
  movl %r9d, %r14d                                                                                                   #  11    0x3b6e4  3      
  movl %edx, 0x1c(%rsp)                                                                                              #  12    0x3b6e7  4      
  movsd %xmm0, 0x20(%rsp)                                                                                            #  13    0x3b6eb  6      
  movl %ecx, 0x28(%rsp)                                                                                              #  14    0x3b6f1  4      
  movl %r8d, 0x2c(%rsp)                                                                                              #  15    0x3b6f5  5      
  movl 0x68(%rsp), %r12d                                                                                             #  16    0x3b6fa  5      
  xchgw %ax, %ax                                                                                                     #  17    0x3b6ff  3      
  nop                                                                                                                #  18    0x3b702  1      
  nop                                                                                                                #  19    0x3b703  1      
  callq ._ZN2pp10InputEventC2Ev                                                                                      #  20    0x3b704  5      
  movl %ebx, %ebx                                                                                                    #  21    0x3b709  2      
  movl $0x10020848, (%r15,%rbx,1)                                                                                    #  22    0x3b70b  8      
  cmpb $0x0, 0xfff5646(%rip)                                                                                         #  23    0x3b713  7      
  je .L_3b7a0                                                                                                        #  24    0x3b71a  6      
  nop                                                                                                                #  25    0x3b720  1      
.L_3b740:                                                                                                            #        0x3b721  0      
  movl 0xfff5641(%rip), %eax                                                                                         #  26    0x3b721  6      
  testq %rax, %rax                                                                                                   #  27    0x3b727  3      
  jne .L_3b840                                                                                                       #  28    0x3b72a  6      
  xchgw %ax, %ax                                                                                                     #  29    0x3b730  3      
  nop                                                                                                                #  30    0x3b733  1      
.L_3b760:                                                                                                            #        0x3b734  0      
  movq 0x38(%rsp), %rbx                                                                                              #  31    0x3b734  5      
  movq 0x40(%rsp), %r12                                                                                              #  32    0x3b739  5      
  movq 0x48(%rsp), %r13                                                                                              #  33    0x3b73e  5      
  movq 0x50(%rsp), %r14                                                                                              #  34    0x3b743  5      
  addl $0x58, %esp                                                                                                   #  35    0x3b748  3      
  addq %r15, %rsp                                                                                                    #  36    0x3b74b  3      
  popq %r11                                                                                                          #  37    0x3b74e  3      
  nop                                                                                                                #  38    0x3b751  1      
  andl $0xffffffe0, %r11d                                                                                            #  39    0x3b752  7      
  addq %r15, %r11                                                                                                    #  40    0x3b759  3      
  jmpq %r11                                                                                                          #  41    0x3b75c  3      
  nop                                                                                                                #  42    0x3b75f  1      
  nop                                                                                                                #  43    0x3b760  1      
.L_3b7a0:                                                                                                            #        0x3b761  0      
  movl $0x10030d60, %edi                                                                                             #  44    0x3b761  5      
  nop                                                                                                                #  45    0x3b766  1      
  nop                                                                                                                #  46    0x3b767  1      
  callq .__cxa_guard_acquire                                                                                         #  47    0x3b768  5      
  testl %eax, %eax                                                                                                   #  48    0x3b76d  2      
  je .L_3b740                                                                                                        #  49    0x3b76f  6      
  nop                                                                                                                #  50    0x3b775  1      
  nop                                                                                                                #  51    0x3b776  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  52    0x3b777  5      
  movl %eax, %edi                                                                                                    #  53    0x3b77c  2      
  movl $0x100206f0, %esi                                                                                             #  54    0x3b77e  5      
  nop                                                                                                                #  55    0x3b783  1      
  nop                                                                                                                #  56    0x3b784  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  57    0x3b785  5      
  movl $0x10030d60, %edi                                                                                             #  58    0x3b78a  5      
  movl %eax, 0xfff55d3(%rip)                                                                                         #  59    0x3b78f  6      
  nop                                                                                                                #  60    0x3b795  1      
  nop                                                                                                                #  61    0x3b796  1      
  callq .__cxa_guard_release                                                                                         #  62    0x3b797  5      
  movl 0xfff55c6(%rip), %eax                                                                                         #  63    0x3b79c  6      
  testq %rax, %rax                                                                                                   #  64    0x3b7a2  3      
  je .L_3b760                                                                                                        #  65    0x3b7a5  6      
  xchgw %ax, %ax                                                                                                     #  66    0x3b7ab  3      
  nop                                                                                                                #  67    0x3b7ae  1      
.L_3b840:                                                                                                            #        0x3b7af  0      
  cmpb $0x0, 0xfff55aa(%rip)                                                                                         #  68    0x3b7af  7      
  je .L_3b8e0                                                                                                        #  69    0x3b7b6  6      
  nop                                                                                                                #  70    0x3b7bc  1      
  nop                                                                                                                #  71    0x3b7bd  1      
.L_3b860:                                                                                                            #        0x3b7be  0      
  movl %r12d, (%rsp)                                                                                                 #  72    0x3b7be  4      
  movl %eax, %eax                                                                                                    #  73    0x3b7c2  2      
  movl (%r15,%rax,1), %eax                                                                                           #  74    0x3b7c4  4      
  movl %r14d, %r8d                                                                                                   #  75    0x3b7c8  3      
  movl 0x60(%rsp), %r9d                                                                                              #  76    0x3b7cb  5      
  movl 0x2c(%rsp), %ecx                                                                                              #  77    0x3b7d0  4      
  movl 0x28(%rsp), %edx                                                                                              #  78    0x3b7d4  4      
  movsd 0x20(%rsp), %xmm0                                                                                            #  79    0x3b7d8  6      
  movl 0x1c(%rsp), %esi                                                                                              #  80    0x3b7de  4      
  movl %r13d, %r13d                                                                                                  #  81    0x3b7e2  3      
  movl (%r15,%r13,1), %edi                                                                                           #  82    0x3b7e5  4      
  nop                                                                                                                #  83    0x3b7e9  1      
  andl $0xffffffe0, %eax                                                                                             #  84    0x3b7ea  5      
  addq %r15, %rax                                                                                                    #  85    0x3b7ef  3      
  callq %rax                                                                                                         #  86    0x3b7f2  2      
  movl %eax, %esi                                                                                                    #  87    0x3b7f4  2      
  movl %ebx, %edi                                                                                                    #  88    0x3b7f6  2      
  nop                                                                                                                #  89    0x3b7f8  1      
  nop                                                                                                                #  90    0x3b7f9  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                                                   #  91    0x3b7fa  5      
  jmpq .L_3b760                                                                                                      #  92    0x3b7ff  5      
  nop                                                                                                                #  93    0x3b804  1      
  nop                                                                                                                #  94    0x3b805  1      
.L_3b8e0:                                                                                                            #        0x3b806  0      
  movl $0x10030d60, %edi                                                                                             #  95    0x3b806  5      
  nop                                                                                                                #  96    0x3b80b  1      
  nop                                                                                                                #  97    0x3b80c  1      
  callq .__cxa_guard_acquire                                                                                         #  98    0x3b80d  5      
  testl %eax, %eax                                                                                                   #  99    0x3b812  2      
  jne .L_3b940                                                                                                       #  100   0x3b814  6      
  nop                                                                                                                #  101   0x3b81a  1      
  nop                                                                                                                #  102   0x3b81b  1      
.L_3b920:                                                                                                            #        0x3b81c  0      
  movl 0xfff5546(%rip), %eax                                                                                         #  103   0x3b81c  6      
  jmpq .L_3b860                                                                                                      #  104   0x3b822  5      
  nop                                                                                                                #  105   0x3b827  1      
  nop                                                                                                                #  106   0x3b828  1      
.L_3b940:                                                                                                            #        0x3b829  0      
  nop                                                                                                                #  107   0x3b829  1      
  nop                                                                                                                #  108   0x3b82a  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  109   0x3b82b  5      
  movl %eax, %edi                                                                                                    #  110   0x3b830  2      
  movl $0x100206f0, %esi                                                                                             #  111   0x3b832  5      
  nop                                                                                                                #  112   0x3b837  1      
  nop                                                                                                                #  113   0x3b838  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  114   0x3b839  5      
  movl $0x10030d60, %edi                                                                                             #  115   0x3b83e  5      
  movl %eax, 0xfff551f(%rip)                                                                                         #  116   0x3b843  6      
  nop                                                                                                                #  117   0x3b849  1      
  nop                                                                                                                #  118   0x3b84a  1      
  callq .__cxa_guard_release                                                                                         #  119   0x3b84b  5      
  jmpq .L_3b920                                                                                                      #  120   0x3b850  5      
  nop                                                                                                                #  121   0x3b855  1      
  nop                                                                                                                #  122   0x3b856  1      
.L_3b9c0:                                                                                                            #        0x3b857  0      
  movl $0x10030d60, %edi                                                                                             #  123   0x3b857  5      
  movl %eax, %r12d                                                                                                   #  124   0x3b85c  3      
  nop                                                                                                                #  125   0x3b85f  1      
  nop                                                                                                                #  126   0x3b860  1      
  callq .__cxa_guard_abort                                                                                           #  127   0x3b861  5      
.L_3b9e0:                                                                                                            #        0x3b866  0      
  movl %ebx, %edi                                                                                                    #  128   0x3b866  2      
  nop                                                                                                                #  129   0x3b868  1      
  nop                                                                                                                #  130   0x3b869  1      
  callq ._ZN2pp10InputEventD2Ev                                                                                      #  131   0x3b86a  5      
  movl %r12d, %edi                                                                                                   #  132   0x3b86f  3      
  nop                                                                                                                #  133   0x3b872  1      
  nop                                                                                                                #  134   0x3b873  1      
  callq ._Unwind_Resume                                                                                              #  135   0x3b874  5      
  movl %eax, %r12d                                                                                                   #  136   0x3b879  3      
  jmpq .L_3b9e0                                                                                                      #  137   0x3b87c  5      
  nop                                                                                                                #  138   0x3b881  1      
  nop                                                                                                                #  139   0x3b882  1      
  jmpq .L_3b9c0                                                                                                      #  140   0x3b883  5      
  nop                                                                                                                #  141   0x3b888  1      
  nop                                                                                                                #  142   0x3b889  1      
  nop                                                                                                                #  143   0x3b88a  1      
                                                                                                                                              
.size _ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_, .-_ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_

