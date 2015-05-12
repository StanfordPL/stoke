  .text
  .globl _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE
  .type _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE, @function

#! file-offset 0x38f60
#! rip-offset  0x38f60
#! capacity    1280 bytes

# Text                                                                                  #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE:  #        0x38f60  0      
  movq %rbx, -0x20(%rsp)                                                                #  1     0x38f60  5      
  movl %edi, %ebx                                                                       #  2     0x38f65  2      
  movq %r12, -0x18(%rsp)                                                                #  3     0x38f67  5      
  movq %r13, -0x10(%rsp)                                                                #  4     0x38f6c  5      
  movq %r14, -0x8(%rsp)                                                                 #  5     0x38f71  5      
  movl %ebx, %edi                                                                       #  6     0x38f76  2      
  nop                                                                                   #  7     0x38f78  1      
  subl $0xb8, %esp                                                                      #  8     0x38f79  3      
  addq %r15, %rsp                                                                       #  9     0x38f7c  3      
  movl %r8d, %r14d                                                                      #  10    0x38f7f  3      
  movl %esi, %r13d                                                                      #  11    0x38f82  3      
  movl %edx, 0x24(%rsp)                                                                 #  12    0x38f85  4      
  movsd %xmm0, 0x28(%rsp)                                                               #  13    0x38f89  6      
  movl %ecx, 0x34(%rsp)                                                                 #  14    0x38f8f  4      
  movl %r9d, %r12d                                                                      #  15    0x38f93  3      
  nop                                                                                   #  16    0x38f96  1      
  nop                                                                                   #  17    0x38f97  1      
  callq ._ZN2pp10InputEventC2Ev                                                         #  18    0x38f98  5      
  movl %ebx, %ebx                                                                       #  19    0x38f9d  2      
  movl $0x100207c8, (%r15,%rbx,1)                                                       #  20    0x38f9f  8      
  xchgw %ax, %ax                                                                        #  21    0x38fa7  3      
  nop                                                                                   #  22    0x38faa  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v        #  23    0x38fab  5      
  testl %eax, %eax                                                                      #  24    0x38fb0  2      
  je .L_39140                                                                           #  25    0x38fb2  6      
  cmpb $0x0, 0xfff7d71(%rip)                                                            #  26    0x38fb8  7      
  je .L_39220                                                                           #  27    0x38fbf  6      
  nop                                                                                   #  28    0x38fc5  1      
.L_39000:                                                                               #        0x38fc6  0      
  movl 0xfff7d6c(%rip), %eax                                                            #  29    0x38fc6  6      
  movl %eax, %eax                                                                       #  30    0x38fcc  2      
  movl (%r15,%rax,1), %eax                                                              #  31    0x38fce  4      
  movq %rax, 0x38(%rsp)                                                                 #  32    0x38fd2  5      
  leal 0x40(%rsp), %eax                                                                 #  33    0x38fd7  4      
  movl %eax, %edi                                                                       #  34    0x38fdb  2      
  movq %rax, 0x18(%rsp)                                                                 #  35    0x38fdd  5      
  nop                                                                                   #  36    0x38fe2  1      
  nop                                                                                   #  37    0x38fe3  1      
  nop                                                                                   #  38    0x38fe4  1      
  callq ._ZN2pp3VarC1Ev                                                                 #  39    0x38fe5  5      
  movq 0x48(%rsp), %rdx                                                                 #  40    0x38fea  5      
  movq 0x50(%rsp), %rax                                                                 #  41    0x38fef  5      
  movl %r14d, %ecx                                                                      #  42    0x38ff4  3      
  movsd 0x28(%rsp), %xmm0                                                               #  43    0x38ff7  6      
  movl 0x24(%rsp), %esi                                                                 #  44    0x38ffd  4      
  movl %r13d, %r13d                                                                     #  45    0x39001  3      
  movl (%r15,%r13,1), %edi                                                              #  46    0x39004  4      
  xchgw %ax, %ax                                                                        #  47    0x39008  3      
  movq 0x38(%rsp), %r10                                                                 #  48    0x3900b  5      
  movq %rdx, 0x80(%rsp)                                                                 #  49    0x39010  8      
  movq %rax, 0x88(%rsp)                                                                 #  50    0x39018  8      
  movl %r12d, %r12d                                                                     #  51    0x39020  3      
  movq 0x8(%r15,%r12,1), %r8                                                            #  52    0x39023  5      
  nop                                                                                   #  53    0x39028  1      
  movq %r8, 0x70(%rsp)                                                                  #  54    0x39029  5      
  movl %r12d, %r12d                                                                     #  55    0x3902e  3      
  movq 0x10(%r15,%r12,1), %r9                                                           #  56    0x39031  5      
  movq %rdx, (%rsp)                                                                     #  57    0x39036  4      
  movq %rax, 0x8(%rsp)                                                                  #  58    0x3903a  5      
  movl 0x34(%rsp), %edx                                                                 #  59    0x3903f  4      
  movq %r9, 0x78(%rsp)                                                                  #  60    0x39043  5      
  nop                                                                                   #  61    0x39048  1      
  nop                                                                                   #  62    0x39049  1      
  nop                                                                                   #  63    0x3904a  1      
  andl $0xffffffe0, %r10d                                                               #  64    0x3904b  7      
  addq %r15, %r10                                                                       #  65    0x39052  3      
  callq %r10                                                                            #  66    0x39055  3      
  movl %eax, %esi                                                                       #  67    0x39058  2      
  movl %ebx, %edi                                                                       #  68    0x3905a  2      
  nop                                                                                   #  69    0x3905c  1      
  nop                                                                                   #  70    0x3905d  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                      #  71    0x3905e  5      
  movl 0x18(%rsp), %edi                                                                 #  72    0x39063  4      
  nop                                                                                   #  73    0x39067  1      
  nop                                                                                   #  74    0x39068  1      
  callq ._ZN2pp3VarD1Ev                                                                 #  75    0x39069  5      
.L_39100:                                                                               #        0x3906e  0      
  movq 0x98(%rsp), %rbx                                                                 #  76    0x3906e  8      
  movq 0xa0(%rsp), %r12                                                                 #  77    0x39076  8      
  movq 0xa8(%rsp), %r13                                                                 #  78    0x3907e  8      
  movq 0xb0(%rsp), %r14                                                                 #  79    0x39086  8      
  addl $0xb8, %esp                                                                      #  80    0x3908e  3      
  addq %r15, %rsp                                                                       #  81    0x39091  3      
  popq %r11                                                                             #  82    0x39094  3      
  andl $0xffffffe0, %r11d                                                               #  83    0x39097  7      
  addq %r15, %r11                                                                       #  84    0x3909e  3      
  jmpq %r11                                                                             #  85    0x390a1  3      
  nop                                                                                   #  86    0x390a4  1      
.L_39140:                                                                               #        0x390a5  0      
  cmpb $0x0, 0xfff7c94(%rip)                                                            #  87    0x390a5  7      
  je .L_392c0                                                                           #  88    0x390ac  6      
  nop                                                                                   #  89    0x390b2  1      
  nop                                                                                   #  90    0x390b3  1      
.L_39160:                                                                               #        0x390b4  0      
  movl 0xfff7c8e(%rip), %eax                                                            #  91    0x390b4  6      
  testl %eax, %eax                                                                      #  92    0x390ba  2      
  je .L_39100                                                                           #  93    0x390bc  6      
  xchgw %ax, %ax                                                                        #  94    0x390c2  3      
  nop                                                                                   #  95    0x390c5  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v        #  96    0x390c6  5      
  movl %r12d, %r12d                                                                     #  97    0x390cb  3      
  movq 0x8(%r15,%r12,1), %r8                                                            #  98    0x390ce  5      
  movl %eax, %eax                                                                       #  99    0x390d3  2      
  movl %r14d, %ecx                                                                      #  100   0x390d5  3      
  movl %eax, %eax                                                                       #  101   0x390d8  2      
  movl (%r15,%rax,1), %eax                                                              #  102   0x390da  4      
  movl 0x34(%rsp), %edx                                                                 #  103   0x390de  4      
  movsd 0x28(%rsp), %xmm0                                                               #  104   0x390e2  6      
  nop                                                                                   #  105   0x390e8  1      
  movl 0x24(%rsp), %esi                                                                 #  106   0x390e9  4      
  movq %r8, 0x60(%rsp)                                                                  #  107   0x390ed  5      
  movl %r12d, %r12d                                                                     #  108   0x390f2  3      
  movq 0x10(%r15,%r12,1), %r9                                                           #  109   0x390f5  5      
  movl %r13d, %r13d                                                                     #  110   0x390fa  3      
  movl (%r15,%r13,1), %edi                                                              #  111   0x390fd  4      
  movq %r9, 0x68(%rsp)                                                                  #  112   0x39101  5      
  nop                                                                                   #  113   0x39106  1      
  nop                                                                                   #  114   0x39107  1      
  nop                                                                                   #  115   0x39108  1      
  andl $0xffffffe0, %eax                                                                #  116   0x39109  5      
  addq %r15, %rax                                                                       #  117   0x3910e  3      
  callq %rax                                                                            #  118   0x39111  2      
  movl %eax, %esi                                                                       #  119   0x39113  2      
  movl %ebx, %edi                                                                       #  120   0x39115  2      
  nop                                                                                   #  121   0x39117  1      
  nop                                                                                   #  122   0x39118  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                      #  123   0x39119  5      
  jmpq .L_39100                                                                         #  124   0x3911e  5      
  nop                                                                                   #  125   0x39123  1      
  nop                                                                                   #  126   0x39124  1      
.L_39220:                                                                               #        0x39125  0      
  movl $0x10030d30, %edi                                                                #  127   0x39125  5      
  nop                                                                                   #  128   0x3912a  1      
  nop                                                                                   #  129   0x3912b  1      
  callq .__cxa_guard_acquire                                                            #  130   0x3912c  5      
  testl %eax, %eax                                                                      #  131   0x39131  2      
  je .L_39000                                                                           #  132   0x39133  6      
  nop                                                                                   #  133   0x39139  1      
  nop                                                                                   #  134   0x3913a  1      
  callq ._ZN2pp6Module3GetEv                                                            #  135   0x3913b  5      
  movl %eax, %edi                                                                       #  136   0x39140  2      
  movl $0x1002068a, %esi                                                                #  137   0x39142  5      
  nop                                                                                   #  138   0x39147  1      
  nop                                                                                   #  139   0x39148  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  140   0x39149  5      
  movl $0x10030d30, %edi                                                                #  141   0x3914e  5      
  movl %eax, 0xfff7bdf(%rip)                                                            #  142   0x39153  6      
  nop                                                                                   #  143   0x39159  1      
  nop                                                                                   #  144   0x3915a  1      
  callq .__cxa_guard_release                                                            #  145   0x3915b  5      
  jmpq .L_39000                                                                         #  146   0x39160  5      
  nop                                                                                   #  147   0x39165  1      
  nop                                                                                   #  148   0x39166  1      
.L_392c0:                                                                               #        0x39167  0      
  movl $0x10030d40, %edi                                                                #  149   0x39167  5      
  nop                                                                                   #  150   0x3916c  1      
  nop                                                                                   #  151   0x3916d  1      
  callq .__cxa_guard_acquire                                                            #  152   0x3916e  5      
  testl %eax, %eax                                                                      #  153   0x39173  2      
  je .L_39160                                                                           #  154   0x39175  6      
  nop                                                                                   #  155   0x3917b  1      
  nop                                                                                   #  156   0x3917c  1      
  callq ._ZN2pp6Module3GetEv                                                            #  157   0x3917d  5      
  movl %eax, %edi                                                                       #  158   0x39182  2      
  movl $0x100206a5, %esi                                                                #  159   0x39184  5      
  nop                                                                                   #  160   0x39189  1      
  nop                                                                                   #  161   0x3918a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  162   0x3918b  5      
  movl $0x10030d40, %edi                                                                #  163   0x39190  5      
  movl %eax, 0xfff7bad(%rip)                                                            #  164   0x39195  6      
  nop                                                                                   #  165   0x3919b  1      
  nop                                                                                   #  166   0x3919c  1      
  callq .__cxa_guard_release                                                            #  167   0x3919d  5      
  jmpq .L_39160                                                                         #  168   0x391a2  5      
  nop                                                                                   #  169   0x391a7  1      
  nop                                                                                   #  170   0x391a8  1      
  movl $0x10030d30, %edi                                                                #  171   0x391a9  5      
  movl %eax, %r12d                                                                      #  172   0x391ae  3      
  nop                                                                                   #  173   0x391b1  1      
  nop                                                                                   #  174   0x391b2  1      
  callq .__cxa_guard_abort                                                              #  175   0x391b3  5      
.L_39380:                                                                               #        0x391b8  0      
  movl %ebx, %edi                                                                       #  176   0x391b8  2      
  nop                                                                                   #  177   0x391ba  1      
  nop                                                                                   #  178   0x391bb  1      
  callq ._ZN2pp10InputEventD2Ev                                                         #  179   0x391bc  5      
  movl %r12d, %edi                                                                      #  180   0x391c1  3      
  nop                                                                                   #  181   0x391c4  1      
  nop                                                                                   #  182   0x391c5  1      
  callq ._Unwind_Resume                                                                 #  183   0x391c6  5      
  movl 0x18(%rsp), %edi                                                                 #  184   0x391cb  4      
  movl %eax, %r12d                                                                      #  185   0x391cf  3      
  nop                                                                                   #  186   0x391d2  1      
  nop                                                                                   #  187   0x391d3  1      
  callq ._ZN2pp3VarD1Ev                                                                 #  188   0x391d4  5      
  jmpq .L_39380                                                                         #  189   0x391d9  5      
  nop                                                                                   #  190   0x391de  1      
  nop                                                                                   #  191   0x391df  1      
  movl %eax, %r12d                                                                      #  192   0x391e0  3      
  jmpq .L_39380                                                                         #  193   0x391e3  5      
  nop                                                                                   #  194   0x391e8  1      
  nop                                                                                   #  195   0x391e9  1      
  movl $0x10030d40, %edi                                                                #  196   0x391ea  5      
  movl %eax, %r12d                                                                      #  197   0x391ef  3      
  nop                                                                                   #  198   0x391f2  1      
  nop                                                                                   #  199   0x391f3  1      
  callq .__cxa_guard_abort                                                              #  200   0x391f4  5      
  jmpq .L_39380                                                                         #  201   0x391f9  5      
  nop                                                                                   #  202   0x391fe  1      
  nop                                                                                   #  203   0x391ff  1      
  nop                                                                                   #  204   0x39200  1      
                                                                                                                 
.size _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE, .-_ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE

