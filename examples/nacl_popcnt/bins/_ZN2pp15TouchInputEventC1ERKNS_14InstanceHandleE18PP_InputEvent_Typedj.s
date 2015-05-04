  .text
  .globl _ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj
  .type _ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj, @function

#! file-offset 0x3a180
#! rip-offset  0x3a180
#! capacity    896 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj:  #        0x3a180  0      
  movq %rbx, -0x20(%rsp)                                                  #  1     0x3a180  5      
  movl %edi, %ebx                                                         #  2     0x3a185  2      
  movq %r12, -0x18(%rsp)                                                  #  3     0x3a187  5      
  movq %r13, -0x10(%rsp)                                                  #  4     0x3a18c  5      
  movq %r14, -0x8(%rsp)                                                   #  5     0x3a191  5      
  movl %ebx, %edi                                                         #  6     0x3a196  2      
  subl $0x38, %esp                                                        #  7     0x3a198  3      
  addq %r15, %rsp                                                         #  8     0x3a19b  3      
  xchgw %ax, %ax                                                          #  9     0x3a19e  3      
  movl %edx, %r14d                                                        #  10    0x3a1a1  3      
  movl %ecx, %r13d                                                        #  11    0x3a1a4  3      
  movsd %xmm0, 0x8(%rsp)                                                  #  12    0x3a1a7  6      
  movl %esi, %r12d                                                        #  13    0x3a1ad  3      
  nop                                                                     #  14    0x3a1b0  1      
  callq ._ZN2pp10InputEventC2Ev                                           #  15    0x3a1b1  5      
  movl %ebx, %ebx                                                         #  16    0x3a1b6  2      
  movl $0x10020788, (%r15,%rbx,1)                                         #  17    0x3a1b8  8      
  cmpb $0x0, 0xfff6b59(%rip)                                              #  18    0x3a1c0  7      
  je .L_3a240                                                             #  19    0x3a1c7  6      
  nop                                                                     #  20    0x3a1cd  1      
.L_3a1e0:                                                                 #        0x3a1ce  0      
  movl 0xfff6b54(%rip), %eax                                              #  21    0x3a1ce  6      
  testq %rax, %rax                                                        #  22    0x3a1d4  3      
  jne .L_3a2e0                                                            #  23    0x3a1d7  6      
  xchgw %ax, %ax                                                          #  24    0x3a1dd  3      
  nop                                                                     #  25    0x3a1e0  1      
.L_3a200:                                                                 #        0x3a1e1  0      
  movq 0x18(%rsp), %rbx                                                   #  26    0x3a1e1  5      
  movq 0x20(%rsp), %r12                                                   #  27    0x3a1e6  5      
  movq 0x28(%rsp), %r13                                                   #  28    0x3a1eb  5      
  movq 0x30(%rsp), %r14                                                   #  29    0x3a1f0  5      
  addl $0x38, %esp                                                        #  30    0x3a1f5  3      
  addq %r15, %rsp                                                         #  31    0x3a1f8  3      
  popq %r11                                                               #  32    0x3a1fb  3      
  nop                                                                     #  33    0x3a1fe  1      
  andl $0xffffffe0, %r11d                                                 #  34    0x3a1ff  7      
  addq %r15, %r11                                                         #  35    0x3a206  3      
  jmpq %r11                                                               #  36    0x3a209  3      
  nop                                                                     #  37    0x3a20c  1      
  nop                                                                     #  38    0x3a20d  1      
.L_3a240:                                                                 #        0x3a20e  0      
  movl $0x10030d20, %edi                                                  #  39    0x3a20e  5      
  nop                                                                     #  40    0x3a213  1      
  nop                                                                     #  41    0x3a214  1      
  callq .__cxa_guard_acquire                                              #  42    0x3a215  5      
  testl %eax, %eax                                                        #  43    0x3a21a  2      
  je .L_3a1e0                                                             #  44    0x3a21c  6      
  nop                                                                     #  45    0x3a222  1      
  nop                                                                     #  46    0x3a223  1      
  callq ._ZN2pp6Module3GetEv                                              #  47    0x3a224  5      
  movl %eax, %edi                                                         #  48    0x3a229  2      
  movl $0x100206d8, %esi                                                  #  49    0x3a22b  5      
  nop                                                                     #  50    0x3a230  1      
  nop                                                                     #  51    0x3a231  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  52    0x3a232  5      
  movl $0x10030d20, %edi                                                  #  53    0x3a237  5      
  movl %eax, 0xfff6ae6(%rip)                                              #  54    0x3a23c  6      
  nop                                                                     #  55    0x3a242  1      
  nop                                                                     #  56    0x3a243  1      
  callq .__cxa_guard_release                                              #  57    0x3a244  5      
  movl 0xfff6ad9(%rip), %eax                                              #  58    0x3a249  6      
  testq %rax, %rax                                                        #  59    0x3a24f  3      
  je .L_3a200                                                             #  60    0x3a252  6      
  xchgw %ax, %ax                                                          #  61    0x3a258  3      
  nop                                                                     #  62    0x3a25b  1      
.L_3a2e0:                                                                 #        0x3a25c  0      
  cmpb $0x0, 0xfff6abd(%rip)                                              #  63    0x3a25c  7      
  je .L_3a380                                                             #  64    0x3a263  6      
  nop                                                                     #  65    0x3a269  1      
  nop                                                                     #  66    0x3a26a  1      
.L_3a300:                                                                 #        0x3a26b  0      
  movl %eax, %eax                                                         #  67    0x3a26b  2      
  movl (%r15,%rax,1), %eax                                                #  68    0x3a26d  4      
  movl %r13d, %edx                                                        #  69    0x3a271  3      
  movl %r14d, %esi                                                        #  70    0x3a274  3      
  movsd 0x8(%rsp), %xmm0                                                  #  71    0x3a277  6      
  movl %r12d, %r12d                                                       #  72    0x3a27d  3      
  movl (%r15,%r12,1), %edi                                                #  73    0x3a280  4      
  nop                                                                     #  74    0x3a284  1      
  nop                                                                     #  75    0x3a285  1      
  nop                                                                     #  76    0x3a286  1      
  andl $0xffffffe0, %eax                                                  #  77    0x3a287  5      
  addq %r15, %rax                                                         #  78    0x3a28c  3      
  callq %rax                                                              #  79    0x3a28f  2      
  movl %eax, %esi                                                         #  80    0x3a291  2      
  movl %ebx, %edi                                                         #  81    0x3a293  2      
  nop                                                                     #  82    0x3a295  1      
  nop                                                                     #  83    0x3a296  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                        #  84    0x3a297  5      
  jmpq .L_3a200                                                           #  85    0x3a29c  5      
  nop                                                                     #  86    0x3a2a1  1      
  nop                                                                     #  87    0x3a2a2  1      
.L_3a380:                                                                 #        0x3a2a3  0      
  movl $0x10030d20, %edi                                                  #  88    0x3a2a3  5      
  nop                                                                     #  89    0x3a2a8  1      
  nop                                                                     #  90    0x3a2a9  1      
  callq .__cxa_guard_acquire                                              #  91    0x3a2aa  5      
  testl %eax, %eax                                                        #  92    0x3a2af  2      
  jne .L_3a3e0                                                            #  93    0x3a2b1  6      
  nop                                                                     #  94    0x3a2b7  1      
  nop                                                                     #  95    0x3a2b8  1      
.L_3a3c0:                                                                 #        0x3a2b9  0      
  movl 0xfff6a69(%rip), %eax                                              #  96    0x3a2b9  6      
  jmpq .L_3a300                                                           #  97    0x3a2bf  5      
  nop                                                                     #  98    0x3a2c4  1      
  nop                                                                     #  99    0x3a2c5  1      
.L_3a3e0:                                                                 #        0x3a2c6  0      
  nop                                                                     #  100   0x3a2c6  1      
  nop                                                                     #  101   0x3a2c7  1      
  callq ._ZN2pp6Module3GetEv                                              #  102   0x3a2c8  5      
  movl %eax, %edi                                                         #  103   0x3a2cd  2      
  movl $0x100206d8, %esi                                                  #  104   0x3a2cf  5      
  nop                                                                     #  105   0x3a2d4  1      
  nop                                                                     #  106   0x3a2d5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  107   0x3a2d6  5      
  movl $0x10030d20, %edi                                                  #  108   0x3a2db  5      
  movl %eax, 0xfff6a42(%rip)                                              #  109   0x3a2e0  6      
  nop                                                                     #  110   0x3a2e6  1      
  nop                                                                     #  111   0x3a2e7  1      
  callq .__cxa_guard_release                                              #  112   0x3a2e8  5      
  jmpq .L_3a3c0                                                           #  113   0x3a2ed  5      
  nop                                                                     #  114   0x3a2f2  1      
  nop                                                                     #  115   0x3a2f3  1      
.L_3a460:                                                                 #        0x3a2f4  0      
  movl $0x10030d20, %edi                                                  #  116   0x3a2f4  5      
  movl %eax, %r12d                                                        #  117   0x3a2f9  3      
  nop                                                                     #  118   0x3a2fc  1      
  nop                                                                     #  119   0x3a2fd  1      
  callq .__cxa_guard_abort                                                #  120   0x3a2fe  5      
.L_3a480:                                                                 #        0x3a303  0      
  movl %ebx, %edi                                                         #  121   0x3a303  2      
  nop                                                                     #  122   0x3a305  1      
  nop                                                                     #  123   0x3a306  1      
  callq ._ZN2pp10InputEventD2Ev                                           #  124   0x3a307  5      
  movl %r12d, %edi                                                        #  125   0x3a30c  3      
  nop                                                                     #  126   0x3a30f  1      
  nop                                                                     #  127   0x3a310  1      
  callq ._Unwind_Resume                                                   #  128   0x3a311  5      
  movl %eax, %r12d                                                        #  129   0x3a316  3      
  jmpq .L_3a480                                                           #  130   0x3a319  5      
  nop                                                                     #  131   0x3a31e  1      
  nop                                                                     #  132   0x3a31f  1      
  jmpq .L_3a460                                                           #  133   0x3a320  5      
  nop                                                                     #  134   0x3a325  1      
  nop                                                                     #  135   0x3a326  1      
  nop                                                                     #  136   0x3a327  1      
                                                                                                   
.size _ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj, .-_ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj

