  .text
  .globl _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE
  .type _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE, @function

#! file-offset 0x3ece0
#! rip-offset  0x3ece0
#! capacity    1504 bytes

# Text                                                                                  #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE:  #        0x3ece0  0      
  movq %rbx, -0x20(%rsp)                                                                #  1     0x3ece0  5      
  movl %edi, %ebx                                                                       #  2     0x3ece5  2      
  movq %r12, -0x18(%rsp)                                                                #  3     0x3ece7  5      
  movq %r13, -0x10(%rsp)                                                                #  4     0x3ecec  5      
  movq %r14, -0x8(%rsp)                                                                 #  5     0x3ecf1  5      
  movl %ebx, %edi                                                                       #  6     0x3ecf6  2      
  nop                                                                                   #  7     0x3ecf8  1      
  subl $0xb8, %esp                                                                      #  8     0x3ecf9  3      
  addq %r15, %rsp                                                                       #  9     0x3ecfc  3      
  movl %r8d, %r14d                                                                      #  10    0x3ecff  3      
  movl %esi, %r13d                                                                      #  11    0x3ed02  3      
  movl %edx, 0x24(%rsp)                                                                 #  12    0x3ed05  4      
  movsd %xmm0, 0x28(%rsp)                                                               #  13    0x3ed09  6      
  movl %ecx, 0x34(%rsp)                                                                 #  14    0x3ed0f  4      
  movl %r9d, %r12d                                                                      #  15    0x3ed13  3      
  nop                                                                                   #  16    0x3ed16  1      
  nop                                                                                   #  17    0x3ed17  1      
  callq ._ZN2pp10InputEventC2Ev                                                         #  18    0x3ed18  5      
  movl %ebx, %ebx                                                                       #  19    0x3ed1d  2      
  movl $0x100207c8, (%r15,%rbx,1)                                                       #  20    0x3ed1f  8      
  cmpb $0x0, 0xfff2002(%rip)                                                            #  21    0x3ed27  7      
  je .L_3ef80                                                                           #  22    0x3ed2e  6      
  nop                                                                                   #  23    0x3ed34  1      
.L_3ed60:                                                                               #        0x3ed35  0      
  movl 0xfff1ffd(%rip), %eax                                                            #  24    0x3ed35  6      
  testq %rax, %rax                                                                      #  25    0x3ed3b  3      
  je .L_3eea0                                                                           #  26    0x3ed3e  6      
  cmpb $0x0, 0xfff1fe5(%rip)                                                            #  27    0x3ed44  7      
  je .L_3f020                                                                           #  28    0x3ed4b  6      
  nop                                                                                   #  29    0x3ed51  1      
.L_3ed80:                                                                               #        0x3ed52  0      
  movl %eax, %eax                                                                       #  30    0x3ed52  2      
  movl (%r15,%rax,1), %eax                                                              #  31    0x3ed54  4      
  movq %rax, 0x38(%rsp)                                                                 #  32    0x3ed58  5      
  leal 0x40(%rsp), %eax                                                                 #  33    0x3ed5d  4      
  movl %eax, %edi                                                                       #  34    0x3ed61  2      
  movq %rax, 0x18(%rsp)                                                                 #  35    0x3ed63  5      
  nop                                                                                   #  36    0x3ed68  1      
  callq ._ZN2pp3VarC1Ev                                                                 #  37    0x3ed69  5      
  movq 0x48(%rsp), %rdx                                                                 #  38    0x3ed6e  5      
  movq 0x50(%rsp), %rax                                                                 #  39    0x3ed73  5      
  movl %r14d, %ecx                                                                      #  40    0x3ed78  3      
  movsd 0x28(%rsp), %xmm0                                                               #  41    0x3ed7b  6      
  movl 0x24(%rsp), %esi                                                                 #  42    0x3ed81  4      
  movl %r13d, %r13d                                                                     #  43    0x3ed85  3      
  movl (%r15,%r13,1), %edi                                                              #  44    0x3ed88  4      
  xchgw %ax, %ax                                                                        #  45    0x3ed8c  3      
  movq 0x38(%rsp), %r10                                                                 #  46    0x3ed8f  5      
  movq %rdx, 0x80(%rsp)                                                                 #  47    0x3ed94  8      
  movq %rax, 0x88(%rsp)                                                                 #  48    0x3ed9c  8      
  movl %r12d, %r12d                                                                     #  49    0x3eda4  3      
  movq 0x8(%r15,%r12,1), %r8                                                            #  50    0x3eda7  5      
  nop                                                                                   #  51    0x3edac  1      
  movq %r8, 0x70(%rsp)                                                                  #  52    0x3edad  5      
  movl %r12d, %r12d                                                                     #  53    0x3edb2  3      
  movq 0x10(%r15,%r12,1), %r9                                                           #  54    0x3edb5  5      
  movq %rdx, (%rsp)                                                                     #  55    0x3edba  4      
  movq %rax, 0x8(%rsp)                                                                  #  56    0x3edbe  5      
  movl 0x34(%rsp), %edx                                                                 #  57    0x3edc3  4      
  movq %r9, 0x78(%rsp)                                                                  #  58    0x3edc7  5      
  nop                                                                                   #  59    0x3edcc  1      
  nop                                                                                   #  60    0x3edcd  1      
  nop                                                                                   #  61    0x3edce  1      
  andl $0xffffffe0, %r10d                                                               #  62    0x3edcf  7      
  addq %r15, %r10                                                                       #  63    0x3edd6  3      
  callq %r10                                                                            #  64    0x3edd9  3      
  movl %eax, %esi                                                                       #  65    0x3eddc  2      
  movl %ebx, %edi                                                                       #  66    0x3edde  2      
  nop                                                                                   #  67    0x3ede0  1      
  nop                                                                                   #  68    0x3ede1  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                      #  69    0x3ede2  5      
  movl 0x18(%rsp), %edi                                                                 #  70    0x3ede7  4      
  nop                                                                                   #  71    0x3edeb  1      
  nop                                                                                   #  72    0x3edec  1      
  callq ._ZN2pp3VarD1Ev                                                                 #  73    0x3eded  5      
.L_3ee60:                                                                               #        0x3edf2  0      
  movq 0x98(%rsp), %rbx                                                                 #  74    0x3edf2  8      
  movq 0xa0(%rsp), %r12                                                                 #  75    0x3edfa  8      
  movq 0xa8(%rsp), %r13                                                                 #  76    0x3ee02  8      
  movq 0xb0(%rsp), %r14                                                                 #  77    0x3ee0a  8      
  addl $0xb8, %esp                                                                      #  78    0x3ee12  3      
  addq %r15, %rsp                                                                       #  79    0x3ee15  3      
  popq %r11                                                                             #  80    0x3ee18  3      
  andl $0xffffffe0, %r11d                                                               #  81    0x3ee1b  7      
  addq %r15, %r11                                                                       #  82    0x3ee22  3      
  jmpq %r11                                                                             #  83    0x3ee25  3      
  nop                                                                                   #  84    0x3ee28  1      
.L_3eea0:                                                                               #        0x3ee29  0      
  cmpb $0x0, 0xfff1f10(%rip)                                                            #  85    0x3ee29  7      
  je .L_3f080                                                                           #  86    0x3ee30  6      
  nop                                                                                   #  87    0x3ee36  1      
  nop                                                                                   #  88    0x3ee37  1      
.L_3eec0:                                                                               #        0x3ee38  0      
  movl 0xfff1f0a(%rip), %esi                                                            #  89    0x3ee38  6      
  testl %esi, %esi                                                                      #  90    0x3ee3e  2      
  je .L_3ee60                                                                           #  91    0x3ee40  6      
  xchgw %ax, %ax                                                                        #  92    0x3ee46  3      
  nop                                                                                   #  93    0x3ee49  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v        #  94    0x3ee4a  5      
  movl %r12d, %r12d                                                                     #  95    0x3ee4f  3      
  movq 0x8(%r15,%r12,1), %r8                                                            #  96    0x3ee52  5      
  movl %eax, %eax                                                                       #  97    0x3ee57  2      
  movl %r14d, %ecx                                                                      #  98    0x3ee59  3      
  movl %eax, %eax                                                                       #  99    0x3ee5c  2      
  movl (%r15,%rax,1), %eax                                                              #  100   0x3ee5e  4      
  movl 0x34(%rsp), %edx                                                                 #  101   0x3ee62  4      
  movsd 0x28(%rsp), %xmm0                                                               #  102   0x3ee66  6      
  nop                                                                                   #  103   0x3ee6c  1      
  movl 0x24(%rsp), %esi                                                                 #  104   0x3ee6d  4      
  movq %r8, 0x60(%rsp)                                                                  #  105   0x3ee71  5      
  movl %r12d, %r12d                                                                     #  106   0x3ee76  3      
  movq 0x10(%r15,%r12,1), %r9                                                           #  107   0x3ee79  5      
  movl %r13d, %r13d                                                                     #  108   0x3ee7e  3      
  movl (%r15,%r13,1), %edi                                                              #  109   0x3ee81  4      
  movq %r9, 0x68(%rsp)                                                                  #  110   0x3ee85  5      
  nop                                                                                   #  111   0x3ee8a  1      
  nop                                                                                   #  112   0x3ee8b  1      
  nop                                                                                   #  113   0x3ee8c  1      
  andl $0xffffffe0, %eax                                                                #  114   0x3ee8d  5      
  addq %r15, %rax                                                                       #  115   0x3ee92  3      
  callq %rax                                                                            #  116   0x3ee95  2      
  movl %eax, %esi                                                                       #  117   0x3ee97  2      
  movl %ebx, %edi                                                                       #  118   0x3ee99  2      
  nop                                                                                   #  119   0x3ee9b  1      
  nop                                                                                   #  120   0x3ee9c  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                      #  121   0x3ee9d  5      
  jmpq .L_3ee60                                                                         #  122   0x3eea2  5      
  nop                                                                                   #  123   0x3eea7  1      
  nop                                                                                   #  124   0x3eea8  1      
.L_3ef80:                                                                               #        0x3eea9  0      
  movl $0x10030d30, %edi                                                                #  125   0x3eea9  5      
  nop                                                                                   #  126   0x3eeae  1      
  nop                                                                                   #  127   0x3eeaf  1      
  callq .__cxa_guard_acquire                                                            #  128   0x3eeb0  5      
  testl %eax, %eax                                                                      #  129   0x3eeb5  2      
  je .L_3ed60                                                                           #  130   0x3eeb7  6      
  nop                                                                                   #  131   0x3eebd  1      
  nop                                                                                   #  132   0x3eebe  1      
  callq ._ZN2pp6Module3GetEv                                                            #  133   0x3eebf  5      
  movl %eax, %edi                                                                       #  134   0x3eec4  2      
  movl $0x1002068a, %esi                                                                #  135   0x3eec6  5      
  nop                                                                                   #  136   0x3eecb  1      
  nop                                                                                   #  137   0x3eecc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  138   0x3eecd  5      
  movl $0x10030d30, %edi                                                                #  139   0x3eed2  5      
  movl %eax, 0xfff1e5b(%rip)                                                            #  140   0x3eed7  6      
  nop                                                                                   #  141   0x3eedd  1      
  nop                                                                                   #  142   0x3eede  1      
  callq .__cxa_guard_release                                                            #  143   0x3eedf  5      
  jmpq .L_3ed60                                                                         #  144   0x3eee4  5      
  nop                                                                                   #  145   0x3eee9  1      
  nop                                                                                   #  146   0x3eeea  1      
.L_3f020:                                                                               #        0x3eeeb  0      
  movl $0x10030d30, %edi                                                                #  147   0x3eeeb  5      
  nop                                                                                   #  148   0x3eef0  1      
  nop                                                                                   #  149   0x3eef1  1      
  callq .__cxa_guard_acquire                                                            #  150   0x3eef2  5      
  testl %eax, %eax                                                                      #  151   0x3eef7  2      
  jne .L_3f120                                                                          #  152   0x3eef9  6      
  nop                                                                                   #  153   0x3eeff  1      
  nop                                                                                   #  154   0x3ef00  1      
.L_3f060:                                                                               #        0x3ef01  0      
  movl 0xfff1e31(%rip), %eax                                                            #  155   0x3ef01  6      
  jmpq .L_3ed80                                                                         #  156   0x3ef07  5      
  nop                                                                                   #  157   0x3ef0c  1      
  nop                                                                                   #  158   0x3ef0d  1      
.L_3f080:                                                                               #        0x3ef0e  0      
  movl $0x10030d40, %edi                                                                #  159   0x3ef0e  5      
  nop                                                                                   #  160   0x3ef13  1      
  nop                                                                                   #  161   0x3ef14  1      
  callq .__cxa_guard_acquire                                                            #  162   0x3ef15  5      
  testl %eax, %eax                                                                      #  163   0x3ef1a  2      
  je .L_3eec0                                                                           #  164   0x3ef1c  6      
  nop                                                                                   #  165   0x3ef22  1      
  nop                                                                                   #  166   0x3ef23  1      
  callq ._ZN2pp6Module3GetEv                                                            #  167   0x3ef24  5      
  movl %eax, %edi                                                                       #  168   0x3ef29  2      
  movl $0x100206a5, %esi                                                                #  169   0x3ef2b  5      
  nop                                                                                   #  170   0x3ef30  1      
  nop                                                                                   #  171   0x3ef31  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  172   0x3ef32  5      
  movl $0x10030d40, %edi                                                                #  173   0x3ef37  5      
  movl %eax, 0xfff1e06(%rip)                                                            #  174   0x3ef3c  6      
  nop                                                                                   #  175   0x3ef42  1      
  nop                                                                                   #  176   0x3ef43  1      
  callq .__cxa_guard_release                                                            #  177   0x3ef44  5      
  jmpq .L_3eec0                                                                         #  178   0x3ef49  5      
  nop                                                                                   #  179   0x3ef4e  1      
  nop                                                                                   #  180   0x3ef4f  1      
.L_3f120:                                                                               #        0x3ef50  0      
  nop                                                                                   #  181   0x3ef50  1      
  nop                                                                                   #  182   0x3ef51  1      
  callq ._ZN2pp6Module3GetEv                                                            #  183   0x3ef52  5      
  movl %eax, %edi                                                                       #  184   0x3ef57  2      
  movl $0x1002068a, %esi                                                                #  185   0x3ef59  5      
  nop                                                                                   #  186   0x3ef5e  1      
  nop                                                                                   #  187   0x3ef5f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  188   0x3ef60  5      
  movl $0x10030d30, %edi                                                                #  189   0x3ef65  5      
  movl %eax, 0xfff1dc8(%rip)                                                            #  190   0x3ef6a  6      
  nop                                                                                   #  191   0x3ef70  1      
  nop                                                                                   #  192   0x3ef71  1      
  callq .__cxa_guard_release                                                            #  193   0x3ef72  5      
  jmpq .L_3f060                                                                         #  194   0x3ef77  5      
  nop                                                                                   #  195   0x3ef7c  1      
  nop                                                                                   #  196   0x3ef7d  1      
  movl $0x10030d40, %edi                                                                #  197   0x3ef7e  5      
  movl %eax, %r12d                                                                      #  198   0x3ef83  3      
  nop                                                                                   #  199   0x3ef86  1      
  nop                                                                                   #  200   0x3ef87  1      
  callq .__cxa_guard_abort                                                              #  201   0x3ef88  5      
.L_3f1c0:                                                                               #        0x3ef8d  0      
  movl %ebx, %edi                                                                       #  202   0x3ef8d  2      
  nop                                                                                   #  203   0x3ef8f  1      
  nop                                                                                   #  204   0x3ef90  1      
  callq ._ZN2pp10InputEventD2Ev                                                         #  205   0x3ef91  5      
  movl %r12d, %edi                                                                      #  206   0x3ef96  3      
  nop                                                                                   #  207   0x3ef99  1      
  nop                                                                                   #  208   0x3ef9a  1      
  callq ._Unwind_Resume                                                                 #  209   0x3ef9b  5      
  movl %eax, %r12d                                                                      #  210   0x3efa0  3      
  jmpq .L_3f1c0                                                                         #  211   0x3efa3  5      
  nop                                                                                   #  212   0x3efa8  1      
  nop                                                                                   #  213   0x3efa9  1      
  movl 0x18(%rsp), %edi                                                                 #  214   0x3efaa  4      
  movl %eax, %r12d                                                                      #  215   0x3efae  3      
  nop                                                                                   #  216   0x3efb1  1      
  nop                                                                                   #  217   0x3efb2  1      
  callq ._ZN2pp3VarD1Ev                                                                 #  218   0x3efb3  5      
  jmpq .L_3f1c0                                                                         #  219   0x3efb8  5      
  nop                                                                                   #  220   0x3efbd  1      
  nop                                                                                   #  221   0x3efbe  1      
.L_3f260:                                                                               #        0x3efbf  0      
  movl $0x10030d30, %edi                                                                #  222   0x3efbf  5      
  movl %eax, %r12d                                                                      #  223   0x3efc4  3      
  nop                                                                                   #  224   0x3efc7  1      
  nop                                                                                   #  225   0x3efc8  1      
  callq .__cxa_guard_abort                                                              #  226   0x3efc9  5      
  jmpq .L_3f1c0                                                                         #  227   0x3efce  5      
  nop                                                                                   #  228   0x3efd3  1      
  nop                                                                                   #  229   0x3efd4  1      
  jmpq .L_3f260                                                                         #  230   0x3efd5  5      
  nop                                                                                   #  231   0x3efda  1      
  nop                                                                                   #  232   0x3efdb  1      
                                                                                                                 
.size _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE, .-_ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE

