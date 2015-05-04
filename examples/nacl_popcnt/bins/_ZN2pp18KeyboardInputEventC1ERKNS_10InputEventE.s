  .text
  .globl _ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE
  .type _ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x388e0
#! rip-offset  0x388e0
#! capacity    928 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE:                                 #        0x388e0  0      
  movq %r12, -0x10(%rsp)                                                          #  1     0x388e0  5      
  movl %edi, %r12d                                                                #  2     0x388e5  3      
  movq %rbx, -0x18(%rsp)                                                          #  3     0x388e8  5      
  movq %r13, -0x8(%rsp)                                                           #  4     0x388ed  5      
  movl %r12d, %edi                                                                #  5     0x388f2  3      
  subl $0x18, %esp                                                                #  6     0x388f5  3      
  addq %r15, %rsp                                                                 #  7     0x388f8  3      
  movl %esi, %ebx                                                                 #  8     0x388fb  2      
  nop                                                                             #  9     0x388fd  1      
  nop                                                                             #  10    0x388fe  1      
  nop                                                                             #  11    0x388ff  1      
  callq ._ZN2pp10InputEventC2Ev                                                   #  12    0x38900  5      
  movl %r12d, %r12d                                                               #  13    0x38905  3      
  movl $0x100207c8, (%r15,%r12,1)                                                 #  14    0x38908  8      
  cmpb $0x0, 0xfff8419(%rip)                                                      #  15    0x38910  7      
  je .L_38a60                                                                     #  16    0x38917  6      
  nop                                                                             #  17    0x3891d  1      
.L_38940:                                                                         #        0x3891e  0      
  movl 0xfff8414(%rip), %eax                                                      #  18    0x3891e  6      
  testq %rax, %rax                                                                #  19    0x38924  3      
  je .L_38a00                                                                     #  20    0x38927  6      
  cmpb $0x0, 0xfff83fc(%rip)                                                      #  21    0x3892d  7      
  je .L_38b00                                                                     #  22    0x38934  6      
  nop                                                                             #  23    0x3893a  1      
.L_38960:                                                                         #        0x3893b  0      
  movl %eax, %eax                                                                 #  24    0x3893b  2      
  movl 0x4(%r15,%rax,1), %eax                                                     #  25    0x3893d  5      
  movl %ebx, %ebx                                                                 #  26    0x38942  2      
  movl 0x4(%r15,%rbx,1), %edi                                                     #  27    0x38944  5      
  nop                                                                             #  28    0x38949  1      
  andl $0xffffffe0, %eax                                                          #  29    0x3894a  5      
  addq %r15, %rax                                                                 #  30    0x3894f  3      
  callq %rax                                                                      #  31    0x38952  2      
  testl %eax, %eax                                                                #  32    0x38954  2      
  je .L_389e0                                                                     #  33    0x38956  6      
  movl %ebx, %ebx                                                                 #  34    0x3895c  2      
  movl 0x4(%r15,%rbx,1), %r13d                                                    #  35    0x3895e  5      
  nop                                                                             #  36    0x38963  1      
  nop                                                                             #  37    0x38964  1      
  callq ._ZN2pp6Module3GetEv                                                      #  38    0x38965  5      
  movl %eax, %eax                                                                 #  39    0x3896a  2      
  movl %r13d, %edi                                                                #  40    0x3896c  3      
  movl %eax, %eax                                                                 #  41    0x3896f  2      
  movl 0x24(%r15,%rax,1), %eax                                                    #  42    0x38971  5      
  movl %eax, %eax                                                                 #  43    0x38976  2      
  movl (%r15,%rax,1), %eax                                                        #  44    0x38978  4      
  movl %eax, %eax                                                                 #  45    0x3897c  2      
  movl (%r15,%rax,1), %eax                                                        #  46    0x3897e  4      
  andl $0xffffffe0, %eax                                                          #  47    0x38982  5      
  addq %r15, %rax                                                                 #  48    0x38987  3      
  callq %rax                                                                      #  49    0x3898a  2      
  movl %ebx, %ebx                                                                 #  50    0x3898c  2      
  movl 0x4(%r15,%rbx,1), %esi                                                     #  51    0x3898e  5      
  movl %r12d, %edi                                                                #  52    0x38993  3      
  xchgw %ax, %ax                                                                  #  53    0x38996  3      
  nop                                                                             #  54    0x38999  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                #  55    0x3899a  5      
.L_389e0:                                                                         #        0x3899f  0      
  movq (%rsp), %rbx                                                               #  56    0x3899f  4      
  movq 0x8(%rsp), %r12                                                            #  57    0x389a3  5      
  movq 0x10(%rsp), %r13                                                           #  58    0x389a8  5      
  addl $0x18, %esp                                                                #  59    0x389ad  3      
  addq %r15, %rsp                                                                 #  60    0x389b0  3      
  popq %r11                                                                       #  61    0x389b3  3      
  andl $0xffffffe0, %r11d                                                         #  62    0x389b6  7      
  addq %r15, %r11                                                                 #  63    0x389bd  3      
  jmpq %r11                                                                       #  64    0x389c0  3      
.L_38a00:                                                                         #        0x389c3  0      
  nop                                                                             #  65    0x389c3  1      
  nop                                                                             #  66    0x389c4  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  67    0x389c5  5      
  testl %eax, %eax                                                                #  68    0x389ca  2      
  je .L_389e0                                                                     #  69    0x389cc  6      
  nop                                                                             #  70    0x389d2  1      
  nop                                                                             #  71    0x389d3  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  72    0x389d4  5      
  movl %eax, %eax                                                                 #  73    0x389d9  2      
  jmpq .L_38960                                                                   #  74    0x389db  5      
  nop                                                                             #  75    0x389e0  1      
  nop                                                                             #  76    0x389e1  1      
.L_38a60:                                                                         #        0x389e2  0      
  movl $0x10030d30, %edi                                                          #  77    0x389e2  5      
  nop                                                                             #  78    0x389e7  1      
  nop                                                                             #  79    0x389e8  1      
  callq .__cxa_guard_acquire                                                      #  80    0x389e9  5      
  testl %eax, %eax                                                                #  81    0x389ee  2      
  je .L_38940                                                                     #  82    0x389f0  6      
  nop                                                                             #  83    0x389f6  1      
  nop                                                                             #  84    0x389f7  1      
  callq ._ZN2pp6Module3GetEv                                                      #  85    0x389f8  5      
  movl %eax, %edi                                                                 #  86    0x389fd  2      
  movl $0x1002068a, %esi                                                          #  87    0x389ff  5      
  nop                                                                             #  88    0x38a04  1      
  nop                                                                             #  89    0x38a05  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  90    0x38a06  5      
  movl $0x10030d30, %edi                                                          #  91    0x38a0b  5      
  movl %eax, 0xfff8322(%rip)                                                      #  92    0x38a10  6      
  nop                                                                             #  93    0x38a16  1      
  nop                                                                             #  94    0x38a17  1      
  callq .__cxa_guard_release                                                      #  95    0x38a18  5      
  jmpq .L_38940                                                                   #  96    0x38a1d  5      
  nop                                                                             #  97    0x38a22  1      
  nop                                                                             #  98    0x38a23  1      
.L_38b00:                                                                         #        0x38a24  0      
  movl $0x10030d30, %edi                                                          #  99    0x38a24  5      
  nop                                                                             #  100   0x38a29  1      
  nop                                                                             #  101   0x38a2a  1      
  callq .__cxa_guard_acquire                                                      #  102   0x38a2b  5      
  testl %eax, %eax                                                                #  103   0x38a30  2      
  jne .L_38b60                                                                    #  104   0x38a32  6      
  nop                                                                             #  105   0x38a38  1      
  nop                                                                             #  106   0x38a39  1      
.L_38b40:                                                                         #        0x38a3a  0      
  movl 0xfff82f8(%rip), %eax                                                      #  107   0x38a3a  6      
  jmpq .L_38960                                                                   #  108   0x38a40  5      
  nop                                                                             #  109   0x38a45  1      
  nop                                                                             #  110   0x38a46  1      
.L_38b60:                                                                         #        0x38a47  0      
  nop                                                                             #  111   0x38a47  1      
  nop                                                                             #  112   0x38a48  1      
  callq ._ZN2pp6Module3GetEv                                                      #  113   0x38a49  5      
  movl %eax, %edi                                                                 #  114   0x38a4e  2      
  movl $0x1002068a, %esi                                                          #  115   0x38a50  5      
  nop                                                                             #  116   0x38a55  1      
  nop                                                                             #  117   0x38a56  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  118   0x38a57  5      
  movl $0x10030d30, %edi                                                          #  119   0x38a5c  5      
  movl %eax, 0xfff82d1(%rip)                                                      #  120   0x38a61  6      
  nop                                                                             #  121   0x38a67  1      
  nop                                                                             #  122   0x38a68  1      
  callq .__cxa_guard_release                                                      #  123   0x38a69  5      
  jmpq .L_38b40                                                                   #  124   0x38a6e  5      
  nop                                                                             #  125   0x38a73  1      
  nop                                                                             #  126   0x38a74  1      
.L_38be0:                                                                         #        0x38a75  0      
  movl $0x10030d30, %edi                                                          #  127   0x38a75  5      
  movl %eax, %ebx                                                                 #  128   0x38a7a  2      
  nop                                                                             #  129   0x38a7c  1      
  nop                                                                             #  130   0x38a7d  1      
  callq .__cxa_guard_abort                                                        #  131   0x38a7e  5      
.L_38c00:                                                                         #        0x38a83  0      
  movl %r12d, %edi                                                                #  132   0x38a83  3      
  nop                                                                             #  133   0x38a86  1      
  nop                                                                             #  134   0x38a87  1      
  callq ._ZN2pp10InputEventD2Ev                                                   #  135   0x38a88  5      
  movl %ebx, %edi                                                                 #  136   0x38a8d  2      
  nop                                                                             #  137   0x38a8f  1      
  nop                                                                             #  138   0x38a90  1      
  callq ._Unwind_Resume                                                           #  139   0x38a91  5      
  movl %eax, %ebx                                                                 #  140   0x38a96  2      
  jmpq .L_38c00                                                                   #  141   0x38a98  5      
  nop                                                                             #  142   0x38a9d  1      
  nop                                                                             #  143   0x38a9e  1      
  jmpq .L_38be0                                                                   #  144   0x38a9f  5      
  nop                                                                             #  145   0x38aa4  1      
  nop                                                                             #  146   0x38aa5  1      
  nop                                                                             #  147   0x38aa6  1      
                                                                                                           
.size _ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE, .-_ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE

