  .text
  .globl _ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej
  .type _ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej, @function

#! file-offset 0x3caa0
#! rip-offset  0x3caa0
#! capacity    832 bytes

# Text                                                        #  Line  RIP      Bytes  
._ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej:  #        0x3caa0  0      
  movq %rbx, -0x20(%rsp)                                      #  1     0x3caa0  5      
  movq %r12, -0x18(%rsp)                                      #  2     0x3caa5  5      
  movl %edi, %ebx                                             #  3     0x3caaa  2      
  movq %r13, -0x10(%rsp)                                      #  4     0x3caac  5      
  movq %r14, -0x8(%rsp)                                       #  5     0x3cab1  5      
  subl $0x48, %esp                                            #  6     0x3cab6  3      
  addq %r15, %rsp                                             #  7     0x3cab9  3      
  nop                                                         #  8     0x3cabc  1      
  cmpb $0x0, 0xfff425c(%rip)                                  #  9     0x3cabd  7      
  movl %edx, %r14d                                            #  10    0x3cac4  3      
  movl %ecx, %r13d                                            #  11    0x3cac7  3      
  movl %esi, %r12d                                            #  12    0x3caca  3      
  je .L_3cb80                                                 #  13    0x3cacd  6      
  nop                                                         #  14    0x3cad3  1      
.L_3cae0:                                                     #        0x3cad4  0      
  movl 0xfff424e(%rip), %eax                                  #  15    0x3cad4  6      
  testq %rax, %rax                                            #  16    0x3cada  3      
  jne .L_3cc20                                                #  17    0x3cadd  6      
  xchgw %ax, %ax                                              #  18    0x3cae3  3      
  nop                                                         #  19    0x3cae6  1      
.L_3cb00:                                                     #        0x3cae7  0      
  movl %ebx, %ebx                                             #  20    0x3cae7  2      
  movq $0x0, (%r15,%rbx,1)                                    #  21    0x3cae9  8      
  movl %ebx, %ebx                                             #  22    0x3caf1  2      
  movq $0x0, 0x8(%r15,%rbx,1)                                 #  23    0x3caf3  9      
  movl %ebx, %ebx                                             #  24    0x3cafc  2      
  movq $0x0, 0x10(%r15,%rbx,1)                                #  25    0x3cafe  9      
  movl %ebx, %ebx                                             #  26    0x3cb07  2      
  movl $0x0, 0x18(%r15,%rbx,1)                                #  27    0x3cb09  9      
  nop                                                         #  28    0x3cb12  1      
  nop                                                         #  29    0x3cb13  1      
.L_3cb40:                                                     #        0x3cb14  0      
  movl %ebx, %eax                                             #  30    0x3cb14  2      
  movq 0x30(%rsp), %r12                                       #  31    0x3cb16  5      
  movq 0x28(%rsp), %rbx                                       #  32    0x3cb1b  5      
  movq 0x38(%rsp), %r13                                       #  33    0x3cb20  5      
  movq 0x40(%rsp), %r14                                       #  34    0x3cb25  5      
  addl $0x48, %esp                                            #  35    0x3cb2a  3      
  addq %r15, %rsp                                             #  36    0x3cb2d  3      
  popq %r11                                                   #  37    0x3cb30  3      
  xchgw %ax, %ax                                              #  38    0x3cb33  3      
  andl $0xffffffe0, %r11d                                     #  39    0x3cb36  7      
  addq %r15, %r11                                             #  40    0x3cb3d  3      
  jmpq %r11                                                   #  41    0x3cb40  3      
  nop                                                         #  42    0x3cb43  1      
  nop                                                         #  43    0x3cb44  1      
.L_3cb80:                                                     #        0x3cb45  0      
  movl $0x10030d20, %edi                                      #  44    0x3cb45  5      
  nop                                                         #  45    0x3cb4a  1      
  nop                                                         #  46    0x3cb4b  1      
  callq .__cxa_guard_acquire                                  #  47    0x3cb4c  5      
  testl %eax, %eax                                            #  48    0x3cb51  2      
  je .L_3cae0                                                 #  49    0x3cb53  6      
  nop                                                         #  50    0x3cb59  1      
  nop                                                         #  51    0x3cb5a  1      
  callq ._ZN2pp6Module3GetEv                                  #  52    0x3cb5b  5      
  movl %eax, %edi                                             #  53    0x3cb60  2      
  movl $0x100206d8, %esi                                      #  54    0x3cb62  5      
  nop                                                         #  55    0x3cb67  1      
  nop                                                         #  56    0x3cb68  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc               #  57    0x3cb69  5      
  movl $0x10030d20, %edi                                      #  58    0x3cb6e  5      
  movl %eax, 0xfff41af(%rip)                                  #  59    0x3cb73  6      
  nop                                                         #  60    0x3cb79  1      
  nop                                                         #  61    0x3cb7a  1      
  callq .__cxa_guard_release                                  #  62    0x3cb7b  5      
  movl 0xfff41a2(%rip), %eax                                  #  63    0x3cb80  6      
  testq %rax, %rax                                            #  64    0x3cb86  3      
  je .L_3cb00                                                 #  65    0x3cb89  6      
  xchgw %ax, %ax                                              #  66    0x3cb8f  3      
  nop                                                         #  67    0x3cb92  1      
.L_3cc20:                                                     #        0x3cb93  0      
  cmpb $0x0, 0xfff4186(%rip)                                  #  68    0x3cb93  7      
  je .L_3cca0                                                 #  69    0x3cb9a  6      
  nop                                                         #  70    0x3cba0  1      
  nop                                                         #  71    0x3cba1  1      
.L_3cc40:                                                     #        0x3cba2  0      
  movl %eax, %eax                                             #  72    0x3cba2  2      
  movl 0x14(%r15,%rax,1), %eax                                #  73    0x3cba4  5      
  movl %esp, %edi                                             #  74    0x3cba9  2      
  movl %r12d, %r12d                                           #  75    0x3cbab  3      
  movl 0x4(%r15,%r12,1), %esi                                 #  76    0x3cbae  5      
  movl %r13d, %ecx                                            #  77    0x3cbb3  3      
  movl %r14d, %edx                                            #  78    0x3cbb6  3      
  nop                                                         #  79    0x3cbb9  1      
  andl $0xffffffe0, %eax                                      #  80    0x3cbba  5      
  addq %r15, %rax                                             #  81    0x3cbbf  3      
  callq %rax                                                  #  82    0x3cbc2  2      
  movq (%rsp), %rax                                           #  83    0x3cbc4  4      
  movl %ebx, %ebx                                             #  84    0x3cbc8  2      
  movq %rax, (%r15,%rbx,1)                                    #  85    0x3cbca  4      
  movq 0x8(%rsp), %rax                                        #  86    0x3cbce  5      
  movl %ebx, %ebx                                             #  87    0x3cbd3  2      
  movq %rax, 0x8(%r15,%rbx,1)                                 #  88    0x3cbd5  5      
  movq 0x10(%rsp), %rax                                       #  89    0x3cbda  5      
  nop                                                         #  90    0x3cbdf  1      
  movl %ebx, %ebx                                             #  91    0x3cbe0  2      
  movq %rax, 0x10(%r15,%rbx,1)                                #  92    0x3cbe2  5      
  movl 0x18(%rsp), %eax                                       #  93    0x3cbe7  4      
  movl %ebx, %ebx                                             #  94    0x3cbeb  2      
  movl %eax, 0x18(%r15,%rbx,1)                                #  95    0x3cbed  5      
  jmpq .L_3cb40                                               #  96    0x3cbf2  5      
  nop                                                         #  97    0x3cbf7  1      
.L_3cca0:                                                     #        0x3cbf8  0      
  movl $0x10030d20, %edi                                      #  98    0x3cbf8  5      
  nop                                                         #  99    0x3cbfd  1      
  nop                                                         #  100   0x3cbfe  1      
  callq .__cxa_guard_acquire                                  #  101   0x3cbff  5      
  testl %eax, %eax                                            #  102   0x3cc04  2      
  jne .L_3cd00                                                #  103   0x3cc06  6      
  nop                                                         #  104   0x3cc0c  1      
  nop                                                         #  105   0x3cc0d  1      
.L_3cce0:                                                     #        0x3cc0e  0      
  movl 0xfff4114(%rip), %eax                                  #  106   0x3cc0e  6      
  jmpq .L_3cc40                                               #  107   0x3cc14  5      
  nop                                                         #  108   0x3cc19  1      
  nop                                                         #  109   0x3cc1a  1      
.L_3cd00:                                                     #        0x3cc1b  0      
  nop                                                         #  110   0x3cc1b  1      
  nop                                                         #  111   0x3cc1c  1      
  callq ._ZN2pp6Module3GetEv                                  #  112   0x3cc1d  5      
  movl %eax, %edi                                             #  113   0x3cc22  2      
  movl $0x100206d8, %esi                                      #  114   0x3cc24  5      
  nop                                                         #  115   0x3cc29  1      
  nop                                                         #  116   0x3cc2a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc               #  117   0x3cc2b  5      
  movl $0x10030d20, %edi                                      #  118   0x3cc30  5      
  movl %eax, 0xfff40ed(%rip)                                  #  119   0x3cc35  6      
  nop                                                         #  120   0x3cc3b  1      
  nop                                                         #  121   0x3cc3c  1      
  callq .__cxa_guard_release                                  #  122   0x3cc3d  5      
  jmpq .L_3cce0                                               #  123   0x3cc42  5      
  nop                                                         #  124   0x3cc47  1      
  nop                                                         #  125   0x3cc48  1      
.L_3cd80:                                                     #        0x3cc49  0      
  movl %eax, %ebx                                             #  126   0x3cc49  2      
  movl $0x10030d20, %edi                                      #  127   0x3cc4b  5      
  nop                                                         #  128   0x3cc50  1      
  nop                                                         #  129   0x3cc51  1      
  callq .__cxa_guard_abort                                    #  130   0x3cc52  5      
  movl %ebx, %edi                                             #  131   0x3cc57  2      
  nop                                                         #  132   0x3cc59  1      
  nop                                                         #  133   0x3cc5a  1      
  callq ._Unwind_Resume                                       #  134   0x3cc5b  5      
  jmpq .L_3cd80                                               #  135   0x3cc60  5      
  nop                                                         #  136   0x3cc65  1      
  nop                                                         #  137   0x3cc66  1      
                                                                                       
.size _ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej, .-_ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej

