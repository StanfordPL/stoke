  .text
  .globl _ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_
  .type _ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_, @function

#! file-offset 0x21600
#! rip-offset  0x21600
#! capacity    768 bytes

# Text                                                                #  Line  RIP      Bytes  
._ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_:  #        0x21600  0      
  movq %rbx, -0x20(%rsp)                                              #  1     0x21600  5      
  movq %r12, -0x18(%rsp)                                              #  2     0x21605  5      
  movl %ecx, %ebx                                                     #  3     0x2160a  2      
  movq %r13, -0x10(%rsp)                                              #  4     0x2160c  5      
  movq %r14, -0x8(%rsp)                                               #  5     0x21611  5      
  subl $0x48, %esp                                                    #  6     0x21616  3      
  addq %r15, %rsp                                                     #  7     0x21619  3      
  nop                                                                 #  8     0x2161c  1      
  cmpb $0x0, 0x1000f5e4(%rip)                                         #  9     0x2161d  7      
  movl %esi, %r14d                                                    #  10    0x21624  3      
  movl %edi, %r13d                                                    #  11    0x21627  3      
  movl %edx, %r12d                                                    #  12    0x2162a  3      
  je .L_21740                                                         #  13    0x2162d  6      
  nop                                                                 #  14    0x21633  1      
.L_21640:                                                             #        0x21634  0      
  movl 0x1000f5d6(%rip), %eax                                         #  15    0x21634  6      
  testq %rax, %rax                                                    #  16    0x2163a  3      
  je .L_217e0                                                         #  17    0x2163d  6      
  xchgw %ax, %ax                                                      #  18    0x21643  3      
  nop                                                                 #  19    0x21646  1      
.L_21660:                                                             #        0x21647  0      
  cmpb $0x0, 0x1000f5ba(%rip)                                         #  20    0x21647  7      
  je .L_21700                                                         #  21    0x2164e  6      
  nop                                                                 #  22    0x21654  1      
  nop                                                                 #  23    0x21655  1      
.L_21680:                                                             #        0x21656  0      
  movl %ebx, %ebx                                                     #  24    0x21656  2      
  movq 0x8(%r15,%rbx,1), %r8                                          #  25    0x21658  5      
  movl %eax, %eax                                                     #  26    0x2165d  2      
  movl 0x4(%r15,%rax,1), %eax                                         #  27    0x2165f  5      
  movl %r14d, %esi                                                    #  28    0x21664  3      
  movq 0x40(%rsp), %r14                                               #  29    0x21667  5      
  movq %r8, (%rsp)                                                    #  30    0x2166c  4      
  nop                                                                 #  31    0x21670  1      
  movl %ebx, %ebx                                                     #  32    0x21671  2      
  movq 0x10(%r15,%rbx,1), %r9                                         #  33    0x21673  5      
  movq 0x28(%rsp), %rbx                                               #  34    0x21678  5      
  movq %r9, 0x8(%rsp)                                                 #  35    0x2167d  5      
  movl %r12d, %r12d                                                   #  36    0x21682  3      
  movq 0x8(%r15,%r12,1), %rdx                                         #  37    0x21685  5      
  movq %rdx, 0x10(%rsp)                                               #  38    0x2168a  5      
  xchgw %ax, %ax                                                      #  39    0x2168f  3      
  movl %r12d, %r12d                                                   #  40    0x21692  3      
  movq 0x10(%r15,%r12,1), %rcx                                        #  41    0x21695  5      
  movq 0x30(%rsp), %r12                                               #  42    0x2169a  5      
  movq %rcx, 0x18(%rsp)                                               #  43    0x2169f  5      
  movl %r13d, %r13d                                                   #  44    0x216a4  3      
  movl 0x4(%r15,%r13,1), %edi                                         #  45    0x216a7  5      
  movq 0x38(%rsp), %r13                                               #  46    0x216ac  5      
  nop                                                                 #  47    0x216b1  1      
  addl $0x48, %esp                                                    #  48    0x216b2  3      
  addq %r15, %rsp                                                     #  49    0x216b5  3      
  andl $0xffffffe0, %eax                                              #  50    0x216b8  5      
  addq %r15, %rax                                                     #  51    0x216bd  3      
  jmpq %rax                                                           #  52    0x216c0  2      
  nop                                                                 #  53    0x216c2  1      
  nop                                                                 #  54    0x216c3  1      
.L_21700:                                                             #        0x216c4  0      
  movl $0x10030c08, %edi                                              #  55    0x216c4  5      
  nop                                                                 #  56    0x216c9  1      
  nop                                                                 #  57    0x216ca  1      
  callq .__cxa_guard_acquire                                          #  58    0x216cb  5      
  testl %eax, %eax                                                    #  59    0x216d0  2      
  jne .L_21820                                                        #  60    0x216d2  6      
  movl 0x1000f532(%rip), %eax                                         #  61    0x216d8  6      
  jmpq .L_21680                                                       #  62    0x216de  5      
  nop                                                                 #  63    0x216e3  1      
.L_21740:                                                             #        0x216e4  0      
  movl $0x10030c08, %edi                                              #  64    0x216e4  5      
  nop                                                                 #  65    0x216e9  1      
  nop                                                                 #  66    0x216ea  1      
  callq .__cxa_guard_acquire                                          #  67    0x216eb  5      
  testl %eax, %eax                                                    #  68    0x216f0  2      
  je .L_21640                                                         #  69    0x216f2  6      
  nop                                                                 #  70    0x216f8  1      
  nop                                                                 #  71    0x216f9  1      
  callq ._ZN2pp6Module3GetEv                                          #  72    0x216fa  5      
  movl %eax, %edi                                                     #  73    0x216ff  2      
  movl $0x100202b8, %esi                                              #  74    0x21701  5      
  nop                                                                 #  75    0x21706  1      
  nop                                                                 #  76    0x21707  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  77    0x21708  5      
  movl $0x10030c08, %edi                                              #  78    0x2170d  5      
  movl %eax, 0x1000f4f8(%rip)                                         #  79    0x21712  6      
  nop                                                                 #  80    0x21718  1      
  nop                                                                 #  81    0x21719  1      
  callq .__cxa_guard_release                                          #  82    0x2171a  5      
  movl 0x1000f4eb(%rip), %eax                                         #  83    0x2171f  6      
  testq %rax, %rax                                                    #  84    0x21725  3      
  jne .L_21660                                                        #  85    0x21728  6      
  xchgw %ax, %ax                                                      #  86    0x2172e  3      
  nop                                                                 #  87    0x21731  1      
.L_217e0:                                                             #        0x21732  0      
  movq 0x28(%rsp), %rbx                                               #  88    0x21732  5      
  movq 0x30(%rsp), %r12                                               #  89    0x21737  5      
  movq 0x38(%rsp), %r13                                               #  90    0x2173c  5      
  movq 0x40(%rsp), %r14                                               #  91    0x21741  5      
  addl $0x48, %esp                                                    #  92    0x21746  3      
  addq %r15, %rsp                                                     #  93    0x21749  3      
  popq %r11                                                           #  94    0x2174c  3      
  nop                                                                 #  95    0x2174f  1      
  andl $0xffffffe0, %r11d                                             #  96    0x21750  7      
  addq %r15, %r11                                                     #  97    0x21757  3      
  jmpq %r11                                                           #  98    0x2175a  3      
  nop                                                                 #  99    0x2175d  1      
  nop                                                                 #  100   0x2175e  1      
.L_21820:                                                             #        0x2175f  0      
  nop                                                                 #  101   0x2175f  1      
  nop                                                                 #  102   0x21760  1      
  callq ._ZN2pp6Module3GetEv                                          #  103   0x21761  5      
  movl %eax, %edi                                                     #  104   0x21766  2      
  movl $0x100202b8, %esi                                              #  105   0x21768  5      
  nop                                                                 #  106   0x2176d  1      
  nop                                                                 #  107   0x2176e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  108   0x2176f  5      
  movl $0x10030c08, %edi                                              #  109   0x21774  5      
  movl %eax, 0x1000f491(%rip)                                         #  110   0x21779  6      
  nop                                                                 #  111   0x2177f  1      
  nop                                                                 #  112   0x21780  1      
  callq .__cxa_guard_release                                          #  113   0x21781  5      
  movl 0x1000f484(%rip), %eax                                         #  114   0x21786  6      
  jmpq .L_21680                                                       #  115   0x2178c  5      
  nop                                                                 #  116   0x21791  1      
  nop                                                                 #  117   0x21792  1      
.L_218a0:                                                             #        0x21793  0      
  movl %eax, %ebx                                                     #  118   0x21793  2      
  movl $0x10030c08, %edi                                              #  119   0x21795  5      
  nop                                                                 #  120   0x2179a  1      
  nop                                                                 #  121   0x2179b  1      
  callq .__cxa_guard_abort                                            #  122   0x2179c  5      
  movl %ebx, %edi                                                     #  123   0x217a1  2      
  nop                                                                 #  124   0x217a3  1      
  nop                                                                 #  125   0x217a4  1      
  callq ._Unwind_Resume                                               #  126   0x217a5  5      
  jmpq .L_218a0                                                       #  127   0x217aa  5      
  nop                                                                 #  128   0x217af  1      
  nop                                                                 #  129   0x217b0  1      
                                                                                               
.size _ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_, .-_ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_

