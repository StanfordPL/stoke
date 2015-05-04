  .text
  .globl _ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv
  .type _ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv, @function

#! file-offset 0x29360
#! rip-offset  0x29360
#! capacity    768 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv:   #        0x29360  0      
  pushq %r12                                     #  1     0x29360  3      
  movl %esi, %r12d                               #  2     0x29363  3      
  pushq %rbx                                     #  3     0x29366  2      
  movl %edi, %ebx                                #  4     0x29368  2      
  subl $0x8, %esp                                #  5     0x2936a  3      
  addq %r15, %rsp                                #  6     0x2936d  3      
  cmpb $0x0, 0x100078f9(%rip)                    #  7     0x29370  7      
  je .L_29420                                    #  8     0x29377  6      
  nop                                            #  9     0x2937d  1      
.L_29380:                                        #        0x2937e  0      
  movl 0x100078f4(%rip), %eax                    #  10    0x2937e  6      
  testq %rax, %rax                               #  11    0x29384  3      
  je .L_294c0                                    #  12    0x29387  6      
  xchgw %ax, %ax                                 #  13    0x2938d  3      
  nop                                            #  14    0x29390  1      
.L_293a0:                                        #        0x29391  0      
  cmpb $0x0, 0x100078d8(%rip)                    #  15    0x29391  7      
  je .L_29520                                    #  16    0x29398  6      
  nop                                            #  17    0x2939e  1      
  nop                                            #  18    0x2939f  1      
.L_293c0:                                        #        0x293a0  0      
  movl %eax, %eax                                #  19    0x293a0  2      
  movl 0x8(%r15,%rax,1), %eax                    #  20    0x293a2  5      
  movl %r12d, %r12d                              #  21    0x293a7  3      
  movl 0x4(%r15,%r12,1), %edi                    #  22    0x293aa  5      
  nop                                            #  23    0x293af  1      
  andl $0xffffffe0, %eax                         #  24    0x293b0  5      
  addq %r15, %rax                                #  25    0x293b5  3      
  callq %rax                                     #  26    0x293b8  2      
  movl %ebx, %edi                                #  27    0x293ba  2      
  movl %eax, %edx                                #  28    0x293bc  2      
  xorl %esi, %esi                                #  29    0x293be  2      
  nop                                            #  30    0x293c0  1      
  nop                                            #  31    0x293c1  1      
  callq ._ZN2pp7FileRefC1ENS_7PassRefEi          #  32    0x293c2  5      
  addl $0x8, %esp                                #  33    0x293c7  3      
  addq %r15, %rsp                                #  34    0x293ca  3      
  movl %ebx, %eax                                #  35    0x293cd  2      
  popq %rbx                                      #  36    0x293cf  2      
  popq %r12                                      #  37    0x293d1  3      
  popq %r11                                      #  38    0x293d4  3      
  andl $0xffffffe0, %r11d                        #  39    0x293d7  7      
  addq %r15, %r11                                #  40    0x293de  3      
  jmpq %r11                                      #  41    0x293e1  3      
  nop                                            #  42    0x293e4  1      
.L_29420:                                        #        0x293e5  0      
  movl $0x10030c70, %edi                         #  43    0x293e5  5      
  nop                                            #  44    0x293ea  1      
  nop                                            #  45    0x293eb  1      
  callq .__cxa_guard_acquire                     #  46    0x293ec  5      
  testl %eax, %eax                               #  47    0x293f1  2      
  je .L_29380                                    #  48    0x293f3  6      
  nop                                            #  49    0x293f9  1      
  nop                                            #  50    0x293fa  1      
  callq ._ZN2pp6Module3GetEv                     #  51    0x293fb  5      
  movl %eax, %edi                                #  52    0x29400  2      
  movl $0x100204c7, %esi                         #  53    0x29402  5      
  nop                                            #  54    0x29407  1      
  nop                                            #  55    0x29408  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  56    0x29409  5      
  movl $0x10030c70, %edi                         #  57    0x2940e  5      
  movl %eax, 0x1000785f(%rip)                    #  58    0x29413  6      
  nop                                            #  59    0x29419  1      
  nop                                            #  60    0x2941a  1      
  callq .__cxa_guard_release                     #  61    0x2941b  5      
  movl 0x10007852(%rip), %eax                    #  62    0x29420  6      
  testq %rax, %rax                               #  63    0x29426  3      
  jne .L_293a0                                   #  64    0x29429  6      
  xchgw %ax, %ax                                 #  65    0x2942f  3      
  nop                                            #  66    0x29432  1      
.L_294c0:                                        #        0x29433  0      
  movl %ebx, %edi                                #  67    0x29433  2      
  nop                                            #  68    0x29435  1      
  nop                                            #  69    0x29436  1      
  callq ._ZN2pp8ResourceC2Ev                     #  70    0x29437  5      
  movl %ebx, %ebx                                #  71    0x2943c  2      
  movl $0x100204e8, (%r15,%rbx,1)                #  72    0x2943e  8      
  movl %ebx, %eax                                #  73    0x29446  2      
  addl $0x8, %esp                                #  74    0x29448  3      
  addq %r15, %rsp                                #  75    0x2944b  3      
  popq %rbx                                      #  76    0x2944e  2      
  popq %r12                                      #  77    0x29450  3      
  popq %r11                                      #  78    0x29453  3      
  nop                                            #  79    0x29456  1      
  andl $0xffffffe0, %r11d                        #  80    0x29457  7      
  addq %r15, %r11                                #  81    0x2945e  3      
  jmpq %r11                                      #  82    0x29461  3      
  nop                                            #  83    0x29464  1      
  nop                                            #  84    0x29465  1      
.L_29520:                                        #        0x29466  0      
  movl $0x10030c70, %edi                         #  85    0x29466  5      
  nop                                            #  86    0x2946b  1      
  nop                                            #  87    0x2946c  1      
  callq .__cxa_guard_acquire                     #  88    0x2946d  5      
  testl %eax, %eax                               #  89    0x29472  2      
  jne .L_29580                                   #  90    0x29474  6      
  nop                                            #  91    0x2947a  1      
  nop                                            #  92    0x2947b  1      
.L_29560:                                        #        0x2947c  0      
  movl 0x100077f6(%rip), %eax                    #  93    0x2947c  6      
  jmpq .L_293c0                                  #  94    0x29482  5      
  nop                                            #  95    0x29487  1      
  nop                                            #  96    0x29488  1      
.L_29580:                                        #        0x29489  0      
  nop                                            #  97    0x29489  1      
  nop                                            #  98    0x2948a  1      
  callq ._ZN2pp6Module3GetEv                     #  99    0x2948b  5      
  movl %eax, %edi                                #  100   0x29490  2      
  movl $0x100204c7, %esi                         #  101   0x29492  5      
  nop                                            #  102   0x29497  1      
  nop                                            #  103   0x29498  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  104   0x29499  5      
  movl $0x10030c70, %edi                         #  105   0x2949e  5      
  movl %eax, 0x100077cf(%rip)                    #  106   0x294a3  6      
  nop                                            #  107   0x294a9  1      
  nop                                            #  108   0x294aa  1      
  callq .__cxa_guard_release                     #  109   0x294ab  5      
  jmpq .L_29560                                  #  110   0x294b0  5      
  nop                                            #  111   0x294b5  1      
  nop                                            #  112   0x294b6  1      
.L_29600:                                        #        0x294b7  0      
  movl %eax, %ebx                                #  113   0x294b7  2      
  movl $0x10030c70, %edi                         #  114   0x294b9  5      
  nop                                            #  115   0x294be  1      
  nop                                            #  116   0x294bf  1      
  callq .__cxa_guard_abort                       #  117   0x294c0  5      
  movl %ebx, %edi                                #  118   0x294c5  2      
  nop                                            #  119   0x294c7  1      
  nop                                            #  120   0x294c8  1      
  callq ._Unwind_Resume                          #  121   0x294c9  5      
  jmpq .L_29600                                  #  122   0x294ce  5      
  nop                                            #  123   0x294d3  1      
  nop                                            #  124   0x294d4  1      
                                                                          
.size _ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv, .-_ZNK2pp15URLResponseInfo16GetBodyAsFileRefEv

