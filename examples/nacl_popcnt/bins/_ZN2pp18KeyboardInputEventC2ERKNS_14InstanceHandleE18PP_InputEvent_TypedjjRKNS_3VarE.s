  .text
  .globl _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE
  .type _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE, @function

#! file-offset 0x3ed60
#! rip-offset  0x3ed60
#! capacity    1504 bytes

# Text                                                                                  #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE:  #        0x3ed60  0      
  movq %rbx, -0x20(%rsp)                                                                #  1     0x3ed60  5      
  movl %edi, %ebx                                                                       #  2     0x3ed65  2      
  movq %r12, -0x18(%rsp)                                                                #  3     0x3ed67  5      
  movq %r13, -0x10(%rsp)                                                                #  4     0x3ed6c  5      
  movq %r14, -0x8(%rsp)                                                                 #  5     0x3ed71  5      
  movl %ebx, %edi                                                                       #  6     0x3ed76  2      
  nop                                                                                   #  7     0x3ed78  1      
  subl $0xb8, %esp                                                                      #  8     0x3ed79  3      
  addq %r15, %rsp                                                                       #  9     0x3ed7c  3      
  movl %r8d, %r14d                                                                      #  10    0x3ed7f  3      
  movl %esi, %r13d                                                                      #  11    0x3ed82  3      
  movl %edx, 0x24(%rsp)                                                                 #  12    0x3ed85  4      
  movsd %xmm0, 0x28(%rsp)                                                               #  13    0x3ed89  6      
  movl %ecx, 0x34(%rsp)                                                                 #  14    0x3ed8f  4      
  movl %r9d, %r12d                                                                      #  15    0x3ed93  3      
  nop                                                                                   #  16    0x3ed96  1      
  nop                                                                                   #  17    0x3ed97  1      
  callq ._ZN2pp10InputEventC2Ev                                                         #  18    0x3ed98  5      
  movl %ebx, %ebx                                                                       #  19    0x3ed9d  2      
  movl $0x100207c8, (%r15,%rbx,1)                                                       #  20    0x3ed9f  8      
  cmpb $0x0, 0xfff1f82(%rip)                                                            #  21    0x3eda7  7      
  je .L_3f000                                                                           #  22    0x3edae  6      
  nop                                                                                   #  23    0x3edb4  1      
.L_3ede0:                                                                               #        0x3edb5  0      
  movl 0xfff1f7d(%rip), %eax                                                            #  24    0x3edb5  6      
  testq %rax, %rax                                                                      #  25    0x3edbb  3      
  je .L_3ef20                                                                           #  26    0x3edbe  6      
  cmpb $0x0, 0xfff1f65(%rip)                                                            #  27    0x3edc4  7      
  je .L_3f0a0                                                                           #  28    0x3edcb  6      
  nop                                                                                   #  29    0x3edd1  1      
.L_3ee00:                                                                               #        0x3edd2  0      
  movl %eax, %eax                                                                       #  30    0x3edd2  2      
  movl (%r15,%rax,1), %eax                                                              #  31    0x3edd4  4      
  movq %rax, 0x38(%rsp)                                                                 #  32    0x3edd8  5      
  leal 0x40(%rsp), %eax                                                                 #  33    0x3eddd  4      
  movl %eax, %edi                                                                       #  34    0x3ede1  2      
  movq %rax, 0x18(%rsp)                                                                 #  35    0x3ede3  5      
  nop                                                                                   #  36    0x3ede8  1      
  callq ._ZN2pp3VarC1Ev                                                                 #  37    0x3ede9  5      
  movq 0x48(%rsp), %rdx                                                                 #  38    0x3edee  5      
  movq 0x50(%rsp), %rax                                                                 #  39    0x3edf3  5      
  movl %r14d, %ecx                                                                      #  40    0x3edf8  3      
  movsd 0x28(%rsp), %xmm0                                                               #  41    0x3edfb  6      
  movl 0x24(%rsp), %esi                                                                 #  42    0x3ee01  4      
  movl %r13d, %r13d                                                                     #  43    0x3ee05  3      
  movl (%r15,%r13,1), %edi                                                              #  44    0x3ee08  4      
  xchgw %ax, %ax                                                                        #  45    0x3ee0c  3      
  movq 0x38(%rsp), %r10                                                                 #  46    0x3ee0f  5      
  movq %rdx, 0x80(%rsp)                                                                 #  47    0x3ee14  8      
  movq %rax, 0x88(%rsp)                                                                 #  48    0x3ee1c  8      
  movl %r12d, %r12d                                                                     #  49    0x3ee24  3      
  movq 0x8(%r15,%r12,1), %r8                                                            #  50    0x3ee27  5      
  nop                                                                                   #  51    0x3ee2c  1      
  movq %r8, 0x70(%rsp)                                                                  #  52    0x3ee2d  5      
  movl %r12d, %r12d                                                                     #  53    0x3ee32  3      
  movq 0x10(%r15,%r12,1), %r9                                                           #  54    0x3ee35  5      
  movq %rdx, (%rsp)                                                                     #  55    0x3ee3a  4      
  movq %rax, 0x8(%rsp)                                                                  #  56    0x3ee3e  5      
  movl 0x34(%rsp), %edx                                                                 #  57    0x3ee43  4      
  movq %r9, 0x78(%rsp)                                                                  #  58    0x3ee47  5      
  nop                                                                                   #  59    0x3ee4c  1      
  nop                                                                                   #  60    0x3ee4d  1      
  nop                                                                                   #  61    0x3ee4e  1      
  andl $0xffffffe0, %r10d                                                               #  62    0x3ee4f  7      
  addq %r15, %r10                                                                       #  63    0x3ee56  3      
  callq %r10                                                                            #  64    0x3ee59  3      
  movl %eax, %esi                                                                       #  65    0x3ee5c  2      
  movl %ebx, %edi                                                                       #  66    0x3ee5e  2      
  nop                                                                                   #  67    0x3ee60  1      
  nop                                                                                   #  68    0x3ee61  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                      #  69    0x3ee62  5      
  movl 0x18(%rsp), %edi                                                                 #  70    0x3ee67  4      
  nop                                                                                   #  71    0x3ee6b  1      
  nop                                                                                   #  72    0x3ee6c  1      
  callq ._ZN2pp3VarD1Ev                                                                 #  73    0x3ee6d  5      
.L_3eee0:                                                                               #        0x3ee72  0      
  movq 0x98(%rsp), %rbx                                                                 #  74    0x3ee72  8      
  movq 0xa0(%rsp), %r12                                                                 #  75    0x3ee7a  8      
  movq 0xa8(%rsp), %r13                                                                 #  76    0x3ee82  8      
  movq 0xb0(%rsp), %r14                                                                 #  77    0x3ee8a  8      
  addl $0xb8, %esp                                                                      #  78    0x3ee92  3      
  addq %r15, %rsp                                                                       #  79    0x3ee95  3      
  popq %r11                                                                             #  80    0x3ee98  3      
  andl $0xffffffe0, %r11d                                                               #  81    0x3ee9b  7      
  addq %r15, %r11                                                                       #  82    0x3eea2  3      
  jmpq %r11                                                                             #  83    0x3eea5  3      
  nop                                                                                   #  84    0x3eea8  1      
.L_3ef20:                                                                               #        0x3eea9  0      
  cmpb $0x0, 0xfff1e90(%rip)                                                            #  85    0x3eea9  7      
  je .L_3f100                                                                           #  86    0x3eeb0  6      
  nop                                                                                   #  87    0x3eeb6  1      
  nop                                                                                   #  88    0x3eeb7  1      
.L_3ef40:                                                                               #        0x3eeb8  0      
  movl 0xfff1e8a(%rip), %esi                                                            #  89    0x3eeb8  6      
  testl %esi, %esi                                                                      #  90    0x3eebe  2      
  je .L_3eee0                                                                           #  91    0x3eec0  6      
  xchgw %ax, %ax                                                                        #  92    0x3eec6  3      
  nop                                                                                   #  93    0x3eec9  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v        #  94    0x3eeca  5      
  movl %r12d, %r12d                                                                     #  95    0x3eecf  3      
  movq 0x8(%r15,%r12,1), %r8                                                            #  96    0x3eed2  5      
  movl %eax, %eax                                                                       #  97    0x3eed7  2      
  movl %r14d, %ecx                                                                      #  98    0x3eed9  3      
  movl %eax, %eax                                                                       #  99    0x3eedc  2      
  movl (%r15,%rax,1), %eax                                                              #  100   0x3eede  4      
  movl 0x34(%rsp), %edx                                                                 #  101   0x3eee2  4      
  movsd 0x28(%rsp), %xmm0                                                               #  102   0x3eee6  6      
  nop                                                                                   #  103   0x3eeec  1      
  movl 0x24(%rsp), %esi                                                                 #  104   0x3eeed  4      
  movq %r8, 0x60(%rsp)                                                                  #  105   0x3eef1  5      
  movl %r12d, %r12d                                                                     #  106   0x3eef6  3      
  movq 0x10(%r15,%r12,1), %r9                                                           #  107   0x3eef9  5      
  movl %r13d, %r13d                                                                     #  108   0x3eefe  3      
  movl (%r15,%r13,1), %edi                                                              #  109   0x3ef01  4      
  movq %r9, 0x68(%rsp)                                                                  #  110   0x3ef05  5      
  nop                                                                                   #  111   0x3ef0a  1      
  nop                                                                                   #  112   0x3ef0b  1      
  nop                                                                                   #  113   0x3ef0c  1      
  andl $0xffffffe0, %eax                                                                #  114   0x3ef0d  5      
  addq %r15, %rax                                                                       #  115   0x3ef12  3      
  callq %rax                                                                            #  116   0x3ef15  2      
  movl %eax, %esi                                                                       #  117   0x3ef17  2      
  movl %ebx, %edi                                                                       #  118   0x3ef19  2      
  nop                                                                                   #  119   0x3ef1b  1      
  nop                                                                                   #  120   0x3ef1c  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                      #  121   0x3ef1d  5      
  jmpq .L_3eee0                                                                         #  122   0x3ef22  5      
  nop                                                                                   #  123   0x3ef27  1      
  nop                                                                                   #  124   0x3ef28  1      
.L_3f000:                                                                               #        0x3ef29  0      
  movl $0x10030d30, %edi                                                                #  125   0x3ef29  5      
  nop                                                                                   #  126   0x3ef2e  1      
  nop                                                                                   #  127   0x3ef2f  1      
  callq .__cxa_guard_acquire                                                            #  128   0x3ef30  5      
  testl %eax, %eax                                                                      #  129   0x3ef35  2      
  je .L_3ede0                                                                           #  130   0x3ef37  6      
  nop                                                                                   #  131   0x3ef3d  1      
  nop                                                                                   #  132   0x3ef3e  1      
  callq ._ZN2pp6Module3GetEv                                                            #  133   0x3ef3f  5      
  movl %eax, %edi                                                                       #  134   0x3ef44  2      
  movl $0x1002068a, %esi                                                                #  135   0x3ef46  5      
  nop                                                                                   #  136   0x3ef4b  1      
  nop                                                                                   #  137   0x3ef4c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  138   0x3ef4d  5      
  movl $0x10030d30, %edi                                                                #  139   0x3ef52  5      
  movl %eax, 0xfff1ddb(%rip)                                                            #  140   0x3ef57  6      
  nop                                                                                   #  141   0x3ef5d  1      
  nop                                                                                   #  142   0x3ef5e  1      
  callq .__cxa_guard_release                                                            #  143   0x3ef5f  5      
  jmpq .L_3ede0                                                                         #  144   0x3ef64  5      
  nop                                                                                   #  145   0x3ef69  1      
  nop                                                                                   #  146   0x3ef6a  1      
.L_3f0a0:                                                                               #        0x3ef6b  0      
  movl $0x10030d30, %edi                                                                #  147   0x3ef6b  5      
  nop                                                                                   #  148   0x3ef70  1      
  nop                                                                                   #  149   0x3ef71  1      
  callq .__cxa_guard_acquire                                                            #  150   0x3ef72  5      
  testl %eax, %eax                                                                      #  151   0x3ef77  2      
  jne .L_3f1a0                                                                          #  152   0x3ef79  6      
  nop                                                                                   #  153   0x3ef7f  1      
  nop                                                                                   #  154   0x3ef80  1      
.L_3f0e0:                                                                               #        0x3ef81  0      
  movl 0xfff1db1(%rip), %eax                                                            #  155   0x3ef81  6      
  jmpq .L_3ee00                                                                         #  156   0x3ef87  5      
  nop                                                                                   #  157   0x3ef8c  1      
  nop                                                                                   #  158   0x3ef8d  1      
.L_3f100:                                                                               #        0x3ef8e  0      
  movl $0x10030d40, %edi                                                                #  159   0x3ef8e  5      
  nop                                                                                   #  160   0x3ef93  1      
  nop                                                                                   #  161   0x3ef94  1      
  callq .__cxa_guard_acquire                                                            #  162   0x3ef95  5      
  testl %eax, %eax                                                                      #  163   0x3ef9a  2      
  je .L_3ef40                                                                           #  164   0x3ef9c  6      
  nop                                                                                   #  165   0x3efa2  1      
  nop                                                                                   #  166   0x3efa3  1      
  callq ._ZN2pp6Module3GetEv                                                            #  167   0x3efa4  5      
  movl %eax, %edi                                                                       #  168   0x3efa9  2      
  movl $0x100206a5, %esi                                                                #  169   0x3efab  5      
  nop                                                                                   #  170   0x3efb0  1      
  nop                                                                                   #  171   0x3efb1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  172   0x3efb2  5      
  movl $0x10030d40, %edi                                                                #  173   0x3efb7  5      
  movl %eax, 0xfff1d86(%rip)                                                            #  174   0x3efbc  6      
  nop                                                                                   #  175   0x3efc2  1      
  nop                                                                                   #  176   0x3efc3  1      
  callq .__cxa_guard_release                                                            #  177   0x3efc4  5      
  jmpq .L_3ef40                                                                         #  178   0x3efc9  5      
  nop                                                                                   #  179   0x3efce  1      
  nop                                                                                   #  180   0x3efcf  1      
.L_3f1a0:                                                                               #        0x3efd0  0      
  nop                                                                                   #  181   0x3efd0  1      
  nop                                                                                   #  182   0x3efd1  1      
  callq ._ZN2pp6Module3GetEv                                                            #  183   0x3efd2  5      
  movl %eax, %edi                                                                       #  184   0x3efd7  2      
  movl $0x1002068a, %esi                                                                #  185   0x3efd9  5      
  nop                                                                                   #  186   0x3efde  1      
  nop                                                                                   #  187   0x3efdf  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  188   0x3efe0  5      
  movl $0x10030d30, %edi                                                                #  189   0x3efe5  5      
  movl %eax, 0xfff1d48(%rip)                                                            #  190   0x3efea  6      
  nop                                                                                   #  191   0x3eff0  1      
  nop                                                                                   #  192   0x3eff1  1      
  callq .__cxa_guard_release                                                            #  193   0x3eff2  5      
  jmpq .L_3f0e0                                                                         #  194   0x3eff7  5      
  nop                                                                                   #  195   0x3effc  1      
  nop                                                                                   #  196   0x3effd  1      
  movl $0x10030d40, %edi                                                                #  197   0x3effe  5      
  movl %eax, %r12d                                                                      #  198   0x3f003  3      
  nop                                                                                   #  199   0x3f006  1      
  nop                                                                                   #  200   0x3f007  1      
  callq .__cxa_guard_abort                                                              #  201   0x3f008  5      
.L_3f240:                                                                               #        0x3f00d  0      
  movl %ebx, %edi                                                                       #  202   0x3f00d  2      
  nop                                                                                   #  203   0x3f00f  1      
  nop                                                                                   #  204   0x3f010  1      
  callq ._ZN2pp10InputEventD2Ev                                                         #  205   0x3f011  5      
  movl %r12d, %edi                                                                      #  206   0x3f016  3      
  nop                                                                                   #  207   0x3f019  1      
  nop                                                                                   #  208   0x3f01a  1      
  callq ._Unwind_Resume                                                                 #  209   0x3f01b  5      
  movl %eax, %r12d                                                                      #  210   0x3f020  3      
  jmpq .L_3f240                                                                         #  211   0x3f023  5      
  nop                                                                                   #  212   0x3f028  1      
  nop                                                                                   #  213   0x3f029  1      
  movl 0x18(%rsp), %edi                                                                 #  214   0x3f02a  4      
  movl %eax, %r12d                                                                      #  215   0x3f02e  3      
  nop                                                                                   #  216   0x3f031  1      
  nop                                                                                   #  217   0x3f032  1      
  callq ._ZN2pp3VarD1Ev                                                                 #  218   0x3f033  5      
  jmpq .L_3f240                                                                         #  219   0x3f038  5      
  nop                                                                                   #  220   0x3f03d  1      
  nop                                                                                   #  221   0x3f03e  1      
.L_3f2e0:                                                                               #        0x3f03f  0      
  movl $0x10030d30, %edi                                                                #  222   0x3f03f  5      
  movl %eax, %r12d                                                                      #  223   0x3f044  3      
  nop                                                                                   #  224   0x3f047  1      
  nop                                                                                   #  225   0x3f048  1      
  callq .__cxa_guard_abort                                                              #  226   0x3f049  5      
  jmpq .L_3f240                                                                         #  227   0x3f04e  5      
  nop                                                                                   #  228   0x3f053  1      
  nop                                                                                   #  229   0x3f054  1      
  jmpq .L_3f2e0                                                                         #  230   0x3f055  5      
  nop                                                                                   #  231   0x3f05a  1      
  nop                                                                                   #  232   0x3f05b  1      
                                                                                                                 
.size _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE, .-_ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE

