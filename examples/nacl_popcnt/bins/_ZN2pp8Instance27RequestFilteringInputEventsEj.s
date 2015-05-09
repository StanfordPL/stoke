  .text
  .globl _ZN2pp8Instance27RequestFilteringInputEventsEj
  .type _ZN2pp8Instance27RequestFilteringInputEventsEj, @function

#! file-offset 0x222e0
#! rip-offset  0x222e0
#! capacity    640 bytes

# Text                                            #  Line  RIP      Bytes  
._ZN2pp8Instance27RequestFilteringInputEventsEj:  #        0x222e0  0      
  pushq %r12                                      #  1     0x222e0  3      
  movl %esi, %r12d                                #  2     0x222e3  3      
  pushq %rbx                                      #  3     0x222e6  2      
  movl %edi, %ebx                                 #  4     0x222e8  2      
  subl $0x8, %esp                                 #  5     0x222ea  3      
  addq %r15, %rsp                                 #  6     0x222ed  3      
  cmpb $0x0, 0x1000e941(%rip)                     #  7     0x222f0  7      
  je .L_223c0                                     #  8     0x222f7  6      
  nop                                             #  9     0x222fd  1      
.L_22300:                                         #        0x222fe  0      
  movl 0x1000e93c(%rip), %eax                     #  10    0x222fe  6      
  testq %rax, %rax                                #  11    0x22304  3      
  je .L_22460                                     #  12    0x22307  6      
  xchgw %ax, %ax                                  #  13    0x2230d  3      
  nop                                             #  14    0x22310  1      
.L_22320:                                         #        0x22311  0      
  cmpb $0x0, 0x1000e920(%rip)                     #  15    0x22311  7      
  je .L_22380                                     #  16    0x22318  6      
  nop                                             #  17    0x2231e  1      
  nop                                             #  18    0x2231f  1      
.L_22340:                                         #        0x22320  0      
  movl %ebx, %ebx                                 #  19    0x22320  2      
  movl 0x4(%r15,%rbx,1), %edi                     #  20    0x22322  5      
  movl %eax, %eax                                 #  21    0x22327  2      
  movl 0x4(%r15,%rax,1), %eax                     #  22    0x22329  5      
  addl $0x8, %esp                                 #  23    0x2232e  3      
  addq %r15, %rsp                                 #  24    0x22331  3      
  popq %rbx                                       #  25    0x22334  2      
  movl %r12d, %esi                                #  26    0x22336  3      
  popq %r12                                       #  27    0x22339  3      
  nop                                             #  28    0x2233c  1      
  andl $0xffffffe0, %eax                          #  29    0x2233d  5      
  addq %r15, %rax                                 #  30    0x22342  3      
  jmpq %rax                                       #  31    0x22345  2      
  nop                                             #  32    0x22347  1      
  nop                                             #  33    0x22348  1      
.L_22380:                                         #        0x22349  0      
  movl $0x10030c38, %edi                          #  34    0x22349  5      
  nop                                             #  35    0x2234e  1      
  nop                                             #  36    0x2234f  1      
  callq .__cxa_guard_acquire                      #  37    0x22350  5      
  testl %eax, %eax                                #  38    0x22355  2      
  jne .L_22480                                    #  39    0x22357  6      
  movl 0x1000e8dd(%rip), %eax                     #  40    0x2235d  6      
  jmpq .L_22340                                   #  41    0x22363  5      
  nop                                             #  42    0x22368  1      
  nop                                             #  43    0x22369  1      
.L_223c0:                                         #        0x2236a  0      
  movl $0x10030c38, %edi                          #  44    0x2236a  5      
  nop                                             #  45    0x2236f  1      
  nop                                             #  46    0x22370  1      
  callq .__cxa_guard_acquire                      #  47    0x22371  5      
  testl %eax, %eax                                #  48    0x22376  2      
  je .L_22300                                     #  49    0x22378  6      
  nop                                             #  50    0x2237e  1      
  nop                                             #  51    0x2237f  1      
  callq ._ZN2pp6Module3GetEv                      #  52    0x22380  5      
  movl %eax, %edi                                 #  53    0x22385  2      
  movl $0x100202c8, %esi                          #  54    0x22387  5      
  nop                                             #  55    0x2238c  1      
  nop                                             #  56    0x2238d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc   #  57    0x2238e  5      
  movl $0x10030c38, %edi                          #  58    0x22393  5      
  movl %eax, 0x1000e8a2(%rip)                     #  59    0x22398  6      
  nop                                             #  60    0x2239e  1      
  nop                                             #  61    0x2239f  1      
  callq .__cxa_guard_release                      #  62    0x223a0  5      
  movl 0x1000e895(%rip), %eax                     #  63    0x223a5  6      
  testq %rax, %rax                                #  64    0x223ab  3      
  jne .L_22320                                    #  65    0x223ae  6      
  xchgw %ax, %ax                                  #  66    0x223b4  3      
  nop                                             #  67    0x223b7  1      
.L_22460:                                         #        0x223b8  0      
  addl $0x8, %esp                                 #  68    0x223b8  3      
  addq %r15, %rsp                                 #  69    0x223bb  3      
  movl $0xfffffffa, %eax                          #  70    0x223be  5      
  popq %rbx                                       #  71    0x223c3  2      
  popq %r12                                       #  72    0x223c5  3      
  popq %r11                                       #  73    0x223c8  3      
  andl $0xffffffe0, %r11d                         #  74    0x223cb  7      
  addq %r15, %r11                                 #  75    0x223d2  3      
  jmpq %r11                                       #  76    0x223d5  3      
  nop                                             #  77    0x223d8  1      
.L_22480:                                         #        0x223d9  0      
  nop                                             #  78    0x223d9  1      
  nop                                             #  79    0x223da  1      
  callq ._ZN2pp6Module3GetEv                      #  80    0x223db  5      
  movl %eax, %edi                                 #  81    0x223e0  2      
  movl $0x100202c8, %esi                          #  82    0x223e2  5      
  nop                                             #  83    0x223e7  1      
  nop                                             #  84    0x223e8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc   #  85    0x223e9  5      
  movl $0x10030c38, %edi                          #  86    0x223ee  5      
  movl %eax, 0x1000e847(%rip)                     #  87    0x223f3  6      
  nop                                             #  88    0x223f9  1      
  nop                                             #  89    0x223fa  1      
  callq .__cxa_guard_release                      #  90    0x223fb  5      
  movl 0x1000e83a(%rip), %eax                     #  91    0x22400  6      
  jmpq .L_22340                                   #  92    0x22406  5      
  nop                                             #  93    0x2240b  1      
  nop                                             #  94    0x2240c  1      
.L_22500:                                         #        0x2240d  0      
  movl %eax, %ebx                                 #  95    0x2240d  2      
  movl $0x10030c38, %edi                          #  96    0x2240f  5      
  nop                                             #  97    0x22414  1      
  nop                                             #  98    0x22415  1      
  callq .__cxa_guard_abort                        #  99    0x22416  5      
  movl %ebx, %edi                                 #  100   0x2241b  2      
  nop                                             #  101   0x2241d  1      
  nop                                             #  102   0x2241e  1      
  callq ._Unwind_Resume                           #  103   0x2241f  5      
  jmpq .L_22500                                   #  104   0x22424  5      
  nop                                             #  105   0x22429  1      
  nop                                             #  106   0x2242a  1      
                                                                           
.size _ZN2pp8Instance27RequestFilteringInputEventsEj, .-_ZN2pp8Instance27RequestFilteringInputEventsEj

