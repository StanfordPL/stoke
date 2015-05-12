  .text
  .globl _ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE
  .type _ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x38860
#! rip-offset  0x38860
#! capacity    928 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE:                                 #        0x38860  0      
  movq %r12, -0x10(%rsp)                                                          #  1     0x38860  5      
  movl %edi, %r12d                                                                #  2     0x38865  3      
  movq %rbx, -0x18(%rsp)                                                          #  3     0x38868  5      
  movq %r13, -0x8(%rsp)                                                           #  4     0x3886d  5      
  movl %r12d, %edi                                                                #  5     0x38872  3      
  subl $0x18, %esp                                                                #  6     0x38875  3      
  addq %r15, %rsp                                                                 #  7     0x38878  3      
  movl %esi, %ebx                                                                 #  8     0x3887b  2      
  nop                                                                             #  9     0x3887d  1      
  nop                                                                             #  10    0x3887e  1      
  nop                                                                             #  11    0x3887f  1      
  callq ._ZN2pp10InputEventC2Ev                                                   #  12    0x38880  5      
  movl %r12d, %r12d                                                               #  13    0x38885  3      
  movl $0x100207c8, (%r15,%r12,1)                                                 #  14    0x38888  8      
  cmpb $0x0, 0xfff8499(%rip)                                                      #  15    0x38890  7      
  je .L_389e0                                                                     #  16    0x38897  6      
  nop                                                                             #  17    0x3889d  1      
.L_388c0:                                                                         #        0x3889e  0      
  movl 0xfff8494(%rip), %eax                                                      #  18    0x3889e  6      
  testq %rax, %rax                                                                #  19    0x388a4  3      
  je .L_38980                                                                     #  20    0x388a7  6      
  cmpb $0x0, 0xfff847c(%rip)                                                      #  21    0x388ad  7      
  je .L_38a80                                                                     #  22    0x388b4  6      
  nop                                                                             #  23    0x388ba  1      
.L_388e0:                                                                         #        0x388bb  0      
  movl %eax, %eax                                                                 #  24    0x388bb  2      
  movl 0x4(%r15,%rax,1), %eax                                                     #  25    0x388bd  5      
  movl %ebx, %ebx                                                                 #  26    0x388c2  2      
  movl 0x4(%r15,%rbx,1), %edi                                                     #  27    0x388c4  5      
  nop                                                                             #  28    0x388c9  1      
  andl $0xffffffe0, %eax                                                          #  29    0x388ca  5      
  addq %r15, %rax                                                                 #  30    0x388cf  3      
  callq %rax                                                                      #  31    0x388d2  2      
  testl %eax, %eax                                                                #  32    0x388d4  2      
  je .L_38960                                                                     #  33    0x388d6  6      
  movl %ebx, %ebx                                                                 #  34    0x388dc  2      
  movl 0x4(%r15,%rbx,1), %r13d                                                    #  35    0x388de  5      
  nop                                                                             #  36    0x388e3  1      
  nop                                                                             #  37    0x388e4  1      
  callq ._ZN2pp6Module3GetEv                                                      #  38    0x388e5  5      
  movl %eax, %eax                                                                 #  39    0x388ea  2      
  movl %r13d, %edi                                                                #  40    0x388ec  3      
  movl %eax, %eax                                                                 #  41    0x388ef  2      
  movl 0x24(%r15,%rax,1), %eax                                                    #  42    0x388f1  5      
  movl %eax, %eax                                                                 #  43    0x388f6  2      
  movl (%r15,%rax,1), %eax                                                        #  44    0x388f8  4      
  movl %eax, %eax                                                                 #  45    0x388fc  2      
  movl (%r15,%rax,1), %eax                                                        #  46    0x388fe  4      
  andl $0xffffffe0, %eax                                                          #  47    0x38902  5      
  addq %r15, %rax                                                                 #  48    0x38907  3      
  callq %rax                                                                      #  49    0x3890a  2      
  movl %ebx, %ebx                                                                 #  50    0x3890c  2      
  movl 0x4(%r15,%rbx,1), %esi                                                     #  51    0x3890e  5      
  movl %r12d, %edi                                                                #  52    0x38913  3      
  xchgw %ax, %ax                                                                  #  53    0x38916  3      
  nop                                                                             #  54    0x38919  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                #  55    0x3891a  5      
.L_38960:                                                                         #        0x3891f  0      
  movq (%rsp), %rbx                                                               #  56    0x3891f  4      
  movq 0x8(%rsp), %r12                                                            #  57    0x38923  5      
  movq 0x10(%rsp), %r13                                                           #  58    0x38928  5      
  addl $0x18, %esp                                                                #  59    0x3892d  3      
  addq %r15, %rsp                                                                 #  60    0x38930  3      
  popq %r11                                                                       #  61    0x38933  3      
  andl $0xffffffe0, %r11d                                                         #  62    0x38936  7      
  addq %r15, %r11                                                                 #  63    0x3893d  3      
  jmpq %r11                                                                       #  64    0x38940  3      
.L_38980:                                                                         #        0x38943  0      
  nop                                                                             #  65    0x38943  1      
  nop                                                                             #  66    0x38944  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  67    0x38945  5      
  testl %eax, %eax                                                                #  68    0x3894a  2      
  je .L_38960                                                                     #  69    0x3894c  6      
  nop                                                                             #  70    0x38952  1      
  nop                                                                             #  71    0x38953  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  72    0x38954  5      
  movl %eax, %eax                                                                 #  73    0x38959  2      
  jmpq .L_388e0                                                                   #  74    0x3895b  5      
  nop                                                                             #  75    0x38960  1      
  nop                                                                             #  76    0x38961  1      
.L_389e0:                                                                         #        0x38962  0      
  movl $0x10030d30, %edi                                                          #  77    0x38962  5      
  nop                                                                             #  78    0x38967  1      
  nop                                                                             #  79    0x38968  1      
  callq .__cxa_guard_acquire                                                      #  80    0x38969  5      
  testl %eax, %eax                                                                #  81    0x3896e  2      
  je .L_388c0                                                                     #  82    0x38970  6      
  nop                                                                             #  83    0x38976  1      
  nop                                                                             #  84    0x38977  1      
  callq ._ZN2pp6Module3GetEv                                                      #  85    0x38978  5      
  movl %eax, %edi                                                                 #  86    0x3897d  2      
  movl $0x1002068a, %esi                                                          #  87    0x3897f  5      
  nop                                                                             #  88    0x38984  1      
  nop                                                                             #  89    0x38985  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  90    0x38986  5      
  movl $0x10030d30, %edi                                                          #  91    0x3898b  5      
  movl %eax, 0xfff83a2(%rip)                                                      #  92    0x38990  6      
  nop                                                                             #  93    0x38996  1      
  nop                                                                             #  94    0x38997  1      
  callq .__cxa_guard_release                                                      #  95    0x38998  5      
  jmpq .L_388c0                                                                   #  96    0x3899d  5      
  nop                                                                             #  97    0x389a2  1      
  nop                                                                             #  98    0x389a3  1      
.L_38a80:                                                                         #        0x389a4  0      
  movl $0x10030d30, %edi                                                          #  99    0x389a4  5      
  nop                                                                             #  100   0x389a9  1      
  nop                                                                             #  101   0x389aa  1      
  callq .__cxa_guard_acquire                                                      #  102   0x389ab  5      
  testl %eax, %eax                                                                #  103   0x389b0  2      
  jne .L_38ae0                                                                    #  104   0x389b2  6      
  nop                                                                             #  105   0x389b8  1      
  nop                                                                             #  106   0x389b9  1      
.L_38ac0:                                                                         #        0x389ba  0      
  movl 0xfff8378(%rip), %eax                                                      #  107   0x389ba  6      
  jmpq .L_388e0                                                                   #  108   0x389c0  5      
  nop                                                                             #  109   0x389c5  1      
  nop                                                                             #  110   0x389c6  1      
.L_38ae0:                                                                         #        0x389c7  0      
  nop                                                                             #  111   0x389c7  1      
  nop                                                                             #  112   0x389c8  1      
  callq ._ZN2pp6Module3GetEv                                                      #  113   0x389c9  5      
  movl %eax, %edi                                                                 #  114   0x389ce  2      
  movl $0x1002068a, %esi                                                          #  115   0x389d0  5      
  nop                                                                             #  116   0x389d5  1      
  nop                                                                             #  117   0x389d6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  118   0x389d7  5      
  movl $0x10030d30, %edi                                                          #  119   0x389dc  5      
  movl %eax, 0xfff8351(%rip)                                                      #  120   0x389e1  6      
  nop                                                                             #  121   0x389e7  1      
  nop                                                                             #  122   0x389e8  1      
  callq .__cxa_guard_release                                                      #  123   0x389e9  5      
  jmpq .L_38ac0                                                                   #  124   0x389ee  5      
  nop                                                                             #  125   0x389f3  1      
  nop                                                                             #  126   0x389f4  1      
.L_38b60:                                                                         #        0x389f5  0      
  movl $0x10030d30, %edi                                                          #  127   0x389f5  5      
  movl %eax, %ebx                                                                 #  128   0x389fa  2      
  nop                                                                             #  129   0x389fc  1      
  nop                                                                             #  130   0x389fd  1      
  callq .__cxa_guard_abort                                                        #  131   0x389fe  5      
.L_38b80:                                                                         #        0x38a03  0      
  movl %r12d, %edi                                                                #  132   0x38a03  3      
  nop                                                                             #  133   0x38a06  1      
  nop                                                                             #  134   0x38a07  1      
  callq ._ZN2pp10InputEventD2Ev                                                   #  135   0x38a08  5      
  movl %ebx, %edi                                                                 #  136   0x38a0d  2      
  nop                                                                             #  137   0x38a0f  1      
  nop                                                                             #  138   0x38a10  1      
  callq ._Unwind_Resume                                                           #  139   0x38a11  5      
  movl %eax, %ebx                                                                 #  140   0x38a16  2      
  jmpq .L_38b80                                                                   #  141   0x38a18  5      
  nop                                                                             #  142   0x38a1d  1      
  nop                                                                             #  143   0x38a1e  1      
  jmpq .L_38b60                                                                   #  144   0x38a1f  5      
  nop                                                                             #  145   0x38a24  1      
  nop                                                                             #  146   0x38a25  1      
  nop                                                                             #  147   0x38a26  1      
                                                                                                           
.size _ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE, .-_ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE

