  .text
  .globl _ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_
  .type _ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_, @function

#! file-offset 0x3b740
#! rip-offset  0x3b740
#! capacity    928 bytes

# Text                                                                                                               #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_:  #        0x3b740  0      
  movq %rbx, -0x20(%rsp)                                                                                             #  1     0x3b740  5      
  movl %edi, %ebx                                                                                                    #  2     0x3b745  2      
  movq %r12, -0x18(%rsp)                                                                                             #  3     0x3b747  5      
  movq %r13, -0x10(%rsp)                                                                                             #  4     0x3b74c  5      
  movq %r14, -0x8(%rsp)                                                                                              #  5     0x3b751  5      
  movl %ebx, %edi                                                                                                    #  6     0x3b756  2      
  subl $0x58, %esp                                                                                                   #  7     0x3b758  3      
  addq %r15, %rsp                                                                                                    #  8     0x3b75b  3      
  xchgw %ax, %ax                                                                                                     #  9     0x3b75e  3      
  movl %esi, %r13d                                                                                                   #  10    0x3b761  3      
  movl %r9d, %r14d                                                                                                   #  11    0x3b764  3      
  movl %edx, 0x1c(%rsp)                                                                                              #  12    0x3b767  4      
  movsd %xmm0, 0x20(%rsp)                                                                                            #  13    0x3b76b  6      
  movl %ecx, 0x28(%rsp)                                                                                              #  14    0x3b771  4      
  movl %r8d, 0x2c(%rsp)                                                                                              #  15    0x3b775  5      
  movl 0x68(%rsp), %r12d                                                                                             #  16    0x3b77a  5      
  xchgw %ax, %ax                                                                                                     #  17    0x3b77f  3      
  nop                                                                                                                #  18    0x3b782  1      
  nop                                                                                                                #  19    0x3b783  1      
  callq ._ZN2pp10InputEventC2Ev                                                                                      #  20    0x3b784  5      
  movl %ebx, %ebx                                                                                                    #  21    0x3b789  2      
  movl $0x10020848, (%r15,%rbx,1)                                                                                    #  22    0x3b78b  8      
  cmpb $0x0, 0xfff55c6(%rip)                                                                                         #  23    0x3b793  7      
  je .L_3b820                                                                                                        #  24    0x3b79a  6      
  nop                                                                                                                #  25    0x3b7a0  1      
.L_3b7c0:                                                                                                            #        0x3b7a1  0      
  movl 0xfff55c1(%rip), %eax                                                                                         #  26    0x3b7a1  6      
  testq %rax, %rax                                                                                                   #  27    0x3b7a7  3      
  jne .L_3b8c0                                                                                                       #  28    0x3b7aa  6      
  xchgw %ax, %ax                                                                                                     #  29    0x3b7b0  3      
  nop                                                                                                                #  30    0x3b7b3  1      
.L_3b7e0:                                                                                                            #        0x3b7b4  0      
  movq 0x38(%rsp), %rbx                                                                                              #  31    0x3b7b4  5      
  movq 0x40(%rsp), %r12                                                                                              #  32    0x3b7b9  5      
  movq 0x48(%rsp), %r13                                                                                              #  33    0x3b7be  5      
  movq 0x50(%rsp), %r14                                                                                              #  34    0x3b7c3  5      
  addl $0x58, %esp                                                                                                   #  35    0x3b7c8  3      
  addq %r15, %rsp                                                                                                    #  36    0x3b7cb  3      
  popq %r11                                                                                                          #  37    0x3b7ce  3      
  nop                                                                                                                #  38    0x3b7d1  1      
  andl $0xffffffe0, %r11d                                                                                            #  39    0x3b7d2  7      
  addq %r15, %r11                                                                                                    #  40    0x3b7d9  3      
  jmpq %r11                                                                                                          #  41    0x3b7dc  3      
  nop                                                                                                                #  42    0x3b7df  1      
  nop                                                                                                                #  43    0x3b7e0  1      
.L_3b820:                                                                                                            #        0x3b7e1  0      
  movl $0x10030d60, %edi                                                                                             #  44    0x3b7e1  5      
  nop                                                                                                                #  45    0x3b7e6  1      
  nop                                                                                                                #  46    0x3b7e7  1      
  callq .__cxa_guard_acquire                                                                                         #  47    0x3b7e8  5      
  testl %eax, %eax                                                                                                   #  48    0x3b7ed  2      
  je .L_3b7c0                                                                                                        #  49    0x3b7ef  6      
  nop                                                                                                                #  50    0x3b7f5  1      
  nop                                                                                                                #  51    0x3b7f6  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  52    0x3b7f7  5      
  movl %eax, %edi                                                                                                    #  53    0x3b7fc  2      
  movl $0x100206f0, %esi                                                                                             #  54    0x3b7fe  5      
  nop                                                                                                                #  55    0x3b803  1      
  nop                                                                                                                #  56    0x3b804  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  57    0x3b805  5      
  movl $0x10030d60, %edi                                                                                             #  58    0x3b80a  5      
  movl %eax, 0xfff5553(%rip)                                                                                         #  59    0x3b80f  6      
  nop                                                                                                                #  60    0x3b815  1      
  nop                                                                                                                #  61    0x3b816  1      
  callq .__cxa_guard_release                                                                                         #  62    0x3b817  5      
  movl 0xfff5546(%rip), %eax                                                                                         #  63    0x3b81c  6      
  testq %rax, %rax                                                                                                   #  64    0x3b822  3      
  je .L_3b7e0                                                                                                        #  65    0x3b825  6      
  xchgw %ax, %ax                                                                                                     #  66    0x3b82b  3      
  nop                                                                                                                #  67    0x3b82e  1      
.L_3b8c0:                                                                                                            #        0x3b82f  0      
  cmpb $0x0, 0xfff552a(%rip)                                                                                         #  68    0x3b82f  7      
  je .L_3b960                                                                                                        #  69    0x3b836  6      
  nop                                                                                                                #  70    0x3b83c  1      
  nop                                                                                                                #  71    0x3b83d  1      
.L_3b8e0:                                                                                                            #        0x3b83e  0      
  movl %r12d, (%rsp)                                                                                                 #  72    0x3b83e  4      
  movl %eax, %eax                                                                                                    #  73    0x3b842  2      
  movl (%r15,%rax,1), %eax                                                                                           #  74    0x3b844  4      
  movl %r14d, %r8d                                                                                                   #  75    0x3b848  3      
  movl 0x60(%rsp), %r9d                                                                                              #  76    0x3b84b  5      
  movl 0x2c(%rsp), %ecx                                                                                              #  77    0x3b850  4      
  movl 0x28(%rsp), %edx                                                                                              #  78    0x3b854  4      
  movsd 0x20(%rsp), %xmm0                                                                                            #  79    0x3b858  6      
  movl 0x1c(%rsp), %esi                                                                                              #  80    0x3b85e  4      
  movl %r13d, %r13d                                                                                                  #  81    0x3b862  3      
  movl (%r15,%r13,1), %edi                                                                                           #  82    0x3b865  4      
  nop                                                                                                                #  83    0x3b869  1      
  andl $0xffffffe0, %eax                                                                                             #  84    0x3b86a  5      
  addq %r15, %rax                                                                                                    #  85    0x3b86f  3      
  callq %rax                                                                                                         #  86    0x3b872  2      
  movl %eax, %esi                                                                                                    #  87    0x3b874  2      
  movl %ebx, %edi                                                                                                    #  88    0x3b876  2      
  nop                                                                                                                #  89    0x3b878  1      
  nop                                                                                                                #  90    0x3b879  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                                                   #  91    0x3b87a  5      
  jmpq .L_3b7e0                                                                                                      #  92    0x3b87f  5      
  nop                                                                                                                #  93    0x3b884  1      
  nop                                                                                                                #  94    0x3b885  1      
.L_3b960:                                                                                                            #        0x3b886  0      
  movl $0x10030d60, %edi                                                                                             #  95    0x3b886  5      
  nop                                                                                                                #  96    0x3b88b  1      
  nop                                                                                                                #  97    0x3b88c  1      
  callq .__cxa_guard_acquire                                                                                         #  98    0x3b88d  5      
  testl %eax, %eax                                                                                                   #  99    0x3b892  2      
  jne .L_3b9c0                                                                                                       #  100   0x3b894  6      
  nop                                                                                                                #  101   0x3b89a  1      
  nop                                                                                                                #  102   0x3b89b  1      
.L_3b9a0:                                                                                                            #        0x3b89c  0      
  movl 0xfff54c6(%rip), %eax                                                                                         #  103   0x3b89c  6      
  jmpq .L_3b8e0                                                                                                      #  104   0x3b8a2  5      
  nop                                                                                                                #  105   0x3b8a7  1      
  nop                                                                                                                #  106   0x3b8a8  1      
.L_3b9c0:                                                                                                            #        0x3b8a9  0      
  nop                                                                                                                #  107   0x3b8a9  1      
  nop                                                                                                                #  108   0x3b8aa  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  109   0x3b8ab  5      
  movl %eax, %edi                                                                                                    #  110   0x3b8b0  2      
  movl $0x100206f0, %esi                                                                                             #  111   0x3b8b2  5      
  nop                                                                                                                #  112   0x3b8b7  1      
  nop                                                                                                                #  113   0x3b8b8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  114   0x3b8b9  5      
  movl $0x10030d60, %edi                                                                                             #  115   0x3b8be  5      
  movl %eax, 0xfff549f(%rip)                                                                                         #  116   0x3b8c3  6      
  nop                                                                                                                #  117   0x3b8c9  1      
  nop                                                                                                                #  118   0x3b8ca  1      
  callq .__cxa_guard_release                                                                                         #  119   0x3b8cb  5      
  jmpq .L_3b9a0                                                                                                      #  120   0x3b8d0  5      
  nop                                                                                                                #  121   0x3b8d5  1      
  nop                                                                                                                #  122   0x3b8d6  1      
.L_3ba40:                                                                                                            #        0x3b8d7  0      
  movl $0x10030d60, %edi                                                                                             #  123   0x3b8d7  5      
  movl %eax, %r12d                                                                                                   #  124   0x3b8dc  3      
  nop                                                                                                                #  125   0x3b8df  1      
  nop                                                                                                                #  126   0x3b8e0  1      
  callq .__cxa_guard_abort                                                                                           #  127   0x3b8e1  5      
.L_3ba60:                                                                                                            #        0x3b8e6  0      
  movl %ebx, %edi                                                                                                    #  128   0x3b8e6  2      
  nop                                                                                                                #  129   0x3b8e8  1      
  nop                                                                                                                #  130   0x3b8e9  1      
  callq ._ZN2pp10InputEventD2Ev                                                                                      #  131   0x3b8ea  5      
  movl %r12d, %edi                                                                                                   #  132   0x3b8ef  3      
  nop                                                                                                                #  133   0x3b8f2  1      
  nop                                                                                                                #  134   0x3b8f3  1      
  callq ._Unwind_Resume                                                                                              #  135   0x3b8f4  5      
  movl %eax, %r12d                                                                                                   #  136   0x3b8f9  3      
  jmpq .L_3ba60                                                                                                      #  137   0x3b8fc  5      
  nop                                                                                                                #  138   0x3b901  1      
  nop                                                                                                                #  139   0x3b902  1      
  jmpq .L_3ba40                                                                                                      #  140   0x3b903  5      
  nop                                                                                                                #  141   0x3b908  1      
  nop                                                                                                                #  142   0x3b909  1      
  nop                                                                                                                #  143   0x3b90a  1      
                                                                                                                                              
.size _ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_, .-_ZN2pp15MouseInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_

