  .text
  .globl _ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b
  .type _ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b, @function

#! file-offset 0x377e0
#! rip-offset  0x377e0
#! capacity    896 bytes

# Text                                                                      #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b:  #        0x377e0  0      
  movq %rbx, -0x20(%rsp)                                                    #  1     0x377e0  5      
  movl %edi, %ebx                                                           #  2     0x377e5  2      
  movq %r12, -0x18(%rsp)                                                    #  3     0x377e7  5      
  movq %r13, -0x10(%rsp)                                                    #  4     0x377ec  5      
  movq %r14, -0x8(%rsp)                                                     #  5     0x377f1  5      
  movl %ecx, %ecx                                                           #  6     0x377f6  2      
  subl $0x48, %esp                                                          #  7     0x377f8  3      
  addq %r15, %rsp                                                           #  8     0x377fb  3      
  movl %ebx, %edi                                                           #  9     0x377fe  2      
  movl %esi, %r12d                                                          #  10    0x37800  3      
  movsd %xmm0, 0x8(%rsp)                                                    #  11    0x37803  6      
  movl %edx, 0x14(%rsp)                                                     #  12    0x37809  4      
  movq %rcx, 0x18(%rsp)                                                     #  13    0x3780d  5      
  movl %r8d, %r14d                                                          #  14    0x37812  3      
  movl %r9d, %r13d                                                          #  15    0x37815  3      
  nop                                                                       #  16    0x37818  1      
  callq ._ZN2pp10InputEventC2Ev                                             #  17    0x37819  5      
  movl %ebx, %ebx                                                           #  18    0x3781e  2      
  movl $0x10020808, (%r15,%rbx,1)                                           #  19    0x37820  8      
  cmpb $0x0, 0xfff9521(%rip)                                                #  20    0x37828  7      
  je .L_378a0                                                               #  21    0x3782f  6      
  nop                                                                       #  22    0x37835  1      
.L_37840:                                                                   #        0x37836  0      
  movl 0xfff951c(%rip), %eax                                                #  23    0x37836  6      
  testq %rax, %rax                                                          #  24    0x3783c  3      
  jne .L_37940                                                              #  25    0x3783f  6      
  xchgw %ax, %ax                                                            #  26    0x37845  3      
  nop                                                                       #  27    0x37848  1      
.L_37860:                                                                   #        0x37849  0      
  movq 0x28(%rsp), %rbx                                                     #  28    0x37849  5      
  movq 0x30(%rsp), %r12                                                     #  29    0x3784e  5      
  movq 0x38(%rsp), %r13                                                     #  30    0x37853  5      
  movq 0x40(%rsp), %r14                                                     #  31    0x37858  5      
  addl $0x48, %esp                                                          #  32    0x3785d  3      
  addq %r15, %rsp                                                           #  33    0x37860  3      
  popq %r11                                                                 #  34    0x37863  3      
  nop                                                                       #  35    0x37866  1      
  andl $0xffffffe0, %r11d                                                   #  36    0x37867  7      
  addq %r15, %r11                                                           #  37    0x3786e  3      
  jmpq %r11                                                                 #  38    0x37871  3      
  nop                                                                       #  39    0x37874  1      
  nop                                                                       #  40    0x37875  1      
.L_378a0:                                                                   #        0x37876  0      
  movl $0x10030d50, %edi                                                    #  41    0x37876  5      
  nop                                                                       #  42    0x3787b  1      
  nop                                                                       #  43    0x3787c  1      
  callq .__cxa_guard_acquire                                                #  44    0x3787d  5      
  testl %eax, %eax                                                          #  45    0x37882  2      
  je .L_37840                                                               #  46    0x37884  6      
  nop                                                                       #  47    0x3788a  1      
  nop                                                                       #  48    0x3788b  1      
  callq ._ZN2pp6Module3GetEv                                                #  49    0x3788c  5      
  movl %eax, %edi                                                           #  50    0x37891  2      
  movl $0x100206c0, %esi                                                    #  51    0x37893  5      
  nop                                                                       #  52    0x37898  1      
  nop                                                                       #  53    0x37899  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  54    0x3789a  5      
  movl $0x10030d50, %edi                                                    #  55    0x3789f  5      
  movl %eax, 0xfff94ae(%rip)                                                #  56    0x378a4  6      
  nop                                                                       #  57    0x378aa  1      
  nop                                                                       #  58    0x378ab  1      
  callq .__cxa_guard_release                                                #  59    0x378ac  5      
  movl 0xfff94a1(%rip), %eax                                                #  60    0x378b1  6      
  testq %rax, %rax                                                          #  61    0x378b7  3      
  je .L_37860                                                               #  62    0x378ba  6      
  xchgw %ax, %ax                                                            #  63    0x378c0  3      
  nop                                                                       #  64    0x378c3  1      
.L_37940:                                                                   #        0x378c4  0      
  cmpb $0x0, 0xfff9485(%rip)                                                #  65    0x378c4  7      
  je .L_379e0                                                               #  66    0x378cb  6      
  nop                                                                       #  67    0x378d1  1      
  nop                                                                       #  68    0x378d2  1      
.L_37960:                                                                   #        0x378d3  0      
  movl %eax, %eax                                                           #  69    0x378d3  2      
  movl (%r15,%rax,1), %eax                                                  #  70    0x378d5  4      
  movzbl %r13b, %r8d                                                        #  71    0x378d9  4      
  movl %r14d, %ecx                                                          #  72    0x378dd  3      
  movl 0x18(%rsp), %edx                                                     #  73    0x378e0  4      
  movl 0x14(%rsp), %esi                                                     #  74    0x378e4  4      
  movsd 0x8(%rsp), %xmm0                                                    #  75    0x378e8  6      
  nop                                                                       #  76    0x378ee  1      
  movl %r12d, %r12d                                                         #  77    0x378ef  3      
  movl (%r15,%r12,1), %edi                                                  #  78    0x378f2  4      
  xchgw %ax, %ax                                                            #  79    0x378f6  3      
  nop                                                                       #  80    0x378f9  1      
  andl $0xffffffe0, %eax                                                    #  81    0x378fa  5      
  addq %r15, %rax                                                           #  82    0x378ff  3      
  callq %rax                                                                #  83    0x37902  2      
  movl %eax, %esi                                                           #  84    0x37904  2      
  movl %ebx, %edi                                                           #  85    0x37906  2      
  nop                                                                       #  86    0x37908  1      
  nop                                                                       #  87    0x37909  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                          #  88    0x3790a  5      
  jmpq .L_37860                                                             #  89    0x3790f  5      
  nop                                                                       #  90    0x37914  1      
  nop                                                                       #  91    0x37915  1      
.L_379e0:                                                                   #        0x37916  0      
  movl $0x10030d50, %edi                                                    #  92    0x37916  5      
  nop                                                                       #  93    0x3791b  1      
  nop                                                                       #  94    0x3791c  1      
  callq .__cxa_guard_acquire                                                #  95    0x3791d  5      
  testl %eax, %eax                                                          #  96    0x37922  2      
  jne .L_37a40                                                              #  97    0x37924  6      
  nop                                                                       #  98    0x3792a  1      
  nop                                                                       #  99    0x3792b  1      
.L_37a20:                                                                   #        0x3792c  0      
  movl 0xfff9426(%rip), %eax                                                #  100   0x3792c  6      
  jmpq .L_37960                                                             #  101   0x37932  5      
  nop                                                                       #  102   0x37937  1      
  nop                                                                       #  103   0x37938  1      
.L_37a40:                                                                   #        0x37939  0      
  nop                                                                       #  104   0x37939  1      
  nop                                                                       #  105   0x3793a  1      
  callq ._ZN2pp6Module3GetEv                                                #  106   0x3793b  5      
  movl %eax, %edi                                                           #  107   0x37940  2      
  movl $0x100206c0, %esi                                                    #  108   0x37942  5      
  nop                                                                       #  109   0x37947  1      
  nop                                                                       #  110   0x37948  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  111   0x37949  5      
  movl $0x10030d50, %edi                                                    #  112   0x3794e  5      
  movl %eax, 0xfff93ff(%rip)                                                #  113   0x37953  6      
  nop                                                                       #  114   0x37959  1      
  nop                                                                       #  115   0x3795a  1      
  callq .__cxa_guard_release                                                #  116   0x3795b  5      
  jmpq .L_37a20                                                             #  117   0x37960  5      
  nop                                                                       #  118   0x37965  1      
  nop                                                                       #  119   0x37966  1      
.L_37ac0:                                                                   #        0x37967  0      
  movl $0x10030d50, %edi                                                    #  120   0x37967  5      
  movl %eax, %r12d                                                          #  121   0x3796c  3      
  nop                                                                       #  122   0x3796f  1      
  nop                                                                       #  123   0x37970  1      
  callq .__cxa_guard_abort                                                  #  124   0x37971  5      
.L_37ae0:                                                                   #        0x37976  0      
  movl %ebx, %edi                                                           #  125   0x37976  2      
  nop                                                                       #  126   0x37978  1      
  nop                                                                       #  127   0x37979  1      
  callq ._ZN2pp10InputEventD2Ev                                             #  128   0x3797a  5      
  movl %r12d, %edi                                                          #  129   0x3797f  3      
  nop                                                                       #  130   0x37982  1      
  nop                                                                       #  131   0x37983  1      
  callq ._Unwind_Resume                                                     #  132   0x37984  5      
  movl %eax, %r12d                                                          #  133   0x37989  3      
  jmpq .L_37ae0                                                             #  134   0x3798c  5      
  nop                                                                       #  135   0x37991  1      
  nop                                                                       #  136   0x37992  1      
  jmpq .L_37ac0                                                             #  137   0x37993  5      
  nop                                                                       #  138   0x37998  1      
  nop                                                                       #  139   0x37999  1      
  nop                                                                       #  140   0x3799a  1      
                                                                                                     
.size _ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b, .-_ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b

