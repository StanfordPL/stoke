  .text
  .globl _ZN2pp13IMEInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE
  .type _ZN2pp13IMEInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE, @function

#! file-offset 0x3d840
#! rip-offset  0x3d840
#! capacity    1056 bytes

# Text                                                                                                            #  Line  RIP      Bytes  
._ZN2pp13IMEInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE:  #        0x3d840  0      
  movq %rbx, -0x20(%rsp)                                                                                          #  1     0x3d840  5      
  movl %edi, %ebx                                                                                                 #  2     0x3d845  2      
  movq %r12, -0x18(%rsp)                                                                                          #  3     0x3d847  5      
  movq %r13, -0x10(%rsp)                                                                                          #  4     0x3d84c  5      
  movq %r14, -0x8(%rsp)                                                                                           #  5     0x3d851  5      
  movl %esi, %esi                                                                                                 #  6     0x3d856  2      
  nop                                                                                                             #  7     0x3d858  1      
  subl $0x88, %esp                                                                                                #  8     0x3d859  3      
  addq %r15, %rsp                                                                                                 #  9     0x3d85c  3      
  movl %ebx, %edi                                                                                                 #  10    0x3d85f  2      
  movl %ecx, %r14d                                                                                                #  11    0x3d861  3      
  movl %edx, 0x2c(%rsp)                                                                                           #  12    0x3d864  4      
  movsd %xmm0, 0x30(%rsp)                                                                                         #  13    0x3d868  6      
  movl %r9d, 0x3c(%rsp)                                                                                           #  14    0x3d86e  5      
  nop                                                                                                             #  15    0x3d873  1      
  movq %rsi, 0x20(%rsp)                                                                                           #  16    0x3d874  5      
  movl %r8d, %r13d                                                                                                #  17    0x3d879  3      
  movl 0x90(%rsp), %r12d                                                                                          #  18    0x3d87c  8      
  nop                                                                                                             #  19    0x3d884  1      
  callq ._ZN2pp10InputEventC2Ev                                                                                   #  20    0x3d885  5      
  movl %ebx, %ebx                                                                                                 #  21    0x3d88a  2      
  movl $0x10020748, (%r15,%rbx,1)                                                                                 #  22    0x3d88c  8      
  cmpb $0x0, 0xfff3475(%rip)                                                                                      #  23    0x3d894  7      
  je .L_3d920                                                                                                     #  24    0x3d89b  6      
  nop                                                                                                             #  25    0x3d8a1  1      
.L_3d8c0:                                                                                                         #        0x3d8a2  0      
  movl 0xfff3470(%rip), %eax                                                                                      #  26    0x3d8a2  6      
  testq %rax, %rax                                                                                                #  27    0x3d8a8  3      
  jne .L_3d9c0                                                                                                    #  28    0x3d8ab  6      
  xchgw %ax, %ax                                                                                                  #  29    0x3d8b1  3      
  nop                                                                                                             #  30    0x3d8b4  1      
.L_3d8e0:                                                                                                         #        0x3d8b5  0      
  movq 0x68(%rsp), %rbx                                                                                           #  31    0x3d8b5  5      
  movq 0x70(%rsp), %r12                                                                                           #  32    0x3d8ba  5      
  movq 0x78(%rsp), %r13                                                                                           #  33    0x3d8bf  5      
  movq 0x80(%rsp), %r14                                                                                           #  34    0x3d8c4  8      
  addl $0x88, %esp                                                                                                #  35    0x3d8cc  3      
  addq %r15, %rsp                                                                                                 #  36    0x3d8cf  3      
  popq %r11                                                                                                       #  37    0x3d8d2  3      
  andl $0xffffffe0, %r11d                                                                                         #  38    0x3d8d5  7      
  addq %r15, %r11                                                                                                 #  39    0x3d8dc  3      
  jmpq %r11                                                                                                       #  40    0x3d8df  3      
  nop                                                                                                             #  41    0x3d8e2  1      
  nop                                                                                                             #  42    0x3d8e3  1      
.L_3d920:                                                                                                         #        0x3d8e4  0      
  movl $0x10030d10, %edi                                                                                          #  43    0x3d8e4  5      
  nop                                                                                                             #  44    0x3d8e9  1      
  nop                                                                                                             #  45    0x3d8ea  1      
  callq .__cxa_guard_acquire                                                                                      #  46    0x3d8eb  5      
  testl %eax, %eax                                                                                                #  47    0x3d8f0  2      
  je .L_3d8c0                                                                                                     #  48    0x3d8f2  6      
  nop                                                                                                             #  49    0x3d8f8  1      
  nop                                                                                                             #  50    0x3d8f9  1      
  callq ._ZN2pp6Module3GetEv                                                                                      #  51    0x3d8fa  5      
  movl %eax, %edi                                                                                                 #  52    0x3d8ff  2      
  movl $0x10020674, %esi                                                                                          #  53    0x3d901  5      
  nop                                                                                                             #  54    0x3d906  1      
  nop                                                                                                             #  55    0x3d907  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                   #  56    0x3d908  5      
  movl $0x10030d10, %edi                                                                                          #  57    0x3d90d  5      
  movl %eax, 0xfff3400(%rip)                                                                                      #  58    0x3d912  6      
  nop                                                                                                             #  59    0x3d918  1      
  nop                                                                                                             #  60    0x3d919  1      
  callq .__cxa_guard_release                                                                                      #  61    0x3d91a  5      
  movl 0xfff33f3(%rip), %eax                                                                                      #  62    0x3d91f  6      
  testq %rax, %rax                                                                                                #  63    0x3d925  3      
  je .L_3d8e0                                                                                                     #  64    0x3d928  6      
  xchgw %ax, %ax                                                                                                  #  65    0x3d92e  3      
  nop                                                                                                             #  66    0x3d931  1      
.L_3d9c0:                                                                                                         #        0x3d932  0      
  cmpb $0x0, 0xfff33d7(%rip)                                                                                      #  67    0x3d932  7      
  movl $0x0, 0x5c(%rsp)                                                                                           #  68    0x3d939  8      
  je .L_3dac0                                                                                                     #  69    0x3d941  6      
  nop                                                                                                             #  70    0x3d947  1      
.L_3d9e0:                                                                                                         #        0x3d948  0      
  movl %r13d, %r13d                                                                                               #  71    0x3d948  3      
  movl 0x4(%r15,%r13,1), %r8d                                                                                     #  72    0x3d94b  5      
  movl %r13d, %r13d                                                                                               #  73    0x3d950  3      
  movl (%r15,%r13,1), %r9d                                                                                        #  74    0x3d953  4      
  movl %eax, %eax                                                                                                 #  75    0x3d957  2      
  movl (%r15,%rax,1), %eax                                                                                        #  76    0x3d959  4      
  movl %r12d, %r12d                                                                                               #  77    0x3d95d  3      
  movl 0x4(%r15,%r12,1), %esi                                                                                     #  78    0x3d960  5      
  nop                                                                                                             #  79    0x3d965  1      
  movl %r12d, %r12d                                                                                               #  80    0x3d966  3      
  movl (%r15,%r12,1), %edi                                                                                        #  81    0x3d969  4      
  cmpl %r9d, %r8d                                                                                                 #  82    0x3d96d  3      
  je .L_3dba0                                                                                                     #  83    0x3d970  6      
  subl %r9d, %r8d                                                                                                 #  84    0x3d976  3      
  sarl $0x2, %r8d                                                                                                 #  85    0x3d979  4      
  subl $0x1, %r8d                                                                                                 #  86    0x3d97d  4      
  nop                                                                                                             #  87    0x3d981  1      
.L_3da20:                                                                                                         #        0x3d982  0      
  movl %esi, 0x10(%rsp)                                                                                           #  88    0x3d982  4      
  movl %r14d, %r14d                                                                                               #  89    0x3d986  3      
  movq 0x8(%r15,%r14,1), %rdx                                                                                     #  90    0x3d989  5      
  movl 0x3c(%rsp), %esi                                                                                           #  91    0x3d98e  4      
  movl %r14d, %r14d                                                                                               #  92    0x3d992  3      
  movq 0x10(%r15,%r14,1), %rcx                                                                                    #  93    0x3d995  5      
  movq 0x20(%rsp), %r10                                                                                           #  94    0x3d99a  5      
  nop                                                                                                             #  95    0x3d99f  1      
  movl %edi, 0x8(%rsp)                                                                                            #  96    0x3d9a0  4      
  movq %rdx, 0x40(%rsp)                                                                                           #  97    0x3d9a4  5      
  movsd 0x30(%rsp), %xmm0                                                                                         #  98    0x3d9a9  6      
  movl %esi, (%rsp)                                                                                               #  99    0x3d9af  3      
  movq %rcx, 0x48(%rsp)                                                                                           #  100   0x3d9b2  5      
  movl 0x2c(%rsp), %esi                                                                                           #  101   0x3d9b7  4      
  nop                                                                                                             #  102   0x3d9bb  1      
  movl %r10d, %r10d                                                                                               #  103   0x3d9bc  3      
  movl (%r15,%r10,1), %edi                                                                                        #  104   0x3d9bf  4      
  xchgw %ax, %ax                                                                                                  #  105   0x3d9c3  3      
  nop                                                                                                             #  106   0x3d9c6  1      
  andl $0xffffffe0, %eax                                                                                          #  107   0x3d9c7  5      
  addq %r15, %rax                                                                                                 #  108   0x3d9cc  3      
  callq %rax                                                                                                      #  109   0x3d9cf  2      
  movl %eax, %esi                                                                                                 #  110   0x3d9d1  2      
  movl %ebx, %edi                                                                                                 #  111   0x3d9d3  2      
  nop                                                                                                             #  112   0x3d9d5  1      
  nop                                                                                                             #  113   0x3d9d6  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                                                #  114   0x3d9d7  5      
  jmpq .L_3d8e0                                                                                                   #  115   0x3d9dc  5      
  nop                                                                                                             #  116   0x3d9e1  1      
  nop                                                                                                             #  117   0x3d9e2  1      
.L_3dac0:                                                                                                         #        0x3d9e3  0      
  movl $0x10030d10, %edi                                                                                          #  118   0x3d9e3  5      
  nop                                                                                                             #  119   0x3d9e8  1      
  nop                                                                                                             #  120   0x3d9e9  1      
  callq .__cxa_guard_acquire                                                                                      #  121   0x3d9ea  5      
  testl %eax, %eax                                                                                                #  122   0x3d9ef  2      
  jne .L_3db20                                                                                                    #  123   0x3d9f1  6      
  nop                                                                                                             #  124   0x3d9f7  1      
  nop                                                                                                             #  125   0x3d9f8  1      
.L_3db00:                                                                                                         #        0x3d9f9  0      
  movl 0xfff3319(%rip), %eax                                                                                      #  126   0x3d9f9  6      
  jmpq .L_3d9e0                                                                                                   #  127   0x3d9ff  5      
  nop                                                                                                             #  128   0x3da04  1      
  nop                                                                                                             #  129   0x3da05  1      
.L_3db20:                                                                                                         #        0x3da06  0      
  nop                                                                                                             #  130   0x3da06  1      
  nop                                                                                                             #  131   0x3da07  1      
  callq ._ZN2pp6Module3GetEv                                                                                      #  132   0x3da08  5      
  movl %eax, %edi                                                                                                 #  133   0x3da0d  2      
  movl $0x10020674, %esi                                                                                          #  134   0x3da0f  5      
  nop                                                                                                             #  135   0x3da14  1      
  nop                                                                                                             #  136   0x3da15  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                   #  137   0x3da16  5      
  movl $0x10030d10, %edi                                                                                          #  138   0x3da1b  5      
  movl %eax, 0xfff32f2(%rip)                                                                                      #  139   0x3da20  6      
  nop                                                                                                             #  140   0x3da26  1      
  nop                                                                                                             #  141   0x3da27  1      
  callq .__cxa_guard_release                                                                                      #  142   0x3da28  5      
  jmpq .L_3db00                                                                                                   #  143   0x3da2d  5      
  nop                                                                                                             #  144   0x3da32  1      
  nop                                                                                                             #  145   0x3da33  1      
.L_3dba0:                                                                                                         #        0x3da34  0      
  leal 0x5c(%rsp), %r9d                                                                                           #  146   0x3da34  5      
  xorl %r8d, %r8d                                                                                                 #  147   0x3da39  3      
  jmpq .L_3da20                                                                                                   #  148   0x3da3c  5      
  nop                                                                                                             #  149   0x3da41  1      
  nop                                                                                                             #  150   0x3da42  1      
.L_3dbc0:                                                                                                         #        0x3da43  0      
  movl $0x10030d10, %edi                                                                                          #  151   0x3da43  5      
  movl %eax, %r12d                                                                                                #  152   0x3da48  3      
  nop                                                                                                             #  153   0x3da4b  1      
  nop                                                                                                             #  154   0x3da4c  1      
  callq .__cxa_guard_abort                                                                                        #  155   0x3da4d  5      
.L_3dbe0:                                                                                                         #        0x3da52  0      
  movl %ebx, %edi                                                                                                 #  156   0x3da52  2      
  nop                                                                                                             #  157   0x3da54  1      
  nop                                                                                                             #  158   0x3da55  1      
  callq ._ZN2pp10InputEventD2Ev                                                                                   #  159   0x3da56  5      
  movl %r12d, %edi                                                                                                #  160   0x3da5b  3      
  nop                                                                                                             #  161   0x3da5e  1      
  nop                                                                                                             #  162   0x3da5f  1      
  callq ._Unwind_Resume                                                                                           #  163   0x3da60  5      
  movl %eax, %r12d                                                                                                #  164   0x3da65  3      
  jmpq .L_3dbe0                                                                                                   #  165   0x3da68  5      
  nop                                                                                                             #  166   0x3da6d  1      
  nop                                                                                                             #  167   0x3da6e  1      
  jmpq .L_3dbc0                                                                                                   #  168   0x3da6f  5      
  nop                                                                                                             #  169   0x3da74  1      
  nop                                                                                                             #  170   0x3da75  1      
  nop                                                                                                             #  171   0x3da76  1      
                                                                                                                                           
.size _ZN2pp13IMEInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE, .-_ZN2pp13IMEInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE

