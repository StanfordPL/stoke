  .text
  .globl _ZN2pp8Instance27RequestFilteringInputEventsEj
  .type _ZN2pp8Instance27RequestFilteringInputEventsEj, @function

#! file-offset 0x22380
#! rip-offset  0x22380
#! capacity    640 bytes

# Text                                            #  Line  RIP      Bytes  
._ZN2pp8Instance27RequestFilteringInputEventsEj:  #        0x22380  0      
  pushq %r12                                      #  1     0x22380  3      
  movl %esi, %r12d                                #  2     0x22383  3      
  pushq %rbx                                      #  3     0x22386  2      
  movl %edi, %ebx                                 #  4     0x22388  2      
  subl $0x8, %esp                                 #  5     0x2238a  3      
  addq %r15, %rsp                                 #  6     0x2238d  3      
  cmpb $0x0, 0x1000e8a1(%rip)                     #  7     0x22390  7      
  je .L_22460                                     #  8     0x22397  6      
  nop                                             #  9     0x2239d  1      
.L_223a0:                                         #        0x2239e  0      
  movl 0x1000e89c(%rip), %eax                     #  10    0x2239e  6      
  testq %rax, %rax                                #  11    0x223a4  3      
  je .L_22500                                     #  12    0x223a7  6      
  xchgw %ax, %ax                                  #  13    0x223ad  3      
  nop                                             #  14    0x223b0  1      
.L_223c0:                                         #        0x223b1  0      
  cmpb $0x0, 0x1000e880(%rip)                     #  15    0x223b1  7      
  je .L_22420                                     #  16    0x223b8  6      
  nop                                             #  17    0x223be  1      
  nop                                             #  18    0x223bf  1      
.L_223e0:                                         #        0x223c0  0      
  movl %ebx, %ebx                                 #  19    0x223c0  2      
  movl 0x4(%r15,%rbx,1), %edi                     #  20    0x223c2  5      
  movl %eax, %eax                                 #  21    0x223c7  2      
  movl 0x4(%r15,%rax,1), %eax                     #  22    0x223c9  5      
  addl $0x8, %esp                                 #  23    0x223ce  3      
  addq %r15, %rsp                                 #  24    0x223d1  3      
  popq %rbx                                       #  25    0x223d4  2      
  movl %r12d, %esi                                #  26    0x223d6  3      
  popq %r12                                       #  27    0x223d9  3      
  nop                                             #  28    0x223dc  1      
  andl $0xffffffe0, %eax                          #  29    0x223dd  5      
  addq %r15, %rax                                 #  30    0x223e2  3      
  jmpq %rax                                       #  31    0x223e5  2      
  nop                                             #  32    0x223e7  1      
  nop                                             #  33    0x223e8  1      
.L_22420:                                         #        0x223e9  0      
  movl $0x10030c38, %edi                          #  34    0x223e9  5      
  nop                                             #  35    0x223ee  1      
  nop                                             #  36    0x223ef  1      
  callq .__cxa_guard_acquire                      #  37    0x223f0  5      
  testl %eax, %eax                                #  38    0x223f5  2      
  jne .L_22520                                    #  39    0x223f7  6      
  movl 0x1000e83d(%rip), %eax                     #  40    0x223fd  6      
  jmpq .L_223e0                                   #  41    0x22403  5      
  nop                                             #  42    0x22408  1      
  nop                                             #  43    0x22409  1      
.L_22460:                                         #        0x2240a  0      
  movl $0x10030c38, %edi                          #  44    0x2240a  5      
  nop                                             #  45    0x2240f  1      
  nop                                             #  46    0x22410  1      
  callq .__cxa_guard_acquire                      #  47    0x22411  5      
  testl %eax, %eax                                #  48    0x22416  2      
  je .L_223a0                                     #  49    0x22418  6      
  nop                                             #  50    0x2241e  1      
  nop                                             #  51    0x2241f  1      
  callq ._ZN2pp6Module3GetEv                      #  52    0x22420  5      
  movl %eax, %edi                                 #  53    0x22425  2      
  movl $0x100202c8, %esi                          #  54    0x22427  5      
  nop                                             #  55    0x2242c  1      
  nop                                             #  56    0x2242d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc   #  57    0x2242e  5      
  movl $0x10030c38, %edi                          #  58    0x22433  5      
  movl %eax, 0x1000e802(%rip)                     #  59    0x22438  6      
  nop                                             #  60    0x2243e  1      
  nop                                             #  61    0x2243f  1      
  callq .__cxa_guard_release                      #  62    0x22440  5      
  movl 0x1000e7f5(%rip), %eax                     #  63    0x22445  6      
  testq %rax, %rax                                #  64    0x2244b  3      
  jne .L_223c0                                    #  65    0x2244e  6      
  xchgw %ax, %ax                                  #  66    0x22454  3      
  nop                                             #  67    0x22457  1      
.L_22500:                                         #        0x22458  0      
  addl $0x8, %esp                                 #  68    0x22458  3      
  addq %r15, %rsp                                 #  69    0x2245b  3      
  movl $0xfffffffa, %eax                          #  70    0x2245e  5      
  popq %rbx                                       #  71    0x22463  2      
  popq %r12                                       #  72    0x22465  3      
  popq %r11                                       #  73    0x22468  3      
  andl $0xffffffe0, %r11d                         #  74    0x2246b  7      
  addq %r15, %r11                                 #  75    0x22472  3      
  jmpq %r11                                       #  76    0x22475  3      
  nop                                             #  77    0x22478  1      
.L_22520:                                         #        0x22479  0      
  nop                                             #  78    0x22479  1      
  nop                                             #  79    0x2247a  1      
  callq ._ZN2pp6Module3GetEv                      #  80    0x2247b  5      
  movl %eax, %edi                                 #  81    0x22480  2      
  movl $0x100202c8, %esi                          #  82    0x22482  5      
  nop                                             #  83    0x22487  1      
  nop                                             #  84    0x22488  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc   #  85    0x22489  5      
  movl $0x10030c38, %edi                          #  86    0x2248e  5      
  movl %eax, 0x1000e7a7(%rip)                     #  87    0x22493  6      
  nop                                             #  88    0x22499  1      
  nop                                             #  89    0x2249a  1      
  callq .__cxa_guard_release                      #  90    0x2249b  5      
  movl 0x1000e79a(%rip), %eax                     #  91    0x224a0  6      
  jmpq .L_223e0                                   #  92    0x224a6  5      
  nop                                             #  93    0x224ab  1      
  nop                                             #  94    0x224ac  1      
.L_225a0:                                         #        0x224ad  0      
  movl %eax, %ebx                                 #  95    0x224ad  2      
  movl $0x10030c38, %edi                          #  96    0x224af  5      
  nop                                             #  97    0x224b4  1      
  nop                                             #  98    0x224b5  1      
  callq .__cxa_guard_abort                        #  99    0x224b6  5      
  movl %ebx, %edi                                 #  100   0x224bb  2      
  nop                                             #  101   0x224bd  1      
  nop                                             #  102   0x224be  1      
  callq ._Unwind_Resume                           #  103   0x224bf  5      
  jmpq .L_225a0                                   #  104   0x224c4  5      
  nop                                             #  105   0x224c9  1      
  nop                                             #  106   0x224ca  1      
                                                                           
.size _ZN2pp8Instance27RequestFilteringInputEventsEj, .-_ZN2pp8Instance27RequestFilteringInputEventsEj

