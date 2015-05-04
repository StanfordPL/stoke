  .text
  .globl _ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b
  .type _ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b, @function

#! file-offset 0x37500
#! rip-offset  0x37500
#! capacity    896 bytes

# Text                                                                      #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b:  #        0x37500  0      
  movq %rbx, -0x20(%rsp)                                                    #  1     0x37500  5      
  movl %edi, %ebx                                                           #  2     0x37505  2      
  movq %r12, -0x18(%rsp)                                                    #  3     0x37507  5      
  movq %r13, -0x10(%rsp)                                                    #  4     0x3750c  5      
  movq %r14, -0x8(%rsp)                                                     #  5     0x37511  5      
  movl %ecx, %ecx                                                           #  6     0x37516  2      
  subl $0x48, %esp                                                          #  7     0x37518  3      
  addq %r15, %rsp                                                           #  8     0x3751b  3      
  movl %ebx, %edi                                                           #  9     0x3751e  2      
  movl %esi, %r12d                                                          #  10    0x37520  3      
  movsd %xmm0, 0x8(%rsp)                                                    #  11    0x37523  6      
  movl %edx, 0x14(%rsp)                                                     #  12    0x37529  4      
  movq %rcx, 0x18(%rsp)                                                     #  13    0x3752d  5      
  movl %r8d, %r14d                                                          #  14    0x37532  3      
  movl %r9d, %r13d                                                          #  15    0x37535  3      
  nop                                                                       #  16    0x37538  1      
  callq ._ZN2pp10InputEventC2Ev                                             #  17    0x37539  5      
  movl %ebx, %ebx                                                           #  18    0x3753e  2      
  movl $0x10020808, (%r15,%rbx,1)                                           #  19    0x37540  8      
  cmpb $0x0, 0xfff9801(%rip)                                                #  20    0x37548  7      
  je .L_375c0                                                               #  21    0x3754f  6      
  nop                                                                       #  22    0x37555  1      
.L_37560:                                                                   #        0x37556  0      
  movl 0xfff97fc(%rip), %eax                                                #  23    0x37556  6      
  testq %rax, %rax                                                          #  24    0x3755c  3      
  jne .L_37660                                                              #  25    0x3755f  6      
  xchgw %ax, %ax                                                            #  26    0x37565  3      
  nop                                                                       #  27    0x37568  1      
.L_37580:                                                                   #        0x37569  0      
  movq 0x28(%rsp), %rbx                                                     #  28    0x37569  5      
  movq 0x30(%rsp), %r12                                                     #  29    0x3756e  5      
  movq 0x38(%rsp), %r13                                                     #  30    0x37573  5      
  movq 0x40(%rsp), %r14                                                     #  31    0x37578  5      
  addl $0x48, %esp                                                          #  32    0x3757d  3      
  addq %r15, %rsp                                                           #  33    0x37580  3      
  popq %r11                                                                 #  34    0x37583  3      
  nop                                                                       #  35    0x37586  1      
  andl $0xffffffe0, %r11d                                                   #  36    0x37587  7      
  addq %r15, %r11                                                           #  37    0x3758e  3      
  jmpq %r11                                                                 #  38    0x37591  3      
  nop                                                                       #  39    0x37594  1      
  nop                                                                       #  40    0x37595  1      
.L_375c0:                                                                   #        0x37596  0      
  movl $0x10030d50, %edi                                                    #  41    0x37596  5      
  nop                                                                       #  42    0x3759b  1      
  nop                                                                       #  43    0x3759c  1      
  callq .__cxa_guard_acquire                                                #  44    0x3759d  5      
  testl %eax, %eax                                                          #  45    0x375a2  2      
  je .L_37560                                                               #  46    0x375a4  6      
  nop                                                                       #  47    0x375aa  1      
  nop                                                                       #  48    0x375ab  1      
  callq ._ZN2pp6Module3GetEv                                                #  49    0x375ac  5      
  movl %eax, %edi                                                           #  50    0x375b1  2      
  movl $0x100206c0, %esi                                                    #  51    0x375b3  5      
  nop                                                                       #  52    0x375b8  1      
  nop                                                                       #  53    0x375b9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  54    0x375ba  5      
  movl $0x10030d50, %edi                                                    #  55    0x375bf  5      
  movl %eax, 0xfff978e(%rip)                                                #  56    0x375c4  6      
  nop                                                                       #  57    0x375ca  1      
  nop                                                                       #  58    0x375cb  1      
  callq .__cxa_guard_release                                                #  59    0x375cc  5      
  movl 0xfff9781(%rip), %eax                                                #  60    0x375d1  6      
  testq %rax, %rax                                                          #  61    0x375d7  3      
  je .L_37580                                                               #  62    0x375da  6      
  xchgw %ax, %ax                                                            #  63    0x375e0  3      
  nop                                                                       #  64    0x375e3  1      
.L_37660:                                                                   #        0x375e4  0      
  cmpb $0x0, 0xfff9765(%rip)                                                #  65    0x375e4  7      
  je .L_37700                                                               #  66    0x375eb  6      
  nop                                                                       #  67    0x375f1  1      
  nop                                                                       #  68    0x375f2  1      
.L_37680:                                                                   #        0x375f3  0      
  movl %eax, %eax                                                           #  69    0x375f3  2      
  movl (%r15,%rax,1), %eax                                                  #  70    0x375f5  4      
  movzbl %r13b, %r8d                                                        #  71    0x375f9  4      
  movl %r14d, %ecx                                                          #  72    0x375fd  3      
  movl 0x18(%rsp), %edx                                                     #  73    0x37600  4      
  movl 0x14(%rsp), %esi                                                     #  74    0x37604  4      
  movsd 0x8(%rsp), %xmm0                                                    #  75    0x37608  6      
  nop                                                                       #  76    0x3760e  1      
  movl %r12d, %r12d                                                         #  77    0x3760f  3      
  movl (%r15,%r12,1), %edi                                                  #  78    0x37612  4      
  xchgw %ax, %ax                                                            #  79    0x37616  3      
  nop                                                                       #  80    0x37619  1      
  andl $0xffffffe0, %eax                                                    #  81    0x3761a  5      
  addq %r15, %rax                                                           #  82    0x3761f  3      
  callq %rax                                                                #  83    0x37622  2      
  movl %eax, %esi                                                           #  84    0x37624  2      
  movl %ebx, %edi                                                           #  85    0x37626  2      
  nop                                                                       #  86    0x37628  1      
  nop                                                                       #  87    0x37629  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                          #  88    0x3762a  5      
  jmpq .L_37580                                                             #  89    0x3762f  5      
  nop                                                                       #  90    0x37634  1      
  nop                                                                       #  91    0x37635  1      
.L_37700:                                                                   #        0x37636  0      
  movl $0x10030d50, %edi                                                    #  92    0x37636  5      
  nop                                                                       #  93    0x3763b  1      
  nop                                                                       #  94    0x3763c  1      
  callq .__cxa_guard_acquire                                                #  95    0x3763d  5      
  testl %eax, %eax                                                          #  96    0x37642  2      
  jne .L_37760                                                              #  97    0x37644  6      
  nop                                                                       #  98    0x3764a  1      
  nop                                                                       #  99    0x3764b  1      
.L_37740:                                                                   #        0x3764c  0      
  movl 0xfff9706(%rip), %eax                                                #  100   0x3764c  6      
  jmpq .L_37680                                                             #  101   0x37652  5      
  nop                                                                       #  102   0x37657  1      
  nop                                                                       #  103   0x37658  1      
.L_37760:                                                                   #        0x37659  0      
  nop                                                                       #  104   0x37659  1      
  nop                                                                       #  105   0x3765a  1      
  callq ._ZN2pp6Module3GetEv                                                #  106   0x3765b  5      
  movl %eax, %edi                                                           #  107   0x37660  2      
  movl $0x100206c0, %esi                                                    #  108   0x37662  5      
  nop                                                                       #  109   0x37667  1      
  nop                                                                       #  110   0x37668  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  111   0x37669  5      
  movl $0x10030d50, %edi                                                    #  112   0x3766e  5      
  movl %eax, 0xfff96df(%rip)                                                #  113   0x37673  6      
  nop                                                                       #  114   0x37679  1      
  nop                                                                       #  115   0x3767a  1      
  callq .__cxa_guard_release                                                #  116   0x3767b  5      
  jmpq .L_37740                                                             #  117   0x37680  5      
  nop                                                                       #  118   0x37685  1      
  nop                                                                       #  119   0x37686  1      
.L_377e0:                                                                   #        0x37687  0      
  movl $0x10030d50, %edi                                                    #  120   0x37687  5      
  movl %eax, %r12d                                                          #  121   0x3768c  3      
  nop                                                                       #  122   0x3768f  1      
  nop                                                                       #  123   0x37690  1      
  callq .__cxa_guard_abort                                                  #  124   0x37691  5      
.L_37800:                                                                   #        0x37696  0      
  movl %ebx, %edi                                                           #  125   0x37696  2      
  nop                                                                       #  126   0x37698  1      
  nop                                                                       #  127   0x37699  1      
  callq ._ZN2pp10InputEventD2Ev                                             #  128   0x3769a  5      
  movl %r12d, %edi                                                          #  129   0x3769f  3      
  nop                                                                       #  130   0x376a2  1      
  nop                                                                       #  131   0x376a3  1      
  callq ._Unwind_Resume                                                     #  132   0x376a4  5      
  movl %eax, %r12d                                                          #  133   0x376a9  3      
  jmpq .L_37800                                                             #  134   0x376ac  5      
  nop                                                                       #  135   0x376b1  1      
  nop                                                                       #  136   0x376b2  1      
  jmpq .L_377e0                                                             #  137   0x376b3  5      
  nop                                                                       #  138   0x376b8  1      
  nop                                                                       #  139   0x376b9  1      
  nop                                                                       #  140   0x376ba  1      
                                                                                                     
.size _ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b, .-_ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b

