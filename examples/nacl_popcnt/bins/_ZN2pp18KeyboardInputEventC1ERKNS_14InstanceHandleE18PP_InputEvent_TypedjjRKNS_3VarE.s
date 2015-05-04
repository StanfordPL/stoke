  .text
  .globl _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE
  .type _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE, @function

#! file-offset 0x38fe0
#! rip-offset  0x38fe0
#! capacity    1280 bytes

# Text                                                                                  #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE:  #        0x38fe0  0      
  movq %rbx, -0x20(%rsp)                                                                #  1     0x38fe0  5      
  movl %edi, %ebx                                                                       #  2     0x38fe5  2      
  movq %r12, -0x18(%rsp)                                                                #  3     0x38fe7  5      
  movq %r13, -0x10(%rsp)                                                                #  4     0x38fec  5      
  movq %r14, -0x8(%rsp)                                                                 #  5     0x38ff1  5      
  movl %ebx, %edi                                                                       #  6     0x38ff6  2      
  nop                                                                                   #  7     0x38ff8  1      
  subl $0xb8, %esp                                                                      #  8     0x38ff9  3      
  addq %r15, %rsp                                                                       #  9     0x38ffc  3      
  movl %r8d, %r14d                                                                      #  10    0x38fff  3      
  movl %esi, %r13d                                                                      #  11    0x39002  3      
  movl %edx, 0x24(%rsp)                                                                 #  12    0x39005  4      
  movsd %xmm0, 0x28(%rsp)                                                               #  13    0x39009  6      
  movl %ecx, 0x34(%rsp)                                                                 #  14    0x3900f  4      
  movl %r9d, %r12d                                                                      #  15    0x39013  3      
  nop                                                                                   #  16    0x39016  1      
  nop                                                                                   #  17    0x39017  1      
  callq ._ZN2pp10InputEventC2Ev                                                         #  18    0x39018  5      
  movl %ebx, %ebx                                                                       #  19    0x3901d  2      
  movl $0x100207c8, (%r15,%rbx,1)                                                       #  20    0x3901f  8      
  xchgw %ax, %ax                                                                        #  21    0x39027  3      
  nop                                                                                   #  22    0x3902a  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v        #  23    0x3902b  5      
  testl %eax, %eax                                                                      #  24    0x39030  2      
  je .L_391c0                                                                           #  25    0x39032  6      
  cmpb $0x0, 0xfff7cf1(%rip)                                                            #  26    0x39038  7      
  je .L_392a0                                                                           #  27    0x3903f  6      
  nop                                                                                   #  28    0x39045  1      
.L_39080:                                                                               #        0x39046  0      
  movl 0xfff7cec(%rip), %eax                                                            #  29    0x39046  6      
  movl %eax, %eax                                                                       #  30    0x3904c  2      
  movl (%r15,%rax,1), %eax                                                              #  31    0x3904e  4      
  movq %rax, 0x38(%rsp)                                                                 #  32    0x39052  5      
  leal 0x40(%rsp), %eax                                                                 #  33    0x39057  4      
  movl %eax, %edi                                                                       #  34    0x3905b  2      
  movq %rax, 0x18(%rsp)                                                                 #  35    0x3905d  5      
  nop                                                                                   #  36    0x39062  1      
  nop                                                                                   #  37    0x39063  1      
  nop                                                                                   #  38    0x39064  1      
  callq ._ZN2pp3VarC1Ev                                                                 #  39    0x39065  5      
  movq 0x48(%rsp), %rdx                                                                 #  40    0x3906a  5      
  movq 0x50(%rsp), %rax                                                                 #  41    0x3906f  5      
  movl %r14d, %ecx                                                                      #  42    0x39074  3      
  movsd 0x28(%rsp), %xmm0                                                               #  43    0x39077  6      
  movl 0x24(%rsp), %esi                                                                 #  44    0x3907d  4      
  movl %r13d, %r13d                                                                     #  45    0x39081  3      
  movl (%r15,%r13,1), %edi                                                              #  46    0x39084  4      
  xchgw %ax, %ax                                                                        #  47    0x39088  3      
  movq 0x38(%rsp), %r10                                                                 #  48    0x3908b  5      
  movq %rdx, 0x80(%rsp)                                                                 #  49    0x39090  8      
  movq %rax, 0x88(%rsp)                                                                 #  50    0x39098  8      
  movl %r12d, %r12d                                                                     #  51    0x390a0  3      
  movq 0x8(%r15,%r12,1), %r8                                                            #  52    0x390a3  5      
  nop                                                                                   #  53    0x390a8  1      
  movq %r8, 0x70(%rsp)                                                                  #  54    0x390a9  5      
  movl %r12d, %r12d                                                                     #  55    0x390ae  3      
  movq 0x10(%r15,%r12,1), %r9                                                           #  56    0x390b1  5      
  movq %rdx, (%rsp)                                                                     #  57    0x390b6  4      
  movq %rax, 0x8(%rsp)                                                                  #  58    0x390ba  5      
  movl 0x34(%rsp), %edx                                                                 #  59    0x390bf  4      
  movq %r9, 0x78(%rsp)                                                                  #  60    0x390c3  5      
  nop                                                                                   #  61    0x390c8  1      
  nop                                                                                   #  62    0x390c9  1      
  nop                                                                                   #  63    0x390ca  1      
  andl $0xffffffe0, %r10d                                                               #  64    0x390cb  7      
  addq %r15, %r10                                                                       #  65    0x390d2  3      
  callq %r10                                                                            #  66    0x390d5  3      
  movl %eax, %esi                                                                       #  67    0x390d8  2      
  movl %ebx, %edi                                                                       #  68    0x390da  2      
  nop                                                                                   #  69    0x390dc  1      
  nop                                                                                   #  70    0x390dd  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                      #  71    0x390de  5      
  movl 0x18(%rsp), %edi                                                                 #  72    0x390e3  4      
  nop                                                                                   #  73    0x390e7  1      
  nop                                                                                   #  74    0x390e8  1      
  callq ._ZN2pp3VarD1Ev                                                                 #  75    0x390e9  5      
.L_39180:                                                                               #        0x390ee  0      
  movq 0x98(%rsp), %rbx                                                                 #  76    0x390ee  8      
  movq 0xa0(%rsp), %r12                                                                 #  77    0x390f6  8      
  movq 0xa8(%rsp), %r13                                                                 #  78    0x390fe  8      
  movq 0xb0(%rsp), %r14                                                                 #  79    0x39106  8      
  addl $0xb8, %esp                                                                      #  80    0x3910e  3      
  addq %r15, %rsp                                                                       #  81    0x39111  3      
  popq %r11                                                                             #  82    0x39114  3      
  andl $0xffffffe0, %r11d                                                               #  83    0x39117  7      
  addq %r15, %r11                                                                       #  84    0x3911e  3      
  jmpq %r11                                                                             #  85    0x39121  3      
  nop                                                                                   #  86    0x39124  1      
.L_391c0:                                                                               #        0x39125  0      
  cmpb $0x0, 0xfff7c14(%rip)                                                            #  87    0x39125  7      
  je .L_39340                                                                           #  88    0x3912c  6      
  nop                                                                                   #  89    0x39132  1      
  nop                                                                                   #  90    0x39133  1      
.L_391e0:                                                                               #        0x39134  0      
  movl 0xfff7c0e(%rip), %eax                                                            #  91    0x39134  6      
  testl %eax, %eax                                                                      #  92    0x3913a  2      
  je .L_39180                                                                           #  93    0x3913c  6      
  xchgw %ax, %ax                                                                        #  94    0x39142  3      
  nop                                                                                   #  95    0x39145  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v        #  96    0x39146  5      
  movl %r12d, %r12d                                                                     #  97    0x3914b  3      
  movq 0x8(%r15,%r12,1), %r8                                                            #  98    0x3914e  5      
  movl %eax, %eax                                                                       #  99    0x39153  2      
  movl %r14d, %ecx                                                                      #  100   0x39155  3      
  movl %eax, %eax                                                                       #  101   0x39158  2      
  movl (%r15,%rax,1), %eax                                                              #  102   0x3915a  4      
  movl 0x34(%rsp), %edx                                                                 #  103   0x3915e  4      
  movsd 0x28(%rsp), %xmm0                                                               #  104   0x39162  6      
  nop                                                                                   #  105   0x39168  1      
  movl 0x24(%rsp), %esi                                                                 #  106   0x39169  4      
  movq %r8, 0x60(%rsp)                                                                  #  107   0x3916d  5      
  movl %r12d, %r12d                                                                     #  108   0x39172  3      
  movq 0x10(%r15,%r12,1), %r9                                                           #  109   0x39175  5      
  movl %r13d, %r13d                                                                     #  110   0x3917a  3      
  movl (%r15,%r13,1), %edi                                                              #  111   0x3917d  4      
  movq %r9, 0x68(%rsp)                                                                  #  112   0x39181  5      
  nop                                                                                   #  113   0x39186  1      
  nop                                                                                   #  114   0x39187  1      
  nop                                                                                   #  115   0x39188  1      
  andl $0xffffffe0, %eax                                                                #  116   0x39189  5      
  addq %r15, %rax                                                                       #  117   0x3918e  3      
  callq %rax                                                                            #  118   0x39191  2      
  movl %eax, %esi                                                                       #  119   0x39193  2      
  movl %ebx, %edi                                                                       #  120   0x39195  2      
  nop                                                                                   #  121   0x39197  1      
  nop                                                                                   #  122   0x39198  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                      #  123   0x39199  5      
  jmpq .L_39180                                                                         #  124   0x3919e  5      
  nop                                                                                   #  125   0x391a3  1      
  nop                                                                                   #  126   0x391a4  1      
.L_392a0:                                                                               #        0x391a5  0      
  movl $0x10030d30, %edi                                                                #  127   0x391a5  5      
  nop                                                                                   #  128   0x391aa  1      
  nop                                                                                   #  129   0x391ab  1      
  callq .__cxa_guard_acquire                                                            #  130   0x391ac  5      
  testl %eax, %eax                                                                      #  131   0x391b1  2      
  je .L_39080                                                                           #  132   0x391b3  6      
  nop                                                                                   #  133   0x391b9  1      
  nop                                                                                   #  134   0x391ba  1      
  callq ._ZN2pp6Module3GetEv                                                            #  135   0x391bb  5      
  movl %eax, %edi                                                                       #  136   0x391c0  2      
  movl $0x1002068a, %esi                                                                #  137   0x391c2  5      
  nop                                                                                   #  138   0x391c7  1      
  nop                                                                                   #  139   0x391c8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  140   0x391c9  5      
  movl $0x10030d30, %edi                                                                #  141   0x391ce  5      
  movl %eax, 0xfff7b5f(%rip)                                                            #  142   0x391d3  6      
  nop                                                                                   #  143   0x391d9  1      
  nop                                                                                   #  144   0x391da  1      
  callq .__cxa_guard_release                                                            #  145   0x391db  5      
  jmpq .L_39080                                                                         #  146   0x391e0  5      
  nop                                                                                   #  147   0x391e5  1      
  nop                                                                                   #  148   0x391e6  1      
.L_39340:                                                                               #        0x391e7  0      
  movl $0x10030d40, %edi                                                                #  149   0x391e7  5      
  nop                                                                                   #  150   0x391ec  1      
  nop                                                                                   #  151   0x391ed  1      
  callq .__cxa_guard_acquire                                                            #  152   0x391ee  5      
  testl %eax, %eax                                                                      #  153   0x391f3  2      
  je .L_391e0                                                                           #  154   0x391f5  6      
  nop                                                                                   #  155   0x391fb  1      
  nop                                                                                   #  156   0x391fc  1      
  callq ._ZN2pp6Module3GetEv                                                            #  157   0x391fd  5      
  movl %eax, %edi                                                                       #  158   0x39202  2      
  movl $0x100206a5, %esi                                                                #  159   0x39204  5      
  nop                                                                                   #  160   0x39209  1      
  nop                                                                                   #  161   0x3920a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  162   0x3920b  5      
  movl $0x10030d40, %edi                                                                #  163   0x39210  5      
  movl %eax, 0xfff7b2d(%rip)                                                            #  164   0x39215  6      
  nop                                                                                   #  165   0x3921b  1      
  nop                                                                                   #  166   0x3921c  1      
  callq .__cxa_guard_release                                                            #  167   0x3921d  5      
  jmpq .L_391e0                                                                         #  168   0x39222  5      
  nop                                                                                   #  169   0x39227  1      
  nop                                                                                   #  170   0x39228  1      
  movl $0x10030d30, %edi                                                                #  171   0x39229  5      
  movl %eax, %r12d                                                                      #  172   0x3922e  3      
  nop                                                                                   #  173   0x39231  1      
  nop                                                                                   #  174   0x39232  1      
  callq .__cxa_guard_abort                                                              #  175   0x39233  5      
.L_39400:                                                                               #        0x39238  0      
  movl %ebx, %edi                                                                       #  176   0x39238  2      
  nop                                                                                   #  177   0x3923a  1      
  nop                                                                                   #  178   0x3923b  1      
  callq ._ZN2pp10InputEventD2Ev                                                         #  179   0x3923c  5      
  movl %r12d, %edi                                                                      #  180   0x39241  3      
  nop                                                                                   #  181   0x39244  1      
  nop                                                                                   #  182   0x39245  1      
  callq ._Unwind_Resume                                                                 #  183   0x39246  5      
  movl 0x18(%rsp), %edi                                                                 #  184   0x3924b  4      
  movl %eax, %r12d                                                                      #  185   0x3924f  3      
  nop                                                                                   #  186   0x39252  1      
  nop                                                                                   #  187   0x39253  1      
  callq ._ZN2pp3VarD1Ev                                                                 #  188   0x39254  5      
  jmpq .L_39400                                                                         #  189   0x39259  5      
  nop                                                                                   #  190   0x3925e  1      
  nop                                                                                   #  191   0x3925f  1      
  movl %eax, %r12d                                                                      #  192   0x39260  3      
  jmpq .L_39400                                                                         #  193   0x39263  5      
  nop                                                                                   #  194   0x39268  1      
  nop                                                                                   #  195   0x39269  1      
  movl $0x10030d40, %edi                                                                #  196   0x3926a  5      
  movl %eax, %r12d                                                                      #  197   0x3926f  3      
  nop                                                                                   #  198   0x39272  1      
  nop                                                                                   #  199   0x39273  1      
  callq .__cxa_guard_abort                                                              #  200   0x39274  5      
  jmpq .L_39400                                                                         #  201   0x39279  5      
  nop                                                                                   #  202   0x3927e  1      
  nop                                                                                   #  203   0x3927f  1      
  nop                                                                                   #  204   0x39280  1      
                                                                                                                 
.size _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE, .-_ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE

