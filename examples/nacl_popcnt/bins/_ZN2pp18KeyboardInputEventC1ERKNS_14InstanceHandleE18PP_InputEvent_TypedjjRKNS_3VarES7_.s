  .text
  .globl _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_
  .type _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_, @function

#! file-offset 0x38c80
#! rip-offset  0x38c80
#! capacity    864 bytes

# Text                                                                                     #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_:  #        0x38c80  0      
  movq %rbx, -0x20(%rsp)                                                                   #  1     0x38c80  5      
  movl %edi, %ebx                                                                          #  2     0x38c85  2      
  movq %r12, -0x18(%rsp)                                                                   #  3     0x38c87  5      
  movq %r13, -0x10(%rsp)                                                                   #  4     0x38c8c  5      
  movq %r14, -0x8(%rsp)                                                                    #  5     0x38c91  5      
  movl %ebx, %edi                                                                          #  6     0x38c96  2      
  nop                                                                                      #  7     0x38c98  1      
  subl $0x88, %esp                                                                         #  8     0x38c99  3      
  addq %r15, %rsp                                                                          #  9     0x38c9c  3      
  movl %esi, %r14d                                                                         #  10    0x38c9f  3      
  movl %r9d, %r13d                                                                         #  11    0x38ca2  3      
  movl %edx, 0x1c(%rsp)                                                                    #  12    0x38ca5  4      
  movsd %xmm0, 0x20(%rsp)                                                                  #  13    0x38ca9  6      
  movl %ecx, 0x28(%rsp)                                                                    #  14    0x38caf  4      
  nop                                                                                      #  15    0x38cb3  1      
  movl %r8d, 0x2c(%rsp)                                                                    #  16    0x38cb4  5      
  movl 0x90(%rsp), %r12d                                                                   #  17    0x38cb9  8      
  nop                                                                                      #  18    0x38cc1  1      
  callq ._ZN2pp10InputEventC2Ev                                                            #  19    0x38cc2  5      
  movl %ebx, %ebx                                                                          #  20    0x38cc7  2      
  movl $0x100207c8, (%r15,%rbx,1)                                                          #  21    0x38cc9  8      
  xchgw %ax, %ax                                                                           #  22    0x38cd1  3      
  nop                                                                                      #  23    0x38cd4  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v           #  24    0x38cd5  5      
  testl %eax, %eax                                                                         #  25    0x38cda  2      
  je .L_38e00                                                                              #  26    0x38cdc  6      
  cmpb $0x0, 0xfff8047(%rip)                                                               #  27    0x38ce2  7      
  je .L_38ec0                                                                              #  28    0x38ce9  6      
  nop                                                                                      #  29    0x38cef  1      
.L_38d20:                                                                                  #        0x38cf0  0      
  movl %r12d, %r12d                                                                        #  30    0x38cf0  3      
  movq 0x8(%r15,%r12,1), %rcx                                                              #  31    0x38cf3  5      
  movl 0xfff803a(%rip), %eax                                                               #  32    0x38cf8  6      
  movl %r13d, %r13d                                                                        #  33    0x38cfe  3      
  movq 0x8(%r15,%r13,1), %r8                                                               #  34    0x38d01  5      
  movl %r13d, %r13d                                                                        #  35    0x38d06  3      
  movq 0x10(%r15,%r13,1), %r9                                                              #  36    0x38d09  5      
  xchgw %ax, %ax                                                                           #  37    0x38d0e  3      
  movsd 0x20(%rsp), %xmm0                                                                  #  38    0x38d11  6      
  movl 0x1c(%rsp), %esi                                                                    #  39    0x38d17  4      
  movq %rcx, 0x50(%rsp)                                                                    #  40    0x38d1b  5      
  movl %r12d, %r12d                                                                        #  41    0x38d20  3      
  movq 0x10(%r15,%r12,1), %rdx                                                             #  42    0x38d23  5      
  movl %eax, %eax                                                                          #  43    0x38d28  2      
  movl (%r15,%rax,1), %eax                                                                 #  44    0x38d2a  4      
  nop                                                                                      #  45    0x38d2e  1      
  movq %r8, 0x40(%rsp)                                                                     #  46    0x38d2f  5      
  movq %rcx, (%rsp)                                                                        #  47    0x38d34  4      
  movq %r9, 0x48(%rsp)                                                                     #  48    0x38d38  5      
  movq %rdx, 0x58(%rsp)                                                                    #  49    0x38d3d  5      
  movq %rdx, 0x8(%rsp)                                                                     #  50    0x38d42  5      
  movl 0x2c(%rsp), %ecx                                                                    #  51    0x38d47  4      
  movl 0x28(%rsp), %edx                                                                    #  52    0x38d4b  4      
  movl %r14d, %r14d                                                                        #  53    0x38d4f  3      
  movl (%r15,%r14,1), %edi                                                                 #  54    0x38d52  4      
  xchgw %ax, %ax                                                                           #  55    0x38d56  3      
  nop                                                                                      #  56    0x38d59  1      
  andl $0xffffffe0, %eax                                                                   #  57    0x38d5a  5      
  addq %r15, %rax                                                                          #  58    0x38d5f  3      
  callq %rax                                                                               #  59    0x38d62  2      
.L_38da0:                                                                                  #        0x38d64  0      
  movl %eax, %esi                                                                          #  60    0x38d64  2      
  movl %ebx, %edi                                                                          #  61    0x38d66  2      
  nop                                                                                      #  62    0x38d68  1      
  nop                                                                                      #  63    0x38d69  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                         #  64    0x38d6a  5      
.L_38dc0:                                                                                  #        0x38d6f  0      
  movq 0x68(%rsp), %rbx                                                                    #  65    0x38d6f  5      
  movq 0x70(%rsp), %r12                                                                    #  66    0x38d74  5      
  movq 0x78(%rsp), %r13                                                                    #  67    0x38d79  5      
  movq 0x80(%rsp), %r14                                                                    #  68    0x38d7e  8      
  addl $0x88, %esp                                                                         #  69    0x38d86  3      
  addq %r15, %rsp                                                                          #  70    0x38d89  3      
  popq %r11                                                                                #  71    0x38d8c  3      
  andl $0xffffffe0, %r11d                                                                  #  72    0x38d8f  7      
  addq %r15, %r11                                                                          #  73    0x38d96  3      
  jmpq %r11                                                                                #  74    0x38d99  3      
  nop                                                                                      #  75    0x38d9c  1      
  nop                                                                                      #  76    0x38d9d  1      
.L_38e00:                                                                                  #        0x38d9e  0      
  nop                                                                                      #  77    0x38d9e  1      
  nop                                                                                      #  78    0x38d9f  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v           #  79    0x38da0  5      
  testl %eax, %eax                                                                         #  80    0x38da5  2      
  je .L_38dc0                                                                              #  81    0x38da7  6      
  nop                                                                                      #  82    0x38dad  1      
  nop                                                                                      #  83    0x38dae  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v           #  84    0x38daf  5      
  movl %r13d, %r13d                                                                        #  85    0x38db4  3      
  movq 0x8(%r15,%r13,1), %r8                                                               #  86    0x38db7  5      
  movl %r13d, %r13d                                                                        #  87    0x38dbc  3      
  movq 0x10(%r15,%r13,1), %r9                                                              #  88    0x38dbf  5      
  movl %eax, %eax                                                                          #  89    0x38dc4  2      
  movl %eax, %eax                                                                          #  90    0x38dc6  2      
  movl (%r15,%rax,1), %eax                                                                 #  91    0x38dc8  4      
  movl 0x2c(%rsp), %ecx                                                                    #  92    0x38dcc  4      
  movl 0x28(%rsp), %edx                                                                    #  93    0x38dd0  4      
  movsd 0x20(%rsp), %xmm0                                                                  #  94    0x38dd4  6      
  movq %r8, 0x30(%rsp)                                                                     #  95    0x38dda  5      
  movq %r9, 0x38(%rsp)                                                                     #  96    0x38ddf  5      
  movl 0x1c(%rsp), %esi                                                                    #  97    0x38de4  4      
  movl %r14d, %r14d                                                                        #  98    0x38de8  3      
  movl (%r15,%r14,1), %edi                                                                 #  99    0x38deb  4      
  nop                                                                                      #  100   0x38def  1      
  nop                                                                                      #  101   0x38df0  1      
  nop                                                                                      #  102   0x38df1  1      
  andl $0xffffffe0, %eax                                                                   #  103   0x38df2  5      
  addq %r15, %rax                                                                          #  104   0x38df7  3      
  callq %rax                                                                               #  105   0x38dfa  2      
  jmpq .L_38da0                                                                            #  106   0x38dfc  5      
  nop                                                                                      #  107   0x38e01  1      
  nop                                                                                      #  108   0x38e02  1      
.L_38ec0:                                                                                  #        0x38e03  0      
  movl $0x10030d30, %edi                                                                   #  109   0x38e03  5      
  nop                                                                                      #  110   0x38e08  1      
  nop                                                                                      #  111   0x38e09  1      
  callq .__cxa_guard_acquire                                                               #  112   0x38e0a  5      
  testl %eax, %eax                                                                         #  113   0x38e0f  2      
  je .L_38d20                                                                              #  114   0x38e11  6      
  nop                                                                                      #  115   0x38e17  1      
  nop                                                                                      #  116   0x38e18  1      
  callq ._ZN2pp6Module3GetEv                                                               #  117   0x38e19  5      
  movl %eax, %edi                                                                          #  118   0x38e1e  2      
  movl $0x1002068a, %esi                                                                   #  119   0x38e20  5      
  nop                                                                                      #  120   0x38e25  1      
  nop                                                                                      #  121   0x38e26  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                            #  122   0x38e27  5      
  movl $0x10030d30, %edi                                                                   #  123   0x38e2c  5      
  movl %eax, 0xfff7f01(%rip)                                                               #  124   0x38e31  6      
  nop                                                                                      #  125   0x38e37  1      
  nop                                                                                      #  126   0x38e38  1      
  callq .__cxa_guard_release                                                               #  127   0x38e39  5      
  jmpq .L_38d20                                                                            #  128   0x38e3e  5      
  nop                                                                                      #  129   0x38e43  1      
  nop                                                                                      #  130   0x38e44  1      
  movl $0x10030d30, %edi                                                                   #  131   0x38e45  5      
  movl %eax, %r12d                                                                         #  132   0x38e4a  3      
  nop                                                                                      #  133   0x38e4d  1      
  nop                                                                                      #  134   0x38e4e  1      
  callq .__cxa_guard_abort                                                                 #  135   0x38e4f  5      
.L_38f80:                                                                                  #        0x38e54  0      
  movl %ebx, %edi                                                                          #  136   0x38e54  2      
  nop                                                                                      #  137   0x38e56  1      
  nop                                                                                      #  138   0x38e57  1      
  callq ._ZN2pp10InputEventD2Ev                                                            #  139   0x38e58  5      
  movl %r12d, %edi                                                                         #  140   0x38e5d  3      
  nop                                                                                      #  141   0x38e60  1      
  nop                                                                                      #  142   0x38e61  1      
  callq ._Unwind_Resume                                                                    #  143   0x38e62  5      
  movl %eax, %r12d                                                                         #  144   0x38e67  3      
  jmpq .L_38f80                                                                            #  145   0x38e6a  5      
  nop                                                                                      #  146   0x38e6f  1      
  nop                                                                                      #  147   0x38e70  1      
  nop                                                                                      #  148   0x38e71  1      
                                                                                                                    
.size _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_, .-_ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_

