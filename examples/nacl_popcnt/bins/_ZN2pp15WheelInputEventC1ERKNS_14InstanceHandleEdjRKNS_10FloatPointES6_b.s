  .text
  .globl _ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b
  .type _ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b, @function

#! file-offset 0x37460
#! rip-offset  0x37460
#! capacity    896 bytes

# Text                                                                      #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b:  #        0x37460  0      
  movq %rbx, -0x20(%rsp)                                                    #  1     0x37460  5      
  movl %edi, %ebx                                                           #  2     0x37465  2      
  movq %r12, -0x18(%rsp)                                                    #  3     0x37467  5      
  movq %r13, -0x10(%rsp)                                                    #  4     0x3746c  5      
  movq %r14, -0x8(%rsp)                                                     #  5     0x37471  5      
  movl %ecx, %ecx                                                           #  6     0x37476  2      
  subl $0x48, %esp                                                          #  7     0x37478  3      
  addq %r15, %rsp                                                           #  8     0x3747b  3      
  movl %ebx, %edi                                                           #  9     0x3747e  2      
  movl %esi, %r12d                                                          #  10    0x37480  3      
  movsd %xmm0, 0x8(%rsp)                                                    #  11    0x37483  6      
  movl %edx, 0x14(%rsp)                                                     #  12    0x37489  4      
  movq %rcx, 0x18(%rsp)                                                     #  13    0x3748d  5      
  movl %r8d, %r14d                                                          #  14    0x37492  3      
  movl %r9d, %r13d                                                          #  15    0x37495  3      
  nop                                                                       #  16    0x37498  1      
  callq ._ZN2pp10InputEventC2Ev                                             #  17    0x37499  5      
  movl %ebx, %ebx                                                           #  18    0x3749e  2      
  movl $0x10020808, (%r15,%rbx,1)                                           #  19    0x374a0  8      
  cmpb $0x0, 0xfff98a1(%rip)                                                #  20    0x374a8  7      
  je .L_37520                                                               #  21    0x374af  6      
  nop                                                                       #  22    0x374b5  1      
.L_374c0:                                                                   #        0x374b6  0      
  movl 0xfff989c(%rip), %eax                                                #  23    0x374b6  6      
  testq %rax, %rax                                                          #  24    0x374bc  3      
  jne .L_375c0                                                              #  25    0x374bf  6      
  xchgw %ax, %ax                                                            #  26    0x374c5  3      
  nop                                                                       #  27    0x374c8  1      
.L_374e0:                                                                   #        0x374c9  0      
  movq 0x28(%rsp), %rbx                                                     #  28    0x374c9  5      
  movq 0x30(%rsp), %r12                                                     #  29    0x374ce  5      
  movq 0x38(%rsp), %r13                                                     #  30    0x374d3  5      
  movq 0x40(%rsp), %r14                                                     #  31    0x374d8  5      
  addl $0x48, %esp                                                          #  32    0x374dd  3      
  addq %r15, %rsp                                                           #  33    0x374e0  3      
  popq %r11                                                                 #  34    0x374e3  3      
  nop                                                                       #  35    0x374e6  1      
  andl $0xffffffe0, %r11d                                                   #  36    0x374e7  7      
  addq %r15, %r11                                                           #  37    0x374ee  3      
  jmpq %r11                                                                 #  38    0x374f1  3      
  nop                                                                       #  39    0x374f4  1      
  nop                                                                       #  40    0x374f5  1      
.L_37520:                                                                   #        0x374f6  0      
  movl $0x10030d50, %edi                                                    #  41    0x374f6  5      
  nop                                                                       #  42    0x374fb  1      
  nop                                                                       #  43    0x374fc  1      
  callq .__cxa_guard_acquire                                                #  44    0x374fd  5      
  testl %eax, %eax                                                          #  45    0x37502  2      
  je .L_374c0                                                               #  46    0x37504  6      
  nop                                                                       #  47    0x3750a  1      
  nop                                                                       #  48    0x3750b  1      
  callq ._ZN2pp6Module3GetEv                                                #  49    0x3750c  5      
  movl %eax, %edi                                                           #  50    0x37511  2      
  movl $0x100206c0, %esi                                                    #  51    0x37513  5      
  nop                                                                       #  52    0x37518  1      
  nop                                                                       #  53    0x37519  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  54    0x3751a  5      
  movl $0x10030d50, %edi                                                    #  55    0x3751f  5      
  movl %eax, 0xfff982e(%rip)                                                #  56    0x37524  6      
  nop                                                                       #  57    0x3752a  1      
  nop                                                                       #  58    0x3752b  1      
  callq .__cxa_guard_release                                                #  59    0x3752c  5      
  movl 0xfff9821(%rip), %eax                                                #  60    0x37531  6      
  testq %rax, %rax                                                          #  61    0x37537  3      
  je .L_374e0                                                               #  62    0x3753a  6      
  xchgw %ax, %ax                                                            #  63    0x37540  3      
  nop                                                                       #  64    0x37543  1      
.L_375c0:                                                                   #        0x37544  0      
  cmpb $0x0, 0xfff9805(%rip)                                                #  65    0x37544  7      
  je .L_37660                                                               #  66    0x3754b  6      
  nop                                                                       #  67    0x37551  1      
  nop                                                                       #  68    0x37552  1      
.L_375e0:                                                                   #        0x37553  0      
  movl %eax, %eax                                                           #  69    0x37553  2      
  movl (%r15,%rax,1), %eax                                                  #  70    0x37555  4      
  movzbl %r13b, %r8d                                                        #  71    0x37559  4      
  movl %r14d, %ecx                                                          #  72    0x3755d  3      
  movl 0x18(%rsp), %edx                                                     #  73    0x37560  4      
  movl 0x14(%rsp), %esi                                                     #  74    0x37564  4      
  movsd 0x8(%rsp), %xmm0                                                    #  75    0x37568  6      
  nop                                                                       #  76    0x3756e  1      
  movl %r12d, %r12d                                                         #  77    0x3756f  3      
  movl (%r15,%r12,1), %edi                                                  #  78    0x37572  4      
  xchgw %ax, %ax                                                            #  79    0x37576  3      
  nop                                                                       #  80    0x37579  1      
  andl $0xffffffe0, %eax                                                    #  81    0x3757a  5      
  addq %r15, %rax                                                           #  82    0x3757f  3      
  callq %rax                                                                #  83    0x37582  2      
  movl %eax, %esi                                                           #  84    0x37584  2      
  movl %ebx, %edi                                                           #  85    0x37586  2      
  nop                                                                       #  86    0x37588  1      
  nop                                                                       #  87    0x37589  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                          #  88    0x3758a  5      
  jmpq .L_374e0                                                             #  89    0x3758f  5      
  nop                                                                       #  90    0x37594  1      
  nop                                                                       #  91    0x37595  1      
.L_37660:                                                                   #        0x37596  0      
  movl $0x10030d50, %edi                                                    #  92    0x37596  5      
  nop                                                                       #  93    0x3759b  1      
  nop                                                                       #  94    0x3759c  1      
  callq .__cxa_guard_acquire                                                #  95    0x3759d  5      
  testl %eax, %eax                                                          #  96    0x375a2  2      
  jne .L_376c0                                                              #  97    0x375a4  6      
  nop                                                                       #  98    0x375aa  1      
  nop                                                                       #  99    0x375ab  1      
.L_376a0:                                                                   #        0x375ac  0      
  movl 0xfff97a6(%rip), %eax                                                #  100   0x375ac  6      
  jmpq .L_375e0                                                             #  101   0x375b2  5      
  nop                                                                       #  102   0x375b7  1      
  nop                                                                       #  103   0x375b8  1      
.L_376c0:                                                                   #        0x375b9  0      
  nop                                                                       #  104   0x375b9  1      
  nop                                                                       #  105   0x375ba  1      
  callq ._ZN2pp6Module3GetEv                                                #  106   0x375bb  5      
  movl %eax, %edi                                                           #  107   0x375c0  2      
  movl $0x100206c0, %esi                                                    #  108   0x375c2  5      
  nop                                                                       #  109   0x375c7  1      
  nop                                                                       #  110   0x375c8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  111   0x375c9  5      
  movl $0x10030d50, %edi                                                    #  112   0x375ce  5      
  movl %eax, 0xfff977f(%rip)                                                #  113   0x375d3  6      
  nop                                                                       #  114   0x375d9  1      
  nop                                                                       #  115   0x375da  1      
  callq .__cxa_guard_release                                                #  116   0x375db  5      
  jmpq .L_376a0                                                             #  117   0x375e0  5      
  nop                                                                       #  118   0x375e5  1      
  nop                                                                       #  119   0x375e6  1      
.L_37740:                                                                   #        0x375e7  0      
  movl $0x10030d50, %edi                                                    #  120   0x375e7  5      
  movl %eax, %r12d                                                          #  121   0x375ec  3      
  nop                                                                       #  122   0x375ef  1      
  nop                                                                       #  123   0x375f0  1      
  callq .__cxa_guard_abort                                                  #  124   0x375f1  5      
.L_37760:                                                                   #        0x375f6  0      
  movl %ebx, %edi                                                           #  125   0x375f6  2      
  nop                                                                       #  126   0x375f8  1      
  nop                                                                       #  127   0x375f9  1      
  callq ._ZN2pp10InputEventD2Ev                                             #  128   0x375fa  5      
  movl %r12d, %edi                                                          #  129   0x375ff  3      
  nop                                                                       #  130   0x37602  1      
  nop                                                                       #  131   0x37603  1      
  callq ._Unwind_Resume                                                     #  132   0x37604  5      
  movl %eax, %r12d                                                          #  133   0x37609  3      
  jmpq .L_37760                                                             #  134   0x3760c  5      
  nop                                                                       #  135   0x37611  1      
  nop                                                                       #  136   0x37612  1      
  jmpq .L_37740                                                             #  137   0x37613  5      
  nop                                                                       #  138   0x37618  1      
  nop                                                                       #  139   0x37619  1      
  nop                                                                       #  140   0x3761a  1      
                                                                                                     
.size _ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b, .-_ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b

