  .text
  .globl _ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE
  .type _ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x384c0
#! rip-offset  0x384c0
#! capacity    928 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE:                                 #        0x384c0  0      
  movq %r12, -0x10(%rsp)                                                          #  1     0x384c0  5      
  movl %edi, %r12d                                                                #  2     0x384c5  3      
  movq %rbx, -0x18(%rsp)                                                          #  3     0x384c8  5      
  movq %r13, -0x8(%rsp)                                                           #  4     0x384cd  5      
  movl %r12d, %edi                                                                #  5     0x384d2  3      
  subl $0x18, %esp                                                                #  6     0x384d5  3      
  addq %r15, %rsp                                                                 #  7     0x384d8  3      
  movl %esi, %ebx                                                                 #  8     0x384db  2      
  nop                                                                             #  9     0x384dd  1      
  nop                                                                             #  10    0x384de  1      
  nop                                                                             #  11    0x384df  1      
  callq ._ZN2pp10InputEventC2Ev                                                   #  12    0x384e0  5      
  movl %r12d, %r12d                                                               #  13    0x384e5  3      
  movl $0x100207c8, (%r15,%r12,1)                                                 #  14    0x384e8  8      
  cmpb $0x0, 0xfff8839(%rip)                                                      #  15    0x384f0  7      
  je .L_38640                                                                     #  16    0x384f7  6      
  nop                                                                             #  17    0x384fd  1      
.L_38520:                                                                         #        0x384fe  0      
  movl 0xfff8834(%rip), %eax                                                      #  18    0x384fe  6      
  testq %rax, %rax                                                                #  19    0x38504  3      
  je .L_385e0                                                                     #  20    0x38507  6      
  cmpb $0x0, 0xfff881c(%rip)                                                      #  21    0x3850d  7      
  je .L_386e0                                                                     #  22    0x38514  6      
  nop                                                                             #  23    0x3851a  1      
.L_38540:                                                                         #        0x3851b  0      
  movl %eax, %eax                                                                 #  24    0x3851b  2      
  movl 0x4(%r15,%rax,1), %eax                                                     #  25    0x3851d  5      
  movl %ebx, %ebx                                                                 #  26    0x38522  2      
  movl 0x4(%r15,%rbx,1), %edi                                                     #  27    0x38524  5      
  nop                                                                             #  28    0x38529  1      
  andl $0xffffffe0, %eax                                                          #  29    0x3852a  5      
  addq %r15, %rax                                                                 #  30    0x3852f  3      
  callq %rax                                                                      #  31    0x38532  2      
  testl %eax, %eax                                                                #  32    0x38534  2      
  je .L_385c0                                                                     #  33    0x38536  6      
  movl %ebx, %ebx                                                                 #  34    0x3853c  2      
  movl 0x4(%r15,%rbx,1), %r13d                                                    #  35    0x3853e  5      
  nop                                                                             #  36    0x38543  1      
  nop                                                                             #  37    0x38544  1      
  callq ._ZN2pp6Module3GetEv                                                      #  38    0x38545  5      
  movl %eax, %eax                                                                 #  39    0x3854a  2      
  movl %r13d, %edi                                                                #  40    0x3854c  3      
  movl %eax, %eax                                                                 #  41    0x3854f  2      
  movl 0x24(%r15,%rax,1), %eax                                                    #  42    0x38551  5      
  movl %eax, %eax                                                                 #  43    0x38556  2      
  movl (%r15,%rax,1), %eax                                                        #  44    0x38558  4      
  movl %eax, %eax                                                                 #  45    0x3855c  2      
  movl (%r15,%rax,1), %eax                                                        #  46    0x3855e  4      
  andl $0xffffffe0, %eax                                                          #  47    0x38562  5      
  addq %r15, %rax                                                                 #  48    0x38567  3      
  callq %rax                                                                      #  49    0x3856a  2      
  movl %ebx, %ebx                                                                 #  50    0x3856c  2      
  movl 0x4(%r15,%rbx,1), %esi                                                     #  51    0x3856e  5      
  movl %r12d, %edi                                                                #  52    0x38573  3      
  xchgw %ax, %ax                                                                  #  53    0x38576  3      
  nop                                                                             #  54    0x38579  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                #  55    0x3857a  5      
.L_385c0:                                                                         #        0x3857f  0      
  movq (%rsp), %rbx                                                               #  56    0x3857f  4      
  movq 0x8(%rsp), %r12                                                            #  57    0x38583  5      
  movq 0x10(%rsp), %r13                                                           #  58    0x38588  5      
  addl $0x18, %esp                                                                #  59    0x3858d  3      
  addq %r15, %rsp                                                                 #  60    0x38590  3      
  popq %r11                                                                       #  61    0x38593  3      
  andl $0xffffffe0, %r11d                                                         #  62    0x38596  7      
  addq %r15, %r11                                                                 #  63    0x3859d  3      
  jmpq %r11                                                                       #  64    0x385a0  3      
.L_385e0:                                                                         #        0x385a3  0      
  nop                                                                             #  65    0x385a3  1      
  nop                                                                             #  66    0x385a4  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  67    0x385a5  5      
  testl %eax, %eax                                                                #  68    0x385aa  2      
  je .L_385c0                                                                     #  69    0x385ac  6      
  nop                                                                             #  70    0x385b2  1      
  nop                                                                             #  71    0x385b3  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  72    0x385b4  5      
  movl %eax, %eax                                                                 #  73    0x385b9  2      
  jmpq .L_38540                                                                   #  74    0x385bb  5      
  nop                                                                             #  75    0x385c0  1      
  nop                                                                             #  76    0x385c1  1      
.L_38640:                                                                         #        0x385c2  0      
  movl $0x10030d30, %edi                                                          #  77    0x385c2  5      
  nop                                                                             #  78    0x385c7  1      
  nop                                                                             #  79    0x385c8  1      
  callq .__cxa_guard_acquire                                                      #  80    0x385c9  5      
  testl %eax, %eax                                                                #  81    0x385ce  2      
  je .L_38520                                                                     #  82    0x385d0  6      
  nop                                                                             #  83    0x385d6  1      
  nop                                                                             #  84    0x385d7  1      
  callq ._ZN2pp6Module3GetEv                                                      #  85    0x385d8  5      
  movl %eax, %edi                                                                 #  86    0x385dd  2      
  movl $0x1002068a, %esi                                                          #  87    0x385df  5      
  nop                                                                             #  88    0x385e4  1      
  nop                                                                             #  89    0x385e5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  90    0x385e6  5      
  movl $0x10030d30, %edi                                                          #  91    0x385eb  5      
  movl %eax, 0xfff8742(%rip)                                                      #  92    0x385f0  6      
  nop                                                                             #  93    0x385f6  1      
  nop                                                                             #  94    0x385f7  1      
  callq .__cxa_guard_release                                                      #  95    0x385f8  5      
  jmpq .L_38520                                                                   #  96    0x385fd  5      
  nop                                                                             #  97    0x38602  1      
  nop                                                                             #  98    0x38603  1      
.L_386e0:                                                                         #        0x38604  0      
  movl $0x10030d30, %edi                                                          #  99    0x38604  5      
  nop                                                                             #  100   0x38609  1      
  nop                                                                             #  101   0x3860a  1      
  callq .__cxa_guard_acquire                                                      #  102   0x3860b  5      
  testl %eax, %eax                                                                #  103   0x38610  2      
  jne .L_38740                                                                    #  104   0x38612  6      
  nop                                                                             #  105   0x38618  1      
  nop                                                                             #  106   0x38619  1      
.L_38720:                                                                         #        0x3861a  0      
  movl 0xfff8718(%rip), %eax                                                      #  107   0x3861a  6      
  jmpq .L_38540                                                                   #  108   0x38620  5      
  nop                                                                             #  109   0x38625  1      
  nop                                                                             #  110   0x38626  1      
.L_38740:                                                                         #        0x38627  0      
  nop                                                                             #  111   0x38627  1      
  nop                                                                             #  112   0x38628  1      
  callq ._ZN2pp6Module3GetEv                                                      #  113   0x38629  5      
  movl %eax, %edi                                                                 #  114   0x3862e  2      
  movl $0x1002068a, %esi                                                          #  115   0x38630  5      
  nop                                                                             #  116   0x38635  1      
  nop                                                                             #  117   0x38636  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  118   0x38637  5      
  movl $0x10030d30, %edi                                                          #  119   0x3863c  5      
  movl %eax, 0xfff86f1(%rip)                                                      #  120   0x38641  6      
  nop                                                                             #  121   0x38647  1      
  nop                                                                             #  122   0x38648  1      
  callq .__cxa_guard_release                                                      #  123   0x38649  5      
  jmpq .L_38720                                                                   #  124   0x3864e  5      
  nop                                                                             #  125   0x38653  1      
  nop                                                                             #  126   0x38654  1      
.L_387c0:                                                                         #        0x38655  0      
  movl $0x10030d30, %edi                                                          #  127   0x38655  5      
  movl %eax, %ebx                                                                 #  128   0x3865a  2      
  nop                                                                             #  129   0x3865c  1      
  nop                                                                             #  130   0x3865d  1      
  callq .__cxa_guard_abort                                                        #  131   0x3865e  5      
.L_387e0:                                                                         #        0x38663  0      
  movl %r12d, %edi                                                                #  132   0x38663  3      
  nop                                                                             #  133   0x38666  1      
  nop                                                                             #  134   0x38667  1      
  callq ._ZN2pp10InputEventD2Ev                                                   #  135   0x38668  5      
  movl %ebx, %edi                                                                 #  136   0x3866d  2      
  nop                                                                             #  137   0x3866f  1      
  nop                                                                             #  138   0x38670  1      
  callq ._Unwind_Resume                                                           #  139   0x38671  5      
  movl %eax, %ebx                                                                 #  140   0x38676  2      
  jmpq .L_387e0                                                                   #  141   0x38678  5      
  nop                                                                             #  142   0x3867d  1      
  nop                                                                             #  143   0x3867e  1      
  jmpq .L_387c0                                                                   #  144   0x3867f  5      
  nop                                                                             #  145   0x38684  1      
  nop                                                                             #  146   0x38685  1      
  nop                                                                             #  147   0x38686  1      
                                                                                                           
.size _ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE, .-_ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE

