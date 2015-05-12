  .text
  .globl _ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b
  .type _ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b, @function

#! file-offset 0x37480
#! rip-offset  0x37480
#! capacity    896 bytes

# Text                                                                      #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b:  #        0x37480  0      
  movq %rbx, -0x20(%rsp)                                                    #  1     0x37480  5      
  movl %edi, %ebx                                                           #  2     0x37485  2      
  movq %r12, -0x18(%rsp)                                                    #  3     0x37487  5      
  movq %r13, -0x10(%rsp)                                                    #  4     0x3748c  5      
  movq %r14, -0x8(%rsp)                                                     #  5     0x37491  5      
  movl %ecx, %ecx                                                           #  6     0x37496  2      
  subl $0x48, %esp                                                          #  7     0x37498  3      
  addq %r15, %rsp                                                           #  8     0x3749b  3      
  movl %ebx, %edi                                                           #  9     0x3749e  2      
  movl %esi, %r12d                                                          #  10    0x374a0  3      
  movsd %xmm0, 0x8(%rsp)                                                    #  11    0x374a3  6      
  movl %edx, 0x14(%rsp)                                                     #  12    0x374a9  4      
  movq %rcx, 0x18(%rsp)                                                     #  13    0x374ad  5      
  movl %r8d, %r14d                                                          #  14    0x374b2  3      
  movl %r9d, %r13d                                                          #  15    0x374b5  3      
  nop                                                                       #  16    0x374b8  1      
  callq ._ZN2pp10InputEventC2Ev                                             #  17    0x374b9  5      
  movl %ebx, %ebx                                                           #  18    0x374be  2      
  movl $0x10020808, (%r15,%rbx,1)                                           #  19    0x374c0  8      
  cmpb $0x0, 0xfff9881(%rip)                                                #  20    0x374c8  7      
  je .L_37540                                                               #  21    0x374cf  6      
  nop                                                                       #  22    0x374d5  1      
.L_374e0:                                                                   #        0x374d6  0      
  movl 0xfff987c(%rip), %eax                                                #  23    0x374d6  6      
  testq %rax, %rax                                                          #  24    0x374dc  3      
  jne .L_375e0                                                              #  25    0x374df  6      
  xchgw %ax, %ax                                                            #  26    0x374e5  3      
  nop                                                                       #  27    0x374e8  1      
.L_37500:                                                                   #        0x374e9  0      
  movq 0x28(%rsp), %rbx                                                     #  28    0x374e9  5      
  movq 0x30(%rsp), %r12                                                     #  29    0x374ee  5      
  movq 0x38(%rsp), %r13                                                     #  30    0x374f3  5      
  movq 0x40(%rsp), %r14                                                     #  31    0x374f8  5      
  addl $0x48, %esp                                                          #  32    0x374fd  3      
  addq %r15, %rsp                                                           #  33    0x37500  3      
  popq %r11                                                                 #  34    0x37503  3      
  nop                                                                       #  35    0x37506  1      
  andl $0xffffffe0, %r11d                                                   #  36    0x37507  7      
  addq %r15, %r11                                                           #  37    0x3750e  3      
  jmpq %r11                                                                 #  38    0x37511  3      
  nop                                                                       #  39    0x37514  1      
  nop                                                                       #  40    0x37515  1      
.L_37540:                                                                   #        0x37516  0      
  movl $0x10030d50, %edi                                                    #  41    0x37516  5      
  nop                                                                       #  42    0x3751b  1      
  nop                                                                       #  43    0x3751c  1      
  callq .__cxa_guard_acquire                                                #  44    0x3751d  5      
  testl %eax, %eax                                                          #  45    0x37522  2      
  je .L_374e0                                                               #  46    0x37524  6      
  nop                                                                       #  47    0x3752a  1      
  nop                                                                       #  48    0x3752b  1      
  callq ._ZN2pp6Module3GetEv                                                #  49    0x3752c  5      
  movl %eax, %edi                                                           #  50    0x37531  2      
  movl $0x100206c0, %esi                                                    #  51    0x37533  5      
  nop                                                                       #  52    0x37538  1      
  nop                                                                       #  53    0x37539  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  54    0x3753a  5      
  movl $0x10030d50, %edi                                                    #  55    0x3753f  5      
  movl %eax, 0xfff980e(%rip)                                                #  56    0x37544  6      
  nop                                                                       #  57    0x3754a  1      
  nop                                                                       #  58    0x3754b  1      
  callq .__cxa_guard_release                                                #  59    0x3754c  5      
  movl 0xfff9801(%rip), %eax                                                #  60    0x37551  6      
  testq %rax, %rax                                                          #  61    0x37557  3      
  je .L_37500                                                               #  62    0x3755a  6      
  xchgw %ax, %ax                                                            #  63    0x37560  3      
  nop                                                                       #  64    0x37563  1      
.L_375e0:                                                                   #        0x37564  0      
  cmpb $0x0, 0xfff97e5(%rip)                                                #  65    0x37564  7      
  je .L_37680                                                               #  66    0x3756b  6      
  nop                                                                       #  67    0x37571  1      
  nop                                                                       #  68    0x37572  1      
.L_37600:                                                                   #        0x37573  0      
  movl %eax, %eax                                                           #  69    0x37573  2      
  movl (%r15,%rax,1), %eax                                                  #  70    0x37575  4      
  movzbl %r13b, %r8d                                                        #  71    0x37579  4      
  movl %r14d, %ecx                                                          #  72    0x3757d  3      
  movl 0x18(%rsp), %edx                                                     #  73    0x37580  4      
  movl 0x14(%rsp), %esi                                                     #  74    0x37584  4      
  movsd 0x8(%rsp), %xmm0                                                    #  75    0x37588  6      
  nop                                                                       #  76    0x3758e  1      
  movl %r12d, %r12d                                                         #  77    0x3758f  3      
  movl (%r15,%r12,1), %edi                                                  #  78    0x37592  4      
  xchgw %ax, %ax                                                            #  79    0x37596  3      
  nop                                                                       #  80    0x37599  1      
  andl $0xffffffe0, %eax                                                    #  81    0x3759a  5      
  addq %r15, %rax                                                           #  82    0x3759f  3      
  callq %rax                                                                #  83    0x375a2  2      
  movl %eax, %esi                                                           #  84    0x375a4  2      
  movl %ebx, %edi                                                           #  85    0x375a6  2      
  nop                                                                       #  86    0x375a8  1      
  nop                                                                       #  87    0x375a9  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                          #  88    0x375aa  5      
  jmpq .L_37500                                                             #  89    0x375af  5      
  nop                                                                       #  90    0x375b4  1      
  nop                                                                       #  91    0x375b5  1      
.L_37680:                                                                   #        0x375b6  0      
  movl $0x10030d50, %edi                                                    #  92    0x375b6  5      
  nop                                                                       #  93    0x375bb  1      
  nop                                                                       #  94    0x375bc  1      
  callq .__cxa_guard_acquire                                                #  95    0x375bd  5      
  testl %eax, %eax                                                          #  96    0x375c2  2      
  jne .L_376e0                                                              #  97    0x375c4  6      
  nop                                                                       #  98    0x375ca  1      
  nop                                                                       #  99    0x375cb  1      
.L_376c0:                                                                   #        0x375cc  0      
  movl 0xfff9786(%rip), %eax                                                #  100   0x375cc  6      
  jmpq .L_37600                                                             #  101   0x375d2  5      
  nop                                                                       #  102   0x375d7  1      
  nop                                                                       #  103   0x375d8  1      
.L_376e0:                                                                   #        0x375d9  0      
  nop                                                                       #  104   0x375d9  1      
  nop                                                                       #  105   0x375da  1      
  callq ._ZN2pp6Module3GetEv                                                #  106   0x375db  5      
  movl %eax, %edi                                                           #  107   0x375e0  2      
  movl $0x100206c0, %esi                                                    #  108   0x375e2  5      
  nop                                                                       #  109   0x375e7  1      
  nop                                                                       #  110   0x375e8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  111   0x375e9  5      
  movl $0x10030d50, %edi                                                    #  112   0x375ee  5      
  movl %eax, 0xfff975f(%rip)                                                #  113   0x375f3  6      
  nop                                                                       #  114   0x375f9  1      
  nop                                                                       #  115   0x375fa  1      
  callq .__cxa_guard_release                                                #  116   0x375fb  5      
  jmpq .L_376c0                                                             #  117   0x37600  5      
  nop                                                                       #  118   0x37605  1      
  nop                                                                       #  119   0x37606  1      
.L_37760:                                                                   #        0x37607  0      
  movl $0x10030d50, %edi                                                    #  120   0x37607  5      
  movl %eax, %r12d                                                          #  121   0x3760c  3      
  nop                                                                       #  122   0x3760f  1      
  nop                                                                       #  123   0x37610  1      
  callq .__cxa_guard_abort                                                  #  124   0x37611  5      
.L_37780:                                                                   #        0x37616  0      
  movl %ebx, %edi                                                           #  125   0x37616  2      
  nop                                                                       #  126   0x37618  1      
  nop                                                                       #  127   0x37619  1      
  callq ._ZN2pp10InputEventD2Ev                                             #  128   0x3761a  5      
  movl %r12d, %edi                                                          #  129   0x3761f  3      
  nop                                                                       #  130   0x37622  1      
  nop                                                                       #  131   0x37623  1      
  callq ._Unwind_Resume                                                     #  132   0x37624  5      
  movl %eax, %r12d                                                          #  133   0x37629  3      
  jmpq .L_37780                                                             #  134   0x3762c  5      
  nop                                                                       #  135   0x37631  1      
  nop                                                                       #  136   0x37632  1      
  jmpq .L_37760                                                             #  137   0x37633  5      
  nop                                                                       #  138   0x37638  1      
  nop                                                                       #  139   0x37639  1      
  nop                                                                       #  140   0x3763a  1      
                                                                                                     
.size _ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b, .-_ZN2pp15WheelInputEventC1ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b

