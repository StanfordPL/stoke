  .text
  .globl _ZN2pp15MouseInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_
  .type _ZN2pp15MouseInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_, @function

#! file-offset 0x3ba40
#! rip-offset  0x3ba40
#! capacity    928 bytes

# Text                                                                                                               #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_:  #        0x3ba40  0      
  movq %rbx, -0x20(%rsp)                                                                                             #  1     0x3ba40  5      
  movl %edi, %ebx                                                                                                    #  2     0x3ba45  2      
  movq %r12, -0x18(%rsp)                                                                                             #  3     0x3ba47  5      
  movq %r13, -0x10(%rsp)                                                                                             #  4     0x3ba4c  5      
  movq %r14, -0x8(%rsp)                                                                                              #  5     0x3ba51  5      
  movl %ebx, %edi                                                                                                    #  6     0x3ba56  2      
  subl $0x58, %esp                                                                                                   #  7     0x3ba58  3      
  addq %r15, %rsp                                                                                                    #  8     0x3ba5b  3      
  xchgw %ax, %ax                                                                                                     #  9     0x3ba5e  3      
  movl %esi, %r13d                                                                                                   #  10    0x3ba61  3      
  movl %r9d, %r14d                                                                                                   #  11    0x3ba64  3      
  movl %edx, 0x1c(%rsp)                                                                                              #  12    0x3ba67  4      
  movsd %xmm0, 0x20(%rsp)                                                                                            #  13    0x3ba6b  6      
  movl %ecx, 0x28(%rsp)                                                                                              #  14    0x3ba71  4      
  movl %r8d, 0x2c(%rsp)                                                                                              #  15    0x3ba75  5      
  movl 0x68(%rsp), %r12d                                                                                             #  16    0x3ba7a  5      
  xchgw %ax, %ax                                                                                                     #  17    0x3ba7f  3      
  nop                                                                                                                #  18    0x3ba82  1      
  nop                                                                                                                #  19    0x3ba83  1      
  callq ._ZN2pp10InputEventC2Ev                                                                                      #  20    0x3ba84  5      
  movl %ebx, %ebx                                                                                                    #  21    0x3ba89  2      
  movl $0x10020848, (%r15,%rbx,1)                                                                                    #  22    0x3ba8b  8      
  cmpb $0x0, 0xfff52c6(%rip)                                                                                         #  23    0x3ba93  7      
  je .L_3bb20                                                                                                        #  24    0x3ba9a  6      
  nop                                                                                                                #  25    0x3baa0  1      
.L_3bac0:                                                                                                            #        0x3baa1  0      
  movl 0xfff52c1(%rip), %eax                                                                                         #  26    0x3baa1  6      
  testq %rax, %rax                                                                                                   #  27    0x3baa7  3      
  jne .L_3bbc0                                                                                                       #  28    0x3baaa  6      
  xchgw %ax, %ax                                                                                                     #  29    0x3bab0  3      
  nop                                                                                                                #  30    0x3bab3  1      
.L_3bae0:                                                                                                            #        0x3bab4  0      
  movq 0x38(%rsp), %rbx                                                                                              #  31    0x3bab4  5      
  movq 0x40(%rsp), %r12                                                                                              #  32    0x3bab9  5      
  movq 0x48(%rsp), %r13                                                                                              #  33    0x3babe  5      
  movq 0x50(%rsp), %r14                                                                                              #  34    0x3bac3  5      
  addl $0x58, %esp                                                                                                   #  35    0x3bac8  3      
  addq %r15, %rsp                                                                                                    #  36    0x3bacb  3      
  popq %r11                                                                                                          #  37    0x3bace  3      
  nop                                                                                                                #  38    0x3bad1  1      
  andl $0xffffffe0, %r11d                                                                                            #  39    0x3bad2  7      
  addq %r15, %r11                                                                                                    #  40    0x3bad9  3      
  jmpq %r11                                                                                                          #  41    0x3badc  3      
  nop                                                                                                                #  42    0x3badf  1      
  nop                                                                                                                #  43    0x3bae0  1      
.L_3bb20:                                                                                                            #        0x3bae1  0      
  movl $0x10030d60, %edi                                                                                             #  44    0x3bae1  5      
  nop                                                                                                                #  45    0x3bae6  1      
  nop                                                                                                                #  46    0x3bae7  1      
  callq .__cxa_guard_acquire                                                                                         #  47    0x3bae8  5      
  testl %eax, %eax                                                                                                   #  48    0x3baed  2      
  je .L_3bac0                                                                                                        #  49    0x3baef  6      
  nop                                                                                                                #  50    0x3baf5  1      
  nop                                                                                                                #  51    0x3baf6  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  52    0x3baf7  5      
  movl %eax, %edi                                                                                                    #  53    0x3bafc  2      
  movl $0x100206f0, %esi                                                                                             #  54    0x3bafe  5      
  nop                                                                                                                #  55    0x3bb03  1      
  nop                                                                                                                #  56    0x3bb04  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  57    0x3bb05  5      
  movl $0x10030d60, %edi                                                                                             #  58    0x3bb0a  5      
  movl %eax, 0xfff5253(%rip)                                                                                         #  59    0x3bb0f  6      
  nop                                                                                                                #  60    0x3bb15  1      
  nop                                                                                                                #  61    0x3bb16  1      
  callq .__cxa_guard_release                                                                                         #  62    0x3bb17  5      
  movl 0xfff5246(%rip), %eax                                                                                         #  63    0x3bb1c  6      
  testq %rax, %rax                                                                                                   #  64    0x3bb22  3      
  je .L_3bae0                                                                                                        #  65    0x3bb25  6      
  xchgw %ax, %ax                                                                                                     #  66    0x3bb2b  3      
  nop                                                                                                                #  67    0x3bb2e  1      
.L_3bbc0:                                                                                                            #        0x3bb2f  0      
  cmpb $0x0, 0xfff522a(%rip)                                                                                         #  68    0x3bb2f  7      
  je .L_3bc60                                                                                                        #  69    0x3bb36  6      
  nop                                                                                                                #  70    0x3bb3c  1      
  nop                                                                                                                #  71    0x3bb3d  1      
.L_3bbe0:                                                                                                            #        0x3bb3e  0      
  movl %r12d, (%rsp)                                                                                                 #  72    0x3bb3e  4      
  movl %eax, %eax                                                                                                    #  73    0x3bb42  2      
  movl (%r15,%rax,1), %eax                                                                                           #  74    0x3bb44  4      
  movl %r14d, %r8d                                                                                                   #  75    0x3bb48  3      
  movl 0x60(%rsp), %r9d                                                                                              #  76    0x3bb4b  5      
  movl 0x2c(%rsp), %ecx                                                                                              #  77    0x3bb50  4      
  movl 0x28(%rsp), %edx                                                                                              #  78    0x3bb54  4      
  movsd 0x20(%rsp), %xmm0                                                                                            #  79    0x3bb58  6      
  movl 0x1c(%rsp), %esi                                                                                              #  80    0x3bb5e  4      
  movl %r13d, %r13d                                                                                                  #  81    0x3bb62  3      
  movl (%r15,%r13,1), %edi                                                                                           #  82    0x3bb65  4      
  nop                                                                                                                #  83    0x3bb69  1      
  andl $0xffffffe0, %eax                                                                                             #  84    0x3bb6a  5      
  addq %r15, %rax                                                                                                    #  85    0x3bb6f  3      
  callq %rax                                                                                                         #  86    0x3bb72  2      
  movl %eax, %esi                                                                                                    #  87    0x3bb74  2      
  movl %ebx, %edi                                                                                                    #  88    0x3bb76  2      
  nop                                                                                                                #  89    0x3bb78  1      
  nop                                                                                                                #  90    0x3bb79  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                                                   #  91    0x3bb7a  5      
  jmpq .L_3bae0                                                                                                      #  92    0x3bb7f  5      
  nop                                                                                                                #  93    0x3bb84  1      
  nop                                                                                                                #  94    0x3bb85  1      
.L_3bc60:                                                                                                            #        0x3bb86  0      
  movl $0x10030d60, %edi                                                                                             #  95    0x3bb86  5      
  nop                                                                                                                #  96    0x3bb8b  1      
  nop                                                                                                                #  97    0x3bb8c  1      
  callq .__cxa_guard_acquire                                                                                         #  98    0x3bb8d  5      
  testl %eax, %eax                                                                                                   #  99    0x3bb92  2      
  jne .L_3bcc0                                                                                                       #  100   0x3bb94  6      
  nop                                                                                                                #  101   0x3bb9a  1      
  nop                                                                                                                #  102   0x3bb9b  1      
.L_3bca0:                                                                                                            #        0x3bb9c  0      
  movl 0xfff51c6(%rip), %eax                                                                                         #  103   0x3bb9c  6      
  jmpq .L_3bbe0                                                                                                      #  104   0x3bba2  5      
  nop                                                                                                                #  105   0x3bba7  1      
  nop                                                                                                                #  106   0x3bba8  1      
.L_3bcc0:                                                                                                            #        0x3bba9  0      
  nop                                                                                                                #  107   0x3bba9  1      
  nop                                                                                                                #  108   0x3bbaa  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  109   0x3bbab  5      
  movl %eax, %edi                                                                                                    #  110   0x3bbb0  2      
  movl $0x100206f0, %esi                                                                                             #  111   0x3bbb2  5      
  nop                                                                                                                #  112   0x3bbb7  1      
  nop                                                                                                                #  113   0x3bbb8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  114   0x3bbb9  5      
  movl $0x10030d60, %edi                                                                                             #  115   0x3bbbe  5      
  movl %eax, 0xfff519f(%rip)                                                                                         #  116   0x3bbc3  6      
  nop                                                                                                                #  117   0x3bbc9  1      
  nop                                                                                                                #  118   0x3bbca  1      
  callq .__cxa_guard_release                                                                                         #  119   0x3bbcb  5      
  jmpq .L_3bca0                                                                                                      #  120   0x3bbd0  5      
  nop                                                                                                                #  121   0x3bbd5  1      
  nop                                                                                                                #  122   0x3bbd6  1      
.L_3bd40:                                                                                                            #        0x3bbd7  0      
  movl $0x10030d60, %edi                                                                                             #  123   0x3bbd7  5      
  movl %eax, %r12d                                                                                                   #  124   0x3bbdc  3      
  nop                                                                                                                #  125   0x3bbdf  1      
  nop                                                                                                                #  126   0x3bbe0  1      
  callq .__cxa_guard_abort                                                                                           #  127   0x3bbe1  5      
.L_3bd60:                                                                                                            #        0x3bbe6  0      
  movl %ebx, %edi                                                                                                    #  128   0x3bbe6  2      
  nop                                                                                                                #  129   0x3bbe8  1      
  nop                                                                                                                #  130   0x3bbe9  1      
  callq ._ZN2pp10InputEventD2Ev                                                                                      #  131   0x3bbea  5      
  movl %r12d, %edi                                                                                                   #  132   0x3bbef  3      
  nop                                                                                                                #  133   0x3bbf2  1      
  nop                                                                                                                #  134   0x3bbf3  1      
  callq ._Unwind_Resume                                                                                              #  135   0x3bbf4  5      
  movl %eax, %r12d                                                                                                   #  136   0x3bbf9  3      
  jmpq .L_3bd60                                                                                                      #  137   0x3bbfc  5      
  nop                                                                                                                #  138   0x3bc01  1      
  nop                                                                                                                #  139   0x3bc02  1      
  jmpq .L_3bd40                                                                                                      #  140   0x3bc03  5      
  nop                                                                                                                #  141   0x3bc08  1      
  nop                                                                                                                #  142   0x3bc09  1      
  nop                                                                                                                #  143   0x3bc0a  1      
                                                                                                                                              
.size _ZN2pp15MouseInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_, .-_ZN2pp15MouseInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_

