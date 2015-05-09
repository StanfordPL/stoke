  .text
  .globl _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_
  .type _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_, @function

#! file-offset 0x38be0
#! rip-offset  0x38be0
#! capacity    864 bytes

# Text                                                                                     #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_:  #        0x38be0  0      
  movq %rbx, -0x20(%rsp)                                                                   #  1     0x38be0  5      
  movl %edi, %ebx                                                                          #  2     0x38be5  2      
  movq %r12, -0x18(%rsp)                                                                   #  3     0x38be7  5      
  movq %r13, -0x10(%rsp)                                                                   #  4     0x38bec  5      
  movq %r14, -0x8(%rsp)                                                                    #  5     0x38bf1  5      
  movl %ebx, %edi                                                                          #  6     0x38bf6  2      
  nop                                                                                      #  7     0x38bf8  1      
  subl $0x88, %esp                                                                         #  8     0x38bf9  3      
  addq %r15, %rsp                                                                          #  9     0x38bfc  3      
  movl %esi, %r14d                                                                         #  10    0x38bff  3      
  movl %r9d, %r13d                                                                         #  11    0x38c02  3      
  movl %edx, 0x1c(%rsp)                                                                    #  12    0x38c05  4      
  movsd %xmm0, 0x20(%rsp)                                                                  #  13    0x38c09  6      
  movl %ecx, 0x28(%rsp)                                                                    #  14    0x38c0f  4      
  nop                                                                                      #  15    0x38c13  1      
  movl %r8d, 0x2c(%rsp)                                                                    #  16    0x38c14  5      
  movl 0x90(%rsp), %r12d                                                                   #  17    0x38c19  8      
  nop                                                                                      #  18    0x38c21  1      
  callq ._ZN2pp10InputEventC2Ev                                                            #  19    0x38c22  5      
  movl %ebx, %ebx                                                                          #  20    0x38c27  2      
  movl $0x100207c8, (%r15,%rbx,1)                                                          #  21    0x38c29  8      
  xchgw %ax, %ax                                                                           #  22    0x38c31  3      
  nop                                                                                      #  23    0x38c34  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v           #  24    0x38c35  5      
  testl %eax, %eax                                                                         #  25    0x38c3a  2      
  je .L_38d60                                                                              #  26    0x38c3c  6      
  cmpb $0x0, 0xfff80e7(%rip)                                                               #  27    0x38c42  7      
  je .L_38e20                                                                              #  28    0x38c49  6      
  nop                                                                                      #  29    0x38c4f  1      
.L_38c80:                                                                                  #        0x38c50  0      
  movl %r12d, %r12d                                                                        #  30    0x38c50  3      
  movq 0x8(%r15,%r12,1), %rcx                                                              #  31    0x38c53  5      
  movl 0xfff80da(%rip), %eax                                                               #  32    0x38c58  6      
  movl %r13d, %r13d                                                                        #  33    0x38c5e  3      
  movq 0x8(%r15,%r13,1), %r8                                                               #  34    0x38c61  5      
  movl %r13d, %r13d                                                                        #  35    0x38c66  3      
  movq 0x10(%r15,%r13,1), %r9                                                              #  36    0x38c69  5      
  xchgw %ax, %ax                                                                           #  37    0x38c6e  3      
  movsd 0x20(%rsp), %xmm0                                                                  #  38    0x38c71  6      
  movl 0x1c(%rsp), %esi                                                                    #  39    0x38c77  4      
  movq %rcx, 0x50(%rsp)                                                                    #  40    0x38c7b  5      
  movl %r12d, %r12d                                                                        #  41    0x38c80  3      
  movq 0x10(%r15,%r12,1), %rdx                                                             #  42    0x38c83  5      
  movl %eax, %eax                                                                          #  43    0x38c88  2      
  movl (%r15,%rax,1), %eax                                                                 #  44    0x38c8a  4      
  nop                                                                                      #  45    0x38c8e  1      
  movq %r8, 0x40(%rsp)                                                                     #  46    0x38c8f  5      
  movq %rcx, (%rsp)                                                                        #  47    0x38c94  4      
  movq %r9, 0x48(%rsp)                                                                     #  48    0x38c98  5      
  movq %rdx, 0x58(%rsp)                                                                    #  49    0x38c9d  5      
  movq %rdx, 0x8(%rsp)                                                                     #  50    0x38ca2  5      
  movl 0x2c(%rsp), %ecx                                                                    #  51    0x38ca7  4      
  movl 0x28(%rsp), %edx                                                                    #  52    0x38cab  4      
  movl %r14d, %r14d                                                                        #  53    0x38caf  3      
  movl (%r15,%r14,1), %edi                                                                 #  54    0x38cb2  4      
  xchgw %ax, %ax                                                                           #  55    0x38cb6  3      
  nop                                                                                      #  56    0x38cb9  1      
  andl $0xffffffe0, %eax                                                                   #  57    0x38cba  5      
  addq %r15, %rax                                                                          #  58    0x38cbf  3      
  callq %rax                                                                               #  59    0x38cc2  2      
.L_38d00:                                                                                  #        0x38cc4  0      
  movl %eax, %esi                                                                          #  60    0x38cc4  2      
  movl %ebx, %edi                                                                          #  61    0x38cc6  2      
  nop                                                                                      #  62    0x38cc8  1      
  nop                                                                                      #  63    0x38cc9  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                         #  64    0x38cca  5      
.L_38d20:                                                                                  #        0x38ccf  0      
  movq 0x68(%rsp), %rbx                                                                    #  65    0x38ccf  5      
  movq 0x70(%rsp), %r12                                                                    #  66    0x38cd4  5      
  movq 0x78(%rsp), %r13                                                                    #  67    0x38cd9  5      
  movq 0x80(%rsp), %r14                                                                    #  68    0x38cde  8      
  addl $0x88, %esp                                                                         #  69    0x38ce6  3      
  addq %r15, %rsp                                                                          #  70    0x38ce9  3      
  popq %r11                                                                                #  71    0x38cec  3      
  andl $0xffffffe0, %r11d                                                                  #  72    0x38cef  7      
  addq %r15, %r11                                                                          #  73    0x38cf6  3      
  jmpq %r11                                                                                #  74    0x38cf9  3      
  nop                                                                                      #  75    0x38cfc  1      
  nop                                                                                      #  76    0x38cfd  1      
.L_38d60:                                                                                  #        0x38cfe  0      
  nop                                                                                      #  77    0x38cfe  1      
  nop                                                                                      #  78    0x38cff  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v           #  79    0x38d00  5      
  testl %eax, %eax                                                                         #  80    0x38d05  2      
  je .L_38d20                                                                              #  81    0x38d07  6      
  nop                                                                                      #  82    0x38d0d  1      
  nop                                                                                      #  83    0x38d0e  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v           #  84    0x38d0f  5      
  movl %r13d, %r13d                                                                        #  85    0x38d14  3      
  movq 0x8(%r15,%r13,1), %r8                                                               #  86    0x38d17  5      
  movl %r13d, %r13d                                                                        #  87    0x38d1c  3      
  movq 0x10(%r15,%r13,1), %r9                                                              #  88    0x38d1f  5      
  movl %eax, %eax                                                                          #  89    0x38d24  2      
  movl %eax, %eax                                                                          #  90    0x38d26  2      
  movl (%r15,%rax,1), %eax                                                                 #  91    0x38d28  4      
  movl 0x2c(%rsp), %ecx                                                                    #  92    0x38d2c  4      
  movl 0x28(%rsp), %edx                                                                    #  93    0x38d30  4      
  movsd 0x20(%rsp), %xmm0                                                                  #  94    0x38d34  6      
  movq %r8, 0x30(%rsp)                                                                     #  95    0x38d3a  5      
  movq %r9, 0x38(%rsp)                                                                     #  96    0x38d3f  5      
  movl 0x1c(%rsp), %esi                                                                    #  97    0x38d44  4      
  movl %r14d, %r14d                                                                        #  98    0x38d48  3      
  movl (%r15,%r14,1), %edi                                                                 #  99    0x38d4b  4      
  nop                                                                                      #  100   0x38d4f  1      
  nop                                                                                      #  101   0x38d50  1      
  nop                                                                                      #  102   0x38d51  1      
  andl $0xffffffe0, %eax                                                                   #  103   0x38d52  5      
  addq %r15, %rax                                                                          #  104   0x38d57  3      
  callq %rax                                                                               #  105   0x38d5a  2      
  jmpq .L_38d00                                                                            #  106   0x38d5c  5      
  nop                                                                                      #  107   0x38d61  1      
  nop                                                                                      #  108   0x38d62  1      
.L_38e20:                                                                                  #        0x38d63  0      
  movl $0x10030d30, %edi                                                                   #  109   0x38d63  5      
  nop                                                                                      #  110   0x38d68  1      
  nop                                                                                      #  111   0x38d69  1      
  callq .__cxa_guard_acquire                                                               #  112   0x38d6a  5      
  testl %eax, %eax                                                                         #  113   0x38d6f  2      
  je .L_38c80                                                                              #  114   0x38d71  6      
  nop                                                                                      #  115   0x38d77  1      
  nop                                                                                      #  116   0x38d78  1      
  callq ._ZN2pp6Module3GetEv                                                               #  117   0x38d79  5      
  movl %eax, %edi                                                                          #  118   0x38d7e  2      
  movl $0x1002068a, %esi                                                                   #  119   0x38d80  5      
  nop                                                                                      #  120   0x38d85  1      
  nop                                                                                      #  121   0x38d86  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                            #  122   0x38d87  5      
  movl $0x10030d30, %edi                                                                   #  123   0x38d8c  5      
  movl %eax, 0xfff7fa1(%rip)                                                               #  124   0x38d91  6      
  nop                                                                                      #  125   0x38d97  1      
  nop                                                                                      #  126   0x38d98  1      
  callq .__cxa_guard_release                                                               #  127   0x38d99  5      
  jmpq .L_38c80                                                                            #  128   0x38d9e  5      
  nop                                                                                      #  129   0x38da3  1      
  nop                                                                                      #  130   0x38da4  1      
  movl $0x10030d30, %edi                                                                   #  131   0x38da5  5      
  movl %eax, %r12d                                                                         #  132   0x38daa  3      
  nop                                                                                      #  133   0x38dad  1      
  nop                                                                                      #  134   0x38dae  1      
  callq .__cxa_guard_abort                                                                 #  135   0x38daf  5      
.L_38ee0:                                                                                  #        0x38db4  0      
  movl %ebx, %edi                                                                          #  136   0x38db4  2      
  nop                                                                                      #  137   0x38db6  1      
  nop                                                                                      #  138   0x38db7  1      
  callq ._ZN2pp10InputEventD2Ev                                                            #  139   0x38db8  5      
  movl %r12d, %edi                                                                         #  140   0x38dbd  3      
  nop                                                                                      #  141   0x38dc0  1      
  nop                                                                                      #  142   0x38dc1  1      
  callq ._Unwind_Resume                                                                    #  143   0x38dc2  5      
  movl %eax, %r12d                                                                         #  144   0x38dc7  3      
  jmpq .L_38ee0                                                                            #  145   0x38dca  5      
  nop                                                                                      #  146   0x38dcf  1      
  nop                                                                                      #  147   0x38dd0  1      
  nop                                                                                      #  148   0x38dd1  1      
                                                                                                                    
.size _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_, .-_ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarES7_

