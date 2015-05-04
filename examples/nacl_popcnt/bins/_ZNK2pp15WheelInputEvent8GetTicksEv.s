  .text
  .globl _ZNK2pp15WheelInputEvent8GetTicksEv
  .type _ZNK2pp15WheelInputEvent8GetTicksEv, @function

#! file-offset 0x37f80
#! rip-offset  0x37f80
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15WheelInputEvent8GetTicksEv:            #        0x37f80  0      
  pushq %r12                                     #  1     0x37f80  3      
  movl %esi, %r12d                               #  2     0x37f83  3      
  pushq %rbx                                     #  3     0x37f86  2      
  movl %edi, %ebx                                #  4     0x37f88  2      
  subl $0x18, %esp                               #  5     0x37f8a  3      
  addq %r15, %rsp                                #  6     0x37f8d  3      
  cmpb $0x0, 0xfff8db9(%rip)                     #  7     0x37f90  7      
  je .L_38000                                    #  8     0x37f97  6      
  nop                                            #  9     0x37f9d  1      
.L_37fa0:                                        #        0x37f9e  0      
  movl 0xfff8db4(%rip), %eax                     #  10    0x37f9e  6      
  testq %rax, %rax                               #  11    0x37fa4  3      
  jne .L_380a0                                   #  12    0x37fa7  6      
  xchgw %ax, %ax                                 #  13    0x37fad  3      
  nop                                            #  14    0x37fb0  1      
.L_37fc0:                                        #        0x37fb1  0      
  movl %ebx, %ebx                                #  15    0x37fb1  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x37fb3  8      
  movl %ebx, %ebx                                #  17    0x37fbb  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x37fbd  9      
  movl %ebx, %eax                                #  19    0x37fc6  2      
  addl $0x18, %esp                               #  20    0x37fc8  3      
  addq %r15, %rsp                                #  21    0x37fcb  3      
  popq %rbx                                      #  22    0x37fce  2      
  popq %r12                                      #  23    0x37fd0  3      
  popq %r11                                      #  24    0x37fd3  3      
  andl $0xffffffe0, %r11d                        #  25    0x37fd6  7      
  addq %r15, %r11                                #  26    0x37fdd  3      
  jmpq %r11                                      #  27    0x37fe0  3      
  nop                                            #  28    0x37fe3  1      
  nop                                            #  29    0x37fe4  1      
.L_38000:                                        #        0x37fe5  0      
  movl $0x10030d50, %edi                         #  30    0x37fe5  5      
  nop                                            #  31    0x37fea  1      
  nop                                            #  32    0x37feb  1      
  callq .__cxa_guard_acquire                     #  33    0x37fec  5      
  testl %eax, %eax                               #  34    0x37ff1  2      
  je .L_37fa0                                    #  35    0x37ff3  6      
  nop                                            #  36    0x37ff9  1      
  nop                                            #  37    0x37ffa  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x37ffb  5      
  movl %eax, %edi                                #  39    0x38000  2      
  movl $0x100206c0, %esi                         #  40    0x38002  5      
  nop                                            #  41    0x38007  1      
  nop                                            #  42    0x38008  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x38009  5      
  movl $0x10030d50, %edi                         #  44    0x3800e  5      
  movl %eax, 0xfff8d3f(%rip)                     #  45    0x38013  6      
  nop                                            #  46    0x38019  1      
  nop                                            #  47    0x3801a  1      
  callq .__cxa_guard_release                     #  48    0x3801b  5      
  movl 0xfff8d32(%rip), %eax                     #  49    0x38020  6      
  testq %rax, %rax                               #  50    0x38026  3      
  je .L_37fc0                                    #  51    0x38029  6      
  xchgw %ax, %ax                                 #  52    0x3802f  3      
  nop                                            #  53    0x38032  1      
.L_380a0:                                        #        0x38033  0      
  cmpb $0x0, 0xfff8d16(%rip)                     #  54    0x38033  7      
  je .L_38120                                    #  55    0x3803a  6      
  nop                                            #  56    0x38040  1      
  nop                                            #  57    0x38041  1      
.L_380c0:                                        #        0x38042  0      
  movl %eax, %eax                                #  58    0x38042  2      
  movl 0xc(%r15,%rax,1), %eax                    #  59    0x38044  5      
  movl %r12d, %r12d                              #  60    0x38049  3      
  movl 0x4(%r15,%r12,1), %edi                    #  61    0x3804c  5      
  nop                                            #  62    0x38051  1      
  andl $0xffffffe0, %eax                         #  63    0x38052  5      
  addq %r15, %rax                                #  64    0x38057  3      
  callq %rax                                     #  65    0x3805a  2      
  movq %xmm0, 0x8(%rsp)                          #  66    0x3805c  7      
  movq 0x8(%rsp), %rax                           #  67    0x38063  5      
  movl %ebx, %ebx                                #  68    0x38068  2      
  movl %eax, (%r15,%rbx,1)                       #  69    0x3806a  4      
  shrq $0x20, %rax                               #  70    0x3806e  4      
  movl %ebx, %ebx                                #  71    0x38072  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  72    0x38074  5      
  nop                                            #  73    0x38079  1      
  addl $0x18, %esp                               #  74    0x3807a  3      
  addq %r15, %rsp                                #  75    0x3807d  3      
  movl %ebx, %eax                                #  76    0x38080  2      
  popq %rbx                                      #  77    0x38082  2      
  popq %r12                                      #  78    0x38084  3      
  popq %r11                                      #  79    0x38087  3      
  andl $0xffffffe0, %r11d                        #  80    0x3808a  7      
  addq %r15, %r11                                #  81    0x38091  3      
  jmpq %r11                                      #  82    0x38094  3      
  nop                                            #  83    0x38097  1      
.L_38120:                                        #        0x38098  0      
  movl $0x10030d50, %edi                         #  84    0x38098  5      
  nop                                            #  85    0x3809d  1      
  nop                                            #  86    0x3809e  1      
  callq .__cxa_guard_acquire                     #  87    0x3809f  5      
  testl %eax, %eax                               #  88    0x380a4  2      
  jne .L_38180                                   #  89    0x380a6  6      
  nop                                            #  90    0x380ac  1      
  nop                                            #  91    0x380ad  1      
.L_38160:                                        #        0x380ae  0      
  movl 0xfff8ca4(%rip), %eax                     #  92    0x380ae  6      
  jmpq .L_380c0                                  #  93    0x380b4  5      
  nop                                            #  94    0x380b9  1      
  nop                                            #  95    0x380ba  1      
.L_38180:                                        #        0x380bb  0      
  nop                                            #  96    0x380bb  1      
  nop                                            #  97    0x380bc  1      
  callq ._ZN2pp6Module3GetEv                     #  98    0x380bd  5      
  movl %eax, %edi                                #  99    0x380c2  2      
  movl $0x100206c0, %esi                         #  100   0x380c4  5      
  nop                                            #  101   0x380c9  1      
  nop                                            #  102   0x380ca  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  103   0x380cb  5      
  movl $0x10030d50, %edi                         #  104   0x380d0  5      
  movl %eax, 0xfff8c7d(%rip)                     #  105   0x380d5  6      
  nop                                            #  106   0x380db  1      
  nop                                            #  107   0x380dc  1      
  callq .__cxa_guard_release                     #  108   0x380dd  5      
  jmpq .L_38160                                  #  109   0x380e2  5      
  nop                                            #  110   0x380e7  1      
  nop                                            #  111   0x380e8  1      
.L_38200:                                        #        0x380e9  0      
  movl %eax, %ebx                                #  112   0x380e9  2      
  movl $0x10030d50, %edi                         #  113   0x380eb  5      
  nop                                            #  114   0x380f0  1      
  nop                                            #  115   0x380f1  1      
  callq .__cxa_guard_abort                       #  116   0x380f2  5      
  movl %ebx, %edi                                #  117   0x380f7  2      
  nop                                            #  118   0x380f9  1      
  nop                                            #  119   0x380fa  1      
  callq ._Unwind_Resume                          #  120   0x380fb  5      
  jmpq .L_38200                                  #  121   0x38100  5      
  nop                                            #  122   0x38105  1      
  nop                                            #  123   0x38106  1      
                                                                          
.size _ZNK2pp15WheelInputEvent8GetTicksEv, .-_ZNK2pp15WheelInputEvent8GetTicksEv

