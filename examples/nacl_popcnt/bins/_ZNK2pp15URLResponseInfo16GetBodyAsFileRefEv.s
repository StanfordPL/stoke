  .text
  .globl _ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv
  .type _ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv, @function

#! file-offset 0x292e0
#! rip-offset  0x292e0
#! capacity    768 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv:   #        0x292e0  0      
  pushq %r12                                     #  1     0x292e0  3      
  movl %esi, %r12d                               #  2     0x292e3  3      
  pushq %rbx                                     #  3     0x292e6  2      
  movl %edi, %ebx                                #  4     0x292e8  2      
  subl $0x8, %esp                                #  5     0x292ea  3      
  addq %r15, %rsp                                #  6     0x292ed  3      
  cmpb $0x0, 0x10007979(%rip)                    #  7     0x292f0  7      
  je .L_293a0                                    #  8     0x292f7  6      
  nop                                            #  9     0x292fd  1      
.L_29300:                                        #        0x292fe  0      
  movl 0x10007974(%rip), %eax                    #  10    0x292fe  6      
  testq %rax, %rax                               #  11    0x29304  3      
  je .L_29440                                    #  12    0x29307  6      
  xchgw %ax, %ax                                 #  13    0x2930d  3      
  nop                                            #  14    0x29310  1      
.L_29320:                                        #        0x29311  0      
  cmpb $0x0, 0x10007958(%rip)                    #  15    0x29311  7      
  je .L_294a0                                    #  16    0x29318  6      
  nop                                            #  17    0x2931e  1      
  nop                                            #  18    0x2931f  1      
.L_29340:                                        #        0x29320  0      
  movl %eax, %eax                                #  19    0x29320  2      
  movl 0x8(%r15,%rax,1), %eax                    #  20    0x29322  5      
  movl %r12d, %r12d                              #  21    0x29327  3      
  movl 0x4(%r15,%r12,1), %edi                    #  22    0x2932a  5      
  nop                                            #  23    0x2932f  1      
  andl $0xffffffe0, %eax                         #  24    0x29330  5      
  addq %r15, %rax                                #  25    0x29335  3      
  callq %rax                                     #  26    0x29338  2      
  movl %ebx, %edi                                #  27    0x2933a  2      
  movl %eax, %edx                                #  28    0x2933c  2      
  xorl %esi, %esi                                #  29    0x2933e  2      
  nop                                            #  30    0x29340  1      
  nop                                            #  31    0x29341  1      
  callq ._ZN2pp7FileRefC1ENS_7PassRefEi          #  32    0x29342  5      
  addl $0x8, %esp                                #  33    0x29347  3      
  addq %r15, %rsp                                #  34    0x2934a  3      
  movl %ebx, %eax                                #  35    0x2934d  2      
  popq %rbx                                      #  36    0x2934f  2      
  popq %r12                                      #  37    0x29351  3      
  popq %r11                                      #  38    0x29354  3      
  andl $0xffffffe0, %r11d                        #  39    0x29357  7      
  addq %r15, %r11                                #  40    0x2935e  3      
  jmpq %r11                                      #  41    0x29361  3      
  nop                                            #  42    0x29364  1      
.L_293a0:                                        #        0x29365  0      
  movl $0x10030c70, %edi                         #  43    0x29365  5      
  nop                                            #  44    0x2936a  1      
  nop                                            #  45    0x2936b  1      
  callq .__cxa_guard_acquire                     #  46    0x2936c  5      
  testl %eax, %eax                               #  47    0x29371  2      
  je .L_29300                                    #  48    0x29373  6      
  nop                                            #  49    0x29379  1      
  nop                                            #  50    0x2937a  1      
  callq ._ZN2pp6Module3GetEv                     #  51    0x2937b  5      
  movl %eax, %edi                                #  52    0x29380  2      
  movl $0x100204c7, %esi                         #  53    0x29382  5      
  nop                                            #  54    0x29387  1      
  nop                                            #  55    0x29388  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  56    0x29389  5      
  movl $0x10030c70, %edi                         #  57    0x2938e  5      
  movl %eax, 0x100078df(%rip)                    #  58    0x29393  6      
  nop                                            #  59    0x29399  1      
  nop                                            #  60    0x2939a  1      
  callq .__cxa_guard_release                     #  61    0x2939b  5      
  movl 0x100078d2(%rip), %eax                    #  62    0x293a0  6      
  testq %rax, %rax                               #  63    0x293a6  3      
  jne .L_29320                                   #  64    0x293a9  6      
  xchgw %ax, %ax                                 #  65    0x293af  3      
  nop                                            #  66    0x293b2  1      
.L_29440:                                        #        0x293b3  0      
  movl %ebx, %edi                                #  67    0x293b3  2      
  nop                                            #  68    0x293b5  1      
  nop                                            #  69    0x293b6  1      
  callq ._ZN2pp8ResourceC2Ev                     #  70    0x293b7  5      
  movl %ebx, %ebx                                #  71    0x293bc  2      
  movl $0x100204e8, (%r15,%rbx,1)                #  72    0x293be  8      
  movl %ebx, %eax                                #  73    0x293c6  2      
  addl $0x8, %esp                                #  74    0x293c8  3      
  addq %r15, %rsp                                #  75    0x293cb  3      
  popq %rbx                                      #  76    0x293ce  2      
  popq %r12                                      #  77    0x293d0  3      
  popq %r11                                      #  78    0x293d3  3      
  nop                                            #  79    0x293d6  1      
  andl $0xffffffe0, %r11d                        #  80    0x293d7  7      
  addq %r15, %r11                                #  81    0x293de  3      
  jmpq %r11                                      #  82    0x293e1  3      
  nop                                            #  83    0x293e4  1      
  nop                                            #  84    0x293e5  1      
.L_294a0:                                        #        0x293e6  0      
  movl $0x10030c70, %edi                         #  85    0x293e6  5      
  nop                                            #  86    0x293eb  1      
  nop                                            #  87    0x293ec  1      
  callq .__cxa_guard_acquire                     #  88    0x293ed  5      
  testl %eax, %eax                               #  89    0x293f2  2      
  jne .L_29500                                   #  90    0x293f4  6      
  nop                                            #  91    0x293fa  1      
  nop                                            #  92    0x293fb  1      
.L_294e0:                                        #        0x293fc  0      
  movl 0x10007876(%rip), %eax                    #  93    0x293fc  6      
  jmpq .L_29340                                  #  94    0x29402  5      
  nop                                            #  95    0x29407  1      
  nop                                            #  96    0x29408  1      
.L_29500:                                        #        0x29409  0      
  nop                                            #  97    0x29409  1      
  nop                                            #  98    0x2940a  1      
  callq ._ZN2pp6Module3GetEv                     #  99    0x2940b  5      
  movl %eax, %edi                                #  100   0x29410  2      
  movl $0x100204c7, %esi                         #  101   0x29412  5      
  nop                                            #  102   0x29417  1      
  nop                                            #  103   0x29418  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  104   0x29419  5      
  movl $0x10030c70, %edi                         #  105   0x2941e  5      
  movl %eax, 0x1000784f(%rip)                    #  106   0x29423  6      
  nop                                            #  107   0x29429  1      
  nop                                            #  108   0x2942a  1      
  callq .__cxa_guard_release                     #  109   0x2942b  5      
  jmpq .L_294e0                                  #  110   0x29430  5      
  nop                                            #  111   0x29435  1      
  nop                                            #  112   0x29436  1      
.L_29580:                                        #        0x29437  0      
  movl %eax, %ebx                                #  113   0x29437  2      
  movl $0x10030c70, %edi                         #  114   0x29439  5      
  nop                                            #  115   0x2943e  1      
  nop                                            #  116   0x2943f  1      
  callq .__cxa_guard_abort                       #  117   0x29440  5      
  movl %ebx, %edi                                #  118   0x29445  2      
  nop                                            #  119   0x29447  1      
  nop                                            #  120   0x29448  1      
  callq ._Unwind_Resume                          #  121   0x29449  5      
  jmpq .L_29580                                  #  122   0x2944e  5      
  nop                                            #  123   0x29453  1      
  nop                                            #  124   0x29454  1      
                                                                          
.size _ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv, .-_ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv

