  .text
  .globl _ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj
  .type _ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj, @function

#! file-offset 0x3a0e0
#! rip-offset  0x3a0e0
#! capacity    896 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj:  #        0x3a0e0  0      
  movq %rbx, -0x20(%rsp)                                                  #  1     0x3a0e0  5      
  movl %edi, %ebx                                                         #  2     0x3a0e5  2      
  movq %r12, -0x18(%rsp)                                                  #  3     0x3a0e7  5      
  movq %r13, -0x10(%rsp)                                                  #  4     0x3a0ec  5      
  movq %r14, -0x8(%rsp)                                                   #  5     0x3a0f1  5      
  movl %ebx, %edi                                                         #  6     0x3a0f6  2      
  subl $0x38, %esp                                                        #  7     0x3a0f8  3      
  addq %r15, %rsp                                                         #  8     0x3a0fb  3      
  xchgw %ax, %ax                                                          #  9     0x3a0fe  3      
  movl %edx, %r14d                                                        #  10    0x3a101  3      
  movl %ecx, %r13d                                                        #  11    0x3a104  3      
  movsd %xmm0, 0x8(%rsp)                                                  #  12    0x3a107  6      
  movl %esi, %r12d                                                        #  13    0x3a10d  3      
  nop                                                                     #  14    0x3a110  1      
  callq ._ZN2pp10InputEventC2Ev                                           #  15    0x3a111  5      
  movl %ebx, %ebx                                                         #  16    0x3a116  2      
  movl $0x10020788, (%r15,%rbx,1)                                         #  17    0x3a118  8      
  cmpb $0x0, 0xfff6bf9(%rip)                                              #  18    0x3a120  7      
  je .L_3a1a0                                                             #  19    0x3a127  6      
  nop                                                                     #  20    0x3a12d  1      
.L_3a140:                                                                 #        0x3a12e  0      
  movl 0xfff6bf4(%rip), %eax                                              #  21    0x3a12e  6      
  testq %rax, %rax                                                        #  22    0x3a134  3      
  jne .L_3a240                                                            #  23    0x3a137  6      
  xchgw %ax, %ax                                                          #  24    0x3a13d  3      
  nop                                                                     #  25    0x3a140  1      
.L_3a160:                                                                 #        0x3a141  0      
  movq 0x18(%rsp), %rbx                                                   #  26    0x3a141  5      
  movq 0x20(%rsp), %r12                                                   #  27    0x3a146  5      
  movq 0x28(%rsp), %r13                                                   #  28    0x3a14b  5      
  movq 0x30(%rsp), %r14                                                   #  29    0x3a150  5      
  addl $0x38, %esp                                                        #  30    0x3a155  3      
  addq %r15, %rsp                                                         #  31    0x3a158  3      
  popq %r11                                                               #  32    0x3a15b  3      
  nop                                                                     #  33    0x3a15e  1      
  andl $0xffffffe0, %r11d                                                 #  34    0x3a15f  7      
  addq %r15, %r11                                                         #  35    0x3a166  3      
  jmpq %r11                                                               #  36    0x3a169  3      
  nop                                                                     #  37    0x3a16c  1      
  nop                                                                     #  38    0x3a16d  1      
.L_3a1a0:                                                                 #        0x3a16e  0      
  movl $0x10030d20, %edi                                                  #  39    0x3a16e  5      
  nop                                                                     #  40    0x3a173  1      
  nop                                                                     #  41    0x3a174  1      
  callq .__cxa_guard_acquire                                              #  42    0x3a175  5      
  testl %eax, %eax                                                        #  43    0x3a17a  2      
  je .L_3a140                                                             #  44    0x3a17c  6      
  nop                                                                     #  45    0x3a182  1      
  nop                                                                     #  46    0x3a183  1      
  callq ._ZN2pp6Module3GetEv                                              #  47    0x3a184  5      
  movl %eax, %edi                                                         #  48    0x3a189  2      
  movl $0x100206d8, %esi                                                  #  49    0x3a18b  5      
  nop                                                                     #  50    0x3a190  1      
  nop                                                                     #  51    0x3a191  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  52    0x3a192  5      
  movl $0x10030d20, %edi                                                  #  53    0x3a197  5      
  movl %eax, 0xfff6b86(%rip)                                              #  54    0x3a19c  6      
  nop                                                                     #  55    0x3a1a2  1      
  nop                                                                     #  56    0x3a1a3  1      
  callq .__cxa_guard_release                                              #  57    0x3a1a4  5      
  movl 0xfff6b79(%rip), %eax                                              #  58    0x3a1a9  6      
  testq %rax, %rax                                                        #  59    0x3a1af  3      
  je .L_3a160                                                             #  60    0x3a1b2  6      
  xchgw %ax, %ax                                                          #  61    0x3a1b8  3      
  nop                                                                     #  62    0x3a1bb  1      
.L_3a240:                                                                 #        0x3a1bc  0      
  cmpb $0x0, 0xfff6b5d(%rip)                                              #  63    0x3a1bc  7      
  je .L_3a2e0                                                             #  64    0x3a1c3  6      
  nop                                                                     #  65    0x3a1c9  1      
  nop                                                                     #  66    0x3a1ca  1      
.L_3a260:                                                                 #        0x3a1cb  0      
  movl %eax, %eax                                                         #  67    0x3a1cb  2      
  movl (%r15,%rax,1), %eax                                                #  68    0x3a1cd  4      
  movl %r13d, %edx                                                        #  69    0x3a1d1  3      
  movl %r14d, %esi                                                        #  70    0x3a1d4  3      
  movsd 0x8(%rsp), %xmm0                                                  #  71    0x3a1d7  6      
  movl %r12d, %r12d                                                       #  72    0x3a1dd  3      
  movl (%r15,%r12,1), %edi                                                #  73    0x3a1e0  4      
  nop                                                                     #  74    0x3a1e4  1      
  nop                                                                     #  75    0x3a1e5  1      
  nop                                                                     #  76    0x3a1e6  1      
  andl $0xffffffe0, %eax                                                  #  77    0x3a1e7  5      
  addq %r15, %rax                                                         #  78    0x3a1ec  3      
  callq %rax                                                              #  79    0x3a1ef  2      
  movl %eax, %esi                                                         #  80    0x3a1f1  2      
  movl %ebx, %edi                                                         #  81    0x3a1f3  2      
  nop                                                                     #  82    0x3a1f5  1      
  nop                                                                     #  83    0x3a1f6  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                        #  84    0x3a1f7  5      
  jmpq .L_3a160                                                           #  85    0x3a1fc  5      
  nop                                                                     #  86    0x3a201  1      
  nop                                                                     #  87    0x3a202  1      
.L_3a2e0:                                                                 #        0x3a203  0      
  movl $0x10030d20, %edi                                                  #  88    0x3a203  5      
  nop                                                                     #  89    0x3a208  1      
  nop                                                                     #  90    0x3a209  1      
  callq .__cxa_guard_acquire                                              #  91    0x3a20a  5      
  testl %eax, %eax                                                        #  92    0x3a20f  2      
  jne .L_3a340                                                            #  93    0x3a211  6      
  nop                                                                     #  94    0x3a217  1      
  nop                                                                     #  95    0x3a218  1      
.L_3a320:                                                                 #        0x3a219  0      
  movl 0xfff6b09(%rip), %eax                                              #  96    0x3a219  6      
  jmpq .L_3a260                                                           #  97    0x3a21f  5      
  nop                                                                     #  98    0x3a224  1      
  nop                                                                     #  99    0x3a225  1      
.L_3a340:                                                                 #        0x3a226  0      
  nop                                                                     #  100   0x3a226  1      
  nop                                                                     #  101   0x3a227  1      
  callq ._ZN2pp6Module3GetEv                                              #  102   0x3a228  5      
  movl %eax, %edi                                                         #  103   0x3a22d  2      
  movl $0x100206d8, %esi                                                  #  104   0x3a22f  5      
  nop                                                                     #  105   0x3a234  1      
  nop                                                                     #  106   0x3a235  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  107   0x3a236  5      
  movl $0x10030d20, %edi                                                  #  108   0x3a23b  5      
  movl %eax, 0xfff6ae2(%rip)                                              #  109   0x3a240  6      
  nop                                                                     #  110   0x3a246  1      
  nop                                                                     #  111   0x3a247  1      
  callq .__cxa_guard_release                                              #  112   0x3a248  5      
  jmpq .L_3a320                                                           #  113   0x3a24d  5      
  nop                                                                     #  114   0x3a252  1      
  nop                                                                     #  115   0x3a253  1      
.L_3a3c0:                                                                 #        0x3a254  0      
  movl $0x10030d20, %edi                                                  #  116   0x3a254  5      
  movl %eax, %r12d                                                        #  117   0x3a259  3      
  nop                                                                     #  118   0x3a25c  1      
  nop                                                                     #  119   0x3a25d  1      
  callq .__cxa_guard_abort                                                #  120   0x3a25e  5      
.L_3a3e0:                                                                 #        0x3a263  0      
  movl %ebx, %edi                                                         #  121   0x3a263  2      
  nop                                                                     #  122   0x3a265  1      
  nop                                                                     #  123   0x3a266  1      
  callq ._ZN2pp10InputEventD2Ev                                           #  124   0x3a267  5      
  movl %r12d, %edi                                                        #  125   0x3a26c  3      
  nop                                                                     #  126   0x3a26f  1      
  nop                                                                     #  127   0x3a270  1      
  callq ._Unwind_Resume                                                   #  128   0x3a271  5      
  movl %eax, %r12d                                                        #  129   0x3a276  3      
  jmpq .L_3a3e0                                                           #  130   0x3a279  5      
  nop                                                                     #  131   0x3a27e  1      
  nop                                                                     #  132   0x3a27f  1      
  jmpq .L_3a3c0                                                           #  133   0x3a280  5      
  nop                                                                     #  134   0x3a285  1      
  nop                                                                     #  135   0x3a286  1      
  nop                                                                     #  136   0x3a287  1      
                                                                                                   
.size _ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj, .-_ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj

