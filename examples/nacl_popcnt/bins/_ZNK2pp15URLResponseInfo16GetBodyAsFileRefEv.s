  .text
  .globl _ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv
  .type _ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv, @function

#! file-offset 0x292c0
#! rip-offset  0x292c0
#! capacity    768 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv:   #        0x292c0  0      
  pushq %r12                                     #  1     0x292c0  3      
  movl %esi, %r12d                               #  2     0x292c3  3      
  pushq %rbx                                     #  3     0x292c6  2      
  movl %edi, %ebx                                #  4     0x292c8  2      
  subl $0x8, %esp                                #  5     0x292ca  3      
  addq %r15, %rsp                                #  6     0x292cd  3      
  cmpb $0x0, 0x10007999(%rip)                    #  7     0x292d0  7      
  je .L_29380                                    #  8     0x292d7  6      
  nop                                            #  9     0x292dd  1      
.L_292e0:                                        #        0x292de  0      
  movl 0x10007994(%rip), %eax                    #  10    0x292de  6      
  testq %rax, %rax                               #  11    0x292e4  3      
  je .L_29420                                    #  12    0x292e7  6      
  xchgw %ax, %ax                                 #  13    0x292ed  3      
  nop                                            #  14    0x292f0  1      
.L_29300:                                        #        0x292f1  0      
  cmpb $0x0, 0x10007978(%rip)                    #  15    0x292f1  7      
  je .L_29480                                    #  16    0x292f8  6      
  nop                                            #  17    0x292fe  1      
  nop                                            #  18    0x292ff  1      
.L_29320:                                        #        0x29300  0      
  movl %eax, %eax                                #  19    0x29300  2      
  movl 0x8(%r15,%rax,1), %eax                    #  20    0x29302  5      
  movl %r12d, %r12d                              #  21    0x29307  3      
  movl 0x4(%r15,%r12,1), %edi                    #  22    0x2930a  5      
  nop                                            #  23    0x2930f  1      
  andl $0xffffffe0, %eax                         #  24    0x29310  5      
  addq %r15, %rax                                #  25    0x29315  3      
  callq %rax                                     #  26    0x29318  2      
  movl %ebx, %edi                                #  27    0x2931a  2      
  movl %eax, %edx                                #  28    0x2931c  2      
  xorl %esi, %esi                                #  29    0x2931e  2      
  nop                                            #  30    0x29320  1      
  nop                                            #  31    0x29321  1      
  callq ._ZN2pp7FileRefC1ENS_7PassRefEi          #  32    0x29322  5      
  addl $0x8, %esp                                #  33    0x29327  3      
  addq %r15, %rsp                                #  34    0x2932a  3      
  movl %ebx, %eax                                #  35    0x2932d  2      
  popq %rbx                                      #  36    0x2932f  2      
  popq %r12                                      #  37    0x29331  3      
  popq %r11                                      #  38    0x29334  3      
  andl $0xffffffe0, %r11d                        #  39    0x29337  7      
  addq %r15, %r11                                #  40    0x2933e  3      
  jmpq %r11                                      #  41    0x29341  3      
  nop                                            #  42    0x29344  1      
.L_29380:                                        #        0x29345  0      
  movl $0x10030c70, %edi                         #  43    0x29345  5      
  nop                                            #  44    0x2934a  1      
  nop                                            #  45    0x2934b  1      
  callq .__cxa_guard_acquire                     #  46    0x2934c  5      
  testl %eax, %eax                               #  47    0x29351  2      
  je .L_292e0                                    #  48    0x29353  6      
  nop                                            #  49    0x29359  1      
  nop                                            #  50    0x2935a  1      
  callq ._ZN2pp6Module3GetEv                     #  51    0x2935b  5      
  movl %eax, %edi                                #  52    0x29360  2      
  movl $0x100204c7, %esi                         #  53    0x29362  5      
  nop                                            #  54    0x29367  1      
  nop                                            #  55    0x29368  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  56    0x29369  5      
  movl $0x10030c70, %edi                         #  57    0x2936e  5      
  movl %eax, 0x100078ff(%rip)                    #  58    0x29373  6      
  nop                                            #  59    0x29379  1      
  nop                                            #  60    0x2937a  1      
  callq .__cxa_guard_release                     #  61    0x2937b  5      
  movl 0x100078f2(%rip), %eax                    #  62    0x29380  6      
  testq %rax, %rax                               #  63    0x29386  3      
  jne .L_29300                                   #  64    0x29389  6      
  xchgw %ax, %ax                                 #  65    0x2938f  3      
  nop                                            #  66    0x29392  1      
.L_29420:                                        #        0x29393  0      
  movl %ebx, %edi                                #  67    0x29393  2      
  nop                                            #  68    0x29395  1      
  nop                                            #  69    0x29396  1      
  callq ._ZN2pp8ResourceC2Ev                     #  70    0x29397  5      
  movl %ebx, %ebx                                #  71    0x2939c  2      
  movl $0x100204e8, (%r15,%rbx,1)                #  72    0x2939e  8      
  movl %ebx, %eax                                #  73    0x293a6  2      
  addl $0x8, %esp                                #  74    0x293a8  3      
  addq %r15, %rsp                                #  75    0x293ab  3      
  popq %rbx                                      #  76    0x293ae  2      
  popq %r12                                      #  77    0x293b0  3      
  popq %r11                                      #  78    0x293b3  3      
  nop                                            #  79    0x293b6  1      
  andl $0xffffffe0, %r11d                        #  80    0x293b7  7      
  addq %r15, %r11                                #  81    0x293be  3      
  jmpq %r11                                      #  82    0x293c1  3      
  nop                                            #  83    0x293c4  1      
  nop                                            #  84    0x293c5  1      
.L_29480:                                        #        0x293c6  0      
  movl $0x10030c70, %edi                         #  85    0x293c6  5      
  nop                                            #  86    0x293cb  1      
  nop                                            #  87    0x293cc  1      
  callq .__cxa_guard_acquire                     #  88    0x293cd  5      
  testl %eax, %eax                               #  89    0x293d2  2      
  jne .L_294e0                                   #  90    0x293d4  6      
  nop                                            #  91    0x293da  1      
  nop                                            #  92    0x293db  1      
.L_294c0:                                        #        0x293dc  0      
  movl 0x10007896(%rip), %eax                    #  93    0x293dc  6      
  jmpq .L_29320                                  #  94    0x293e2  5      
  nop                                            #  95    0x293e7  1      
  nop                                            #  96    0x293e8  1      
.L_294e0:                                        #        0x293e9  0      
  nop                                            #  97    0x293e9  1      
  nop                                            #  98    0x293ea  1      
  callq ._ZN2pp6Module3GetEv                     #  99    0x293eb  5      
  movl %eax, %edi                                #  100   0x293f0  2      
  movl $0x100204c7, %esi                         #  101   0x293f2  5      
  nop                                            #  102   0x293f7  1      
  nop                                            #  103   0x293f8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  104   0x293f9  5      
  movl $0x10030c70, %edi                         #  105   0x293fe  5      
  movl %eax, 0x1000786f(%rip)                    #  106   0x29403  6      
  nop                                            #  107   0x29409  1      
  nop                                            #  108   0x2940a  1      
  callq .__cxa_guard_release                     #  109   0x2940b  5      
  jmpq .L_294c0                                  #  110   0x29410  5      
  nop                                            #  111   0x29415  1      
  nop                                            #  112   0x29416  1      
.L_29560:                                        #        0x29417  0      
  movl %eax, %ebx                                #  113   0x29417  2      
  movl $0x10030c70, %edi                         #  114   0x29419  5      
  nop                                            #  115   0x2941e  1      
  nop                                            #  116   0x2941f  1      
  callq .__cxa_guard_abort                       #  117   0x29420  5      
  movl %ebx, %edi                                #  118   0x29425  2      
  nop                                            #  119   0x29427  1      
  nop                                            #  120   0x29428  1      
  callq ._Unwind_Resume                          #  121   0x29429  5      
  jmpq .L_29560                                  #  122   0x2942e  5      
  nop                                            #  123   0x29433  1      
  nop                                            #  124   0x29434  1      
                                                                          
.size _ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv, .-_ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv

