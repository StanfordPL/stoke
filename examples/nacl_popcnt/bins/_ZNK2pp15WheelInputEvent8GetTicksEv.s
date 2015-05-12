  .text
  .globl _ZNK2pp15WheelInputEvent8GetTicksEv
  .type _ZNK2pp15WheelInputEvent8GetTicksEv, @function

#! file-offset 0x37f00
#! rip-offset  0x37f00
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15WheelInputEvent8GetTicksEv:            #        0x37f00  0      
  pushq %r12                                     #  1     0x37f00  3      
  movl %esi, %r12d                               #  2     0x37f03  3      
  pushq %rbx                                     #  3     0x37f06  2      
  movl %edi, %ebx                                #  4     0x37f08  2      
  subl $0x18, %esp                               #  5     0x37f0a  3      
  addq %r15, %rsp                                #  6     0x37f0d  3      
  cmpb $0x0, 0xfff8e39(%rip)                     #  7     0x37f10  7      
  je .L_37f80                                    #  8     0x37f17  6      
  nop                                            #  9     0x37f1d  1      
.L_37f20:                                        #        0x37f1e  0      
  movl 0xfff8e34(%rip), %eax                     #  10    0x37f1e  6      
  testq %rax, %rax                               #  11    0x37f24  3      
  jne .L_38020                                   #  12    0x37f27  6      
  xchgw %ax, %ax                                 #  13    0x37f2d  3      
  nop                                            #  14    0x37f30  1      
.L_37f40:                                        #        0x37f31  0      
  movl %ebx, %ebx                                #  15    0x37f31  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x37f33  8      
  movl %ebx, %ebx                                #  17    0x37f3b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x37f3d  9      
  movl %ebx, %eax                                #  19    0x37f46  2      
  addl $0x18, %esp                               #  20    0x37f48  3      
  addq %r15, %rsp                                #  21    0x37f4b  3      
  popq %rbx                                      #  22    0x37f4e  2      
  popq %r12                                      #  23    0x37f50  3      
  popq %r11                                      #  24    0x37f53  3      
  andl $0xffffffe0, %r11d                        #  25    0x37f56  7      
  addq %r15, %r11                                #  26    0x37f5d  3      
  jmpq %r11                                      #  27    0x37f60  3      
  nop                                            #  28    0x37f63  1      
  nop                                            #  29    0x37f64  1      
.L_37f80:                                        #        0x37f65  0      
  movl $0x10030d50, %edi                         #  30    0x37f65  5      
  nop                                            #  31    0x37f6a  1      
  nop                                            #  32    0x37f6b  1      
  callq .__cxa_guard_acquire                     #  33    0x37f6c  5      
  testl %eax, %eax                               #  34    0x37f71  2      
  je .L_37f20                                    #  35    0x37f73  6      
  nop                                            #  36    0x37f79  1      
  nop                                            #  37    0x37f7a  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x37f7b  5      
  movl %eax, %edi                                #  39    0x37f80  2      
  movl $0x100206c0, %esi                         #  40    0x37f82  5      
  nop                                            #  41    0x37f87  1      
  nop                                            #  42    0x37f88  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x37f89  5      
  movl $0x10030d50, %edi                         #  44    0x37f8e  5      
  movl %eax, 0xfff8dbf(%rip)                     #  45    0x37f93  6      
  nop                                            #  46    0x37f99  1      
  nop                                            #  47    0x37f9a  1      
  callq .__cxa_guard_release                     #  48    0x37f9b  5      
  movl 0xfff8db2(%rip), %eax                     #  49    0x37fa0  6      
  testq %rax, %rax                               #  50    0x37fa6  3      
  je .L_37f40                                    #  51    0x37fa9  6      
  xchgw %ax, %ax                                 #  52    0x37faf  3      
  nop                                            #  53    0x37fb2  1      
.L_38020:                                        #        0x37fb3  0      
  cmpb $0x0, 0xfff8d96(%rip)                     #  54    0x37fb3  7      
  je .L_380a0                                    #  55    0x37fba  6      
  nop                                            #  56    0x37fc0  1      
  nop                                            #  57    0x37fc1  1      
.L_38040:                                        #        0x37fc2  0      
  movl %eax, %eax                                #  58    0x37fc2  2      
  movl 0xc(%r15,%rax,1), %eax                    #  59    0x37fc4  5      
  movl %r12d, %r12d                              #  60    0x37fc9  3      
  movl 0x4(%r15,%r12,1), %edi                    #  61    0x37fcc  5      
  nop                                            #  62    0x37fd1  1      
  andl $0xffffffe0, %eax                         #  63    0x37fd2  5      
  addq %r15, %rax                                #  64    0x37fd7  3      
  callq %rax                                     #  65    0x37fda  2      
  movq %xmm0, 0x8(%rsp)                          #  66    0x37fdc  7      
  movq 0x8(%rsp), %rax                           #  67    0x37fe3  5      
  movl %ebx, %ebx                                #  68    0x37fe8  2      
  movl %eax, (%r15,%rbx,1)                       #  69    0x37fea  4      
  shrq $0x20, %rax                               #  70    0x37fee  4      
  movl %ebx, %ebx                                #  71    0x37ff2  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  72    0x37ff4  5      
  nop                                            #  73    0x37ff9  1      
  addl $0x18, %esp                               #  74    0x37ffa  3      
  addq %r15, %rsp                                #  75    0x37ffd  3      
  movl %ebx, %eax                                #  76    0x38000  2      
  popq %rbx                                      #  77    0x38002  2      
  popq %r12                                      #  78    0x38004  3      
  popq %r11                                      #  79    0x38007  3      
  andl $0xffffffe0, %r11d                        #  80    0x3800a  7      
  addq %r15, %r11                                #  81    0x38011  3      
  jmpq %r11                                      #  82    0x38014  3      
  nop                                            #  83    0x38017  1      
.L_380a0:                                        #        0x38018  0      
  movl $0x10030d50, %edi                         #  84    0x38018  5      
  nop                                            #  85    0x3801d  1      
  nop                                            #  86    0x3801e  1      
  callq .__cxa_guard_acquire                     #  87    0x3801f  5      
  testl %eax, %eax                               #  88    0x38024  2      
  jne .L_38100                                   #  89    0x38026  6      
  nop                                            #  90    0x3802c  1      
  nop                                            #  91    0x3802d  1      
.L_380e0:                                        #        0x3802e  0      
  movl 0xfff8d24(%rip), %eax                     #  92    0x3802e  6      
  jmpq .L_38040                                  #  93    0x38034  5      
  nop                                            #  94    0x38039  1      
  nop                                            #  95    0x3803a  1      
.L_38100:                                        #        0x3803b  0      
  nop                                            #  96    0x3803b  1      
  nop                                            #  97    0x3803c  1      
  callq ._ZN2pp6Module3GetEv                     #  98    0x3803d  5      
  movl %eax, %edi                                #  99    0x38042  2      
  movl $0x100206c0, %esi                         #  100   0x38044  5      
  nop                                            #  101   0x38049  1      
  nop                                            #  102   0x3804a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  103   0x3804b  5      
  movl $0x10030d50, %edi                         #  104   0x38050  5      
  movl %eax, 0xfff8cfd(%rip)                     #  105   0x38055  6      
  nop                                            #  106   0x3805b  1      
  nop                                            #  107   0x3805c  1      
  callq .__cxa_guard_release                     #  108   0x3805d  5      
  jmpq .L_380e0                                  #  109   0x38062  5      
  nop                                            #  110   0x38067  1      
  nop                                            #  111   0x38068  1      
.L_38180:                                        #        0x38069  0      
  movl %eax, %ebx                                #  112   0x38069  2      
  movl $0x10030d50, %edi                         #  113   0x3806b  5      
  nop                                            #  114   0x38070  1      
  nop                                            #  115   0x38071  1      
  callq .__cxa_guard_abort                       #  116   0x38072  5      
  movl %ebx, %edi                                #  117   0x38077  2      
  nop                                            #  118   0x38079  1      
  nop                                            #  119   0x3807a  1      
  callq ._Unwind_Resume                          #  120   0x3807b  5      
  jmpq .L_38180                                  #  121   0x38080  5      
  nop                                            #  122   0x38085  1      
  nop                                            #  123   0x38086  1      
                                                                          
.size _ZNK2pp15WheelInputEvent8GetTicksEv, .-_ZNK2pp15WheelInputEvent8GetTicksEv

