  .text
  .globl _ZNK2pp15WheelInputEvent8GetDeltaEv
  .type _ZNK2pp15WheelInputEvent8GetDeltaEv, @function

#! file-offset 0x381c0
#! rip-offset  0x381c0
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15WheelInputEvent8GetDeltaEv:            #        0x381c0  0      
  pushq %r12                                     #  1     0x381c0  3      
  movl %esi, %r12d                               #  2     0x381c3  3      
  pushq %rbx                                     #  3     0x381c6  2      
  movl %edi, %ebx                                #  4     0x381c8  2      
  subl $0x18, %esp                               #  5     0x381ca  3      
  addq %r15, %rsp                                #  6     0x381cd  3      
  cmpb $0x0, 0xfff8b79(%rip)                     #  7     0x381d0  7      
  je .L_38240                                    #  8     0x381d7  6      
  nop                                            #  9     0x381dd  1      
.L_381e0:                                        #        0x381de  0      
  movl 0xfff8b74(%rip), %eax                     #  10    0x381de  6      
  testq %rax, %rax                               #  11    0x381e4  3      
  jne .L_382e0                                   #  12    0x381e7  6      
  xchgw %ax, %ax                                 #  13    0x381ed  3      
  nop                                            #  14    0x381f0  1      
.L_38200:                                        #        0x381f1  0      
  movl %ebx, %ebx                                #  15    0x381f1  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x381f3  8      
  movl %ebx, %ebx                                #  17    0x381fb  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x381fd  9      
  movl %ebx, %eax                                #  19    0x38206  2      
  addl $0x18, %esp                               #  20    0x38208  3      
  addq %r15, %rsp                                #  21    0x3820b  3      
  popq %rbx                                      #  22    0x3820e  2      
  popq %r12                                      #  23    0x38210  3      
  popq %r11                                      #  24    0x38213  3      
  andl $0xffffffe0, %r11d                        #  25    0x38216  7      
  addq %r15, %r11                                #  26    0x3821d  3      
  jmpq %r11                                      #  27    0x38220  3      
  nop                                            #  28    0x38223  1      
  nop                                            #  29    0x38224  1      
.L_38240:                                        #        0x38225  0      
  movl $0x10030d50, %edi                         #  30    0x38225  5      
  nop                                            #  31    0x3822a  1      
  nop                                            #  32    0x3822b  1      
  callq .__cxa_guard_acquire                     #  33    0x3822c  5      
  testl %eax, %eax                               #  34    0x38231  2      
  je .L_381e0                                    #  35    0x38233  6      
  nop                                            #  36    0x38239  1      
  nop                                            #  37    0x3823a  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x3823b  5      
  movl %eax, %edi                                #  39    0x38240  2      
  movl $0x100206c0, %esi                         #  40    0x38242  5      
  nop                                            #  41    0x38247  1      
  nop                                            #  42    0x38248  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x38249  5      
  movl $0x10030d50, %edi                         #  44    0x3824e  5      
  movl %eax, 0xfff8aff(%rip)                     #  45    0x38253  6      
  nop                                            #  46    0x38259  1      
  nop                                            #  47    0x3825a  1      
  callq .__cxa_guard_release                     #  48    0x3825b  5      
  movl 0xfff8af2(%rip), %eax                     #  49    0x38260  6      
  testq %rax, %rax                               #  50    0x38266  3      
  je .L_38200                                    #  51    0x38269  6      
  xchgw %ax, %ax                                 #  52    0x3826f  3      
  nop                                            #  53    0x38272  1      
.L_382e0:                                        #        0x38273  0      
  cmpb $0x0, 0xfff8ad6(%rip)                     #  54    0x38273  7      
  je .L_38360                                    #  55    0x3827a  6      
  nop                                            #  56    0x38280  1      
  nop                                            #  57    0x38281  1      
.L_38300:                                        #        0x38282  0      
  movl %eax, %eax                                #  58    0x38282  2      
  movl 0x8(%r15,%rax,1), %eax                    #  59    0x38284  5      
  movl %r12d, %r12d                              #  60    0x38289  3      
  movl 0x4(%r15,%r12,1), %edi                    #  61    0x3828c  5      
  nop                                            #  62    0x38291  1      
  andl $0xffffffe0, %eax                         #  63    0x38292  5      
  addq %r15, %rax                                #  64    0x38297  3      
  callq %rax                                     #  65    0x3829a  2      
  movq %xmm0, 0x8(%rsp)                          #  66    0x3829c  7      
  movq 0x8(%rsp), %rax                           #  67    0x382a3  5      
  movl %ebx, %ebx                                #  68    0x382a8  2      
  movl %eax, (%r15,%rbx,1)                       #  69    0x382aa  4      
  shrq $0x20, %rax                               #  70    0x382ae  4      
  movl %ebx, %ebx                                #  71    0x382b2  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  72    0x382b4  5      
  nop                                            #  73    0x382b9  1      
  addl $0x18, %esp                               #  74    0x382ba  3      
  addq %r15, %rsp                                #  75    0x382bd  3      
  movl %ebx, %eax                                #  76    0x382c0  2      
  popq %rbx                                      #  77    0x382c2  2      
  popq %r12                                      #  78    0x382c4  3      
  popq %r11                                      #  79    0x382c7  3      
  andl $0xffffffe0, %r11d                        #  80    0x382ca  7      
  addq %r15, %r11                                #  81    0x382d1  3      
  jmpq %r11                                      #  82    0x382d4  3      
  nop                                            #  83    0x382d7  1      
.L_38360:                                        #        0x382d8  0      
  movl $0x10030d50, %edi                         #  84    0x382d8  5      
  nop                                            #  85    0x382dd  1      
  nop                                            #  86    0x382de  1      
  callq .__cxa_guard_acquire                     #  87    0x382df  5      
  testl %eax, %eax                               #  88    0x382e4  2      
  jne .L_383c0                                   #  89    0x382e6  6      
  nop                                            #  90    0x382ec  1      
  nop                                            #  91    0x382ed  1      
.L_383a0:                                        #        0x382ee  0      
  movl 0xfff8a64(%rip), %eax                     #  92    0x382ee  6      
  jmpq .L_38300                                  #  93    0x382f4  5      
  nop                                            #  94    0x382f9  1      
  nop                                            #  95    0x382fa  1      
.L_383c0:                                        #        0x382fb  0      
  nop                                            #  96    0x382fb  1      
  nop                                            #  97    0x382fc  1      
  callq ._ZN2pp6Module3GetEv                     #  98    0x382fd  5      
  movl %eax, %edi                                #  99    0x38302  2      
  movl $0x100206c0, %esi                         #  100   0x38304  5      
  nop                                            #  101   0x38309  1      
  nop                                            #  102   0x3830a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  103   0x3830b  5      
  movl $0x10030d50, %edi                         #  104   0x38310  5      
  movl %eax, 0xfff8a3d(%rip)                     #  105   0x38315  6      
  nop                                            #  106   0x3831b  1      
  nop                                            #  107   0x3831c  1      
  callq .__cxa_guard_release                     #  108   0x3831d  5      
  jmpq .L_383a0                                  #  109   0x38322  5      
  nop                                            #  110   0x38327  1      
  nop                                            #  111   0x38328  1      
.L_38440:                                        #        0x38329  0      
  movl %eax, %ebx                                #  112   0x38329  2      
  movl $0x10030d50, %edi                         #  113   0x3832b  5      
  nop                                            #  114   0x38330  1      
  nop                                            #  115   0x38331  1      
  callq .__cxa_guard_abort                       #  116   0x38332  5      
  movl %ebx, %edi                                #  117   0x38337  2      
  nop                                            #  118   0x38339  1      
  nop                                            #  119   0x3833a  1      
  callq ._Unwind_Resume                          #  120   0x3833b  5      
  jmpq .L_38440                                  #  121   0x38340  5      
  nop                                            #  122   0x38345  1      
  nop                                            #  123   0x38346  1      
                                                                          
.size _ZNK2pp15WheelInputEvent8GetDeltaEv, .-_ZNK2pp15WheelInputEvent8GetDeltaEv

