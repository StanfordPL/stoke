  .text
  .globl _ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej
  .type _ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej, @function

#! file-offset 0x3ca80
#! rip-offset  0x3ca80
#! capacity    832 bytes

# Text                                                        #  Line  RIP      Bytes  
._ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej:  #        0x3ca80  0      
  movq %rbx, -0x20(%rsp)                                      #  1     0x3ca80  5      
  movq %r12, -0x18(%rsp)                                      #  2     0x3ca85  5      
  movl %edi, %ebx                                             #  3     0x3ca8a  2      
  movq %r13, -0x10(%rsp)                                      #  4     0x3ca8c  5      
  movq %r14, -0x8(%rsp)                                       #  5     0x3ca91  5      
  subl $0x48, %esp                                            #  6     0x3ca96  3      
  addq %r15, %rsp                                             #  7     0x3ca99  3      
  nop                                                         #  8     0x3ca9c  1      
  cmpb $0x0, 0xfff427c(%rip)                                  #  9     0x3ca9d  7      
  movl %edx, %r14d                                            #  10    0x3caa4  3      
  movl %ecx, %r13d                                            #  11    0x3caa7  3      
  movl %esi, %r12d                                            #  12    0x3caaa  3      
  je .L_3cb60                                                 #  13    0x3caad  6      
  nop                                                         #  14    0x3cab3  1      
.L_3cac0:                                                     #        0x3cab4  0      
  movl 0xfff426e(%rip), %eax                                  #  15    0x3cab4  6      
  testq %rax, %rax                                            #  16    0x3caba  3      
  jne .L_3cc00                                                #  17    0x3cabd  6      
  xchgw %ax, %ax                                              #  18    0x3cac3  3      
  nop                                                         #  19    0x3cac6  1      
.L_3cae0:                                                     #        0x3cac7  0      
  movl %ebx, %ebx                                             #  20    0x3cac7  2      
  movq $0x0, (%r15,%rbx,1)                                    #  21    0x3cac9  8      
  movl %ebx, %ebx                                             #  22    0x3cad1  2      
  movq $0x0, 0x8(%r15,%rbx,1)                                 #  23    0x3cad3  9      
  movl %ebx, %ebx                                             #  24    0x3cadc  2      
  movq $0x0, 0x10(%r15,%rbx,1)                                #  25    0x3cade  9      
  movl %ebx, %ebx                                             #  26    0x3cae7  2      
  movl $0x0, 0x18(%r15,%rbx,1)                                #  27    0x3cae9  9      
  nop                                                         #  28    0x3caf2  1      
  nop                                                         #  29    0x3caf3  1      
.L_3cb20:                                                     #        0x3caf4  0      
  movl %ebx, %eax                                             #  30    0x3caf4  2      
  movq 0x30(%rsp), %r12                                       #  31    0x3caf6  5      
  movq 0x28(%rsp), %rbx                                       #  32    0x3cafb  5      
  movq 0x38(%rsp), %r13                                       #  33    0x3cb00  5      
  movq 0x40(%rsp), %r14                                       #  34    0x3cb05  5      
  addl $0x48, %esp                                            #  35    0x3cb0a  3      
  addq %r15, %rsp                                             #  36    0x3cb0d  3      
  popq %r11                                                   #  37    0x3cb10  3      
  xchgw %ax, %ax                                              #  38    0x3cb13  3      
  andl $0xffffffe0, %r11d                                     #  39    0x3cb16  7      
  addq %r15, %r11                                             #  40    0x3cb1d  3      
  jmpq %r11                                                   #  41    0x3cb20  3      
  nop                                                         #  42    0x3cb23  1      
  nop                                                         #  43    0x3cb24  1      
.L_3cb60:                                                     #        0x3cb25  0      
  movl $0x10030d20, %edi                                      #  44    0x3cb25  5      
  nop                                                         #  45    0x3cb2a  1      
  nop                                                         #  46    0x3cb2b  1      
  callq .__cxa_guard_acquire                                  #  47    0x3cb2c  5      
  testl %eax, %eax                                            #  48    0x3cb31  2      
  je .L_3cac0                                                 #  49    0x3cb33  6      
  nop                                                         #  50    0x3cb39  1      
  nop                                                         #  51    0x3cb3a  1      
  callq ._ZN2pp6Module3GetEv                                  #  52    0x3cb3b  5      
  movl %eax, %edi                                             #  53    0x3cb40  2      
  movl $0x100206d8, %esi                                      #  54    0x3cb42  5      
  nop                                                         #  55    0x3cb47  1      
  nop                                                         #  56    0x3cb48  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc               #  57    0x3cb49  5      
  movl $0x10030d20, %edi                                      #  58    0x3cb4e  5      
  movl %eax, 0xfff41cf(%rip)                                  #  59    0x3cb53  6      
  nop                                                         #  60    0x3cb59  1      
  nop                                                         #  61    0x3cb5a  1      
  callq .__cxa_guard_release                                  #  62    0x3cb5b  5      
  movl 0xfff41c2(%rip), %eax                                  #  63    0x3cb60  6      
  testq %rax, %rax                                            #  64    0x3cb66  3      
  je .L_3cae0                                                 #  65    0x3cb69  6      
  xchgw %ax, %ax                                              #  66    0x3cb6f  3      
  nop                                                         #  67    0x3cb72  1      
.L_3cc00:                                                     #        0x3cb73  0      
  cmpb $0x0, 0xfff41a6(%rip)                                  #  68    0x3cb73  7      
  je .L_3cc80                                                 #  69    0x3cb7a  6      
  nop                                                         #  70    0x3cb80  1      
  nop                                                         #  71    0x3cb81  1      
.L_3cc20:                                                     #        0x3cb82  0      
  movl %eax, %eax                                             #  72    0x3cb82  2      
  movl 0x14(%r15,%rax,1), %eax                                #  73    0x3cb84  5      
  movl %esp, %edi                                             #  74    0x3cb89  2      
  movl %r12d, %r12d                                           #  75    0x3cb8b  3      
  movl 0x4(%r15,%r12,1), %esi                                 #  76    0x3cb8e  5      
  movl %r13d, %ecx                                            #  77    0x3cb93  3      
  movl %r14d, %edx                                            #  78    0x3cb96  3      
  nop                                                         #  79    0x3cb99  1      
  andl $0xffffffe0, %eax                                      #  80    0x3cb9a  5      
  addq %r15, %rax                                             #  81    0x3cb9f  3      
  callq %rax                                                  #  82    0x3cba2  2      
  movq (%rsp), %rax                                           #  83    0x3cba4  4      
  movl %ebx, %ebx                                             #  84    0x3cba8  2      
  movq %rax, (%r15,%rbx,1)                                    #  85    0x3cbaa  4      
  movq 0x8(%rsp), %rax                                        #  86    0x3cbae  5      
  movl %ebx, %ebx                                             #  87    0x3cbb3  2      
  movq %rax, 0x8(%r15,%rbx,1)                                 #  88    0x3cbb5  5      
  movq 0x10(%rsp), %rax                                       #  89    0x3cbba  5      
  nop                                                         #  90    0x3cbbf  1      
  movl %ebx, %ebx                                             #  91    0x3cbc0  2      
  movq %rax, 0x10(%r15,%rbx,1)                                #  92    0x3cbc2  5      
  movl 0x18(%rsp), %eax                                       #  93    0x3cbc7  4      
  movl %ebx, %ebx                                             #  94    0x3cbcb  2      
  movl %eax, 0x18(%r15,%rbx,1)                                #  95    0x3cbcd  5      
  jmpq .L_3cb20                                               #  96    0x3cbd2  5      
  nop                                                         #  97    0x3cbd7  1      
.L_3cc80:                                                     #        0x3cbd8  0      
  movl $0x10030d20, %edi                                      #  98    0x3cbd8  5      
  nop                                                         #  99    0x3cbdd  1      
  nop                                                         #  100   0x3cbde  1      
  callq .__cxa_guard_acquire                                  #  101   0x3cbdf  5      
  testl %eax, %eax                                            #  102   0x3cbe4  2      
  jne .L_3cce0                                                #  103   0x3cbe6  6      
  nop                                                         #  104   0x3cbec  1      
  nop                                                         #  105   0x3cbed  1      
.L_3ccc0:                                                     #        0x3cbee  0      
  movl 0xfff4134(%rip), %eax                                  #  106   0x3cbee  6      
  jmpq .L_3cc20                                               #  107   0x3cbf4  5      
  nop                                                         #  108   0x3cbf9  1      
  nop                                                         #  109   0x3cbfa  1      
.L_3cce0:                                                     #        0x3cbfb  0      
  nop                                                         #  110   0x3cbfb  1      
  nop                                                         #  111   0x3cbfc  1      
  callq ._ZN2pp6Module3GetEv                                  #  112   0x3cbfd  5      
  movl %eax, %edi                                             #  113   0x3cc02  2      
  movl $0x100206d8, %esi                                      #  114   0x3cc04  5      
  nop                                                         #  115   0x3cc09  1      
  nop                                                         #  116   0x3cc0a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc               #  117   0x3cc0b  5      
  movl $0x10030d20, %edi                                      #  118   0x3cc10  5      
  movl %eax, 0xfff410d(%rip)                                  #  119   0x3cc15  6      
  nop                                                         #  120   0x3cc1b  1      
  nop                                                         #  121   0x3cc1c  1      
  callq .__cxa_guard_release                                  #  122   0x3cc1d  5      
  jmpq .L_3ccc0                                               #  123   0x3cc22  5      
  nop                                                         #  124   0x3cc27  1      
  nop                                                         #  125   0x3cc28  1      
.L_3cd60:                                                     #        0x3cc29  0      
  movl %eax, %ebx                                             #  126   0x3cc29  2      
  movl $0x10030d20, %edi                                      #  127   0x3cc2b  5      
  nop                                                         #  128   0x3cc30  1      
  nop                                                         #  129   0x3cc31  1      
  callq .__cxa_guard_abort                                    #  130   0x3cc32  5      
  movl %ebx, %edi                                             #  131   0x3cc37  2      
  nop                                                         #  132   0x3cc39  1      
  nop                                                         #  133   0x3cc3a  1      
  callq ._Unwind_Resume                                       #  134   0x3cc3b  5      
  jmpq .L_3cd60                                               #  135   0x3cc40  5      
  nop                                                         #  136   0x3cc45  1      
  nop                                                         #  137   0x3cc46  1      
                                                                                       
.size _ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej, .-_ZNK2pp15TouchInputEvent12GetTouchByIdE16PP_TouchListTypej

