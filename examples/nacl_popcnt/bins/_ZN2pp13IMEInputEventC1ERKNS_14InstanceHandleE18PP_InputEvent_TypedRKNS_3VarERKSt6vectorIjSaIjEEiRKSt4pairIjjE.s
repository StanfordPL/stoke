  .text
  .globl _ZN2pp13IMEInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE
  .type _ZN2pp13IMEInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE, @function

#! file-offset 0x3d500
#! rip-offset  0x3d500
#! capacity    832 bytes

# Text                                                                                                            #  Line  RIP      Bytes  
._ZN2pp13IMEInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE:  #        0x3d500  0      
  movq %rbx, -0x20(%rsp)                                                                                          #  1     0x3d500  5      
  movl %edi, %ebx                                                                                                 #  2     0x3d505  2      
  movq %r12, -0x18(%rsp)                                                                                          #  3     0x3d507  5      
  movq %r13, -0x10(%rsp)                                                                                          #  4     0x3d50c  5      
  movq %r14, -0x8(%rsp)                                                                                           #  5     0x3d511  5      
  movl %esi, %esi                                                                                                 #  6     0x3d516  2      
  nop                                                                                                             #  7     0x3d518  1      
  subl $0x88, %esp                                                                                                #  8     0x3d519  3      
  addq %r15, %rsp                                                                                                 #  9     0x3d51c  3      
  movl %ebx, %edi                                                                                                 #  10    0x3d51f  2      
  movl %ecx, %r14d                                                                                                #  11    0x3d521  3      
  movl %edx, 0x2c(%rsp)                                                                                           #  12    0x3d524  4      
  movsd %xmm0, 0x30(%rsp)                                                                                         #  13    0x3d528  6      
  movl %r9d, 0x3c(%rsp)                                                                                           #  14    0x3d52e  5      
  nop                                                                                                             #  15    0x3d533  1      
  movq %rsi, 0x20(%rsp)                                                                                           #  16    0x3d534  5      
  movl %r8d, %r13d                                                                                                #  17    0x3d539  3      
  movl 0x90(%rsp), %r12d                                                                                          #  18    0x3d53c  8      
  nop                                                                                                             #  19    0x3d544  1      
  callq ._ZN2pp10InputEventC2Ev                                                                                   #  20    0x3d545  5      
  movl %ebx, %ebx                                                                                                 #  21    0x3d54a  2      
  movl $0x10020748, (%r15,%rbx,1)                                                                                 #  22    0x3d54c  8      
  xchgw %ax, %ax                                                                                                  #  23    0x3d554  3      
  nop                                                                                                             #  24    0x3d557  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v                                       #  25    0x3d558  5      
  testl %eax, %eax                                                                                                #  26    0x3d55d  2      
  jne .L_3d5e0                                                                                                    #  27    0x3d55f  6      
  nop                                                                                                             #  28    0x3d565  1      
  nop                                                                                                             #  29    0x3d566  1      
.L_3d5a0:                                                                                                         #        0x3d567  0      
  movq 0x68(%rsp), %rbx                                                                                           #  30    0x3d567  5      
  movq 0x70(%rsp), %r12                                                                                           #  31    0x3d56c  5      
  movq 0x78(%rsp), %r13                                                                                           #  32    0x3d571  5      
  movq 0x80(%rsp), %r14                                                                                           #  33    0x3d576  8      
  addl $0x88, %esp                                                                                                #  34    0x3d57e  3      
  addq %r15, %rsp                                                                                                 #  35    0x3d581  3      
  popq %r11                                                                                                       #  36    0x3d584  3      
  andl $0xffffffe0, %r11d                                                                                         #  37    0x3d587  7      
  addq %r15, %r11                                                                                                 #  38    0x3d58e  3      
  jmpq %r11                                                                                                       #  39    0x3d591  3      
  nop                                                                                                             #  40    0x3d594  1      
  nop                                                                                                             #  41    0x3d595  1      
.L_3d5e0:                                                                                                         #        0x3d596  0      
  cmpb $0x0, 0xfff3773(%rip)                                                                                      #  42    0x3d596  7      
  movl $0x0, 0x5c(%rsp)                                                                                           #  43    0x3d59d  8      
  je .L_3d700                                                                                                     #  44    0x3d5a5  6      
  nop                                                                                                             #  45    0x3d5ab  1      
.L_3d600:                                                                                                         #        0x3d5ac  0      
  movl %r13d, %r13d                                                                                               #  46    0x3d5ac  3      
  movl 0x4(%r15,%r13,1), %r8d                                                                                     #  47    0x3d5af  5      
  movl %r13d, %r13d                                                                                               #  48    0x3d5b4  3      
  movl (%r15,%r13,1), %r9d                                                                                        #  49    0x3d5b7  4      
  movl 0xfff3757(%rip), %eax                                                                                      #  50    0x3d5bb  6      
  movl %r12d, %r12d                                                                                               #  51    0x3d5c1  3      
  movl 0x4(%r15,%r12,1), %esi                                                                                     #  52    0x3d5c4  5      
  nop                                                                                                             #  53    0x3d5c9  1      
  movl %r12d, %r12d                                                                                               #  54    0x3d5ca  3      
  movl (%r15,%r12,1), %edi                                                                                        #  55    0x3d5cd  4      
  cmpl %r9d, %r8d                                                                                                 #  56    0x3d5d1  3      
  movl %eax, %eax                                                                                                 #  57    0x3d5d4  2      
  movl (%r15,%rax,1), %eax                                                                                        #  58    0x3d5d6  4      
  je .L_3d7a0                                                                                                     #  59    0x3d5da  6      
  subl %r9d, %r8d                                                                                                 #  60    0x3d5e0  3      
  sarl $0x2, %r8d                                                                                                 #  61    0x3d5e3  4      
  nop                                                                                                             #  62    0x3d5e7  1      
  subl $0x1, %r8d                                                                                                 #  63    0x3d5e8  4      
  nop                                                                                                             #  64    0x3d5ec  1      
  nop                                                                                                             #  65    0x3d5ed  1      
.L_3d660:                                                                                                         #        0x3d5ee  0      
  movl %esi, 0x10(%rsp)                                                                                           #  66    0x3d5ee  4      
  movl %r14d, %r14d                                                                                               #  67    0x3d5f2  3      
  movq 0x8(%r15,%r14,1), %rdx                                                                                     #  68    0x3d5f5  5      
  movl 0x3c(%rsp), %esi                                                                                           #  69    0x3d5fa  4      
  movl %r14d, %r14d                                                                                               #  70    0x3d5fe  3      
  movq 0x10(%r15,%r14,1), %rcx                                                                                    #  71    0x3d601  5      
  movq 0x20(%rsp), %r10                                                                                           #  72    0x3d606  5      
  nop                                                                                                             #  73    0x3d60b  1      
  movl %edi, 0x8(%rsp)                                                                                            #  74    0x3d60c  4      
  movq %rdx, 0x40(%rsp)                                                                                           #  75    0x3d610  5      
  movsd 0x30(%rsp), %xmm0                                                                                         #  76    0x3d615  6      
  movl %esi, (%rsp)                                                                                               #  77    0x3d61b  3      
  movq %rcx, 0x48(%rsp)                                                                                           #  78    0x3d61e  5      
  movl 0x2c(%rsp), %esi                                                                                           #  79    0x3d623  4      
  nop                                                                                                             #  80    0x3d627  1      
  movl %r10d, %r10d                                                                                               #  81    0x3d628  3      
  movl (%r15,%r10,1), %edi                                                                                        #  82    0x3d62b  4      
  xchgw %ax, %ax                                                                                                  #  83    0x3d62f  3      
  nop                                                                                                             #  84    0x3d632  1      
  andl $0xffffffe0, %eax                                                                                          #  85    0x3d633  5      
  addq %r15, %rax                                                                                                 #  86    0x3d638  3      
  callq %rax                                                                                                      #  87    0x3d63b  2      
  movl %eax, %esi                                                                                                 #  88    0x3d63d  2      
  movl %ebx, %edi                                                                                                 #  89    0x3d63f  2      
  nop                                                                                                             #  90    0x3d641  1      
  nop                                                                                                             #  91    0x3d642  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                                                #  92    0x3d643  5      
  jmpq .L_3d5a0                                                                                                   #  93    0x3d648  5      
  nop                                                                                                             #  94    0x3d64d  1      
  nop                                                                                                             #  95    0x3d64e  1      
.L_3d700:                                                                                                         #        0x3d64f  0      
  movl $0x10030d10, %edi                                                                                          #  96    0x3d64f  5      
  nop                                                                                                             #  97    0x3d654  1      
  nop                                                                                                             #  98    0x3d655  1      
  callq .__cxa_guard_acquire                                                                                      #  99    0x3d656  5      
  testl %eax, %eax                                                                                                #  100   0x3d65b  2      
  je .L_3d600                                                                                                     #  101   0x3d65d  6      
  nop                                                                                                             #  102   0x3d663  1      
  nop                                                                                                             #  103   0x3d664  1      
  callq ._ZN2pp6Module3GetEv                                                                                      #  104   0x3d665  5      
  movl %eax, %edi                                                                                                 #  105   0x3d66a  2      
  movl $0x10020674, %esi                                                                                          #  106   0x3d66c  5      
  nop                                                                                                             #  107   0x3d671  1      
  nop                                                                                                             #  108   0x3d672  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                   #  109   0x3d673  5      
  movl $0x10030d10, %edi                                                                                          #  110   0x3d678  5      
  movl %eax, 0xfff3695(%rip)                                                                                      #  111   0x3d67d  6      
  nop                                                                                                             #  112   0x3d683  1      
  nop                                                                                                             #  113   0x3d684  1      
  callq .__cxa_guard_release                                                                                      #  114   0x3d685  5      
  jmpq .L_3d600                                                                                                   #  115   0x3d68a  5      
  nop                                                                                                             #  116   0x3d68f  1      
  nop                                                                                                             #  117   0x3d690  1      
.L_3d7a0:                                                                                                         #        0x3d691  0      
  leal 0x5c(%rsp), %r9d                                                                                           #  118   0x3d691  5      
  xorl %r8d, %r8d                                                                                                 #  119   0x3d696  3      
  jmpq .L_3d660                                                                                                   #  120   0x3d699  5      
  nop                                                                                                             #  121   0x3d69e  1      
  nop                                                                                                             #  122   0x3d69f  1      
  movl $0x10030d10, %edi                                                                                          #  123   0x3d6a0  5      
  movl %eax, %r12d                                                                                                #  124   0x3d6a5  3      
  nop                                                                                                             #  125   0x3d6a8  1      
  nop                                                                                                             #  126   0x3d6a9  1      
  callq .__cxa_guard_abort                                                                                        #  127   0x3d6aa  5      
.L_3d7e0:                                                                                                         #        0x3d6af  0      
  movl %ebx, %edi                                                                                                 #  128   0x3d6af  2      
  nop                                                                                                             #  129   0x3d6b1  1      
  nop                                                                                                             #  130   0x3d6b2  1      
  callq ._ZN2pp10InputEventD2Ev                                                                                   #  131   0x3d6b3  5      
  movl %r12d, %edi                                                                                                #  132   0x3d6b8  3      
  nop                                                                                                             #  133   0x3d6bb  1      
  nop                                                                                                             #  134   0x3d6bc  1      
  callq ._Unwind_Resume                                                                                           #  135   0x3d6bd  5      
  movl %eax, %r12d                                                                                                #  136   0x3d6c2  3      
  jmpq .L_3d7e0                                                                                                   #  137   0x3d6c5  5      
  nop                                                                                                             #  138   0x3d6ca  1      
  nop                                                                                                             #  139   0x3d6cb  1      
  nop                                                                                                             #  140   0x3d6cc  1      
                                                                                                                                           
.size _ZN2pp13IMEInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE, .-_ZN2pp13IMEInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE

