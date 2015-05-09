  .text
  .globl _ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE
  .type _ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x38840
#! rip-offset  0x38840
#! capacity    928 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE:                                 #        0x38840  0      
  movq %r12, -0x10(%rsp)                                                          #  1     0x38840  5      
  movl %edi, %r12d                                                                #  2     0x38845  3      
  movq %rbx, -0x18(%rsp)                                                          #  3     0x38848  5      
  movq %r13, -0x8(%rsp)                                                           #  4     0x3884d  5      
  movl %r12d, %edi                                                                #  5     0x38852  3      
  subl $0x18, %esp                                                                #  6     0x38855  3      
  addq %r15, %rsp                                                                 #  7     0x38858  3      
  movl %esi, %ebx                                                                 #  8     0x3885b  2      
  nop                                                                             #  9     0x3885d  1      
  nop                                                                             #  10    0x3885e  1      
  nop                                                                             #  11    0x3885f  1      
  callq ._ZN2pp10InputEventC2Ev                                                   #  12    0x38860  5      
  movl %r12d, %r12d                                                               #  13    0x38865  3      
  movl $0x100207c8, (%r15,%r12,1)                                                 #  14    0x38868  8      
  cmpb $0x0, 0xfff84b9(%rip)                                                      #  15    0x38870  7      
  je .L_389c0                                                                     #  16    0x38877  6      
  nop                                                                             #  17    0x3887d  1      
.L_388a0:                                                                         #        0x3887e  0      
  movl 0xfff84b4(%rip), %eax                                                      #  18    0x3887e  6      
  testq %rax, %rax                                                                #  19    0x38884  3      
  je .L_38960                                                                     #  20    0x38887  6      
  cmpb $0x0, 0xfff849c(%rip)                                                      #  21    0x3888d  7      
  je .L_38a60                                                                     #  22    0x38894  6      
  nop                                                                             #  23    0x3889a  1      
.L_388c0:                                                                         #        0x3889b  0      
  movl %eax, %eax                                                                 #  24    0x3889b  2      
  movl 0x4(%r15,%rax,1), %eax                                                     #  25    0x3889d  5      
  movl %ebx, %ebx                                                                 #  26    0x388a2  2      
  movl 0x4(%r15,%rbx,1), %edi                                                     #  27    0x388a4  5      
  nop                                                                             #  28    0x388a9  1      
  andl $0xffffffe0, %eax                                                          #  29    0x388aa  5      
  addq %r15, %rax                                                                 #  30    0x388af  3      
  callq %rax                                                                      #  31    0x388b2  2      
  testl %eax, %eax                                                                #  32    0x388b4  2      
  je .L_38940                                                                     #  33    0x388b6  6      
  movl %ebx, %ebx                                                                 #  34    0x388bc  2      
  movl 0x4(%r15,%rbx,1), %r13d                                                    #  35    0x388be  5      
  nop                                                                             #  36    0x388c3  1      
  nop                                                                             #  37    0x388c4  1      
  callq ._ZN2pp6Module3GetEv                                                      #  38    0x388c5  5      
  movl %eax, %eax                                                                 #  39    0x388ca  2      
  movl %r13d, %edi                                                                #  40    0x388cc  3      
  movl %eax, %eax                                                                 #  41    0x388cf  2      
  movl 0x24(%r15,%rax,1), %eax                                                    #  42    0x388d1  5      
  movl %eax, %eax                                                                 #  43    0x388d6  2      
  movl (%r15,%rax,1), %eax                                                        #  44    0x388d8  4      
  movl %eax, %eax                                                                 #  45    0x388dc  2      
  movl (%r15,%rax,1), %eax                                                        #  46    0x388de  4      
  andl $0xffffffe0, %eax                                                          #  47    0x388e2  5      
  addq %r15, %rax                                                                 #  48    0x388e7  3      
  callq %rax                                                                      #  49    0x388ea  2      
  movl %ebx, %ebx                                                                 #  50    0x388ec  2      
  movl 0x4(%r15,%rbx,1), %esi                                                     #  51    0x388ee  5      
  movl %r12d, %edi                                                                #  52    0x388f3  3      
  xchgw %ax, %ax                                                                  #  53    0x388f6  3      
  nop                                                                             #  54    0x388f9  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                #  55    0x388fa  5      
.L_38940:                                                                         #        0x388ff  0      
  movq (%rsp), %rbx                                                               #  56    0x388ff  4      
  movq 0x8(%rsp), %r12                                                            #  57    0x38903  5      
  movq 0x10(%rsp), %r13                                                           #  58    0x38908  5      
  addl $0x18, %esp                                                                #  59    0x3890d  3      
  addq %r15, %rsp                                                                 #  60    0x38910  3      
  popq %r11                                                                       #  61    0x38913  3      
  andl $0xffffffe0, %r11d                                                         #  62    0x38916  7      
  addq %r15, %r11                                                                 #  63    0x3891d  3      
  jmpq %r11                                                                       #  64    0x38920  3      
.L_38960:                                                                         #        0x38923  0      
  nop                                                                             #  65    0x38923  1      
  nop                                                                             #  66    0x38924  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  67    0x38925  5      
  testl %eax, %eax                                                                #  68    0x3892a  2      
  je .L_38940                                                                     #  69    0x3892c  6      
  nop                                                                             #  70    0x38932  1      
  nop                                                                             #  71    0x38933  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  72    0x38934  5      
  movl %eax, %eax                                                                 #  73    0x38939  2      
  jmpq .L_388c0                                                                   #  74    0x3893b  5      
  nop                                                                             #  75    0x38940  1      
  nop                                                                             #  76    0x38941  1      
.L_389c0:                                                                         #        0x38942  0      
  movl $0x10030d30, %edi                                                          #  77    0x38942  5      
  nop                                                                             #  78    0x38947  1      
  nop                                                                             #  79    0x38948  1      
  callq .__cxa_guard_acquire                                                      #  80    0x38949  5      
  testl %eax, %eax                                                                #  81    0x3894e  2      
  je .L_388a0                                                                     #  82    0x38950  6      
  nop                                                                             #  83    0x38956  1      
  nop                                                                             #  84    0x38957  1      
  callq ._ZN2pp6Module3GetEv                                                      #  85    0x38958  5      
  movl %eax, %edi                                                                 #  86    0x3895d  2      
  movl $0x1002068a, %esi                                                          #  87    0x3895f  5      
  nop                                                                             #  88    0x38964  1      
  nop                                                                             #  89    0x38965  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  90    0x38966  5      
  movl $0x10030d30, %edi                                                          #  91    0x3896b  5      
  movl %eax, 0xfff83c2(%rip)                                                      #  92    0x38970  6      
  nop                                                                             #  93    0x38976  1      
  nop                                                                             #  94    0x38977  1      
  callq .__cxa_guard_release                                                      #  95    0x38978  5      
  jmpq .L_388a0                                                                   #  96    0x3897d  5      
  nop                                                                             #  97    0x38982  1      
  nop                                                                             #  98    0x38983  1      
.L_38a60:                                                                         #        0x38984  0      
  movl $0x10030d30, %edi                                                          #  99    0x38984  5      
  nop                                                                             #  100   0x38989  1      
  nop                                                                             #  101   0x3898a  1      
  callq .__cxa_guard_acquire                                                      #  102   0x3898b  5      
  testl %eax, %eax                                                                #  103   0x38990  2      
  jne .L_38ac0                                                                    #  104   0x38992  6      
  nop                                                                             #  105   0x38998  1      
  nop                                                                             #  106   0x38999  1      
.L_38aa0:                                                                         #        0x3899a  0      
  movl 0xfff8398(%rip), %eax                                                      #  107   0x3899a  6      
  jmpq .L_388c0                                                                   #  108   0x389a0  5      
  nop                                                                             #  109   0x389a5  1      
  nop                                                                             #  110   0x389a6  1      
.L_38ac0:                                                                         #        0x389a7  0      
  nop                                                                             #  111   0x389a7  1      
  nop                                                                             #  112   0x389a8  1      
  callq ._ZN2pp6Module3GetEv                                                      #  113   0x389a9  5      
  movl %eax, %edi                                                                 #  114   0x389ae  2      
  movl $0x1002068a, %esi                                                          #  115   0x389b0  5      
  nop                                                                             #  116   0x389b5  1      
  nop                                                                             #  117   0x389b6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  118   0x389b7  5      
  movl $0x10030d30, %edi                                                          #  119   0x389bc  5      
  movl %eax, 0xfff8371(%rip)                                                      #  120   0x389c1  6      
  nop                                                                             #  121   0x389c7  1      
  nop                                                                             #  122   0x389c8  1      
  callq .__cxa_guard_release                                                      #  123   0x389c9  5      
  jmpq .L_38aa0                                                                   #  124   0x389ce  5      
  nop                                                                             #  125   0x389d3  1      
  nop                                                                             #  126   0x389d4  1      
.L_38b40:                                                                         #        0x389d5  0      
  movl $0x10030d30, %edi                                                          #  127   0x389d5  5      
  movl %eax, %ebx                                                                 #  128   0x389da  2      
  nop                                                                             #  129   0x389dc  1      
  nop                                                                             #  130   0x389dd  1      
  callq .__cxa_guard_abort                                                        #  131   0x389de  5      
.L_38b60:                                                                         #        0x389e3  0      
  movl %r12d, %edi                                                                #  132   0x389e3  3      
  nop                                                                             #  133   0x389e6  1      
  nop                                                                             #  134   0x389e7  1      
  callq ._ZN2pp10InputEventD2Ev                                                   #  135   0x389e8  5      
  movl %ebx, %edi                                                                 #  136   0x389ed  2      
  nop                                                                             #  137   0x389ef  1      
  nop                                                                             #  138   0x389f0  1      
  callq ._Unwind_Resume                                                           #  139   0x389f1  5      
  movl %eax, %ebx                                                                 #  140   0x389f6  2      
  jmpq .L_38b60                                                                   #  141   0x389f8  5      
  nop                                                                             #  142   0x389fd  1      
  nop                                                                             #  143   0x389fe  1      
  jmpq .L_38b40                                                                   #  144   0x389ff  5      
  nop                                                                             #  145   0x38a04  1      
  nop                                                                             #  146   0x38a05  1      
  nop                                                                             #  147   0x38a06  1      
                                                                                                           
.size _ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE, .-_ZN2pp18KeyboardInputEventC1ERKNS_10InputEventE

