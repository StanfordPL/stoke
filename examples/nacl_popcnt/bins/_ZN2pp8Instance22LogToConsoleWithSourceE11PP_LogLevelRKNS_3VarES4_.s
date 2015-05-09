  .text
  .globl _ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_
  .type _ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_, @function

#! file-offset 0x21560
#! rip-offset  0x21560
#! capacity    768 bytes

# Text                                                                #  Line  RIP      Bytes  
._ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_:  #        0x21560  0      
  movq %rbx, -0x20(%rsp)                                              #  1     0x21560  5      
  movq %r12, -0x18(%rsp)                                              #  2     0x21565  5      
  movl %ecx, %ebx                                                     #  3     0x2156a  2      
  movq %r13, -0x10(%rsp)                                              #  4     0x2156c  5      
  movq %r14, -0x8(%rsp)                                               #  5     0x21571  5      
  subl $0x48, %esp                                                    #  6     0x21576  3      
  addq %r15, %rsp                                                     #  7     0x21579  3      
  nop                                                                 #  8     0x2157c  1      
  cmpb $0x0, 0x1000f684(%rip)                                         #  9     0x2157d  7      
  movl %esi, %r14d                                                    #  10    0x21584  3      
  movl %edi, %r13d                                                    #  11    0x21587  3      
  movl %edx, %r12d                                                    #  12    0x2158a  3      
  je .L_216a0                                                         #  13    0x2158d  6      
  nop                                                                 #  14    0x21593  1      
.L_215a0:                                                             #        0x21594  0      
  movl 0x1000f676(%rip), %eax                                         #  15    0x21594  6      
  testq %rax, %rax                                                    #  16    0x2159a  3      
  je .L_21740                                                         #  17    0x2159d  6      
  xchgw %ax, %ax                                                      #  18    0x215a3  3      
  nop                                                                 #  19    0x215a6  1      
.L_215c0:                                                             #        0x215a7  0      
  cmpb $0x0, 0x1000f65a(%rip)                                         #  20    0x215a7  7      
  je .L_21660                                                         #  21    0x215ae  6      
  nop                                                                 #  22    0x215b4  1      
  nop                                                                 #  23    0x215b5  1      
.L_215e0:                                                             #        0x215b6  0      
  movl %ebx, %ebx                                                     #  24    0x215b6  2      
  movq 0x8(%r15,%rbx,1), %r8                                          #  25    0x215b8  5      
  movl %eax, %eax                                                     #  26    0x215bd  2      
  movl 0x4(%r15,%rax,1), %eax                                         #  27    0x215bf  5      
  movl %r14d, %esi                                                    #  28    0x215c4  3      
  movq 0x40(%rsp), %r14                                               #  29    0x215c7  5      
  movq %r8, (%rsp)                                                    #  30    0x215cc  4      
  nop                                                                 #  31    0x215d0  1      
  movl %ebx, %ebx                                                     #  32    0x215d1  2      
  movq 0x10(%r15,%rbx,1), %r9                                         #  33    0x215d3  5      
  movq 0x28(%rsp), %rbx                                               #  34    0x215d8  5      
  movq %r9, 0x8(%rsp)                                                 #  35    0x215dd  5      
  movl %r12d, %r12d                                                   #  36    0x215e2  3      
  movq 0x8(%r15,%r12,1), %rdx                                         #  37    0x215e5  5      
  movq %rdx, 0x10(%rsp)                                               #  38    0x215ea  5      
  xchgw %ax, %ax                                                      #  39    0x215ef  3      
  movl %r12d, %r12d                                                   #  40    0x215f2  3      
  movq 0x10(%r15,%r12,1), %rcx                                        #  41    0x215f5  5      
  movq 0x30(%rsp), %r12                                               #  42    0x215fa  5      
  movq %rcx, 0x18(%rsp)                                               #  43    0x215ff  5      
  movl %r13d, %r13d                                                   #  44    0x21604  3      
  movl 0x4(%r15,%r13,1), %edi                                         #  45    0x21607  5      
  movq 0x38(%rsp), %r13                                               #  46    0x2160c  5      
  nop                                                                 #  47    0x21611  1      
  addl $0x48, %esp                                                    #  48    0x21612  3      
  addq %r15, %rsp                                                     #  49    0x21615  3      
  andl $0xffffffe0, %eax                                              #  50    0x21618  5      
  addq %r15, %rax                                                     #  51    0x2161d  3      
  jmpq %rax                                                           #  52    0x21620  2      
  nop                                                                 #  53    0x21622  1      
  nop                                                                 #  54    0x21623  1      
.L_21660:                                                             #        0x21624  0      
  movl $0x10030c08, %edi                                              #  55    0x21624  5      
  nop                                                                 #  56    0x21629  1      
  nop                                                                 #  57    0x2162a  1      
  callq .__cxa_guard_acquire                                          #  58    0x2162b  5      
  testl %eax, %eax                                                    #  59    0x21630  2      
  jne .L_21780                                                        #  60    0x21632  6      
  movl 0x1000f5d2(%rip), %eax                                         #  61    0x21638  6      
  jmpq .L_215e0                                                       #  62    0x2163e  5      
  nop                                                                 #  63    0x21643  1      
.L_216a0:                                                             #        0x21644  0      
  movl $0x10030c08, %edi                                              #  64    0x21644  5      
  nop                                                                 #  65    0x21649  1      
  nop                                                                 #  66    0x2164a  1      
  callq .__cxa_guard_acquire                                          #  67    0x2164b  5      
  testl %eax, %eax                                                    #  68    0x21650  2      
  je .L_215a0                                                         #  69    0x21652  6      
  nop                                                                 #  70    0x21658  1      
  nop                                                                 #  71    0x21659  1      
  callq ._ZN2pp6Module3GetEv                                          #  72    0x2165a  5      
  movl %eax, %edi                                                     #  73    0x2165f  2      
  movl $0x100202b8, %esi                                              #  74    0x21661  5      
  nop                                                                 #  75    0x21666  1      
  nop                                                                 #  76    0x21667  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  77    0x21668  5      
  movl $0x10030c08, %edi                                              #  78    0x2166d  5      
  movl %eax, 0x1000f598(%rip)                                         #  79    0x21672  6      
  nop                                                                 #  80    0x21678  1      
  nop                                                                 #  81    0x21679  1      
  callq .__cxa_guard_release                                          #  82    0x2167a  5      
  movl 0x1000f58b(%rip), %eax                                         #  83    0x2167f  6      
  testq %rax, %rax                                                    #  84    0x21685  3      
  jne .L_215c0                                                        #  85    0x21688  6      
  xchgw %ax, %ax                                                      #  86    0x2168e  3      
  nop                                                                 #  87    0x21691  1      
.L_21740:                                                             #        0x21692  0      
  movq 0x28(%rsp), %rbx                                               #  88    0x21692  5      
  movq 0x30(%rsp), %r12                                               #  89    0x21697  5      
  movq 0x38(%rsp), %r13                                               #  90    0x2169c  5      
  movq 0x40(%rsp), %r14                                               #  91    0x216a1  5      
  addl $0x48, %esp                                                    #  92    0x216a6  3      
  addq %r15, %rsp                                                     #  93    0x216a9  3      
  popq %r11                                                           #  94    0x216ac  3      
  nop                                                                 #  95    0x216af  1      
  andl $0xffffffe0, %r11d                                             #  96    0x216b0  7      
  addq %r15, %r11                                                     #  97    0x216b7  3      
  jmpq %r11                                                           #  98    0x216ba  3      
  nop                                                                 #  99    0x216bd  1      
  nop                                                                 #  100   0x216be  1      
.L_21780:                                                             #        0x216bf  0      
  nop                                                                 #  101   0x216bf  1      
  nop                                                                 #  102   0x216c0  1      
  callq ._ZN2pp6Module3GetEv                                          #  103   0x216c1  5      
  movl %eax, %edi                                                     #  104   0x216c6  2      
  movl $0x100202b8, %esi                                              #  105   0x216c8  5      
  nop                                                                 #  106   0x216cd  1      
  nop                                                                 #  107   0x216ce  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                       #  108   0x216cf  5      
  movl $0x10030c08, %edi                                              #  109   0x216d4  5      
  movl %eax, 0x1000f531(%rip)                                         #  110   0x216d9  6      
  nop                                                                 #  111   0x216df  1      
  nop                                                                 #  112   0x216e0  1      
  callq .__cxa_guard_release                                          #  113   0x216e1  5      
  movl 0x1000f524(%rip), %eax                                         #  114   0x216e6  6      
  jmpq .L_215e0                                                       #  115   0x216ec  5      
  nop                                                                 #  116   0x216f1  1      
  nop                                                                 #  117   0x216f2  1      
.L_21800:                                                             #        0x216f3  0      
  movl %eax, %ebx                                                     #  118   0x216f3  2      
  movl $0x10030c08, %edi                                              #  119   0x216f5  5      
  nop                                                                 #  120   0x216fa  1      
  nop                                                                 #  121   0x216fb  1      
  callq .__cxa_guard_abort                                            #  122   0x216fc  5      
  movl %ebx, %edi                                                     #  123   0x21701  2      
  nop                                                                 #  124   0x21703  1      
  nop                                                                 #  125   0x21704  1      
  callq ._Unwind_Resume                                               #  126   0x21705  5      
  jmpq .L_21800                                                       #  127   0x2170a  5      
  nop                                                                 #  128   0x2170f  1      
  nop                                                                 #  129   0x21710  1      
                                                                                               
.size _ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_, .-_ZN2pp8Instance22LogToConsoleWithSourceE11PP_LogLevelRKNS_3VarES4_

