  .text
  .globl _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_
  .type _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_, @function

#! file-offset 0x38c00
#! rip-offset  0x38c00
#! capacity    864 bytes

# Text                                                                                     #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_:  #        0x38c00  0      
  movq %rbx, -0x20(%rsp)                                                                   #  1     0x38c00  5      
  movl %edi, %ebx                                                                          #  2     0x38c05  2      
  movq %r12, -0x18(%rsp)                                                                   #  3     0x38c07  5      
  movq %r13, -0x10(%rsp)                                                                   #  4     0x38c0c  5      
  movq %r14, -0x8(%rsp)                                                                    #  5     0x38c11  5      
  movl %ebx, %edi                                                                          #  6     0x38c16  2      
  nop                                                                                      #  7     0x38c18  1      
  subl $0x88, %esp                                                                         #  8     0x38c19  3      
  addq %r15, %rsp                                                                          #  9     0x38c1c  3      
  movl %esi, %r14d                                                                         #  10    0x38c1f  3      
  movl %r9d, %r13d                                                                         #  11    0x38c22  3      
  movl %edx, 0x1c(%rsp)                                                                    #  12    0x38c25  4      
  movsd %xmm0, 0x20(%rsp)                                                                  #  13    0x38c29  6      
  movl %ecx, 0x28(%rsp)                                                                    #  14    0x38c2f  4      
  nop                                                                                      #  15    0x38c33  1      
  movl %r8d, 0x2c(%rsp)                                                                    #  16    0x38c34  5      
  movl 0x90(%rsp), %r12d                                                                   #  17    0x38c39  8      
  nop                                                                                      #  18    0x38c41  1      
  callq ._ZN2pp10InputEventC2Ev                                                            #  19    0x38c42  5      
  movl %ebx, %ebx                                                                          #  20    0x38c47  2      
  movl $0x100207c8, (%r15,%rbx,1)                                                          #  21    0x38c49  8      
  xchgw %ax, %ax                                                                           #  22    0x38c51  3      
  nop                                                                                      #  23    0x38c54  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v           #  24    0x38c55  5      
  testl %eax, %eax                                                                         #  25    0x38c5a  2      
  je .L_38d80                                                                              #  26    0x38c5c  6      
  cmpb $0x0, 0xfff80c7(%rip)                                                               #  27    0x38c62  7      
  je .L_38e40                                                                              #  28    0x38c69  6      
  nop                                                                                      #  29    0x38c6f  1      
.L_38ca0:                                                                                  #        0x38c70  0      
  movl %r12d, %r12d                                                                        #  30    0x38c70  3      
  movq 0x8(%r15,%r12,1), %rcx                                                              #  31    0x38c73  5      
  movl 0xfff80ba(%rip), %eax                                                               #  32    0x38c78  6      
  movl %r13d, %r13d                                                                        #  33    0x38c7e  3      
  movq 0x8(%r15,%r13,1), %r8                                                               #  34    0x38c81  5      
  movl %r13d, %r13d                                                                        #  35    0x38c86  3      
  movq 0x10(%r15,%r13,1), %r9                                                              #  36    0x38c89  5      
  xchgw %ax, %ax                                                                           #  37    0x38c8e  3      
  movsd 0x20(%rsp), %xmm0                                                                  #  38    0x38c91  6      
  movl 0x1c(%rsp), %esi                                                                    #  39    0x38c97  4      
  movq %rcx, 0x50(%rsp)                                                                    #  40    0x38c9b  5      
  movl %r12d, %r12d                                                                        #  41    0x38ca0  3      
  movq 0x10(%r15,%r12,1), %rdx                                                             #  42    0x38ca3  5      
  movl %eax, %eax                                                                          #  43    0x38ca8  2      
  movl (%r15,%rax,1), %eax                                                                 #  44    0x38caa  4      
  nop                                                                                      #  45    0x38cae  1      
  movq %r8, 0x40(%rsp)                                                                     #  46    0x38caf  5      
  movq %rcx, (%rsp)                                                                        #  47    0x38cb4  4      
  movq %r9, 0x48(%rsp)                                                                     #  48    0x38cb8  5      
  movq %rdx, 0x58(%rsp)                                                                    #  49    0x38cbd  5      
  movq %rdx, 0x8(%rsp)                                                                     #  50    0x38cc2  5      
  movl 0x2c(%rsp), %ecx                                                                    #  51    0x38cc7  4      
  movl 0x28(%rsp), %edx                                                                    #  52    0x38ccb  4      
  movl %r14d, %r14d                                                                        #  53    0x38ccf  3      
  movl (%r15,%r14,1), %edi                                                                 #  54    0x38cd2  4      
  xchgw %ax, %ax                                                                           #  55    0x38cd6  3      
  nop                                                                                      #  56    0x38cd9  1      
  andl $0xffffffe0, %eax                                                                   #  57    0x38cda  5      
  addq %r15, %rax                                                                          #  58    0x38cdf  3      
  callq %rax                                                                               #  59    0x38ce2  2      
.L_38d20:                                                                                  #        0x38ce4  0      
  movl %eax, %esi                                                                          #  60    0x38ce4  2      
  movl %ebx, %edi                                                                          #  61    0x38ce6  2      
  nop                                                                                      #  62    0x38ce8  1      
  nop                                                                                      #  63    0x38ce9  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                         #  64    0x38cea  5      
.L_38d40:                                                                                  #        0x38cef  0      
  movq 0x68(%rsp), %rbx                                                                    #  65    0x38cef  5      
  movq 0x70(%rsp), %r12                                                                    #  66    0x38cf4  5      
  movq 0x78(%rsp), %r13                                                                    #  67    0x38cf9  5      
  movq 0x80(%rsp), %r14                                                                    #  68    0x38cfe  8      
  addl $0x88, %esp                                                                         #  69    0x38d06  3      
  addq %r15, %rsp                                                                          #  70    0x38d09  3      
  popq %r11                                                                                #  71    0x38d0c  3      
  andl $0xffffffe0, %r11d                                                                  #  72    0x38d0f  7      
  addq %r15, %r11                                                                          #  73    0x38d16  3      
  jmpq %r11                                                                                #  74    0x38d19  3      
  nop                                                                                      #  75    0x38d1c  1      
  nop                                                                                      #  76    0x38d1d  1      
.L_38d80:                                                                                  #        0x38d1e  0      
  nop                                                                                      #  77    0x38d1e  1      
  nop                                                                                      #  78    0x38d1f  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v           #  79    0x38d20  5      
  testl %eax, %eax                                                                         #  80    0x38d25  2      
  je .L_38d40                                                                              #  81    0x38d27  6      
  nop                                                                                      #  82    0x38d2d  1      
  nop                                                                                      #  83    0x38d2e  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v           #  84    0x38d2f  5      
  movl %r13d, %r13d                                                                        #  85    0x38d34  3      
  movq 0x8(%r15,%r13,1), %r8                                                               #  86    0x38d37  5      
  movl %r13d, %r13d                                                                        #  87    0x38d3c  3      
  movq 0x10(%r15,%r13,1), %r9                                                              #  88    0x38d3f  5      
  movl %eax, %eax                                                                          #  89    0x38d44  2      
  movl %eax, %eax                                                                          #  90    0x38d46  2      
  movl (%r15,%rax,1), %eax                                                                 #  91    0x38d48  4      
  movl 0x2c(%rsp), %ecx                                                                    #  92    0x38d4c  4      
  movl 0x28(%rsp), %edx                                                                    #  93    0x38d50  4      
  movsd 0x20(%rsp), %xmm0                                                                  #  94    0x38d54  6      
  movq %r8, 0x30(%rsp)                                                                     #  95    0x38d5a  5      
  movq %r9, 0x38(%rsp)                                                                     #  96    0x38d5f  5      
  movl 0x1c(%rsp), %esi                                                                    #  97    0x38d64  4      
  movl %r14d, %r14d                                                                        #  98    0x38d68  3      
  movl (%r15,%r14,1), %edi                                                                 #  99    0x38d6b  4      
  nop                                                                                      #  100   0x38d6f  1      
  nop                                                                                      #  101   0x38d70  1      
  nop                                                                                      #  102   0x38d71  1      
  andl $0xffffffe0, %eax                                                                   #  103   0x38d72  5      
  addq %r15, %rax                                                                          #  104   0x38d77  3      
  callq %rax                                                                               #  105   0x38d7a  2      
  jmpq .L_38d20                                                                            #  106   0x38d7c  5      
  nop                                                                                      #  107   0x38d81  1      
  nop                                                                                      #  108   0x38d82  1      
.L_38e40:                                                                                  #        0x38d83  0      
  movl $0x10030d30, %edi                                                                   #  109   0x38d83  5      
  nop                                                                                      #  110   0x38d88  1      
  nop                                                                                      #  111   0x38d89  1      
  callq .__cxa_guard_acquire                                                               #  112   0x38d8a  5      
  testl %eax, %eax                                                                         #  113   0x38d8f  2      
  je .L_38ca0                                                                              #  114   0x38d91  6      
  nop                                                                                      #  115   0x38d97  1      
  nop                                                                                      #  116   0x38d98  1      
  callq ._ZN2pp6Module3GetEv                                                               #  117   0x38d99  5      
  movl %eax, %edi                                                                          #  118   0x38d9e  2      
  movl $0x1002068a, %esi                                                                   #  119   0x38da0  5      
  nop                                                                                      #  120   0x38da5  1      
  nop                                                                                      #  121   0x38da6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                            #  122   0x38da7  5      
  movl $0x10030d30, %edi                                                                   #  123   0x38dac  5      
  movl %eax, 0xfff7f81(%rip)                                                               #  124   0x38db1  6      
  nop                                                                                      #  125   0x38db7  1      
  nop                                                                                      #  126   0x38db8  1      
  callq .__cxa_guard_release                                                               #  127   0x38db9  5      
  jmpq .L_38ca0                                                                            #  128   0x38dbe  5      
  nop                                                                                      #  129   0x38dc3  1      
  nop                                                                                      #  130   0x38dc4  1      
  movl $0x10030d30, %edi                                                                   #  131   0x38dc5  5      
  movl %eax, %r12d                                                                         #  132   0x38dca  3      
  nop                                                                                      #  133   0x38dcd  1      
  nop                                                                                      #  134   0x38dce  1      
  callq .__cxa_guard_abort                                                                 #  135   0x38dcf  5      
.L_38f00:                                                                                  #        0x38dd4  0      
  movl %ebx, %edi                                                                          #  136   0x38dd4  2      
  nop                                                                                      #  137   0x38dd6  1      
  nop                                                                                      #  138   0x38dd7  1      
  callq ._ZN2pp10InputEventD2Ev                                                            #  139   0x38dd8  5      
  movl %r12d, %edi                                                                         #  140   0x38ddd  3      
  nop                                                                                      #  141   0x38de0  1      
  nop                                                                                      #  142   0x38de1  1      
  callq ._Unwind_Resume                                                                    #  143   0x38de2  5      
  movl %eax, %r12d                                                                         #  144   0x38de7  3      
  jmpq .L_38f00                                                                            #  145   0x38dea  5      
  nop                                                                                      #  146   0x38def  1      
  nop                                                                                      #  147   0x38df0  1      
  nop                                                                                      #  148   0x38df1  1      
                                                                                                                    
.size _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_, .-_ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_

