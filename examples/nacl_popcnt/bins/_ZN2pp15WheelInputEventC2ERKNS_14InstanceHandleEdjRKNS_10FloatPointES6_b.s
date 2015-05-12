  .text
  .globl _ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b
  .type _ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b, @function

#! file-offset 0x37800
#! rip-offset  0x37800
#! capacity    896 bytes

# Text                                                                      #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b:  #        0x37800  0      
  movq %rbx, -0x20(%rsp)                                                    #  1     0x37800  5      
  movl %edi, %ebx                                                           #  2     0x37805  2      
  movq %r12, -0x18(%rsp)                                                    #  3     0x37807  5      
  movq %r13, -0x10(%rsp)                                                    #  4     0x3780c  5      
  movq %r14, -0x8(%rsp)                                                     #  5     0x37811  5      
  movl %ecx, %ecx                                                           #  6     0x37816  2      
  subl $0x48, %esp                                                          #  7     0x37818  3      
  addq %r15, %rsp                                                           #  8     0x3781b  3      
  movl %ebx, %edi                                                           #  9     0x3781e  2      
  movl %esi, %r12d                                                          #  10    0x37820  3      
  movsd %xmm0, 0x8(%rsp)                                                    #  11    0x37823  6      
  movl %edx, 0x14(%rsp)                                                     #  12    0x37829  4      
  movq %rcx, 0x18(%rsp)                                                     #  13    0x3782d  5      
  movl %r8d, %r14d                                                          #  14    0x37832  3      
  movl %r9d, %r13d                                                          #  15    0x37835  3      
  nop                                                                       #  16    0x37838  1      
  callq ._ZN2pp10InputEventC2Ev                                             #  17    0x37839  5      
  movl %ebx, %ebx                                                           #  18    0x3783e  2      
  movl $0x10020808, (%r15,%rbx,1)                                           #  19    0x37840  8      
  cmpb $0x0, 0xfff9501(%rip)                                                #  20    0x37848  7      
  je .L_378c0                                                               #  21    0x3784f  6      
  nop                                                                       #  22    0x37855  1      
.L_37860:                                                                   #        0x37856  0      
  movl 0xfff94fc(%rip), %eax                                                #  23    0x37856  6      
  testq %rax, %rax                                                          #  24    0x3785c  3      
  jne .L_37960                                                              #  25    0x3785f  6      
  xchgw %ax, %ax                                                            #  26    0x37865  3      
  nop                                                                       #  27    0x37868  1      
.L_37880:                                                                   #        0x37869  0      
  movq 0x28(%rsp), %rbx                                                     #  28    0x37869  5      
  movq 0x30(%rsp), %r12                                                     #  29    0x3786e  5      
  movq 0x38(%rsp), %r13                                                     #  30    0x37873  5      
  movq 0x40(%rsp), %r14                                                     #  31    0x37878  5      
  addl $0x48, %esp                                                          #  32    0x3787d  3      
  addq %r15, %rsp                                                           #  33    0x37880  3      
  popq %r11                                                                 #  34    0x37883  3      
  nop                                                                       #  35    0x37886  1      
  andl $0xffffffe0, %r11d                                                   #  36    0x37887  7      
  addq %r15, %r11                                                           #  37    0x3788e  3      
  jmpq %r11                                                                 #  38    0x37891  3      
  nop                                                                       #  39    0x37894  1      
  nop                                                                       #  40    0x37895  1      
.L_378c0:                                                                   #        0x37896  0      
  movl $0x10030d50, %edi                                                    #  41    0x37896  5      
  nop                                                                       #  42    0x3789b  1      
  nop                                                                       #  43    0x3789c  1      
  callq .__cxa_guard_acquire                                                #  44    0x3789d  5      
  testl %eax, %eax                                                          #  45    0x378a2  2      
  je .L_37860                                                               #  46    0x378a4  6      
  nop                                                                       #  47    0x378aa  1      
  nop                                                                       #  48    0x378ab  1      
  callq ._ZN2pp6Module3GetEv                                                #  49    0x378ac  5      
  movl %eax, %edi                                                           #  50    0x378b1  2      
  movl $0x100206c0, %esi                                                    #  51    0x378b3  5      
  nop                                                                       #  52    0x378b8  1      
  nop                                                                       #  53    0x378b9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  54    0x378ba  5      
  movl $0x10030d50, %edi                                                    #  55    0x378bf  5      
  movl %eax, 0xfff948e(%rip)                                                #  56    0x378c4  6      
  nop                                                                       #  57    0x378ca  1      
  nop                                                                       #  58    0x378cb  1      
  callq .__cxa_guard_release                                                #  59    0x378cc  5      
  movl 0xfff9481(%rip), %eax                                                #  60    0x378d1  6      
  testq %rax, %rax                                                          #  61    0x378d7  3      
  je .L_37880                                                               #  62    0x378da  6      
  xchgw %ax, %ax                                                            #  63    0x378e0  3      
  nop                                                                       #  64    0x378e3  1      
.L_37960:                                                                   #        0x378e4  0      
  cmpb $0x0, 0xfff9465(%rip)                                                #  65    0x378e4  7      
  je .L_37a00                                                               #  66    0x378eb  6      
  nop                                                                       #  67    0x378f1  1      
  nop                                                                       #  68    0x378f2  1      
.L_37980:                                                                   #        0x378f3  0      
  movl %eax, %eax                                                           #  69    0x378f3  2      
  movl (%r15,%rax,1), %eax                                                  #  70    0x378f5  4      
  movzbl %r13b, %r8d                                                        #  71    0x378f9  4      
  movl %r14d, %ecx                                                          #  72    0x378fd  3      
  movl 0x18(%rsp), %edx                                                     #  73    0x37900  4      
  movl 0x14(%rsp), %esi                                                     #  74    0x37904  4      
  movsd 0x8(%rsp), %xmm0                                                    #  75    0x37908  6      
  nop                                                                       #  76    0x3790e  1      
  movl %r12d, %r12d                                                         #  77    0x3790f  3      
  movl (%r15,%r12,1), %edi                                                  #  78    0x37912  4      
  xchgw %ax, %ax                                                            #  79    0x37916  3      
  nop                                                                       #  80    0x37919  1      
  andl $0xffffffe0, %eax                                                    #  81    0x3791a  5      
  addq %r15, %rax                                                           #  82    0x3791f  3      
  callq %rax                                                                #  83    0x37922  2      
  movl %eax, %esi                                                           #  84    0x37924  2      
  movl %ebx, %edi                                                           #  85    0x37926  2      
  nop                                                                       #  86    0x37928  1      
  nop                                                                       #  87    0x37929  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                          #  88    0x3792a  5      
  jmpq .L_37880                                                             #  89    0x3792f  5      
  nop                                                                       #  90    0x37934  1      
  nop                                                                       #  91    0x37935  1      
.L_37a00:                                                                   #        0x37936  0      
  movl $0x10030d50, %edi                                                    #  92    0x37936  5      
  nop                                                                       #  93    0x3793b  1      
  nop                                                                       #  94    0x3793c  1      
  callq .__cxa_guard_acquire                                                #  95    0x3793d  5      
  testl %eax, %eax                                                          #  96    0x37942  2      
  jne .L_37a60                                                              #  97    0x37944  6      
  nop                                                                       #  98    0x3794a  1      
  nop                                                                       #  99    0x3794b  1      
.L_37a40:                                                                   #        0x3794c  0      
  movl 0xfff9406(%rip), %eax                                                #  100   0x3794c  6      
  jmpq .L_37980                                                             #  101   0x37952  5      
  nop                                                                       #  102   0x37957  1      
  nop                                                                       #  103   0x37958  1      
.L_37a60:                                                                   #        0x37959  0      
  nop                                                                       #  104   0x37959  1      
  nop                                                                       #  105   0x3795a  1      
  callq ._ZN2pp6Module3GetEv                                                #  106   0x3795b  5      
  movl %eax, %edi                                                           #  107   0x37960  2      
  movl $0x100206c0, %esi                                                    #  108   0x37962  5      
  nop                                                                       #  109   0x37967  1      
  nop                                                                       #  110   0x37968  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  111   0x37969  5      
  movl $0x10030d50, %edi                                                    #  112   0x3796e  5      
  movl %eax, 0xfff93df(%rip)                                                #  113   0x37973  6      
  nop                                                                       #  114   0x37979  1      
  nop                                                                       #  115   0x3797a  1      
  callq .__cxa_guard_release                                                #  116   0x3797b  5      
  jmpq .L_37a40                                                             #  117   0x37980  5      
  nop                                                                       #  118   0x37985  1      
  nop                                                                       #  119   0x37986  1      
.L_37ae0:                                                                   #        0x37987  0      
  movl $0x10030d50, %edi                                                    #  120   0x37987  5      
  movl %eax, %r12d                                                          #  121   0x3798c  3      
  nop                                                                       #  122   0x3798f  1      
  nop                                                                       #  123   0x37990  1      
  callq .__cxa_guard_abort                                                  #  124   0x37991  5      
.L_37b00:                                                                   #        0x37996  0      
  movl %ebx, %edi                                                           #  125   0x37996  2      
  nop                                                                       #  126   0x37998  1      
  nop                                                                       #  127   0x37999  1      
  callq ._ZN2pp10InputEventD2Ev                                             #  128   0x3799a  5      
  movl %r12d, %edi                                                          #  129   0x3799f  3      
  nop                                                                       #  130   0x379a2  1      
  nop                                                                       #  131   0x379a3  1      
  callq ._Unwind_Resume                                                     #  132   0x379a4  5      
  movl %eax, %r12d                                                          #  133   0x379a9  3      
  jmpq .L_37b00                                                             #  134   0x379ac  5      
  nop                                                                       #  135   0x379b1  1      
  nop                                                                       #  136   0x379b2  1      
  jmpq .L_37ae0                                                             #  137   0x379b3  5      
  nop                                                                       #  138   0x379b8  1      
  nop                                                                       #  139   0x379b9  1      
  nop                                                                       #  140   0x379ba  1      
                                                                                                     
.size _ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b, .-_ZN2pp15WheelInputEventC2ERKNS_14InstanceHandleEdjRKNS_10FloatPointES6_b

