  .text
  .globl _ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b
  .type _ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b, @function

#! file-offset 0x37880
#! rip-offset  0x37880
#! capacity    896 bytes

# Text                                                                      #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b:  #        0x37880  0      
  movq %rbx, -0x20(%rsp)                                                    #  1     0x37880  5      
  movl %edi, %ebx                                                           #  2     0x37885  2      
  movq %r12, -0x18(%rsp)                                                    #  3     0x37887  5      
  movq %r13, -0x10(%rsp)                                                    #  4     0x3788c  5      
  movq %r14, -0x8(%rsp)                                                     #  5     0x37891  5      
  movl %ecx, %ecx                                                           #  6     0x37896  2      
  subl $0x48, %esp                                                          #  7     0x37898  3      
  addq %r15, %rsp                                                           #  8     0x3789b  3      
  movl %ebx, %edi                                                           #  9     0x3789e  2      
  movl %esi, %r12d                                                          #  10    0x378a0  3      
  movsd %xmm0, 0x8(%rsp)                                                    #  11    0x378a3  6      
  movl %edx, 0x14(%rsp)                                                     #  12    0x378a9  4      
  movq %rcx, 0x18(%rsp)                                                     #  13    0x378ad  5      
  movl %r8d, %r14d                                                          #  14    0x378b2  3      
  movl %r9d, %r13d                                                          #  15    0x378b5  3      
  nop                                                                       #  16    0x378b8  1      
  callq ._ZN2pp10InputEventC2Ev                                             #  17    0x378b9  5      
  movl %ebx, %ebx                                                           #  18    0x378be  2      
  movl $0x10020808, (%r15,%rbx,1)                                           #  19    0x378c0  8      
  cmpb $0x0, 0xfff9481(%rip)                                                #  20    0x378c8  7      
  je .L_37940                                                               #  21    0x378cf  6      
  nop                                                                       #  22    0x378d5  1      
.L_378e0:                                                                   #        0x378d6  0      
  movl 0xfff947c(%rip), %eax                                                #  23    0x378d6  6      
  testq %rax, %rax                                                          #  24    0x378dc  3      
  jne .L_379e0                                                              #  25    0x378df  6      
  xchgw %ax, %ax                                                            #  26    0x378e5  3      
  nop                                                                       #  27    0x378e8  1      
.L_37900:                                                                   #        0x378e9  0      
  movq 0x28(%rsp), %rbx                                                     #  28    0x378e9  5      
  movq 0x30(%rsp), %r12                                                     #  29    0x378ee  5      
  movq 0x38(%rsp), %r13                                                     #  30    0x378f3  5      
  movq 0x40(%rsp), %r14                                                     #  31    0x378f8  5      
  addl $0x48, %esp                                                          #  32    0x378fd  3      
  addq %r15, %rsp                                                           #  33    0x37900  3      
  popq %r11                                                                 #  34    0x37903  3      
  nop                                                                       #  35    0x37906  1      
  andl $0xffffffe0, %r11d                                                   #  36    0x37907  7      
  addq %r15, %r11                                                           #  37    0x3790e  3      
  jmpq %r11                                                                 #  38    0x37911  3      
  nop                                                                       #  39    0x37914  1      
  nop                                                                       #  40    0x37915  1      
.L_37940:                                                                   #        0x37916  0      
  movl $0x10030d50, %edi                                                    #  41    0x37916  5      
  nop                                                                       #  42    0x3791b  1      
  nop                                                                       #  43    0x3791c  1      
  callq .__cxa_guard_acquire                                                #  44    0x3791d  5      
  testl %eax, %eax                                                          #  45    0x37922  2      
  je .L_378e0                                                               #  46    0x37924  6      
  nop                                                                       #  47    0x3792a  1      
  nop                                                                       #  48    0x3792b  1      
  callq ._ZN2pp6Module3GetEv                                                #  49    0x3792c  5      
  movl %eax, %edi                                                           #  50    0x37931  2      
  movl $0x100206c0, %esi                                                    #  51    0x37933  5      
  nop                                                                       #  52    0x37938  1      
  nop                                                                       #  53    0x37939  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  54    0x3793a  5      
  movl $0x10030d50, %edi                                                    #  55    0x3793f  5      
  movl %eax, 0xfff940e(%rip)                                                #  56    0x37944  6      
  nop                                                                       #  57    0x3794a  1      
  nop                                                                       #  58    0x3794b  1      
  callq .__cxa_guard_release                                                #  59    0x3794c  5      
  movl 0xfff9401(%rip), %eax                                                #  60    0x37951  6      
  testq %rax, %rax                                                          #  61    0x37957  3      
  je .L_37900                                                               #  62    0x3795a  6      
  xchgw %ax, %ax                                                            #  63    0x37960  3      
  nop                                                                       #  64    0x37963  1      
.L_379e0:                                                                   #        0x37964  0      
  cmpb $0x0, 0xfff93e5(%rip)                                                #  65    0x37964  7      
  je .L_37a80                                                               #  66    0x3796b  6      
  nop                                                                       #  67    0x37971  1      
  nop                                                                       #  68    0x37972  1      
.L_37a00:                                                                   #        0x37973  0      
  movl %eax, %eax                                                           #  69    0x37973  2      
  movl (%r15,%rax,1), %eax                                                  #  70    0x37975  4      
  movzbl %r13b, %r8d                                                        #  71    0x37979  4      
  movl %r14d, %ecx                                                          #  72    0x3797d  3      
  movl 0x18(%rsp), %edx                                                     #  73    0x37980  4      
  movl 0x14(%rsp), %esi                                                     #  74    0x37984  4      
  movsd 0x8(%rsp), %xmm0                                                    #  75    0x37988  6      
  nop                                                                       #  76    0x3798e  1      
  movl %r12d, %r12d                                                         #  77    0x3798f  3      
  movl (%r15,%r12,1), %edi                                                  #  78    0x37992  4      
  xchgw %ax, %ax                                                            #  79    0x37996  3      
  nop                                                                       #  80    0x37999  1      
  andl $0xffffffe0, %eax                                                    #  81    0x3799a  5      
  addq %r15, %rax                                                           #  82    0x3799f  3      
  callq %rax                                                                #  83    0x379a2  2      
  movl %eax, %esi                                                           #  84    0x379a4  2      
  movl %ebx, %edi                                                           #  85    0x379a6  2      
  nop                                                                       #  86    0x379a8  1      
  nop                                                                       #  87    0x379a9  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                          #  88    0x379aa  5      
  jmpq .L_37900                                                             #  89    0x379af  5      
  nop                                                                       #  90    0x379b4  1      
  nop                                                                       #  91    0x379b5  1      
.L_37a80:                                                                   #        0x379b6  0      
  movl $0x10030d50, %edi                                                    #  92    0x379b6  5      
  nop                                                                       #  93    0x379bb  1      
  nop                                                                       #  94    0x379bc  1      
  callq .__cxa_guard_acquire                                                #  95    0x379bd  5      
  testl %eax, %eax                                                          #  96    0x379c2  2      
  jne .L_37ae0                                                              #  97    0x379c4  6      
  nop                                                                       #  98    0x379ca  1      
  nop                                                                       #  99    0x379cb  1      
.L_37ac0:                                                                   #        0x379cc  0      
  movl 0xfff9386(%rip), %eax                                                #  100   0x379cc  6      
  jmpq .L_37a00                                                             #  101   0x379d2  5      
  nop                                                                       #  102   0x379d7  1      
  nop                                                                       #  103   0x379d8  1      
.L_37ae0:                                                                   #        0x379d9  0      
  nop                                                                       #  104   0x379d9  1      
  nop                                                                       #  105   0x379da  1      
  callq ._ZN2pp6Module3GetEv                                                #  106   0x379db  5      
  movl %eax, %edi                                                           #  107   0x379e0  2      
  movl $0x100206c0, %esi                                                    #  108   0x379e2  5      
  nop                                                                       #  109   0x379e7  1      
  nop                                                                       #  110   0x379e8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  111   0x379e9  5      
  movl $0x10030d50, %edi                                                    #  112   0x379ee  5      
  movl %eax, 0xfff935f(%rip)                                                #  113   0x379f3  6      
  nop                                                                       #  114   0x379f9  1      
  nop                                                                       #  115   0x379fa  1      
  callq .__cxa_guard_release                                                #  116   0x379fb  5      
  jmpq .L_37ac0                                                             #  117   0x37a00  5      
  nop                                                                       #  118   0x37a05  1      
  nop                                                                       #  119   0x37a06  1      
.L_37b60:                                                                   #        0x37a07  0      
  movl $0x10030d50, %edi                                                    #  120   0x37a07  5      
  movl %eax, %r12d                                                          #  121   0x37a0c  3      
  nop                                                                       #  122   0x37a0f  1      
  nop                                                                       #  123   0x37a10  1      
  callq .__cxa_guard_abort                                                  #  124   0x37a11  5      
.L_37b80:                                                                   #        0x37a16  0      
  movl %ebx, %edi                                                           #  125   0x37a16  2      
  nop                                                                       #  126   0x37a18  1      
  nop                                                                       #  127   0x37a19  1      
  callq ._ZN2pp10InputEventD2Ev                                             #  128   0x37a1a  5      
  movl %r12d, %edi                                                          #  129   0x37a1f  3      
  nop                                                                       #  130   0x37a22  1      
  nop                                                                       #  131   0x37a23  1      
  callq ._Unwind_Resume                                                     #  132   0x37a24  5      
  movl %eax, %r12d                                                          #  133   0x37a29  3      
  jmpq .L_37b80                                                             #  134   0x37a2c  5      
  nop                                                                       #  135   0x37a31  1      
  nop                                                                       #  136   0x37a32  1      
  jmpq .L_37b60                                                             #  137   0x37a33  5      
  nop                                                                       #  138   0x37a38  1      
  nop                                                                       #  139   0x37a39  1      
  nop                                                                       #  140   0x37a3a  1      
                                                                                                     
.size _ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b, .-_ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b

