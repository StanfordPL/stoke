  .text
  .globl _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE
  .type _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE, @function

#! file-offset 0x3ecc0
#! rip-offset  0x3ecc0
#! capacity    1504 bytes

# Text                                                                                  #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE:  #        0x3ecc0  0      
  movq %rbx, -0x20(%rsp)                                                                #  1     0x3ecc0  5      
  movl %edi, %ebx                                                                       #  2     0x3ecc5  2      
  movq %r12, -0x18(%rsp)                                                                #  3     0x3ecc7  5      
  movq %r13, -0x10(%rsp)                                                                #  4     0x3eccc  5      
  movq %r14, -0x8(%rsp)                                                                 #  5     0x3ecd1  5      
  movl %ebx, %edi                                                                       #  6     0x3ecd6  2      
  nop                                                                                   #  7     0x3ecd8  1      
  subl $0xb8, %esp                                                                      #  8     0x3ecd9  3      
  addq %r15, %rsp                                                                       #  9     0x3ecdc  3      
  movl %r8d, %r14d                                                                      #  10    0x3ecdf  3      
  movl %esi, %r13d                                                                      #  11    0x3ece2  3      
  movl %edx, 0x24(%rsp)                                                                 #  12    0x3ece5  4      
  movsd %xmm0, 0x28(%rsp)                                                               #  13    0x3ece9  6      
  movl %ecx, 0x34(%rsp)                                                                 #  14    0x3ecef  4      
  movl %r9d, %r12d                                                                      #  15    0x3ecf3  3      
  nop                                                                                   #  16    0x3ecf6  1      
  nop                                                                                   #  17    0x3ecf7  1      
  callq ._ZN2pp10InputEventC2Ev                                                         #  18    0x3ecf8  5      
  movl %ebx, %ebx                                                                       #  19    0x3ecfd  2      
  movl $0x100207c8, (%r15,%rbx,1)                                                       #  20    0x3ecff  8      
  cmpb $0x0, 0xfff2022(%rip)                                                            #  21    0x3ed07  7      
  je .L_3ef60                                                                           #  22    0x3ed0e  6      
  nop                                                                                   #  23    0x3ed14  1      
.L_3ed40:                                                                               #        0x3ed15  0      
  movl 0xfff201d(%rip), %eax                                                            #  24    0x3ed15  6      
  testq %rax, %rax                                                                      #  25    0x3ed1b  3      
  je .L_3ee80                                                                           #  26    0x3ed1e  6      
  cmpb $0x0, 0xfff2005(%rip)                                                            #  27    0x3ed24  7      
  je .L_3f000                                                                           #  28    0x3ed2b  6      
  nop                                                                                   #  29    0x3ed31  1      
.L_3ed60:                                                                               #        0x3ed32  0      
  movl %eax, %eax                                                                       #  30    0x3ed32  2      
  movl (%r15,%rax,1), %eax                                                              #  31    0x3ed34  4      
  movq %rax, 0x38(%rsp)                                                                 #  32    0x3ed38  5      
  leal 0x40(%rsp), %eax                                                                 #  33    0x3ed3d  4      
  movl %eax, %edi                                                                       #  34    0x3ed41  2      
  movq %rax, 0x18(%rsp)                                                                 #  35    0x3ed43  5      
  nop                                                                                   #  36    0x3ed48  1      
  callq ._ZN2pp3VarC1Ev                                                                 #  37    0x3ed49  5      
  movq 0x48(%rsp), %rdx                                                                 #  38    0x3ed4e  5      
  movq 0x50(%rsp), %rax                                                                 #  39    0x3ed53  5      
  movl %r14d, %ecx                                                                      #  40    0x3ed58  3      
  movsd 0x28(%rsp), %xmm0                                                               #  41    0x3ed5b  6      
  movl 0x24(%rsp), %esi                                                                 #  42    0x3ed61  4      
  movl %r13d, %r13d                                                                     #  43    0x3ed65  3      
  movl (%r15,%r13,1), %edi                                                              #  44    0x3ed68  4      
  xchgw %ax, %ax                                                                        #  45    0x3ed6c  3      
  movq 0x38(%rsp), %r10                                                                 #  46    0x3ed6f  5      
  movq %rdx, 0x80(%rsp)                                                                 #  47    0x3ed74  8      
  movq %rax, 0x88(%rsp)                                                                 #  48    0x3ed7c  8      
  movl %r12d, %r12d                                                                     #  49    0x3ed84  3      
  movq 0x8(%r15,%r12,1), %r8                                                            #  50    0x3ed87  5      
  nop                                                                                   #  51    0x3ed8c  1      
  movq %r8, 0x70(%rsp)                                                                  #  52    0x3ed8d  5      
  movl %r12d, %r12d                                                                     #  53    0x3ed92  3      
  movq 0x10(%r15,%r12,1), %r9                                                           #  54    0x3ed95  5      
  movq %rdx, (%rsp)                                                                     #  55    0x3ed9a  4      
  movq %rax, 0x8(%rsp)                                                                  #  56    0x3ed9e  5      
  movl 0x34(%rsp), %edx                                                                 #  57    0x3eda3  4      
  movq %r9, 0x78(%rsp)                                                                  #  58    0x3eda7  5      
  nop                                                                                   #  59    0x3edac  1      
  nop                                                                                   #  60    0x3edad  1      
  nop                                                                                   #  61    0x3edae  1      
  andl $0xffffffe0, %r10d                                                               #  62    0x3edaf  7      
  addq %r15, %r10                                                                       #  63    0x3edb6  3      
  callq %r10                                                                            #  64    0x3edb9  3      
  movl %eax, %esi                                                                       #  65    0x3edbc  2      
  movl %ebx, %edi                                                                       #  66    0x3edbe  2      
  nop                                                                                   #  67    0x3edc0  1      
  nop                                                                                   #  68    0x3edc1  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                      #  69    0x3edc2  5      
  movl 0x18(%rsp), %edi                                                                 #  70    0x3edc7  4      
  nop                                                                                   #  71    0x3edcb  1      
  nop                                                                                   #  72    0x3edcc  1      
  callq ._ZN2pp3VarD1Ev                                                                 #  73    0x3edcd  5      
.L_3ee40:                                                                               #        0x3edd2  0      
  movq 0x98(%rsp), %rbx                                                                 #  74    0x3edd2  8      
  movq 0xa0(%rsp), %r12                                                                 #  75    0x3edda  8      
  movq 0xa8(%rsp), %r13                                                                 #  76    0x3ede2  8      
  movq 0xb0(%rsp), %r14                                                                 #  77    0x3edea  8      
  addl $0xb8, %esp                                                                      #  78    0x3edf2  3      
  addq %r15, %rsp                                                                       #  79    0x3edf5  3      
  popq %r11                                                                             #  80    0x3edf8  3      
  andl $0xffffffe0, %r11d                                                               #  81    0x3edfb  7      
  addq %r15, %r11                                                                       #  82    0x3ee02  3      
  jmpq %r11                                                                             #  83    0x3ee05  3      
  nop                                                                                   #  84    0x3ee08  1      
.L_3ee80:                                                                               #        0x3ee09  0      
  cmpb $0x0, 0xfff1f30(%rip)                                                            #  85    0x3ee09  7      
  je .L_3f060                                                                           #  86    0x3ee10  6      
  nop                                                                                   #  87    0x3ee16  1      
  nop                                                                                   #  88    0x3ee17  1      
.L_3eea0:                                                                               #        0x3ee18  0      
  movl 0xfff1f2a(%rip), %esi                                                            #  89    0x3ee18  6      
  testl %esi, %esi                                                                      #  90    0x3ee1e  2      
  je .L_3ee40                                                                           #  91    0x3ee20  6      
  xchgw %ax, %ax                                                                        #  92    0x3ee26  3      
  nop                                                                                   #  93    0x3ee29  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v        #  94    0x3ee2a  5      
  movl %r12d, %r12d                                                                     #  95    0x3ee2f  3      
  movq 0x8(%r15,%r12,1), %r8                                                            #  96    0x3ee32  5      
  movl %eax, %eax                                                                       #  97    0x3ee37  2      
  movl %r14d, %ecx                                                                      #  98    0x3ee39  3      
  movl %eax, %eax                                                                       #  99    0x3ee3c  2      
  movl (%r15,%rax,1), %eax                                                              #  100   0x3ee3e  4      
  movl 0x34(%rsp), %edx                                                                 #  101   0x3ee42  4      
  movsd 0x28(%rsp), %xmm0                                                               #  102   0x3ee46  6      
  nop                                                                                   #  103   0x3ee4c  1      
  movl 0x24(%rsp), %esi                                                                 #  104   0x3ee4d  4      
  movq %r8, 0x60(%rsp)                                                                  #  105   0x3ee51  5      
  movl %r12d, %r12d                                                                     #  106   0x3ee56  3      
  movq 0x10(%r15,%r12,1), %r9                                                           #  107   0x3ee59  5      
  movl %r13d, %r13d                                                                     #  108   0x3ee5e  3      
  movl (%r15,%r13,1), %edi                                                              #  109   0x3ee61  4      
  movq %r9, 0x68(%rsp)                                                                  #  110   0x3ee65  5      
  nop                                                                                   #  111   0x3ee6a  1      
  nop                                                                                   #  112   0x3ee6b  1      
  nop                                                                                   #  113   0x3ee6c  1      
  andl $0xffffffe0, %eax                                                                #  114   0x3ee6d  5      
  addq %r15, %rax                                                                       #  115   0x3ee72  3      
  callq %rax                                                                            #  116   0x3ee75  2      
  movl %eax, %esi                                                                       #  117   0x3ee77  2      
  movl %ebx, %edi                                                                       #  118   0x3ee79  2      
  nop                                                                                   #  119   0x3ee7b  1      
  nop                                                                                   #  120   0x3ee7c  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                      #  121   0x3ee7d  5      
  jmpq .L_3ee40                                                                         #  122   0x3ee82  5      
  nop                                                                                   #  123   0x3ee87  1      
  nop                                                                                   #  124   0x3ee88  1      
.L_3ef60:                                                                               #        0x3ee89  0      
  movl $0x10030d30, %edi                                                                #  125   0x3ee89  5      
  nop                                                                                   #  126   0x3ee8e  1      
  nop                                                                                   #  127   0x3ee8f  1      
  callq .__cxa_guard_acquire                                                            #  128   0x3ee90  5      
  testl %eax, %eax                                                                      #  129   0x3ee95  2      
  je .L_3ed40                                                                           #  130   0x3ee97  6      
  nop                                                                                   #  131   0x3ee9d  1      
  nop                                                                                   #  132   0x3ee9e  1      
  callq ._ZN2pp6Module3GetEv                                                            #  133   0x3ee9f  5      
  movl %eax, %edi                                                                       #  134   0x3eea4  2      
  movl $0x1002068a, %esi                                                                #  135   0x3eea6  5      
  nop                                                                                   #  136   0x3eeab  1      
  nop                                                                                   #  137   0x3eeac  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  138   0x3eead  5      
  movl $0x10030d30, %edi                                                                #  139   0x3eeb2  5      
  movl %eax, 0xfff1e7b(%rip)                                                            #  140   0x3eeb7  6      
  nop                                                                                   #  141   0x3eebd  1      
  nop                                                                                   #  142   0x3eebe  1      
  callq .__cxa_guard_release                                                            #  143   0x3eebf  5      
  jmpq .L_3ed40                                                                         #  144   0x3eec4  5      
  nop                                                                                   #  145   0x3eec9  1      
  nop                                                                                   #  146   0x3eeca  1      
.L_3f000:                                                                               #        0x3eecb  0      
  movl $0x10030d30, %edi                                                                #  147   0x3eecb  5      
  nop                                                                                   #  148   0x3eed0  1      
  nop                                                                                   #  149   0x3eed1  1      
  callq .__cxa_guard_acquire                                                            #  150   0x3eed2  5      
  testl %eax, %eax                                                                      #  151   0x3eed7  2      
  jne .L_3f100                                                                          #  152   0x3eed9  6      
  nop                                                                                   #  153   0x3eedf  1      
  nop                                                                                   #  154   0x3eee0  1      
.L_3f040:                                                                               #        0x3eee1  0      
  movl 0xfff1e51(%rip), %eax                                                            #  155   0x3eee1  6      
  jmpq .L_3ed60                                                                         #  156   0x3eee7  5      
  nop                                                                                   #  157   0x3eeec  1      
  nop                                                                                   #  158   0x3eeed  1      
.L_3f060:                                                                               #        0x3eeee  0      
  movl $0x10030d40, %edi                                                                #  159   0x3eeee  5      
  nop                                                                                   #  160   0x3eef3  1      
  nop                                                                                   #  161   0x3eef4  1      
  callq .__cxa_guard_acquire                                                            #  162   0x3eef5  5      
  testl %eax, %eax                                                                      #  163   0x3eefa  2      
  je .L_3eea0                                                                           #  164   0x3eefc  6      
  nop                                                                                   #  165   0x3ef02  1      
  nop                                                                                   #  166   0x3ef03  1      
  callq ._ZN2pp6Module3GetEv                                                            #  167   0x3ef04  5      
  movl %eax, %edi                                                                       #  168   0x3ef09  2      
  movl $0x100206a5, %esi                                                                #  169   0x3ef0b  5      
  nop                                                                                   #  170   0x3ef10  1      
  nop                                                                                   #  171   0x3ef11  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  172   0x3ef12  5      
  movl $0x10030d40, %edi                                                                #  173   0x3ef17  5      
  movl %eax, 0xfff1e26(%rip)                                                            #  174   0x3ef1c  6      
  nop                                                                                   #  175   0x3ef22  1      
  nop                                                                                   #  176   0x3ef23  1      
  callq .__cxa_guard_release                                                            #  177   0x3ef24  5      
  jmpq .L_3eea0                                                                         #  178   0x3ef29  5      
  nop                                                                                   #  179   0x3ef2e  1      
  nop                                                                                   #  180   0x3ef2f  1      
.L_3f100:                                                                               #        0x3ef30  0      
  nop                                                                                   #  181   0x3ef30  1      
  nop                                                                                   #  182   0x3ef31  1      
  callq ._ZN2pp6Module3GetEv                                                            #  183   0x3ef32  5      
  movl %eax, %edi                                                                       #  184   0x3ef37  2      
  movl $0x1002068a, %esi                                                                #  185   0x3ef39  5      
  nop                                                                                   #  186   0x3ef3e  1      
  nop                                                                                   #  187   0x3ef3f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  188   0x3ef40  5      
  movl $0x10030d30, %edi                                                                #  189   0x3ef45  5      
  movl %eax, 0xfff1de8(%rip)                                                            #  190   0x3ef4a  6      
  nop                                                                                   #  191   0x3ef50  1      
  nop                                                                                   #  192   0x3ef51  1      
  callq .__cxa_guard_release                                                            #  193   0x3ef52  5      
  jmpq .L_3f040                                                                         #  194   0x3ef57  5      
  nop                                                                                   #  195   0x3ef5c  1      
  nop                                                                                   #  196   0x3ef5d  1      
  movl $0x10030d40, %edi                                                                #  197   0x3ef5e  5      
  movl %eax, %r12d                                                                      #  198   0x3ef63  3      
  nop                                                                                   #  199   0x3ef66  1      
  nop                                                                                   #  200   0x3ef67  1      
  callq .__cxa_guard_abort                                                              #  201   0x3ef68  5      
.L_3f1a0:                                                                               #        0x3ef6d  0      
  movl %ebx, %edi                                                                       #  202   0x3ef6d  2      
  nop                                                                                   #  203   0x3ef6f  1      
  nop                                                                                   #  204   0x3ef70  1      
  callq ._ZN2pp10InputEventD2Ev                                                         #  205   0x3ef71  5      
  movl %r12d, %edi                                                                      #  206   0x3ef76  3      
  nop                                                                                   #  207   0x3ef79  1      
  nop                                                                                   #  208   0x3ef7a  1      
  callq ._Unwind_Resume                                                                 #  209   0x3ef7b  5      
  movl %eax, %r12d                                                                      #  210   0x3ef80  3      
  jmpq .L_3f1a0                                                                         #  211   0x3ef83  5      
  nop                                                                                   #  212   0x3ef88  1      
  nop                                                                                   #  213   0x3ef89  1      
  movl 0x18(%rsp), %edi                                                                 #  214   0x3ef8a  4      
  movl %eax, %r12d                                                                      #  215   0x3ef8e  3      
  nop                                                                                   #  216   0x3ef91  1      
  nop                                                                                   #  217   0x3ef92  1      
  callq ._ZN2pp3VarD1Ev                                                                 #  218   0x3ef93  5      
  jmpq .L_3f1a0                                                                         #  219   0x3ef98  5      
  nop                                                                                   #  220   0x3ef9d  1      
  nop                                                                                   #  221   0x3ef9e  1      
.L_3f240:                                                                               #        0x3ef9f  0      
  movl $0x10030d30, %edi                                                                #  222   0x3ef9f  5      
  movl %eax, %r12d                                                                      #  223   0x3efa4  3      
  nop                                                                                   #  224   0x3efa7  1      
  nop                                                                                   #  225   0x3efa8  1      
  callq .__cxa_guard_abort                                                              #  226   0x3efa9  5      
  jmpq .L_3f1a0                                                                         #  227   0x3efae  5      
  nop                                                                                   #  228   0x3efb3  1      
  nop                                                                                   #  229   0x3efb4  1      
  jmpq .L_3f240                                                                         #  230   0x3efb5  5      
  nop                                                                                   #  231   0x3efba  1      
  nop                                                                                   #  232   0x3efbb  1      
                                                                                                                 
.size _ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE, .-_ZN2pp18KeyboardInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE

