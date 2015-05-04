  .text
  .globl _ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj
  .type _ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj, @function

#! file-offset 0x3e520
#! rip-offset  0x3e520
#! capacity    896 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj:  #        0x3e520  0      
  movq %rbx, -0x20(%rsp)                                                  #  1     0x3e520  5      
  movl %edi, %ebx                                                         #  2     0x3e525  2      
  movq %r12, -0x18(%rsp)                                                  #  3     0x3e527  5      
  movq %r13, -0x10(%rsp)                                                  #  4     0x3e52c  5      
  movq %r14, -0x8(%rsp)                                                   #  5     0x3e531  5      
  movl %ebx, %edi                                                         #  6     0x3e536  2      
  subl $0x38, %esp                                                        #  7     0x3e538  3      
  addq %r15, %rsp                                                         #  8     0x3e53b  3      
  xchgw %ax, %ax                                                          #  9     0x3e53e  3      
  movl %edx, %r14d                                                        #  10    0x3e541  3      
  movl %ecx, %r13d                                                        #  11    0x3e544  3      
  movsd %xmm0, 0x8(%rsp)                                                  #  12    0x3e547  6      
  movl %esi, %r12d                                                        #  13    0x3e54d  3      
  nop                                                                     #  14    0x3e550  1      
  callq ._ZN2pp10InputEventC2Ev                                           #  15    0x3e551  5      
  movl %ebx, %ebx                                                         #  16    0x3e556  2      
  movl $0x10020788, (%r15,%rbx,1)                                         #  17    0x3e558  8      
  cmpb $0x0, 0xfff27b9(%rip)                                              #  18    0x3e560  7      
  je .L_3e5e0                                                             #  19    0x3e567  6      
  nop                                                                     #  20    0x3e56d  1      
.L_3e580:                                                                 #        0x3e56e  0      
  movl 0xfff27b4(%rip), %eax                                              #  21    0x3e56e  6      
  testq %rax, %rax                                                        #  22    0x3e574  3      
  jne .L_3e680                                                            #  23    0x3e577  6      
  xchgw %ax, %ax                                                          #  24    0x3e57d  3      
  nop                                                                     #  25    0x3e580  1      
.L_3e5a0:                                                                 #        0x3e581  0      
  movq 0x18(%rsp), %rbx                                                   #  26    0x3e581  5      
  movq 0x20(%rsp), %r12                                                   #  27    0x3e586  5      
  movq 0x28(%rsp), %r13                                                   #  28    0x3e58b  5      
  movq 0x30(%rsp), %r14                                                   #  29    0x3e590  5      
  addl $0x38, %esp                                                        #  30    0x3e595  3      
  addq %r15, %rsp                                                         #  31    0x3e598  3      
  popq %r11                                                               #  32    0x3e59b  3      
  nop                                                                     #  33    0x3e59e  1      
  andl $0xffffffe0, %r11d                                                 #  34    0x3e59f  7      
  addq %r15, %r11                                                         #  35    0x3e5a6  3      
  jmpq %r11                                                               #  36    0x3e5a9  3      
  nop                                                                     #  37    0x3e5ac  1      
  nop                                                                     #  38    0x3e5ad  1      
.L_3e5e0:                                                                 #        0x3e5ae  0      
  movl $0x10030d20, %edi                                                  #  39    0x3e5ae  5      
  nop                                                                     #  40    0x3e5b3  1      
  nop                                                                     #  41    0x3e5b4  1      
  callq .__cxa_guard_acquire                                              #  42    0x3e5b5  5      
  testl %eax, %eax                                                        #  43    0x3e5ba  2      
  je .L_3e580                                                             #  44    0x3e5bc  6      
  nop                                                                     #  45    0x3e5c2  1      
  nop                                                                     #  46    0x3e5c3  1      
  callq ._ZN2pp6Module3GetEv                                              #  47    0x3e5c4  5      
  movl %eax, %edi                                                         #  48    0x3e5c9  2      
  movl $0x100206d8, %esi                                                  #  49    0x3e5cb  5      
  nop                                                                     #  50    0x3e5d0  1      
  nop                                                                     #  51    0x3e5d1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  52    0x3e5d2  5      
  movl $0x10030d20, %edi                                                  #  53    0x3e5d7  5      
  movl %eax, 0xfff2746(%rip)                                              #  54    0x3e5dc  6      
  nop                                                                     #  55    0x3e5e2  1      
  nop                                                                     #  56    0x3e5e3  1      
  callq .__cxa_guard_release                                              #  57    0x3e5e4  5      
  movl 0xfff2739(%rip), %eax                                              #  58    0x3e5e9  6      
  testq %rax, %rax                                                        #  59    0x3e5ef  3      
  je .L_3e5a0                                                             #  60    0x3e5f2  6      
  xchgw %ax, %ax                                                          #  61    0x3e5f8  3      
  nop                                                                     #  62    0x3e5fb  1      
.L_3e680:                                                                 #        0x3e5fc  0      
  cmpb $0x0, 0xfff271d(%rip)                                              #  63    0x3e5fc  7      
  je .L_3e720                                                             #  64    0x3e603  6      
  nop                                                                     #  65    0x3e609  1      
  nop                                                                     #  66    0x3e60a  1      
.L_3e6a0:                                                                 #        0x3e60b  0      
  movl %eax, %eax                                                         #  67    0x3e60b  2      
  movl (%r15,%rax,1), %eax                                                #  68    0x3e60d  4      
  movl %r13d, %edx                                                        #  69    0x3e611  3      
  movl %r14d, %esi                                                        #  70    0x3e614  3      
  movsd 0x8(%rsp), %xmm0                                                  #  71    0x3e617  6      
  movl %r12d, %r12d                                                       #  72    0x3e61d  3      
  movl (%r15,%r12,1), %edi                                                #  73    0x3e620  4      
  nop                                                                     #  74    0x3e624  1      
  nop                                                                     #  75    0x3e625  1      
  nop                                                                     #  76    0x3e626  1      
  andl $0xffffffe0, %eax                                                  #  77    0x3e627  5      
  addq %r15, %rax                                                         #  78    0x3e62c  3      
  callq %rax                                                              #  79    0x3e62f  2      
  movl %eax, %esi                                                         #  80    0x3e631  2      
  movl %ebx, %edi                                                         #  81    0x3e633  2      
  nop                                                                     #  82    0x3e635  1      
  nop                                                                     #  83    0x3e636  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                        #  84    0x3e637  5      
  jmpq .L_3e5a0                                                           #  85    0x3e63c  5      
  nop                                                                     #  86    0x3e641  1      
  nop                                                                     #  87    0x3e642  1      
.L_3e720:                                                                 #        0x3e643  0      
  movl $0x10030d20, %edi                                                  #  88    0x3e643  5      
  nop                                                                     #  89    0x3e648  1      
  nop                                                                     #  90    0x3e649  1      
  callq .__cxa_guard_acquire                                              #  91    0x3e64a  5      
  testl %eax, %eax                                                        #  92    0x3e64f  2      
  jne .L_3e780                                                            #  93    0x3e651  6      
  nop                                                                     #  94    0x3e657  1      
  nop                                                                     #  95    0x3e658  1      
.L_3e760:                                                                 #        0x3e659  0      
  movl 0xfff26c9(%rip), %eax                                              #  96    0x3e659  6      
  jmpq .L_3e6a0                                                           #  97    0x3e65f  5      
  nop                                                                     #  98    0x3e664  1      
  nop                                                                     #  99    0x3e665  1      
.L_3e780:                                                                 #        0x3e666  0      
  nop                                                                     #  100   0x3e666  1      
  nop                                                                     #  101   0x3e667  1      
  callq ._ZN2pp6Module3GetEv                                              #  102   0x3e668  5      
  movl %eax, %edi                                                         #  103   0x3e66d  2      
  movl $0x100206d8, %esi                                                  #  104   0x3e66f  5      
  nop                                                                     #  105   0x3e674  1      
  nop                                                                     #  106   0x3e675  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  107   0x3e676  5      
  movl $0x10030d20, %edi                                                  #  108   0x3e67b  5      
  movl %eax, 0xfff26a2(%rip)                                              #  109   0x3e680  6      
  nop                                                                     #  110   0x3e686  1      
  nop                                                                     #  111   0x3e687  1      
  callq .__cxa_guard_release                                              #  112   0x3e688  5      
  jmpq .L_3e760                                                           #  113   0x3e68d  5      
  nop                                                                     #  114   0x3e692  1      
  nop                                                                     #  115   0x3e693  1      
.L_3e800:                                                                 #        0x3e694  0      
  movl $0x10030d20, %edi                                                  #  116   0x3e694  5      
  movl %eax, %r12d                                                        #  117   0x3e699  3      
  nop                                                                     #  118   0x3e69c  1      
  nop                                                                     #  119   0x3e69d  1      
  callq .__cxa_guard_abort                                                #  120   0x3e69e  5      
.L_3e820:                                                                 #        0x3e6a3  0      
  movl %ebx, %edi                                                         #  121   0x3e6a3  2      
  nop                                                                     #  122   0x3e6a5  1      
  nop                                                                     #  123   0x3e6a6  1      
  callq ._ZN2pp10InputEventD2Ev                                           #  124   0x3e6a7  5      
  movl %r12d, %edi                                                        #  125   0x3e6ac  3      
  nop                                                                     #  126   0x3e6af  1      
  nop                                                                     #  127   0x3e6b0  1      
  callq ._Unwind_Resume                                                   #  128   0x3e6b1  5      
  movl %eax, %r12d                                                        #  129   0x3e6b6  3      
  jmpq .L_3e820                                                           #  130   0x3e6b9  5      
  nop                                                                     #  131   0x3e6be  1      
  nop                                                                     #  132   0x3e6bf  1      
  jmpq .L_3e800                                                           #  133   0x3e6c0  5      
  nop                                                                     #  134   0x3e6c5  1      
  nop                                                                     #  135   0x3e6c6  1      
  nop                                                                     #  136   0x3e6c7  1      
                                                                                                   
.size _ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj, .-_ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj

