  .text
  .globl _ZNK2pp15WheelInputEvent8GetTicksEv
  .type _ZNK2pp15WheelInputEvent8GetTicksEv, @function

#! file-offset 0x37ee0
#! rip-offset  0x37ee0
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15WheelInputEvent8GetTicksEv:            #        0x37ee0  0      
  pushq %r12                                     #  1     0x37ee0  3      
  movl %esi, %r12d                               #  2     0x37ee3  3      
  pushq %rbx                                     #  3     0x37ee6  2      
  movl %edi, %ebx                                #  4     0x37ee8  2      
  subl $0x18, %esp                               #  5     0x37eea  3      
  addq %r15, %rsp                                #  6     0x37eed  3      
  cmpb $0x0, 0xfff8e59(%rip)                     #  7     0x37ef0  7      
  je .L_37f60                                    #  8     0x37ef7  6      
  nop                                            #  9     0x37efd  1      
.L_37f00:                                        #        0x37efe  0      
  movl 0xfff8e54(%rip), %eax                     #  10    0x37efe  6      
  testq %rax, %rax                               #  11    0x37f04  3      
  jne .L_38000                                   #  12    0x37f07  6      
  xchgw %ax, %ax                                 #  13    0x37f0d  3      
  nop                                            #  14    0x37f10  1      
.L_37f20:                                        #        0x37f11  0      
  movl %ebx, %ebx                                #  15    0x37f11  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x37f13  8      
  movl %ebx, %ebx                                #  17    0x37f1b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x37f1d  9      
  movl %ebx, %eax                                #  19    0x37f26  2      
  addl $0x18, %esp                               #  20    0x37f28  3      
  addq %r15, %rsp                                #  21    0x37f2b  3      
  popq %rbx                                      #  22    0x37f2e  2      
  popq %r12                                      #  23    0x37f30  3      
  popq %r11                                      #  24    0x37f33  3      
  andl $0xffffffe0, %r11d                        #  25    0x37f36  7      
  addq %r15, %r11                                #  26    0x37f3d  3      
  jmpq %r11                                      #  27    0x37f40  3      
  nop                                            #  28    0x37f43  1      
  nop                                            #  29    0x37f44  1      
.L_37f60:                                        #        0x37f45  0      
  movl $0x10030d50, %edi                         #  30    0x37f45  5      
  nop                                            #  31    0x37f4a  1      
  nop                                            #  32    0x37f4b  1      
  callq .__cxa_guard_acquire                     #  33    0x37f4c  5      
  testl %eax, %eax                               #  34    0x37f51  2      
  je .L_37f00                                    #  35    0x37f53  6      
  nop                                            #  36    0x37f59  1      
  nop                                            #  37    0x37f5a  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x37f5b  5      
  movl %eax, %edi                                #  39    0x37f60  2      
  movl $0x100206c0, %esi                         #  40    0x37f62  5      
  nop                                            #  41    0x37f67  1      
  nop                                            #  42    0x37f68  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x37f69  5      
  movl $0x10030d50, %edi                         #  44    0x37f6e  5      
  movl %eax, 0xfff8ddf(%rip)                     #  45    0x37f73  6      
  nop                                            #  46    0x37f79  1      
  nop                                            #  47    0x37f7a  1      
  callq .__cxa_guard_release                     #  48    0x37f7b  5      
  movl 0xfff8dd2(%rip), %eax                     #  49    0x37f80  6      
  testq %rax, %rax                               #  50    0x37f86  3      
  je .L_37f20                                    #  51    0x37f89  6      
  xchgw %ax, %ax                                 #  52    0x37f8f  3      
  nop                                            #  53    0x37f92  1      
.L_38000:                                        #        0x37f93  0      
  cmpb $0x0, 0xfff8db6(%rip)                     #  54    0x37f93  7      
  je .L_38080                                    #  55    0x37f9a  6      
  nop                                            #  56    0x37fa0  1      
  nop                                            #  57    0x37fa1  1      
.L_38020:                                        #        0x37fa2  0      
  movl %eax, %eax                                #  58    0x37fa2  2      
  movl 0xc(%r15,%rax,1), %eax                    #  59    0x37fa4  5      
  movl %r12d, %r12d                              #  60    0x37fa9  3      
  movl 0x4(%r15,%r12,1), %edi                    #  61    0x37fac  5      
  nop                                            #  62    0x37fb1  1      
  andl $0xffffffe0, %eax                         #  63    0x37fb2  5      
  addq %r15, %rax                                #  64    0x37fb7  3      
  callq %rax                                     #  65    0x37fba  2      
  movq %xmm0, 0x8(%rsp)                          #  66    0x37fbc  7      
  movq 0x8(%rsp), %rax                           #  67    0x37fc3  5      
  movl %ebx, %ebx                                #  68    0x37fc8  2      
  movl %eax, (%r15,%rbx,1)                       #  69    0x37fca  4      
  shrq $0x20, %rax                               #  70    0x37fce  4      
  movl %ebx, %ebx                                #  71    0x37fd2  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  72    0x37fd4  5      
  nop                                            #  73    0x37fd9  1      
  addl $0x18, %esp                               #  74    0x37fda  3      
  addq %r15, %rsp                                #  75    0x37fdd  3      
  movl %ebx, %eax                                #  76    0x37fe0  2      
  popq %rbx                                      #  77    0x37fe2  2      
  popq %r12                                      #  78    0x37fe4  3      
  popq %r11                                      #  79    0x37fe7  3      
  andl $0xffffffe0, %r11d                        #  80    0x37fea  7      
  addq %r15, %r11                                #  81    0x37ff1  3      
  jmpq %r11                                      #  82    0x37ff4  3      
  nop                                            #  83    0x37ff7  1      
.L_38080:                                        #        0x37ff8  0      
  movl $0x10030d50, %edi                         #  84    0x37ff8  5      
  nop                                            #  85    0x37ffd  1      
  nop                                            #  86    0x37ffe  1      
  callq .__cxa_guard_acquire                     #  87    0x37fff  5      
  testl %eax, %eax                               #  88    0x38004  2      
  jne .L_380e0                                   #  89    0x38006  6      
  nop                                            #  90    0x3800c  1      
  nop                                            #  91    0x3800d  1      
.L_380c0:                                        #        0x3800e  0      
  movl 0xfff8d44(%rip), %eax                     #  92    0x3800e  6      
  jmpq .L_38020                                  #  93    0x38014  5      
  nop                                            #  94    0x38019  1      
  nop                                            #  95    0x3801a  1      
.L_380e0:                                        #        0x3801b  0      
  nop                                            #  96    0x3801b  1      
  nop                                            #  97    0x3801c  1      
  callq ._ZN2pp6Module3GetEv                     #  98    0x3801d  5      
  movl %eax, %edi                                #  99    0x38022  2      
  movl $0x100206c0, %esi                         #  100   0x38024  5      
  nop                                            #  101   0x38029  1      
  nop                                            #  102   0x3802a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  103   0x3802b  5      
  movl $0x10030d50, %edi                         #  104   0x38030  5      
  movl %eax, 0xfff8d1d(%rip)                     #  105   0x38035  6      
  nop                                            #  106   0x3803b  1      
  nop                                            #  107   0x3803c  1      
  callq .__cxa_guard_release                     #  108   0x3803d  5      
  jmpq .L_380c0                                  #  109   0x38042  5      
  nop                                            #  110   0x38047  1      
  nop                                            #  111   0x38048  1      
.L_38160:                                        #        0x38049  0      
  movl %eax, %ebx                                #  112   0x38049  2      
  movl $0x10030d50, %edi                         #  113   0x3804b  5      
  nop                                            #  114   0x38050  1      
  nop                                            #  115   0x38051  1      
  callq .__cxa_guard_abort                       #  116   0x38052  5      
  movl %ebx, %edi                                #  117   0x38057  2      
  nop                                            #  118   0x38059  1      
  nop                                            #  119   0x3805a  1      
  callq ._Unwind_Resume                          #  120   0x3805b  5      
  jmpq .L_38160                                  #  121   0x38060  5      
  nop                                            #  122   0x38065  1      
  nop                                            #  123   0x38066  1      
                                                                          
.size _ZNK2pp15WheelInputEvent8GetTicksEv, .-_ZNK2pp15WheelInputEvent8GetTicksEv

