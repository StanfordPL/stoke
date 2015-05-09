  .text
  .globl _ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE
  .type _ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x384a0
#! rip-offset  0x384a0
#! capacity    928 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE:                                 #        0x384a0  0      
  movq %r12, -0x10(%rsp)                                                          #  1     0x384a0  5      
  movl %edi, %r12d                                                                #  2     0x384a5  3      
  movq %rbx, -0x18(%rsp)                                                          #  3     0x384a8  5      
  movq %r13, -0x8(%rsp)                                                           #  4     0x384ad  5      
  movl %r12d, %edi                                                                #  5     0x384b2  3      
  subl $0x18, %esp                                                                #  6     0x384b5  3      
  addq %r15, %rsp                                                                 #  7     0x384b8  3      
  movl %esi, %ebx                                                                 #  8     0x384bb  2      
  nop                                                                             #  9     0x384bd  1      
  nop                                                                             #  10    0x384be  1      
  nop                                                                             #  11    0x384bf  1      
  callq ._ZN2pp10InputEventC2Ev                                                   #  12    0x384c0  5      
  movl %r12d, %r12d                                                               #  13    0x384c5  3      
  movl $0x100207c8, (%r15,%r12,1)                                                 #  14    0x384c8  8      
  cmpb $0x0, 0xfff8859(%rip)                                                      #  15    0x384d0  7      
  je .L_38620                                                                     #  16    0x384d7  6      
  nop                                                                             #  17    0x384dd  1      
.L_38500:                                                                         #        0x384de  0      
  movl 0xfff8854(%rip), %eax                                                      #  18    0x384de  6      
  testq %rax, %rax                                                                #  19    0x384e4  3      
  je .L_385c0                                                                     #  20    0x384e7  6      
  cmpb $0x0, 0xfff883c(%rip)                                                      #  21    0x384ed  7      
  je .L_386c0                                                                     #  22    0x384f4  6      
  nop                                                                             #  23    0x384fa  1      
.L_38520:                                                                         #        0x384fb  0      
  movl %eax, %eax                                                                 #  24    0x384fb  2      
  movl 0x4(%r15,%rax,1), %eax                                                     #  25    0x384fd  5      
  movl %ebx, %ebx                                                                 #  26    0x38502  2      
  movl 0x4(%r15,%rbx,1), %edi                                                     #  27    0x38504  5      
  nop                                                                             #  28    0x38509  1      
  andl $0xffffffe0, %eax                                                          #  29    0x3850a  5      
  addq %r15, %rax                                                                 #  30    0x3850f  3      
  callq %rax                                                                      #  31    0x38512  2      
  testl %eax, %eax                                                                #  32    0x38514  2      
  je .L_385a0                                                                     #  33    0x38516  6      
  movl %ebx, %ebx                                                                 #  34    0x3851c  2      
  movl 0x4(%r15,%rbx,1), %r13d                                                    #  35    0x3851e  5      
  nop                                                                             #  36    0x38523  1      
  nop                                                                             #  37    0x38524  1      
  callq ._ZN2pp6Module3GetEv                                                      #  38    0x38525  5      
  movl %eax, %eax                                                                 #  39    0x3852a  2      
  movl %r13d, %edi                                                                #  40    0x3852c  3      
  movl %eax, %eax                                                                 #  41    0x3852f  2      
  movl 0x24(%r15,%rax,1), %eax                                                    #  42    0x38531  5      
  movl %eax, %eax                                                                 #  43    0x38536  2      
  movl (%r15,%rax,1), %eax                                                        #  44    0x38538  4      
  movl %eax, %eax                                                                 #  45    0x3853c  2      
  movl (%r15,%rax,1), %eax                                                        #  46    0x3853e  4      
  andl $0xffffffe0, %eax                                                          #  47    0x38542  5      
  addq %r15, %rax                                                                 #  48    0x38547  3      
  callq %rax                                                                      #  49    0x3854a  2      
  movl %ebx, %ebx                                                                 #  50    0x3854c  2      
  movl 0x4(%r15,%rbx,1), %esi                                                     #  51    0x3854e  5      
  movl %r12d, %edi                                                                #  52    0x38553  3      
  xchgw %ax, %ax                                                                  #  53    0x38556  3      
  nop                                                                             #  54    0x38559  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                #  55    0x3855a  5      
.L_385a0:                                                                         #        0x3855f  0      
  movq (%rsp), %rbx                                                               #  56    0x3855f  4      
  movq 0x8(%rsp), %r12                                                            #  57    0x38563  5      
  movq 0x10(%rsp), %r13                                                           #  58    0x38568  5      
  addl $0x18, %esp                                                                #  59    0x3856d  3      
  addq %r15, %rsp                                                                 #  60    0x38570  3      
  popq %r11                                                                       #  61    0x38573  3      
  andl $0xffffffe0, %r11d                                                         #  62    0x38576  7      
  addq %r15, %r11                                                                 #  63    0x3857d  3      
  jmpq %r11                                                                       #  64    0x38580  3      
.L_385c0:                                                                         #        0x38583  0      
  nop                                                                             #  65    0x38583  1      
  nop                                                                             #  66    0x38584  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  67    0x38585  5      
  testl %eax, %eax                                                                #  68    0x3858a  2      
  je .L_385a0                                                                     #  69    0x3858c  6      
  nop                                                                             #  70    0x38592  1      
  nop                                                                             #  71    0x38593  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  72    0x38594  5      
  movl %eax, %eax                                                                 #  73    0x38599  2      
  jmpq .L_38520                                                                   #  74    0x3859b  5      
  nop                                                                             #  75    0x385a0  1      
  nop                                                                             #  76    0x385a1  1      
.L_38620:                                                                         #        0x385a2  0      
  movl $0x10030d30, %edi                                                          #  77    0x385a2  5      
  nop                                                                             #  78    0x385a7  1      
  nop                                                                             #  79    0x385a8  1      
  callq .__cxa_guard_acquire                                                      #  80    0x385a9  5      
  testl %eax, %eax                                                                #  81    0x385ae  2      
  je .L_38500                                                                     #  82    0x385b0  6      
  nop                                                                             #  83    0x385b6  1      
  nop                                                                             #  84    0x385b7  1      
  callq ._ZN2pp6Module3GetEv                                                      #  85    0x385b8  5      
  movl %eax, %edi                                                                 #  86    0x385bd  2      
  movl $0x1002068a, %esi                                                          #  87    0x385bf  5      
  nop                                                                             #  88    0x385c4  1      
  nop                                                                             #  89    0x385c5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  90    0x385c6  5      
  movl $0x10030d30, %edi                                                          #  91    0x385cb  5      
  movl %eax, 0xfff8762(%rip)                                                      #  92    0x385d0  6      
  nop                                                                             #  93    0x385d6  1      
  nop                                                                             #  94    0x385d7  1      
  callq .__cxa_guard_release                                                      #  95    0x385d8  5      
  jmpq .L_38500                                                                   #  96    0x385dd  5      
  nop                                                                             #  97    0x385e2  1      
  nop                                                                             #  98    0x385e3  1      
.L_386c0:                                                                         #        0x385e4  0      
  movl $0x10030d30, %edi                                                          #  99    0x385e4  5      
  nop                                                                             #  100   0x385e9  1      
  nop                                                                             #  101   0x385ea  1      
  callq .__cxa_guard_acquire                                                      #  102   0x385eb  5      
  testl %eax, %eax                                                                #  103   0x385f0  2      
  jne .L_38720                                                                    #  104   0x385f2  6      
  nop                                                                             #  105   0x385f8  1      
  nop                                                                             #  106   0x385f9  1      
.L_38700:                                                                         #        0x385fa  0      
  movl 0xfff8738(%rip), %eax                                                      #  107   0x385fa  6      
  jmpq .L_38520                                                                   #  108   0x38600  5      
  nop                                                                             #  109   0x38605  1      
  nop                                                                             #  110   0x38606  1      
.L_38720:                                                                         #        0x38607  0      
  nop                                                                             #  111   0x38607  1      
  nop                                                                             #  112   0x38608  1      
  callq ._ZN2pp6Module3GetEv                                                      #  113   0x38609  5      
  movl %eax, %edi                                                                 #  114   0x3860e  2      
  movl $0x1002068a, %esi                                                          #  115   0x38610  5      
  nop                                                                             #  116   0x38615  1      
  nop                                                                             #  117   0x38616  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  118   0x38617  5      
  movl $0x10030d30, %edi                                                          #  119   0x3861c  5      
  movl %eax, 0xfff8711(%rip)                                                      #  120   0x38621  6      
  nop                                                                             #  121   0x38627  1      
  nop                                                                             #  122   0x38628  1      
  callq .__cxa_guard_release                                                      #  123   0x38629  5      
  jmpq .L_38700                                                                   #  124   0x3862e  5      
  nop                                                                             #  125   0x38633  1      
  nop                                                                             #  126   0x38634  1      
.L_387a0:                                                                         #        0x38635  0      
  movl $0x10030d30, %edi                                                          #  127   0x38635  5      
  movl %eax, %ebx                                                                 #  128   0x3863a  2      
  nop                                                                             #  129   0x3863c  1      
  nop                                                                             #  130   0x3863d  1      
  callq .__cxa_guard_abort                                                        #  131   0x3863e  5      
.L_387c0:                                                                         #        0x38643  0      
  movl %r12d, %edi                                                                #  132   0x38643  3      
  nop                                                                             #  133   0x38646  1      
  nop                                                                             #  134   0x38647  1      
  callq ._ZN2pp10InputEventD2Ev                                                   #  135   0x38648  5      
  movl %ebx, %edi                                                                 #  136   0x3864d  2      
  nop                                                                             #  137   0x3864f  1      
  nop                                                                             #  138   0x38650  1      
  callq ._Unwind_Resume                                                           #  139   0x38651  5      
  movl %eax, %ebx                                                                 #  140   0x38656  2      
  jmpq .L_387c0                                                                   #  141   0x38658  5      
  nop                                                                             #  142   0x3865d  1      
  nop                                                                             #  143   0x3865e  1      
  jmpq .L_387a0                                                                   #  144   0x3865f  5      
  nop                                                                             #  145   0x38664  1      
  nop                                                                             #  146   0x38665  1      
  nop                                                                             #  147   0x38666  1      
                                                                                                           
.size _ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE, .-_ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE

