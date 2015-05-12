  .text
  .globl _ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_
  .type _ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_, @function

#! file-offset 0x21580
#! rip-offset  0x21580
#! capacity    768 bytes

# Text                                                                #  Line  RIP      Bytes  
._ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_:  #        0x21580  0      
  movq %rbx, -0x20(%rsp)                                              #  1     0x21580  5      
  movq %r12, -0x18(%rsp)                                              #  2     0x21585  5      
  movl %ecx, %ebx                                                     #  3     0x2158a  2      
  movq %r13, -0x10(%rsp)                                              #  4     0x2158c  5      
  movq %r14, -0x8(%rsp)                                               #  5     0x21591  5      
  subl $0x48, %esp                                                    #  6     0x21596  3      
  addq %r15, %rsp                                                     #  7     0x21599  3      
  nop                                                                 #  8     0x2159c  1      
  cmpb $0x0, 0x1000f664(%rip)                                         #  9     0x2159d  7      
  movl %esi, %r14d                                                    #  10    0x215a4  3      
  movl %edi, %r13d                                                    #  11    0x215a7  3      
  movl %edx, %r12d                                                    #  12    0x215aa  3      
  je .L_216c0                                                         #  13    0x215ad  6      
  nop                                                                 #  14    0x215b3  1      
.L_215c0:                                                             #        0x215b4  0      
  movl 0x1000f656(%rip), %eax                                         #  15    0x215b4  6      
  testq %rax, %rax                                                    #  16    0x215ba  3      
  je .L_21760                                                         #  17    0x215bd  6      
  xchgw %ax, %ax                                                      #  18    0x215c3  3      
  nop                                                                 #  19    0x215c6  1      
.L_215e0:                                                             #        0x215c7  0      
  cmpb $0x0, 0x1000f63a(%rip)                                         #  20    0x215c7  7      
  je .L_21680                                                         #  21    0x215ce  6      
  nop                                                                 #  22    0x215d4  1      
  nop                                                                 #  23    0x215d5  1      
.L_21600:                                                             #        0x215d6  0      
  movl %ebx, %ebx                                                     #  24    0x215d6  2      
  movq 0x8(%r15,%rbx,1), %r8                                          #  25    0x215d8  5      
  movl %eax, %eax                                                     #  26    0x215dd  2      
  movl 0x4(%r15,%rax,1), %eax                                         #  27    0x215df  5      
  movl %r14d, %esi                                                    #  28    0x215e4  3      
  movq 0x40(%rsp), %r14                                               #  29    0x215e7  5      
  movq %r8, (%rsp)                                                    #  30    0x215ec  4      
  nop                                                                 #  31    0x215f0  1      
  movl %ebx, %ebx                                                     #  32    0x215f1  2      
  movq 0x10(%r15,%rbx,1), %r9                                         #  33    0x215f3  5      
  movq 0x28(%rsp), %rbx                                               #  34    0x215f8  5      
  movq %r9, 0x8(%rsp)                                                 #  35    0x215fd  5      
  movl %r12d, %r12d                                                   #  36    0x21602  3      
  movq 0x8(%r15,%r12,1), %rdx                                         #  37    0x21605  5      
  movq %rdx, 0x10(%rsp)                                               #  38    0x2160a  5      
  xchgw %ax, %ax                                                      #  39    0x2160f  3      
  movl %r12d, %r12d                                                   #  40    0x21612  3      
  movq 0x10(%r15,%r12,1), %rcx                                        #  41    0x21615  5      
  movq 0x30(%rsp), %r12                                               #  42    0x2161a  5      
  movq %rcx, 0x18(%rsp)                                               #  43    0x2161f  5      
  movl %r13d, %r13d                                                   #  44    0x21624  3      
  movl 0x4(%r15,%r13,1), %edi                                         #  45    0x21627  5      
  movq 0x38(%rsp), %r13                                               #  46    0x2162c  5      
  nop                                                                 #  47    0x21631  1      
  addl $0x48, %esp                                                    #  48    0x21632  3      
  addq %r15, %rsp                                                     #  49    0x21635  3      
  andl $0xffffffe0, %eax                                              #  50    0x21638  5      
  addq %r15, %rax                                                     #  51    0x2163d  3      
  jmpq %rax                                                           #  52    0x21640  2      
  nop                                                                 #  53    0x21642  1      
  nop                                                                 #  54    0x21643  1      
.L_21680:                                                             #        0x21644  0      
  movl $0x10030c08, %edi                                              #  55    0x21644  5      
  nop                                                                 #  56    0x21649  1      
  nop                                                                 #  57    0x2164a  1      
  callq .__cxa_guard_acquire                                          #  58    0x2164b  5      
  testl %eax, %eax                                                    #  59    0x21650  2      
  jne .L_217a0                                                        #  60    0x21652  6      
  movl 0x1000f5b2(%rip), %eax                                         #  61    0x21658  6      
  jmpq .L_21600                                                       #  62    0x2165e  5      
  nop                                                                 #  63    0x21663  1      
.L_216c0:                                                             #        0x21664  0      
  movl $0x10030c08, %edi                                              #  64    0x21664  5      
  nop                                                                 #  65    0x21669  1      
  nop                                                                 #  66    0x2166a  1      
  callq .__cxa_guard_acquire                                          #  67    0x2166b  5      
  testl %eax, %eax                                                    #  68    0x21670  2      
  je .L_215c0                                                         #  69    0x21672  6      
  nop                                                                 #  70    0x21678  1      
  nop                                                                 #  71    0x21679  1      
  callq ._ZN2pp6Module3GetEv                                          #  72    0x2167a  5      
  movl %eax, %edi                                                     #  73    0x2167f  2      
  movl $0x100202b8, %esi                                              #  74    0x21681  5      
  nop                                                                 #  75    0x21686  1      
  nop                                                                 #  76    0x21687  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  77    0x21688  5      
  movl $0x10030c08, %edi                                              #  78    0x2168d  5      
  movl %eax, 0x1000f578(%rip)                                         #  79    0x21692  6      
  nop                                                                 #  80    0x21698  1      
  nop                                                                 #  81    0x21699  1      
  callq .__cxa_guard_release                                          #  82    0x2169a  5      
  movl 0x1000f56b(%rip), %eax                                         #  83    0x2169f  6      
  testq %rax, %rax                                                    #  84    0x216a5  3      
  jne .L_215e0                                                        #  85    0x216a8  6      
  xchgw %ax, %ax                                                      #  86    0x216ae  3      
  nop                                                                 #  87    0x216b1  1      
.L_21760:                                                             #        0x216b2  0      
  movq 0x28(%rsp), %rbx                                               #  88    0x216b2  5      
  movq 0x30(%rsp), %r12                                               #  89    0x216b7  5      
  movq 0x38(%rsp), %r13                                               #  90    0x216bc  5      
  movq 0x40(%rsp), %r14                                               #  91    0x216c1  5      
  addl $0x48, %esp                                                    #  92    0x216c6  3      
  addq %r15, %rsp                                                     #  93    0x216c9  3      
  popq %r11                                                           #  94    0x216cc  3      
  nop                                                                 #  95    0x216cf  1      
  andl $0xffffffe0, %r11d                                             #  96    0x216d0  7      
  addq %r15, %r11                                                     #  97    0x216d7  3      
  jmpq %r11                                                           #  98    0x216da  3      
  nop                                                                 #  99    0x216dd  1      
  nop                                                                 #  100   0x216de  1      
.L_217a0:                                                             #        0x216df  0      
  nop                                                                 #  101   0x216df  1      
  nop                                                                 #  102   0x216e0  1      
  callq ._ZN2pp6Module3GetEv                                          #  103   0x216e1  5      
  movl %eax, %edi                                                     #  104   0x216e6  2      
  movl $0x100202b8, %esi                                              #  105   0x216e8  5      
  nop                                                                 #  106   0x216ed  1      
  nop                                                                 #  107   0x216ee  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  108   0x216ef  5      
  movl $0x10030c08, %edi                                              #  109   0x216f4  5      
  movl %eax, 0x1000f511(%rip)                                         #  110   0x216f9  6      
  nop                                                                 #  111   0x216ff  1      
  nop                                                                 #  112   0x21700  1      
  callq .__cxa_guard_release                                          #  113   0x21701  5      
  movl 0x1000f504(%rip), %eax                                         #  114   0x21706  6      
  jmpq .L_21600                                                       #  115   0x2170c  5      
  nop                                                                 #  116   0x21711  1      
  nop                                                                 #  117   0x21712  1      
.L_21820:                                                             #        0x21713  0      
  movl %eax, %ebx                                                     #  118   0x21713  2      
  movl $0x10030c08, %edi                                              #  119   0x21715  5      
  nop                                                                 #  120   0x2171a  1      
  nop                                                                 #  121   0x2171b  1      
  callq .__cxa_guard_abort                                            #  122   0x2171c  5      
  movl %ebx, %edi                                                     #  123   0x21721  2      
  nop                                                                 #  124   0x21723  1      
  nop                                                                 #  125   0x21724  1      
  callq ._Unwind_Resume                                               #  126   0x21725  5      
  jmpq .L_21820                                                       #  127   0x2172a  5      
  nop                                                                 #  128   0x2172f  1      
  nop                                                                 #  129   0x21730  1      
                                                                                               
.size _ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_, .-_ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_

