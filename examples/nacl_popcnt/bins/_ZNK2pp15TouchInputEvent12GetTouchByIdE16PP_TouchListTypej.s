  .text
  .globl _ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej
  .type _ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej, @function

#! file-offset 0x3cb20
#! rip-offset  0x3cb20
#! capacity    832 bytes

# Text                                                        #  Line  RIP      Bytes  
._ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej:  #        0x3cb20  0      
  movq %rbx, -0x20(%rsp)                                      #  1     0x3cb20  5      
  movq %r12, -0x18(%rsp)                                      #  2     0x3cb25  5      
  movl %edi, %ebx                                             #  3     0x3cb2a  2      
  movq %r13, -0x10(%rsp)                                      #  4     0x3cb2c  5      
  movq %r14, -0x8(%rsp)                                       #  5     0x3cb31  5      
  subl $0x48, %esp                                            #  6     0x3cb36  3      
  addq %r15, %rsp                                             #  7     0x3cb39  3      
  nop                                                         #  8     0x3cb3c  1      
  cmpb $0x0, 0xfff41dc(%rip)                                  #  9     0x3cb3d  7      
  movl %edx, %r14d                                            #  10    0x3cb44  3      
  movl %ecx, %r13d                                            #  11    0x3cb47  3      
  movl %esi, %r12d                                            #  12    0x3cb4a  3      
  je .L_3cc00                                                 #  13    0x3cb4d  6      
  nop                                                         #  14    0x3cb53  1      
.L_3cb60:                                                     #        0x3cb54  0      
  movl 0xfff41ce(%rip), %eax                                  #  15    0x3cb54  6      
  testq %rax, %rax                                            #  16    0x3cb5a  3      
  jne .L_3cca0                                                #  17    0x3cb5d  6      
  xchgw %ax, %ax                                              #  18    0x3cb63  3      
  nop                                                         #  19    0x3cb66  1      
.L_3cb80:                                                     #        0x3cb67  0      
  movl %ebx, %ebx                                             #  20    0x3cb67  2      
  movq $0x0, (%r15,%rbx,1)                                    #  21    0x3cb69  8      
  movl %ebx, %ebx                                             #  22    0x3cb71  2      
  movq $0x0, 0x8(%r15,%rbx,1)                                 #  23    0x3cb73  9      
  movl %ebx, %ebx                                             #  24    0x3cb7c  2      
  movq $0x0, 0x10(%r15,%rbx,1)                                #  25    0x3cb7e  9      
  movl %ebx, %ebx                                             #  26    0x3cb87  2      
  movl $0x0, 0x18(%r15,%rbx,1)                                #  27    0x3cb89  9      
  nop                                                         #  28    0x3cb92  1      
  nop                                                         #  29    0x3cb93  1      
.L_3cbc0:                                                     #        0x3cb94  0      
  movl %ebx, %eax                                             #  30    0x3cb94  2      
  movq 0x30(%rsp), %r12                                       #  31    0x3cb96  5      
  movq 0x28(%rsp), %rbx                                       #  32    0x3cb9b  5      
  movq 0x38(%rsp), %r13                                       #  33    0x3cba0  5      
  movq 0x40(%rsp), %r14                                       #  34    0x3cba5  5      
  addl $0x48, %esp                                            #  35    0x3cbaa  3      
  addq %r15, %rsp                                             #  36    0x3cbad  3      
  popq %r11                                                   #  37    0x3cbb0  3      
  xchgw %ax, %ax                                              #  38    0x3cbb3  3      
  andl $0xffffffe0, %r11d                                     #  39    0x3cbb6  7      
  addq %r15, %r11                                             #  40    0x3cbbd  3      
  jmpq %r11                                                   #  41    0x3cbc0  3      
  nop                                                         #  42    0x3cbc3  1      
  nop                                                         #  43    0x3cbc4  1      
.L_3cc00:                                                     #        0x3cbc5  0      
  movl $0x10030d20, %edi                                      #  44    0x3cbc5  5      
  nop                                                         #  45    0x3cbca  1      
  nop                                                         #  46    0x3cbcb  1      
  callq .__cxa_guard_acquire                                  #  47    0x3cbcc  5      
  testl %eax, %eax                                            #  48    0x3cbd1  2      
  je .L_3cb60                                                 #  49    0x3cbd3  6      
  nop                                                         #  50    0x3cbd9  1      
  nop                                                         #  51    0x3cbda  1      
  callq ._ZN2pp6Module3GetEv                                  #  52    0x3cbdb  5      
  movl %eax, %edi                                             #  53    0x3cbe0  2      
  movl $0x100206d8, %esi                                      #  54    0x3cbe2  5      
  nop                                                         #  55    0x3cbe7  1      
  nop                                                         #  56    0x3cbe8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc               #  57    0x3cbe9  5      
  movl $0x10030d20, %edi                                      #  58    0x3cbee  5      
  movl %eax, 0xfff412f(%rip)                                  #  59    0x3cbf3  6      
  nop                                                         #  60    0x3cbf9  1      
  nop                                                         #  61    0x3cbfa  1      
  callq .__cxa_guard_release                                  #  62    0x3cbfb  5      
  movl 0xfff4122(%rip), %eax                                  #  63    0x3cc00  6      
  testq %rax, %rax                                            #  64    0x3cc06  3      
  je .L_3cb80                                                 #  65    0x3cc09  6      
  xchgw %ax, %ax                                              #  66    0x3cc0f  3      
  nop                                                         #  67    0x3cc12  1      
.L_3cca0:                                                     #        0x3cc13  0      
  cmpb $0x0, 0xfff4106(%rip)                                  #  68    0x3cc13  7      
  je .L_3cd20                                                 #  69    0x3cc1a  6      
  nop                                                         #  70    0x3cc20  1      
  nop                                                         #  71    0x3cc21  1      
.L_3ccc0:                                                     #        0x3cc22  0      
  movl %eax, %eax                                             #  72    0x3cc22  2      
  movl 0x14(%r15,%rax,1), %eax                                #  73    0x3cc24  5      
  movl %esp, %edi                                             #  74    0x3cc29  2      
  movl %r12d, %r12d                                           #  75    0x3cc2b  3      
  movl 0x4(%r15,%r12,1), %esi                                 #  76    0x3cc2e  5      
  movl %r13d, %ecx                                            #  77    0x3cc33  3      
  movl %r14d, %edx                                            #  78    0x3cc36  3      
  nop                                                         #  79    0x3cc39  1      
  andl $0xffffffe0, %eax                                      #  80    0x3cc3a  5      
  addq %r15, %rax                                             #  81    0x3cc3f  3      
  callq %rax                                                  #  82    0x3cc42  2      
  movq (%rsp), %rax                                           #  83    0x3cc44  4      
  movl %ebx, %ebx                                             #  84    0x3cc48  2      
  movq %rax, (%r15,%rbx,1)                                    #  85    0x3cc4a  4      
  movq 0x8(%rsp), %rax                                        #  86    0x3cc4e  5      
  movl %ebx, %ebx                                             #  87    0x3cc53  2      
  movq %rax, 0x8(%r15,%rbx,1)                                 #  88    0x3cc55  5      
  movq 0x10(%rsp), %rax                                       #  89    0x3cc5a  5      
  nop                                                         #  90    0x3cc5f  1      
  movl %ebx, %ebx                                             #  91    0x3cc60  2      
  movq %rax, 0x10(%r15,%rbx,1)                                #  92    0x3cc62  5      
  movl 0x18(%rsp), %eax                                       #  93    0x3cc67  4      
  movl %ebx, %ebx                                             #  94    0x3cc6b  2      
  movl %eax, 0x18(%r15,%rbx,1)                                #  95    0x3cc6d  5      
  jmpq .L_3cbc0                                               #  96    0x3cc72  5      
  nop                                                         #  97    0x3cc77  1      
.L_3cd20:                                                     #        0x3cc78  0      
  movl $0x10030d20, %edi                                      #  98    0x3cc78  5      
  nop                                                         #  99    0x3cc7d  1      
  nop                                                         #  100   0x3cc7e  1      
  callq .__cxa_guard_acquire                                  #  101   0x3cc7f  5      
  testl %eax, %eax                                            #  102   0x3cc84  2      
  jne .L_3cd80                                                #  103   0x3cc86  6      
  nop                                                         #  104   0x3cc8c  1      
  nop                                                         #  105   0x3cc8d  1      
.L_3cd60:                                                     #        0x3cc8e  0      
  movl 0xfff4094(%rip), %eax                                  #  106   0x3cc8e  6      
  jmpq .L_3ccc0                                               #  107   0x3cc94  5      
  nop                                                         #  108   0x3cc99  1      
  nop                                                         #  109   0x3cc9a  1      
.L_3cd80:                                                     #        0x3cc9b  0      
  nop                                                         #  110   0x3cc9b  1      
  nop                                                         #  111   0x3cc9c  1      
  callq ._ZN2pp6Module3GetEv                                  #  112   0x3cc9d  5      
  movl %eax, %edi                                             #  113   0x3cca2  2      
  movl $0x100206d8, %esi                                      #  114   0x3cca4  5      
  nop                                                         #  115   0x3cca9  1      
  nop                                                         #  116   0x3ccaa  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc               #  117   0x3ccab  5      
  movl $0x10030d20, %edi                                      #  118   0x3ccb0  5      
  movl %eax, 0xfff406d(%rip)                                  #  119   0x3ccb5  6      
  nop                                                         #  120   0x3ccbb  1      
  nop                                                         #  121   0x3ccbc  1      
  callq .__cxa_guard_release                                  #  122   0x3ccbd  5      
  jmpq .L_3cd60                                               #  123   0x3ccc2  5      
  nop                                                         #  124   0x3ccc7  1      
  nop                                                         #  125   0x3ccc8  1      
.L_3ce00:                                                     #        0x3ccc9  0      
  movl %eax, %ebx                                             #  126   0x3ccc9  2      
  movl $0x10030d20, %edi                                      #  127   0x3cccb  5      
  nop                                                         #  128   0x3ccd0  1      
  nop                                                         #  129   0x3ccd1  1      
  callq .__cxa_guard_abort                                    #  130   0x3ccd2  5      
  movl %ebx, %edi                                             #  131   0x3ccd7  2      
  nop                                                         #  132   0x3ccd9  1      
  nop                                                         #  133   0x3ccda  1      
  callq ._Unwind_Resume                                       #  134   0x3ccdb  5      
  jmpq .L_3ce00                                               #  135   0x3cce0  5      
  nop                                                         #  136   0x3cce5  1      
  nop                                                         #  137   0x3cce6  1      
                                                                                       
.size _ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej, .-_ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej

