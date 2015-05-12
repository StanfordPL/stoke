  .text
  .globl _ZNK2pp15WheelInputEvent8GetDeltaEv
  .type _ZNK2pp15WheelInputEvent8GetDeltaEv, @function

#! file-offset 0x381e0
#! rip-offset  0x381e0
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15WheelInputEvent8GetDeltaEv:            #        0x381e0  0      
  pushq %r12                                     #  1     0x381e0  3      
  movl %esi, %r12d                               #  2     0x381e3  3      
  pushq %rbx                                     #  3     0x381e6  2      
  movl %edi, %ebx                                #  4     0x381e8  2      
  subl $0x18, %esp                               #  5     0x381ea  3      
  addq %r15, %rsp                                #  6     0x381ed  3      
  cmpb $0x0, 0xfff8b59(%rip)                     #  7     0x381f0  7      
  je .L_38260                                    #  8     0x381f7  6      
  nop                                            #  9     0x381fd  1      
.L_38200:                                        #        0x381fe  0      
  movl 0xfff8b54(%rip), %eax                     #  10    0x381fe  6      
  testq %rax, %rax                               #  11    0x38204  3      
  jne .L_38300                                   #  12    0x38207  6      
  xchgw %ax, %ax                                 #  13    0x3820d  3      
  nop                                            #  14    0x38210  1      
.L_38220:                                        #        0x38211  0      
  movl %ebx, %ebx                                #  15    0x38211  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x38213  8      
  movl %ebx, %ebx                                #  17    0x3821b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x3821d  9      
  movl %ebx, %eax                                #  19    0x38226  2      
  addl $0x18, %esp                               #  20    0x38228  3      
  addq %r15, %rsp                                #  21    0x3822b  3      
  popq %rbx                                      #  22    0x3822e  2      
  popq %r12                                      #  23    0x38230  3      
  popq %r11                                      #  24    0x38233  3      
  andl $0xffffffe0, %r11d                        #  25    0x38236  7      
  addq %r15, %r11                                #  26    0x3823d  3      
  jmpq %r11                                      #  27    0x38240  3      
  nop                                            #  28    0x38243  1      
  nop                                            #  29    0x38244  1      
.L_38260:                                        #        0x38245  0      
  movl $0x10030d50, %edi                         #  30    0x38245  5      
  nop                                            #  31    0x3824a  1      
  nop                                            #  32    0x3824b  1      
  callq .__cxa_guard_acquire                     #  33    0x3824c  5      
  testl %eax, %eax                               #  34    0x38251  2      
  je .L_38200                                    #  35    0x38253  6      
  nop                                            #  36    0x38259  1      
  nop                                            #  37    0x3825a  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x3825b  5      
  movl %eax, %edi                                #  39    0x38260  2      
  movl $0x100206c0, %esi                         #  40    0x38262  5      
  nop                                            #  41    0x38267  1      
  nop                                            #  42    0x38268  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x38269  5      
  movl $0x10030d50, %edi                         #  44    0x3826e  5      
  movl %eax, 0xfff8adf(%rip)                     #  45    0x38273  6      
  nop                                            #  46    0x38279  1      
  nop                                            #  47    0x3827a  1      
  callq .__cxa_guard_release                     #  48    0x3827b  5      
  movl 0xfff8ad2(%rip), %eax                     #  49    0x38280  6      
  testq %rax, %rax                               #  50    0x38286  3      
  je .L_38220                                    #  51    0x38289  6      
  xchgw %ax, %ax                                 #  52    0x3828f  3      
  nop                                            #  53    0x38292  1      
.L_38300:                                        #        0x38293  0      
  cmpb $0x0, 0xfff8ab6(%rip)                     #  54    0x38293  7      
  je .L_38380                                    #  55    0x3829a  6      
  nop                                            #  56    0x382a0  1      
  nop                                            #  57    0x382a1  1      
.L_38320:                                        #        0x382a2  0      
  movl %eax, %eax                                #  58    0x382a2  2      
  movl 0x8(%r15,%rax,1), %eax                    #  59    0x382a4  5      
  movl %r12d, %r12d                              #  60    0x382a9  3      
  movl 0x4(%r15,%r12,1), %edi                    #  61    0x382ac  5      
  nop                                            #  62    0x382b1  1      
  andl $0xffffffe0, %eax                         #  63    0x382b2  5      
  addq %r15, %rax                                #  64    0x382b7  3      
  callq %rax                                     #  65    0x382ba  2      
  movq %xmm0, 0x8(%rsp)                          #  66    0x382bc  7      
  movq 0x8(%rsp), %rax                           #  67    0x382c3  5      
  movl %ebx, %ebx                                #  68    0x382c8  2      
  movl %eax, (%r15,%rbx,1)                       #  69    0x382ca  4      
  shrq $0x20, %rax                               #  70    0x382ce  4      
  movl %ebx, %ebx                                #  71    0x382d2  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  72    0x382d4  5      
  nop                                            #  73    0x382d9  1      
  addl $0x18, %esp                               #  74    0x382da  3      
  addq %r15, %rsp                                #  75    0x382dd  3      
  movl %ebx, %eax                                #  76    0x382e0  2      
  popq %rbx                                      #  77    0x382e2  2      
  popq %r12                                      #  78    0x382e4  3      
  popq %r11                                      #  79    0x382e7  3      
  andl $0xffffffe0, %r11d                        #  80    0x382ea  7      
  addq %r15, %r11                                #  81    0x382f1  3      
  jmpq %r11                                      #  82    0x382f4  3      
  nop                                            #  83    0x382f7  1      
.L_38380:                                        #        0x382f8  0      
  movl $0x10030d50, %edi                         #  84    0x382f8  5      
  nop                                            #  85    0x382fd  1      
  nop                                            #  86    0x382fe  1      
  callq .__cxa_guard_acquire                     #  87    0x382ff  5      
  testl %eax, %eax                               #  88    0x38304  2      
  jne .L_383e0                                   #  89    0x38306  6      
  nop                                            #  90    0x3830c  1      
  nop                                            #  91    0x3830d  1      
.L_383c0:                                        #        0x3830e  0      
  movl 0xfff8a44(%rip), %eax                     #  92    0x3830e  6      
  jmpq .L_38320                                  #  93    0x38314  5      
  nop                                            #  94    0x38319  1      
  nop                                            #  95    0x3831a  1      
.L_383e0:                                        #        0x3831b  0      
  nop                                            #  96    0x3831b  1      
  nop                                            #  97    0x3831c  1      
  callq ._ZN2pp6Module3GetEv                     #  98    0x3831d  5      
  movl %eax, %edi                                #  99    0x38322  2      
  movl $0x100206c0, %esi                         #  100   0x38324  5      
  nop                                            #  101   0x38329  1      
  nop                                            #  102   0x3832a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  103   0x3832b  5      
  movl $0x10030d50, %edi                         #  104   0x38330  5      
  movl %eax, 0xfff8a1d(%rip)                     #  105   0x38335  6      
  nop                                            #  106   0x3833b  1      
  nop                                            #  107   0x3833c  1      
  callq .__cxa_guard_release                     #  108   0x3833d  5      
  jmpq .L_383c0                                  #  109   0x38342  5      
  nop                                            #  110   0x38347  1      
  nop                                            #  111   0x38348  1      
.L_38460:                                        #        0x38349  0      
  movl %eax, %ebx                                #  112   0x38349  2      
  movl $0x10030d50, %edi                         #  113   0x3834b  5      
  nop                                            #  114   0x38350  1      
  nop                                            #  115   0x38351  1      
  callq .__cxa_guard_abort                       #  116   0x38352  5      
  movl %ebx, %edi                                #  117   0x38357  2      
  nop                                            #  118   0x38359  1      
  nop                                            #  119   0x3835a  1      
  callq ._Unwind_Resume                          #  120   0x3835b  5      
  jmpq .L_38460                                  #  121   0x38360  5      
  nop                                            #  122   0x38365  1      
  nop                                            #  123   0x38366  1      
                                                                          
.size _ZNK2pp15WheelInputEvent8GetDeltaEv, .-_ZNK2pp15WheelInputEvent8GetDeltaEv

