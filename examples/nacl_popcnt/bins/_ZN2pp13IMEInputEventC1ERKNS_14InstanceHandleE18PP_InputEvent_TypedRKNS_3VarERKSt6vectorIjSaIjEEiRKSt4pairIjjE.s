  .text
  .globl _ZN2pp13IMEInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE
  .type _ZN2pp13IMEInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE, @function

#! file-offset 0x3d460
#! rip-offset  0x3d460
#! capacity    832 bytes

# Text                                                                                                            #  Line  RIP      Bytes  
._ZN2pp13IMEInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE:  #        0x3d460  0      
  movq %rbx, -0x20(%rsp)                                                                                          #  1     0x3d460  5      
  movl %edi, %ebx                                                                                                 #  2     0x3d465  2      
  movq %r12, -0x18(%rsp)                                                                                          #  3     0x3d467  5      
  movq %r13, -0x10(%rsp)                                                                                          #  4     0x3d46c  5      
  movq %r14, -0x8(%rsp)                                                                                           #  5     0x3d471  5      
  movl %esi, %esi                                                                                                 #  6     0x3d476  2      
  nop                                                                                                             #  7     0x3d478  1      
  subl $0x88, %esp                                                                                                #  8     0x3d479  3      
  addq %r15, %rsp                                                                                                 #  9     0x3d47c  3      
  movl %ebx, %edi                                                                                                 #  10    0x3d47f  2      
  movl %ecx, %r14d                                                                                                #  11    0x3d481  3      
  movl %edx, 0x2c(%rsp)                                                                                           #  12    0x3d484  4      
  movsd %xmm0, 0x30(%rsp)                                                                                         #  13    0x3d488  6      
  movl %r9d, 0x3c(%rsp)                                                                                           #  14    0x3d48e  5      
  nop                                                                                                             #  15    0x3d493  1      
  movq %rsi, 0x20(%rsp)                                                                                           #  16    0x3d494  5      
  movl %r8d, %r13d                                                                                                #  17    0x3d499  3      
  movl 0x90(%rsp), %r12d                                                                                          #  18    0x3d49c  8      
  nop                                                                                                             #  19    0x3d4a4  1      
  callq ._ZN2pp10InputEventC2Ev                                                                                   #  20    0x3d4a5  5      
  movl %ebx, %ebx                                                                                                 #  21    0x3d4aa  2      
  movl $0x10020748, (%r15,%rbx,1)                                                                                 #  22    0x3d4ac  8      
  xchgw %ax, %ax                                                                                                  #  23    0x3d4b4  3      
  nop                                                                                                             #  24    0x3d4b7  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v                                       #  25    0x3d4b8  5      
  testl %eax, %eax                                                                                                #  26    0x3d4bd  2      
  jne .L_3d540                                                                                                    #  27    0x3d4bf  6      
  nop                                                                                                             #  28    0x3d4c5  1      
  nop                                                                                                             #  29    0x3d4c6  1      
.L_3d500:                                                                                                         #        0x3d4c7  0      
  movq 0x68(%rsp), %rbx                                                                                           #  30    0x3d4c7  5      
  movq 0x70(%rsp), %r12                                                                                           #  31    0x3d4cc  5      
  movq 0x78(%rsp), %r13                                                                                           #  32    0x3d4d1  5      
  movq 0x80(%rsp), %r14                                                                                           #  33    0x3d4d6  8      
  addl $0x88, %esp                                                                                                #  34    0x3d4de  3      
  addq %r15, %rsp                                                                                                 #  35    0x3d4e1  3      
  popq %r11                                                                                                       #  36    0x3d4e4  3      
  andl $0xffffffe0, %r11d                                                                                         #  37    0x3d4e7  7      
  addq %r15, %r11                                                                                                 #  38    0x3d4ee  3      
  jmpq %r11                                                                                                       #  39    0x3d4f1  3      
  nop                                                                                                             #  40    0x3d4f4  1      
  nop                                                                                                             #  41    0x3d4f5  1      
.L_3d540:                                                                                                         #        0x3d4f6  0      
  cmpb $0x0, 0xfff3813(%rip)                                                                                      #  42    0x3d4f6  7      
  movl $0x0, 0x5c(%rsp)                                                                                           #  43    0x3d4fd  8      
  je .L_3d660                                                                                                     #  44    0x3d505  6      
  nop                                                                                                             #  45    0x3d50b  1      
.L_3d560:                                                                                                         #        0x3d50c  0      
  movl %r13d, %r13d                                                                                               #  46    0x3d50c  3      
  movl 0x4(%r15,%r13,1), %r8d                                                                                     #  47    0x3d50f  5      
  movl %r13d, %r13d                                                                                               #  48    0x3d514  3      
  movl (%r15,%r13,1), %r9d                                                                                        #  49    0x3d517  4      
  movl 0xfff37f7(%rip), %eax                                                                                      #  50    0x3d51b  6      
  movl %r12d, %r12d                                                                                               #  51    0x3d521  3      
  movl 0x4(%r15,%r12,1), %esi                                                                                     #  52    0x3d524  5      
  nop                                                                                                             #  53    0x3d529  1      
  movl %r12d, %r12d                                                                                               #  54    0x3d52a  3      
  movl (%r15,%r12,1), %edi                                                                                        #  55    0x3d52d  4      
  cmpl %r9d, %r8d                                                                                                 #  56    0x3d531  3      
  movl %eax, %eax                                                                                                 #  57    0x3d534  2      
  movl (%r15,%rax,1), %eax                                                                                        #  58    0x3d536  4      
  je .L_3d700                                                                                                     #  59    0x3d53a  6      
  subl %r9d, %r8d                                                                                                 #  60    0x3d540  3      
  sarl $0x2, %r8d                                                                                                 #  61    0x3d543  4      
  nop                                                                                                             #  62    0x3d547  1      
  subl $0x1, %r8d                                                                                                 #  63    0x3d548  4      
  nop                                                                                                             #  64    0x3d54c  1      
  nop                                                                                                             #  65    0x3d54d  1      
.L_3d5c0:                                                                                                         #        0x3d54e  0      
  movl %esi, 0x10(%rsp)                                                                                           #  66    0x3d54e  4      
  movl %r14d, %r14d                                                                                               #  67    0x3d552  3      
  movq 0x8(%r15,%r14,1), %rdx                                                                                     #  68    0x3d555  5      
  movl 0x3c(%rsp), %esi                                                                                           #  69    0x3d55a  4      
  movl %r14d, %r14d                                                                                               #  70    0x3d55e  3      
  movq 0x10(%r15,%r14,1), %rcx                                                                                    #  71    0x3d561  5      
  movq 0x20(%rsp), %r10                                                                                           #  72    0x3d566  5      
  nop                                                                                                             #  73    0x3d56b  1      
  movl %edi, 0x8(%rsp)                                                                                            #  74    0x3d56c  4      
  movq %rdx, 0x40(%rsp)                                                                                           #  75    0x3d570  5      
  movsd 0x30(%rsp), %xmm0                                                                                         #  76    0x3d575  6      
  movl %esi, (%rsp)                                                                                               #  77    0x3d57b  3      
  movq %rcx, 0x48(%rsp)                                                                                           #  78    0x3d57e  5      
  movl 0x2c(%rsp), %esi                                                                                           #  79    0x3d583  4      
  nop                                                                                                             #  80    0x3d587  1      
  movl %r10d, %r10d                                                                                               #  81    0x3d588  3      
  movl (%r15,%r10,1), %edi                                                                                        #  82    0x3d58b  4      
  xchgw %ax, %ax                                                                                                  #  83    0x3d58f  3      
  nop                                                                                                             #  84    0x3d592  1      
  andl $0xffffffe0, %eax                                                                                          #  85    0x3d593  5      
  addq %r15, %rax                                                                                                 #  86    0x3d598  3      
  callq %rax                                                                                                      #  87    0x3d59b  2      
  movl %eax, %esi                                                                                                 #  88    0x3d59d  2      
  movl %ebx, %edi                                                                                                 #  89    0x3d59f  2      
  nop                                                                                                             #  90    0x3d5a1  1      
  nop                                                                                                             #  91    0x3d5a2  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                                                #  92    0x3d5a3  5      
  jmpq .L_3d500                                                                                                   #  93    0x3d5a8  5      
  nop                                                                                                             #  94    0x3d5ad  1      
  nop                                                                                                             #  95    0x3d5ae  1      
.L_3d660:                                                                                                         #        0x3d5af  0      
  movl $0x10030d10, %edi                                                                                          #  96    0x3d5af  5      
  nop                                                                                                             #  97    0x3d5b4  1      
  nop                                                                                                             #  98    0x3d5b5  1      
  callq .__cxa_guard_acquire                                                                                      #  99    0x3d5b6  5      
  testl %eax, %eax                                                                                                #  100   0x3d5bb  2      
  je .L_3d560                                                                                                     #  101   0x3d5bd  6      
  nop                                                                                                             #  102   0x3d5c3  1      
  nop                                                                                                             #  103   0x3d5c4  1      
  callq ._ZN2pp6Module3GetEv                                                                                      #  104   0x3d5c5  5      
  movl %eax, %edi                                                                                                 #  105   0x3d5ca  2      
  movl $0x10020674, %esi                                                                                          #  106   0x3d5cc  5      
  nop                                                                                                             #  107   0x3d5d1  1      
  nop                                                                                                             #  108   0x3d5d2  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                   #  109   0x3d5d3  5      
  movl $0x10030d10, %edi                                                                                          #  110   0x3d5d8  5      
  movl %eax, 0xfff3735(%rip)                                                                                      #  111   0x3d5dd  6      
  nop                                                                                                             #  112   0x3d5e3  1      
  nop                                                                                                             #  113   0x3d5e4  1      
  callq .__cxa_guard_release                                                                                      #  114   0x3d5e5  5      
  jmpq .L_3d560                                                                                                   #  115   0x3d5ea  5      
  nop                                                                                                             #  116   0x3d5ef  1      
  nop                                                                                                             #  117   0x3d5f0  1      
.L_3d700:                                                                                                         #        0x3d5f1  0      
  leal 0x5c(%rsp), %r9d                                                                                           #  118   0x3d5f1  5      
  xorl %r8d, %r8d                                                                                                 #  119   0x3d5f6  3      
  jmpq .L_3d5c0                                                                                                   #  120   0x3d5f9  5      
  nop                                                                                                             #  121   0x3d5fe  1      
  nop                                                                                                             #  122   0x3d5ff  1      
  movl $0x10030d10, %edi                                                                                          #  123   0x3d600  5      
  movl %eax, %r12d                                                                                                #  124   0x3d605  3      
  nop                                                                                                             #  125   0x3d608  1      
  nop                                                                                                             #  126   0x3d609  1      
  callq .__cxa_guard_abort                                                                                        #  127   0x3d60a  5      
.L_3d740:                                                                                                         #        0x3d60f  0      
  movl %ebx, %edi                                                                                                 #  128   0x3d60f  2      
  nop                                                                                                             #  129   0x3d611  1      
  nop                                                                                                             #  130   0x3d612  1      
  callq ._ZN2pp10InputEventD2Ev                                                                                   #  131   0x3d613  5      
  movl %r12d, %edi                                                                                                #  132   0x3d618  3      
  nop                                                                                                             #  133   0x3d61b  1      
  nop                                                                                                             #  134   0x3d61c  1      
  callq ._Unwind_Resume                                                                                           #  135   0x3d61d  5      
  movl %eax, %r12d                                                                                                #  136   0x3d622  3      
  jmpq .L_3d740                                                                                                   #  137   0x3d625  5      
  nop                                                                                                             #  138   0x3d62a  1      
  nop                                                                                                             #  139   0x3d62b  1      
  nop                                                                                                             #  140   0x3d62c  1      
                                                                                                                                           
.size _ZN2pp13IMEInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE, .-_ZN2pp13IMEInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE

