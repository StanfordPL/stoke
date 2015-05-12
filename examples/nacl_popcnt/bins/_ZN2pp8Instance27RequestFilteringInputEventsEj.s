  .text
  .globl _ZN2pp8Instance27RequestFilteringInputEventsEj
  .type _ZN2pp8Instance27RequestFilteringInputEventsEj, @function

#! file-offset 0x22300
#! rip-offset  0x22300
#! capacity    640 bytes

# Text                                            #  Line  RIP      Bytes  
._ZN2pp8Instance27RequestFilteringInputEventsEj:  #        0x22300  0      
  pushq %r12                                      #  1     0x22300  3      
  movl %esi, %r12d                                #  2     0x22303  3      
  pushq %rbx                                      #  3     0x22306  2      
  movl %edi, %ebx                                 #  4     0x22308  2      
  subl $0x8, %esp                                 #  5     0x2230a  3      
  addq %r15, %rsp                                 #  6     0x2230d  3      
  cmpb $0x0, 0x1000e921(%rip)                     #  7     0x22310  7      
  je .L_223e0                                     #  8     0x22317  6      
  nop                                             #  9     0x2231d  1      
.L_22320:                                         #        0x2231e  0      
  movl 0x1000e91c(%rip), %eax                     #  10    0x2231e  6      
  testq %rax, %rax                                #  11    0x22324  3      
  je .L_22480                                     #  12    0x22327  6      
  xchgw %ax, %ax                                  #  13    0x2232d  3      
  nop                                             #  14    0x22330  1      
.L_22340:                                         #        0x22331  0      
  cmpb $0x0, 0x1000e900(%rip)                     #  15    0x22331  7      
  je .L_223a0                                     #  16    0x22338  6      
  nop                                             #  17    0x2233e  1      
  nop                                             #  18    0x2233f  1      
.L_22360:                                         #        0x22340  0      
  movl %ebx, %ebx                                 #  19    0x22340  2      
  movl 0x4(%r15,%rbx,1), %edi                     #  20    0x22342  5      
  movl %eax, %eax                                 #  21    0x22347  2      
  movl 0x4(%r15,%rax,1), %eax                     #  22    0x22349  5      
  addl $0x8, %esp                                 #  23    0x2234e  3      
  addq %r15, %rsp                                 #  24    0x22351  3      
  popq %rbx                                       #  25    0x22354  2      
  movl %r12d, %esi                                #  26    0x22356  3      
  popq %r12                                       #  27    0x22359  3      
  nop                                             #  28    0x2235c  1      
  andl $0xffffffe0, %eax                          #  29    0x2235d  5      
  addq %r15, %rax                                 #  30    0x22362  3      
  jmpq %rax                                       #  31    0x22365  2      
  nop                                             #  32    0x22367  1      
  nop                                             #  33    0x22368  1      
.L_223a0:                                         #        0x22369  0      
  movl $0x10030c38, %edi                          #  34    0x22369  5      
  nop                                             #  35    0x2236e  1      
  nop                                             #  36    0x2236f  1      
  callq .__cxa_guard_acquire                      #  37    0x22370  5      
  testl %eax, %eax                                #  38    0x22375  2      
  jne .L_224a0                                    #  39    0x22377  6      
  movl 0x1000e8bd(%rip), %eax                     #  40    0x2237d  6      
  jmpq .L_22360                                   #  41    0x22383  5      
  nop                                             #  42    0x22388  1      
  nop                                             #  43    0x22389  1      
.L_223e0:                                         #        0x2238a  0      
  movl $0x10030c38, %edi                          #  44    0x2238a  5      
  nop                                             #  45    0x2238f  1      
  nop                                             #  46    0x22390  1      
  callq .__cxa_guard_acquire                      #  47    0x22391  5      
  testl %eax, %eax                                #  48    0x22396  2      
  je .L_22320                                     #  49    0x22398  6      
  nop                                             #  50    0x2239e  1      
  nop                                             #  51    0x2239f  1      
  callq ._ZN2pp6Module3GetEv                      #  52    0x223a0  5      
  movl %eax, %edi                                 #  53    0x223a5  2      
  movl $0x100202c8, %esi                          #  54    0x223a7  5      
  nop                                             #  55    0x223ac  1      
  nop                                             #  56    0x223ad  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc   #  57    0x223ae  5      
  movl $0x10030c38, %edi                          #  58    0x223b3  5      
  movl %eax, 0x1000e882(%rip)                     #  59    0x223b8  6      
  nop                                             #  60    0x223be  1      
  nop                                             #  61    0x223bf  1      
  callq .__cxa_guard_release                      #  62    0x223c0  5      
  movl 0x1000e875(%rip), %eax                     #  63    0x223c5  6      
  testq %rax, %rax                                #  64    0x223cb  3      
  jne .L_22340                                    #  65    0x223ce  6      
  xchgw %ax, %ax                                  #  66    0x223d4  3      
  nop                                             #  67    0x223d7  1      
.L_22480:                                         #        0x223d8  0      
  addl $0x8, %esp                                 #  68    0x223d8  3      
  addq %r15, %rsp                                 #  69    0x223db  3      
  movl $0xfffffffa, %eax                          #  70    0x223de  5      
  popq %rbx                                       #  71    0x223e3  2      
  popq %r12                                       #  72    0x223e5  3      
  popq %r11                                       #  73    0x223e8  3      
  andl $0xffffffe0, %r11d                         #  74    0x223eb  7      
  addq %r15, %r11                                 #  75    0x223f2  3      
  jmpq %r11                                       #  76    0x223f5  3      
  nop                                             #  77    0x223f8  1      
.L_224a0:                                         #        0x223f9  0      
  nop                                             #  78    0x223f9  1      
  nop                                             #  79    0x223fa  1      
  callq ._ZN2pp6Module3GetEv                      #  80    0x223fb  5      
  movl %eax, %edi                                 #  81    0x22400  2      
  movl $0x100202c8, %esi                          #  82    0x22402  5      
  nop                                             #  83    0x22407  1      
  nop                                             #  84    0x22408  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc   #  85    0x22409  5      
  movl $0x10030c38, %edi                          #  86    0x2240e  5      
  movl %eax, 0x1000e827(%rip)                     #  87    0x22413  6      
  nop                                             #  88    0x22419  1      
  nop                                             #  89    0x2241a  1      
  callq .__cxa_guard_release                      #  90    0x2241b  5      
  movl 0x1000e81a(%rip), %eax                     #  91    0x22420  6      
  jmpq .L_22360                                   #  92    0x22426  5      
  nop                                             #  93    0x2242b  1      
  nop                                             #  94    0x2242c  1      
.L_22520:                                         #        0x2242d  0      
  movl %eax, %ebx                                 #  95    0x2242d  2      
  movl $0x10030c38, %edi                          #  96    0x2242f  5      
  nop                                             #  97    0x22434  1      
  nop                                             #  98    0x22435  1      
  callq .__cxa_guard_abort                        #  99    0x22436  5      
  movl %ebx, %edi                                 #  100   0x2243b  2      
  nop                                             #  101   0x2243d  1      
  nop                                             #  102   0x2243e  1      
  callq ._Unwind_Resume                           #  103   0x2243f  5      
  jmpq .L_22520                                   #  104   0x22444  5      
  nop                                             #  105   0x22449  1      
  nop                                             #  106   0x2244a  1      
                                                                           
.size _ZN2pp8Instance27RequestFilteringInputEventsEj, .-_ZN2pp8Instance27RequestFilteringInputEventsEj

