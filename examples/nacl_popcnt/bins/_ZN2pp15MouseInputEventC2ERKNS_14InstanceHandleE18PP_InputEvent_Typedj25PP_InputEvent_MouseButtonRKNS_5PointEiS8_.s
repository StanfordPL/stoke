  .text
  .globl _ZN2pp15MouseInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_
  .type _ZN2pp15MouseInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_, @function

#! file-offset 0x3bae0
#! rip-offset  0x3bae0
#! capacity    928 bytes

# Text                                                                                                               #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_:  #        0x3bae0  0      
  movq %rbx, -0x20(%rsp)                                                                                             #  1     0x3bae0  5      
  movl %edi, %ebx                                                                                                    #  2     0x3bae5  2      
  movq %r12, -0x18(%rsp)                                                                                             #  3     0x3bae7  5      
  movq %r13, -0x10(%rsp)                                                                                             #  4     0x3baec  5      
  movq %r14, -0x8(%rsp)                                                                                              #  5     0x3baf1  5      
  movl %ebx, %edi                                                                                                    #  6     0x3baf6  2      
  subl $0x58, %esp                                                                                                   #  7     0x3baf8  3      
  addq %r15, %rsp                                                                                                    #  8     0x3bafb  3      
  xchgw %ax, %ax                                                                                                     #  9     0x3bafe  3      
  movl %esi, %r13d                                                                                                   #  10    0x3bb01  3      
  movl %r9d, %r14d                                                                                                   #  11    0x3bb04  3      
  movl %edx, 0x1c(%rsp)                                                                                              #  12    0x3bb07  4      
  movsd %xmm0, 0x20(%rsp)                                                                                            #  13    0x3bb0b  6      
  movl %ecx, 0x28(%rsp)                                                                                              #  14    0x3bb11  4      
  movl %r8d, 0x2c(%rsp)                                                                                              #  15    0x3bb15  5      
  movl 0x68(%rsp), %r12d                                                                                             #  16    0x3bb1a  5      
  xchgw %ax, %ax                                                                                                     #  17    0x3bb1f  3      
  nop                                                                                                                #  18    0x3bb22  1      
  nop                                                                                                                #  19    0x3bb23  1      
  callq ._ZN2pp10InputEventC2Ev                                                                                      #  20    0x3bb24  5      
  movl %ebx, %ebx                                                                                                    #  21    0x3bb29  2      
  movl $0x10020848, (%r15,%rbx,1)                                                                                    #  22    0x3bb2b  8      
  cmpb $0x0, 0xfff5226(%rip)                                                                                         #  23    0x3bb33  7      
  je .L_3bbc0                                                                                                        #  24    0x3bb3a  6      
  nop                                                                                                                #  25    0x3bb40  1      
.L_3bb60:                                                                                                            #        0x3bb41  0      
  movl 0xfff5221(%rip), %eax                                                                                         #  26    0x3bb41  6      
  testq %rax, %rax                                                                                                   #  27    0x3bb47  3      
  jne .L_3bc60                                                                                                       #  28    0x3bb4a  6      
  xchgw %ax, %ax                                                                                                     #  29    0x3bb50  3      
  nop                                                                                                                #  30    0x3bb53  1      
.L_3bb80:                                                                                                            #        0x3bb54  0      
  movq 0x38(%rsp), %rbx                                                                                              #  31    0x3bb54  5      
  movq 0x40(%rsp), %r12                                                                                              #  32    0x3bb59  5      
  movq 0x48(%rsp), %r13                                                                                              #  33    0x3bb5e  5      
  movq 0x50(%rsp), %r14                                                                                              #  34    0x3bb63  5      
  addl $0x58, %esp                                                                                                   #  35    0x3bb68  3      
  addq %r15, %rsp                                                                                                    #  36    0x3bb6b  3      
  popq %r11                                                                                                          #  37    0x3bb6e  3      
  nop                                                                                                                #  38    0x3bb71  1      
  andl $0xffffffe0, %r11d                                                                                            #  39    0x3bb72  7      
  addq %r15, %r11                                                                                                    #  40    0x3bb79  3      
  jmpq %r11                                                                                                          #  41    0x3bb7c  3      
  nop                                                                                                                #  42    0x3bb7f  1      
  nop                                                                                                                #  43    0x3bb80  1      
.L_3bbc0:                                                                                                            #        0x3bb81  0      
  movl $0x10030d60, %edi                                                                                             #  44    0x3bb81  5      
  nop                                                                                                                #  45    0x3bb86  1      
  nop                                                                                                                #  46    0x3bb87  1      
  callq .__cxa_guard_acquire                                                                                         #  47    0x3bb88  5      
  testl %eax, %eax                                                                                                   #  48    0x3bb8d  2      
  je .L_3bb60                                                                                                        #  49    0x3bb8f  6      
  nop                                                                                                                #  50    0x3bb95  1      
  nop                                                                                                                #  51    0x3bb96  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  52    0x3bb97  5      
  movl %eax, %edi                                                                                                    #  53    0x3bb9c  2      
  movl $0x100206f0, %esi                                                                                             #  54    0x3bb9e  5      
  nop                                                                                                                #  55    0x3bba3  1      
  nop                                                                                                                #  56    0x3bba4  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  57    0x3bba5  5      
  movl $0x10030d60, %edi                                                                                             #  58    0x3bbaa  5      
  movl %eax, 0xfff51b3(%rip)                                                                                         #  59    0x3bbaf  6      
  nop                                                                                                                #  60    0x3bbb5  1      
  nop                                                                                                                #  61    0x3bbb6  1      
  callq .__cxa_guard_release                                                                                         #  62    0x3bbb7  5      
  movl 0xfff51a6(%rip), %eax                                                                                         #  63    0x3bbbc  6      
  testq %rax, %rax                                                                                                   #  64    0x3bbc2  3      
  je .L_3bb80                                                                                                        #  65    0x3bbc5  6      
  xchgw %ax, %ax                                                                                                     #  66    0x3bbcb  3      
  nop                                                                                                                #  67    0x3bbce  1      
.L_3bc60:                                                                                                            #        0x3bbcf  0      
  cmpb $0x0, 0xfff518a(%rip)                                                                                         #  68    0x3bbcf  7      
  je .L_3bd00                                                                                                        #  69    0x3bbd6  6      
  nop                                                                                                                #  70    0x3bbdc  1      
  nop                                                                                                                #  71    0x3bbdd  1      
.L_3bc80:                                                                                                            #        0x3bbde  0      
  movl %r12d, (%rsp)                                                                                                 #  72    0x3bbde  4      
  movl %eax, %eax                                                                                                    #  73    0x3bbe2  2      
  movl (%r15,%rax,1), %eax                                                                                           #  74    0x3bbe4  4      
  movl %r14d, %r8d                                                                                                   #  75    0x3bbe8  3      
  movl 0x60(%rsp), %r9d                                                                                              #  76    0x3bbeb  5      
  movl 0x2c(%rsp), %ecx                                                                                              #  77    0x3bbf0  4      
  movl 0x28(%rsp), %edx                                                                                              #  78    0x3bbf4  4      
  movsd 0x20(%rsp), %xmm0                                                                                            #  79    0x3bbf8  6      
  movl 0x1c(%rsp), %esi                                                                                              #  80    0x3bbfe  4      
  movl %r13d, %r13d                                                                                                  #  81    0x3bc02  3      
  movl (%r15,%r13,1), %edi                                                                                           #  82    0x3bc05  4      
  nop                                                                                                                #  83    0x3bc09  1      
  andl $0xffffffe0, %eax                                                                                             #  84    0x3bc0a  5      
  addq %r15, %rax                                                                                                    #  85    0x3bc0f  3      
  callq %rax                                                                                                         #  86    0x3bc12  2      
  movl %eax, %esi                                                                                                    #  87    0x3bc14  2      
  movl %ebx, %edi                                                                                                    #  88    0x3bc16  2      
  nop                                                                                                                #  89    0x3bc18  1      
  nop                                                                                                                #  90    0x3bc19  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                                                   #  91    0x3bc1a  5      
  jmpq .L_3bb80                                                                                                      #  92    0x3bc1f  5      
  nop                                                                                                                #  93    0x3bc24  1      
  nop                                                                                                                #  94    0x3bc25  1      
.L_3bd00:                                                                                                            #        0x3bc26  0      
  movl $0x10030d60, %edi                                                                                             #  95    0x3bc26  5      
  nop                                                                                                                #  96    0x3bc2b  1      
  nop                                                                                                                #  97    0x3bc2c  1      
  callq .__cxa_guard_acquire                                                                                         #  98    0x3bc2d  5      
  testl %eax, %eax                                                                                                   #  99    0x3bc32  2      
  jne .L_3bd60                                                                                                       #  100   0x3bc34  6      
  nop                                                                                                                #  101   0x3bc3a  1      
  nop                                                                                                                #  102   0x3bc3b  1      
.L_3bd40:                                                                                                            #        0x3bc3c  0      
  movl 0xfff5126(%rip), %eax                                                                                         #  103   0x3bc3c  6      
  jmpq .L_3bc80                                                                                                      #  104   0x3bc42  5      
  nop                                                                                                                #  105   0x3bc47  1      
  nop                                                                                                                #  106   0x3bc48  1      
.L_3bd60:                                                                                                            #        0x3bc49  0      
  nop                                                                                                                #  107   0x3bc49  1      
  nop                                                                                                                #  108   0x3bc4a  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  109   0x3bc4b  5      
  movl %eax, %edi                                                                                                    #  110   0x3bc50  2      
  movl $0x100206f0, %esi                                                                                             #  111   0x3bc52  5      
  nop                                                                                                                #  112   0x3bc57  1      
  nop                                                                                                                #  113   0x3bc58  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  114   0x3bc59  5      
  movl $0x10030d60, %edi                                                                                             #  115   0x3bc5e  5      
  movl %eax, 0xfff50ff(%rip)                                                                                         #  116   0x3bc63  6      
  nop                                                                                                                #  117   0x3bc69  1      
  nop                                                                                                                #  118   0x3bc6a  1      
  callq .__cxa_guard_release                                                                                         #  119   0x3bc6b  5      
  jmpq .L_3bd40                                                                                                      #  120   0x3bc70  5      
  nop                                                                                                                #  121   0x3bc75  1      
  nop                                                                                                                #  122   0x3bc76  1      
.L_3bde0:                                                                                                            #        0x3bc77  0      
  movl $0x10030d60, %edi                                                                                             #  123   0x3bc77  5      
  movl %eax, %r12d                                                                                                   #  124   0x3bc7c  3      
  nop                                                                                                                #  125   0x3bc7f  1      
  nop                                                                                                                #  126   0x3bc80  1      
  callq .__cxa_guard_abort                                                                                           #  127   0x3bc81  5      
.L_3be00:                                                                                                            #        0x3bc86  0      
  movl %ebx, %edi                                                                                                    #  128   0x3bc86  2      
  nop                                                                                                                #  129   0x3bc88  1      
  nop                                                                                                                #  130   0x3bc89  1      
  callq ._ZN2pp10InputEventD2Ev                                                                                      #  131   0x3bc8a  5      
  movl %r12d, %edi                                                                                                   #  132   0x3bc8f  3      
  nop                                                                                                                #  133   0x3bc92  1      
  nop                                                                                                                #  134   0x3bc93  1      
  callq ._Unwind_Resume                                                                                              #  135   0x3bc94  5      
  movl %eax, %r12d                                                                                                   #  136   0x3bc99  3      
  jmpq .L_3be00                                                                                                      #  137   0x3bc9c  5      
  nop                                                                                                                #  138   0x3bca1  1      
  nop                                                                                                                #  139   0x3bca2  1      
  jmpq .L_3bde0                                                                                                      #  140   0x3bca3  5      
  nop                                                                                                                #  141   0x3bca8  1      
  nop                                                                                                                #  142   0x3bca9  1      
  nop                                                                                                                #  143   0x3bcaa  1      
                                                                                                                                              
.size _ZN2pp15MouseInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_, .-_ZN2pp15MouseInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj25PP_InputEvent_MouseButtonRKNS_5PointEiS8_

