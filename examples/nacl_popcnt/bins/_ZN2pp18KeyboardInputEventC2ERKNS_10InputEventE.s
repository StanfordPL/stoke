  .text
  .globl _ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE
  .type _ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x38540
#! rip-offset  0x38540
#! capacity    928 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE:                                 #        0x38540  0      
  movq %r12, -0x10(%rsp)                                                          #  1     0x38540  5      
  movl %edi, %r12d                                                                #  2     0x38545  3      
  movq %rbx, -0x18(%rsp)                                                          #  3     0x38548  5      
  movq %r13, -0x8(%rsp)                                                           #  4     0x3854d  5      
  movl %r12d, %edi                                                                #  5     0x38552  3      
  subl $0x18, %esp                                                                #  6     0x38555  3      
  addq %r15, %rsp                                                                 #  7     0x38558  3      
  movl %esi, %ebx                                                                 #  8     0x3855b  2      
  nop                                                                             #  9     0x3855d  1      
  nop                                                                             #  10    0x3855e  1      
  nop                                                                             #  11    0x3855f  1      
  callq ._ZN2pp10InputEventC2Ev                                                   #  12    0x38560  5      
  movl %r12d, %r12d                                                               #  13    0x38565  3      
  movl $0x100207c8, (%r15,%r12,1)                                                 #  14    0x38568  8      
  cmpb $0x0, 0xfff87b9(%rip)                                                      #  15    0x38570  7      
  je .L_386c0                                                                     #  16    0x38577  6      
  nop                                                                             #  17    0x3857d  1      
.L_385a0:                                                                         #        0x3857e  0      
  movl 0xfff87b4(%rip), %eax                                                      #  18    0x3857e  6      
  testq %rax, %rax                                                                #  19    0x38584  3      
  je .L_38660                                                                     #  20    0x38587  6      
  cmpb $0x0, 0xfff879c(%rip)                                                      #  21    0x3858d  7      
  je .L_38760                                                                     #  22    0x38594  6      
  nop                                                                             #  23    0x3859a  1      
.L_385c0:                                                                         #        0x3859b  0      
  movl %eax, %eax                                                                 #  24    0x3859b  2      
  movl 0x4(%r15,%rax,1), %eax                                                     #  25    0x3859d  5      
  movl %ebx, %ebx                                                                 #  26    0x385a2  2      
  movl 0x4(%r15,%rbx,1), %edi                                                     #  27    0x385a4  5      
  nop                                                                             #  28    0x385a9  1      
  andl $0xffffffe0, %eax                                                          #  29    0x385aa  5      
  addq %r15, %rax                                                                 #  30    0x385af  3      
  callq %rax                                                                      #  31    0x385b2  2      
  testl %eax, %eax                                                                #  32    0x385b4  2      
  je .L_38640                                                                     #  33    0x385b6  6      
  movl %ebx, %ebx                                                                 #  34    0x385bc  2      
  movl 0x4(%r15,%rbx,1), %r13d                                                    #  35    0x385be  5      
  nop                                                                             #  36    0x385c3  1      
  nop                                                                             #  37    0x385c4  1      
  callq ._ZN2pp6Module3GetEv                                                      #  38    0x385c5  5      
  movl %eax, %eax                                                                 #  39    0x385ca  2      
  movl %r13d, %edi                                                                #  40    0x385cc  3      
  movl %eax, %eax                                                                 #  41    0x385cf  2      
  movl 0x24(%r15,%rax,1), %eax                                                    #  42    0x385d1  5      
  movl %eax, %eax                                                                 #  43    0x385d6  2      
  movl (%r15,%rax,1), %eax                                                        #  44    0x385d8  4      
  movl %eax, %eax                                                                 #  45    0x385dc  2      
  movl (%r15,%rax,1), %eax                                                        #  46    0x385de  4      
  andl $0xffffffe0, %eax                                                          #  47    0x385e2  5      
  addq %r15, %rax                                                                 #  48    0x385e7  3      
  callq %rax                                                                      #  49    0x385ea  2      
  movl %ebx, %ebx                                                                 #  50    0x385ec  2      
  movl 0x4(%r15,%rbx,1), %esi                                                     #  51    0x385ee  5      
  movl %r12d, %edi                                                                #  52    0x385f3  3      
  xchgw %ax, %ax                                                                  #  53    0x385f6  3      
  nop                                                                             #  54    0x385f9  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                #  55    0x385fa  5      
.L_38640:                                                                         #        0x385ff  0      
  movq (%rsp), %rbx                                                               #  56    0x385ff  4      
  movq 0x8(%rsp), %r12                                                            #  57    0x38603  5      
  movq 0x10(%rsp), %r13                                                           #  58    0x38608  5      
  addl $0x18, %esp                                                                #  59    0x3860d  3      
  addq %r15, %rsp                                                                 #  60    0x38610  3      
  popq %r11                                                                       #  61    0x38613  3      
  andl $0xffffffe0, %r11d                                                         #  62    0x38616  7      
  addq %r15, %r11                                                                 #  63    0x3861d  3      
  jmpq %r11                                                                       #  64    0x38620  3      
.L_38660:                                                                         #        0x38623  0      
  nop                                                                             #  65    0x38623  1      
  nop                                                                             #  66    0x38624  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  67    0x38625  5      
  testl %eax, %eax                                                                #  68    0x3862a  2      
  je .L_38640                                                                     #  69    0x3862c  6      
  nop                                                                             #  70    0x38632  1      
  nop                                                                             #  71    0x38633  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  72    0x38634  5      
  movl %eax, %eax                                                                 #  73    0x38639  2      
  jmpq .L_385c0                                                                   #  74    0x3863b  5      
  nop                                                                             #  75    0x38640  1      
  nop                                                                             #  76    0x38641  1      
.L_386c0:                                                                         #        0x38642  0      
  movl $0x10030d30, %edi                                                          #  77    0x38642  5      
  nop                                                                             #  78    0x38647  1      
  nop                                                                             #  79    0x38648  1      
  callq .__cxa_guard_acquire                                                      #  80    0x38649  5      
  testl %eax, %eax                                                                #  81    0x3864e  2      
  je .L_385a0                                                                     #  82    0x38650  6      
  nop                                                                             #  83    0x38656  1      
  nop                                                                             #  84    0x38657  1      
  callq ._ZN2pp6Module3GetEv                                                      #  85    0x38658  5      
  movl %eax, %edi                                                                 #  86    0x3865d  2      
  movl $0x1002068a, %esi                                                          #  87    0x3865f  5      
  nop                                                                             #  88    0x38664  1      
  nop                                                                             #  89    0x38665  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  90    0x38666  5      
  movl $0x10030d30, %edi                                                          #  91    0x3866b  5      
  movl %eax, 0xfff86c2(%rip)                                                      #  92    0x38670  6      
  nop                                                                             #  93    0x38676  1      
  nop                                                                             #  94    0x38677  1      
  callq .__cxa_guard_release                                                      #  95    0x38678  5      
  jmpq .L_385a0                                                                   #  96    0x3867d  5      
  nop                                                                             #  97    0x38682  1      
  nop                                                                             #  98    0x38683  1      
.L_38760:                                                                         #        0x38684  0      
  movl $0x10030d30, %edi                                                          #  99    0x38684  5      
  nop                                                                             #  100   0x38689  1      
  nop                                                                             #  101   0x3868a  1      
  callq .__cxa_guard_acquire                                                      #  102   0x3868b  5      
  testl %eax, %eax                                                                #  103   0x38690  2      
  jne .L_387c0                                                                    #  104   0x38692  6      
  nop                                                                             #  105   0x38698  1      
  nop                                                                             #  106   0x38699  1      
.L_387a0:                                                                         #        0x3869a  0      
  movl 0xfff8698(%rip), %eax                                                      #  107   0x3869a  6      
  jmpq .L_385c0                                                                   #  108   0x386a0  5      
  nop                                                                             #  109   0x386a5  1      
  nop                                                                             #  110   0x386a6  1      
.L_387c0:                                                                         #        0x386a7  0      
  nop                                                                             #  111   0x386a7  1      
  nop                                                                             #  112   0x386a8  1      
  callq ._ZN2pp6Module3GetEv                                                      #  113   0x386a9  5      
  movl %eax, %edi                                                                 #  114   0x386ae  2      
  movl $0x1002068a, %esi                                                          #  115   0x386b0  5      
  nop                                                                             #  116   0x386b5  1      
  nop                                                                             #  117   0x386b6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  118   0x386b7  5      
  movl $0x10030d30, %edi                                                          #  119   0x386bc  5      
  movl %eax, 0xfff8671(%rip)                                                      #  120   0x386c1  6      
  nop                                                                             #  121   0x386c7  1      
  nop                                                                             #  122   0x386c8  1      
  callq .__cxa_guard_release                                                      #  123   0x386c9  5      
  jmpq .L_387a0                                                                   #  124   0x386ce  5      
  nop                                                                             #  125   0x386d3  1      
  nop                                                                             #  126   0x386d4  1      
.L_38840:                                                                         #        0x386d5  0      
  movl $0x10030d30, %edi                                                          #  127   0x386d5  5      
  movl %eax, %ebx                                                                 #  128   0x386da  2      
  nop                                                                             #  129   0x386dc  1      
  nop                                                                             #  130   0x386dd  1      
  callq .__cxa_guard_abort                                                        #  131   0x386de  5      
.L_38860:                                                                         #        0x386e3  0      
  movl %r12d, %edi                                                                #  132   0x386e3  3      
  nop                                                                             #  133   0x386e6  1      
  nop                                                                             #  134   0x386e7  1      
  callq ._ZN2pp10InputEventD2Ev                                                   #  135   0x386e8  5      
  movl %ebx, %edi                                                                 #  136   0x386ed  2      
  nop                                                                             #  137   0x386ef  1      
  nop                                                                             #  138   0x386f0  1      
  callq ._Unwind_Resume                                                           #  139   0x386f1  5      
  movl %eax, %ebx                                                                 #  140   0x386f6  2      
  jmpq .L_38860                                                                   #  141   0x386f8  5      
  nop                                                                             #  142   0x386fd  1      
  nop                                                                             #  143   0x386fe  1      
  jmpq .L_38840                                                                   #  144   0x386ff  5      
  nop                                                                             #  145   0x38704  1      
  nop                                                                             #  146   0x38705  1      
  nop                                                                             #  147   0x38706  1      
                                                                                                           
.size _ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE, .-_ZN2pp18KeyboardInputEventC2ERKNS_10InputEventE

