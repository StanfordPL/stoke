  .text
  .globl _ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj
  .type _ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj, @function

#! file-offset 0x3e4a0
#! rip-offset  0x3e4a0
#! capacity    896 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj:  #        0x3e4a0  0      
  movq %rbx, -0x20(%rsp)                                                  #  1     0x3e4a0  5      
  movl %edi, %ebx                                                         #  2     0x3e4a5  2      
  movq %r12, -0x18(%rsp)                                                  #  3     0x3e4a7  5      
  movq %r13, -0x10(%rsp)                                                  #  4     0x3e4ac  5      
  movq %r14, -0x8(%rsp)                                                   #  5     0x3e4b1  5      
  movl %ebx, %edi                                                         #  6     0x3e4b6  2      
  subl $0x38, %esp                                                        #  7     0x3e4b8  3      
  addq %r15, %rsp                                                         #  8     0x3e4bb  3      
  xchgw %ax, %ax                                                          #  9     0x3e4be  3      
  movl %edx, %r14d                                                        #  10    0x3e4c1  3      
  movl %ecx, %r13d                                                        #  11    0x3e4c4  3      
  movsd %xmm0, 0x8(%rsp)                                                  #  12    0x3e4c7  6      
  movl %esi, %r12d                                                        #  13    0x3e4cd  3      
  nop                                                                     #  14    0x3e4d0  1      
  callq ._ZN2pp10InputEventC2Ev                                           #  15    0x3e4d1  5      
  movl %ebx, %ebx                                                         #  16    0x3e4d6  2      
  movl $0x10020788, (%r15,%rbx,1)                                         #  17    0x3e4d8  8      
  cmpb $0x0, 0xfff2839(%rip)                                              #  18    0x3e4e0  7      
  je .L_3e560                                                             #  19    0x3e4e7  6      
  nop                                                                     #  20    0x3e4ed  1      
.L_3e500:                                                                 #        0x3e4ee  0      
  movl 0xfff2834(%rip), %eax                                              #  21    0x3e4ee  6      
  testq %rax, %rax                                                        #  22    0x3e4f4  3      
  jne .L_3e600                                                            #  23    0x3e4f7  6      
  xchgw %ax, %ax                                                          #  24    0x3e4fd  3      
  nop                                                                     #  25    0x3e500  1      
.L_3e520:                                                                 #        0x3e501  0      
  movq 0x18(%rsp), %rbx                                                   #  26    0x3e501  5      
  movq 0x20(%rsp), %r12                                                   #  27    0x3e506  5      
  movq 0x28(%rsp), %r13                                                   #  28    0x3e50b  5      
  movq 0x30(%rsp), %r14                                                   #  29    0x3e510  5      
  addl $0x38, %esp                                                        #  30    0x3e515  3      
  addq %r15, %rsp                                                         #  31    0x3e518  3      
  popq %r11                                                               #  32    0x3e51b  3      
  nop                                                                     #  33    0x3e51e  1      
  andl $0xffffffe0, %r11d                                                 #  34    0x3e51f  7      
  addq %r15, %r11                                                         #  35    0x3e526  3      
  jmpq %r11                                                               #  36    0x3e529  3      
  nop                                                                     #  37    0x3e52c  1      
  nop                                                                     #  38    0x3e52d  1      
.L_3e560:                                                                 #        0x3e52e  0      
  movl $0x10030d20, %edi                                                  #  39    0x3e52e  5      
  nop                                                                     #  40    0x3e533  1      
  nop                                                                     #  41    0x3e534  1      
  callq .__cxa_guard_acquire                                              #  42    0x3e535  5      
  testl %eax, %eax                                                        #  43    0x3e53a  2      
  je .L_3e500                                                             #  44    0x3e53c  6      
  nop                                                                     #  45    0x3e542  1      
  nop                                                                     #  46    0x3e543  1      
  callq ._ZN2pp6Module3GetEv                                              #  47    0x3e544  5      
  movl %eax, %edi                                                         #  48    0x3e549  2      
  movl $0x100206d8, %esi                                                  #  49    0x3e54b  5      
  nop                                                                     #  50    0x3e550  1      
  nop                                                                     #  51    0x3e551  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  52    0x3e552  5      
  movl $0x10030d20, %edi                                                  #  53    0x3e557  5      
  movl %eax, 0xfff27c6(%rip)                                              #  54    0x3e55c  6      
  nop                                                                     #  55    0x3e562  1      
  nop                                                                     #  56    0x3e563  1      
  callq .__cxa_guard_release                                              #  57    0x3e564  5      
  movl 0xfff27b9(%rip), %eax                                              #  58    0x3e569  6      
  testq %rax, %rax                                                        #  59    0x3e56f  3      
  je .L_3e520                                                             #  60    0x3e572  6      
  xchgw %ax, %ax                                                          #  61    0x3e578  3      
  nop                                                                     #  62    0x3e57b  1      
.L_3e600:                                                                 #        0x3e57c  0      
  cmpb $0x0, 0xfff279d(%rip)                                              #  63    0x3e57c  7      
  je .L_3e6a0                                                             #  64    0x3e583  6      
  nop                                                                     #  65    0x3e589  1      
  nop                                                                     #  66    0x3e58a  1      
.L_3e620:                                                                 #        0x3e58b  0      
  movl %eax, %eax                                                         #  67    0x3e58b  2      
  movl (%r15,%rax,1), %eax                                                #  68    0x3e58d  4      
  movl %r13d, %edx                                                        #  69    0x3e591  3      
  movl %r14d, %esi                                                        #  70    0x3e594  3      
  movsd 0x8(%rsp), %xmm0                                                  #  71    0x3e597  6      
  movl %r12d, %r12d                                                       #  72    0x3e59d  3      
  movl (%r15,%r12,1), %edi                                                #  73    0x3e5a0  4      
  nop                                                                     #  74    0x3e5a4  1      
  nop                                                                     #  75    0x3e5a5  1      
  nop                                                                     #  76    0x3e5a6  1      
  andl $0xffffffe0, %eax                                                  #  77    0x3e5a7  5      
  addq %r15, %rax                                                         #  78    0x3e5ac  3      
  callq %rax                                                              #  79    0x3e5af  2      
  movl %eax, %esi                                                         #  80    0x3e5b1  2      
  movl %ebx, %edi                                                         #  81    0x3e5b3  2      
  nop                                                                     #  82    0x3e5b5  1      
  nop                                                                     #  83    0x3e5b6  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                        #  84    0x3e5b7  5      
  jmpq .L_3e520                                                           #  85    0x3e5bc  5      
  nop                                                                     #  86    0x3e5c1  1      
  nop                                                                     #  87    0x3e5c2  1      
.L_3e6a0:                                                                 #        0x3e5c3  0      
  movl $0x10030d20, %edi                                                  #  88    0x3e5c3  5      
  nop                                                                     #  89    0x3e5c8  1      
  nop                                                                     #  90    0x3e5c9  1      
  callq .__cxa_guard_acquire                                              #  91    0x3e5ca  5      
  testl %eax, %eax                                                        #  92    0x3e5cf  2      
  jne .L_3e700                                                            #  93    0x3e5d1  6      
  nop                                                                     #  94    0x3e5d7  1      
  nop                                                                     #  95    0x3e5d8  1      
.L_3e6e0:                                                                 #        0x3e5d9  0      
  movl 0xfff2749(%rip), %eax                                              #  96    0x3e5d9  6      
  jmpq .L_3e620                                                           #  97    0x3e5df  5      
  nop                                                                     #  98    0x3e5e4  1      
  nop                                                                     #  99    0x3e5e5  1      
.L_3e700:                                                                 #        0x3e5e6  0      
  nop                                                                     #  100   0x3e5e6  1      
  nop                                                                     #  101   0x3e5e7  1      
  callq ._ZN2pp6Module3GetEv                                              #  102   0x3e5e8  5      
  movl %eax, %edi                                                         #  103   0x3e5ed  2      
  movl $0x100206d8, %esi                                                  #  104   0x3e5ef  5      
  nop                                                                     #  105   0x3e5f4  1      
  nop                                                                     #  106   0x3e5f5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  107   0x3e5f6  5      
  movl $0x10030d20, %edi                                                  #  108   0x3e5fb  5      
  movl %eax, 0xfff2722(%rip)                                              #  109   0x3e600  6      
  nop                                                                     #  110   0x3e606  1      
  nop                                                                     #  111   0x3e607  1      
  callq .__cxa_guard_release                                              #  112   0x3e608  5      
  jmpq .L_3e6e0                                                           #  113   0x3e60d  5      
  nop                                                                     #  114   0x3e612  1      
  nop                                                                     #  115   0x3e613  1      
.L_3e780:                                                                 #        0x3e614  0      
  movl $0x10030d20, %edi                                                  #  116   0x3e614  5      
  movl %eax, %r12d                                                        #  117   0x3e619  3      
  nop                                                                     #  118   0x3e61c  1      
  nop                                                                     #  119   0x3e61d  1      
  callq .__cxa_guard_abort                                                #  120   0x3e61e  5      
.L_3e7a0:                                                                 #        0x3e623  0      
  movl %ebx, %edi                                                         #  121   0x3e623  2      
  nop                                                                     #  122   0x3e625  1      
  nop                                                                     #  123   0x3e626  1      
  callq ._ZN2pp10InputEventD2Ev                                           #  124   0x3e627  5      
  movl %r12d, %edi                                                        #  125   0x3e62c  3      
  nop                                                                     #  126   0x3e62f  1      
  nop                                                                     #  127   0x3e630  1      
  callq ._Unwind_Resume                                                   #  128   0x3e631  5      
  movl %eax, %r12d                                                        #  129   0x3e636  3      
  jmpq .L_3e7a0                                                           #  130   0x3e639  5      
  nop                                                                     #  131   0x3e63e  1      
  nop                                                                     #  132   0x3e63f  1      
  jmpq .L_3e780                                                           #  133   0x3e640  5      
  nop                                                                     #  134   0x3e645  1      
  nop                                                                     #  135   0x3e646  1      
  nop                                                                     #  136   0x3e647  1      
                                                                                                   
.size _ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj, .-_ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj

