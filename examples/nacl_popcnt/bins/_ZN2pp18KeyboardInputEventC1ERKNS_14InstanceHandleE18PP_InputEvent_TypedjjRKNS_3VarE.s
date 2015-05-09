  .text
  .globl _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE
  .type _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE, @function

#! file-offset 0x38f40
#! rip-offset  0x38f40
#! capacity    1280 bytes

# Text                                                                                  #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE:  #        0x38f40  0      
  movq %rbx, -0x20(%rsp)                                                                #  1     0x38f40  5      
  movl %edi, %ebx                                                                       #  2     0x38f45  2      
  movq %r12, -0x18(%rsp)                                                                #  3     0x38f47  5      
  movq %r13, -0x10(%rsp)                                                                #  4     0x38f4c  5      
  movq %r14, -0x8(%rsp)                                                                 #  5     0x38f51  5      
  movl %ebx, %edi                                                                       #  6     0x38f56  2      
  nop                                                                                   #  7     0x38f58  1      
  subl $0xb8, %esp                                                                      #  8     0x38f59  3      
  addq %r15, %rsp                                                                       #  9     0x38f5c  3      
  movl %r8d, %r14d                                                                      #  10    0x38f5f  3      
  movl %esi, %r13d                                                                      #  11    0x38f62  3      
  movl %edx, 0x24(%rsp)                                                                 #  12    0x38f65  4      
  movsd %xmm0, 0x28(%rsp)                                                               #  13    0x38f69  6      
  movl %ecx, 0x34(%rsp)                                                                 #  14    0x38f6f  4      
  movl %r9d, %r12d                                                                      #  15    0x38f73  3      
  nop                                                                                   #  16    0x38f76  1      
  nop                                                                                   #  17    0x38f77  1      
  callq ._ZN2pp10InputEventC2Ev                                                         #  18    0x38f78  5      
  movl %ebx, %ebx                                                                       #  19    0x38f7d  2      
  movl $0x100207c8, (%r15,%rbx,1)                                                       #  20    0x38f7f  8      
  xchgw %ax, %ax                                                                        #  21    0x38f87  3      
  nop                                                                                   #  22    0x38f8a  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_2EEPKT_v        #  23    0x38f8b  5      
  testl %eax, %eax                                                                      #  24    0x38f90  2      
  je .L_39120                                                                           #  25    0x38f92  6      
  cmpb $0x0, 0xfff7d91(%rip)                                                            #  26    0x38f98  7      
  je .L_39200                                                                           #  27    0x38f9f  6      
  nop                                                                                   #  28    0x38fa5  1      
.L_38fe0:                                                                               #        0x38fa6  0      
  movl 0xfff7d8c(%rip), %eax                                                            #  29    0x38fa6  6      
  movl %eax, %eax                                                                       #  30    0x38fac  2      
  movl (%r15,%rax,1), %eax                                                              #  31    0x38fae  4      
  movq %rax, 0x38(%rsp)                                                                 #  32    0x38fb2  5      
  leal 0x40(%rsp), %eax                                                                 #  33    0x38fb7  4      
  movl %eax, %edi                                                                       #  34    0x38fbb  2      
  movq %rax, 0x18(%rsp)                                                                 #  35    0x38fbd  5      
  nop                                                                                   #  36    0x38fc2  1      
  nop                                                                                   #  37    0x38fc3  1      
  nop                                                                                   #  38    0x38fc4  1      
  callq ._ZN2pp3VarC1Ev                                                                 #  39    0x38fc5  5      
  movq 0x48(%rsp), %rdx                                                                 #  40    0x38fca  5      
  movq 0x50(%rsp), %rax                                                                 #  41    0x38fcf  5      
  movl %r14d, %ecx                                                                      #  42    0x38fd4  3      
  movsd 0x28(%rsp), %xmm0                                                               #  43    0x38fd7  6      
  movl 0x24(%rsp), %esi                                                                 #  44    0x38fdd  4      
  movl %r13d, %r13d                                                                     #  45    0x38fe1  3      
  movl (%r15,%r13,1), %edi                                                              #  46    0x38fe4  4      
  xchgw %ax, %ax                                                                        #  47    0x38fe8  3      
  movq 0x38(%rsp), %r10                                                                 #  48    0x38feb  5      
  movq %rdx, 0x80(%rsp)                                                                 #  49    0x38ff0  8      
  movq %rax, 0x88(%rsp)                                                                 #  50    0x38ff8  8      
  movl %r12d, %r12d                                                                     #  51    0x39000  3      
  movq 0x8(%r15,%r12,1), %r8                                                            #  52    0x39003  5      
  nop                                                                                   #  53    0x39008  1      
  movq %r8, 0x70(%rsp)                                                                  #  54    0x39009  5      
  movl %r12d, %r12d                                                                     #  55    0x3900e  3      
  movq 0x10(%r15,%r12,1), %r9                                                           #  56    0x39011  5      
  movq %rdx, (%rsp)                                                                     #  57    0x39016  4      
  movq %rax, 0x8(%rsp)                                                                  #  58    0x3901a  5      
  movl 0x34(%rsp), %edx                                                                 #  59    0x3901f  4      
  movq %r9, 0x78(%rsp)                                                                  #  60    0x39023  5      
  nop                                                                                   #  61    0x39028  1      
  nop                                                                                   #  62    0x39029  1      
  nop                                                                                   #  63    0x3902a  1      
  andl $0xffffffe0, %r10d                                                               #  64    0x3902b  7      
  addq %r15, %r10                                                                       #  65    0x39032  3      
  callq %r10                                                                            #  66    0x39035  3      
  movl %eax, %esi                                                                       #  67    0x39038  2      
  movl %ebx, %edi                                                                       #  68    0x3903a  2      
  nop                                                                                   #  69    0x3903c  1      
  nop                                                                                   #  70    0x3903d  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                      #  71    0x3903e  5      
  movl 0x18(%rsp), %edi                                                                 #  72    0x39043  4      
  nop                                                                                   #  73    0x39047  1      
  nop                                                                                   #  74    0x39048  1      
  callq ._ZN2pp3VarD1Ev                                                                 #  75    0x39049  5      
.L_390e0:                                                                               #        0x3904e  0      
  movq 0x98(%rsp), %rbx                                                                 #  76    0x3904e  8      
  movq 0xa0(%rsp), %r12                                                                 #  77    0x39056  8      
  movq 0xa8(%rsp), %r13                                                                 #  78    0x3905e  8      
  movq 0xb0(%rsp), %r14                                                                 #  79    0x39066  8      
  addl $0xb8, %esp                                                                      #  80    0x3906e  3      
  addq %r15, %rsp                                                                       #  81    0x39071  3      
  popq %r11                                                                             #  82    0x39074  3      
  andl $0xffffffe0, %r11d                                                               #  83    0x39077  7      
  addq %r15, %r11                                                                       #  84    0x3907e  3      
  jmpq %r11                                                                             #  85    0x39081  3      
  nop                                                                                   #  86    0x39084  1      
.L_39120:                                                                               #        0x39085  0      
  cmpb $0x0, 0xfff7cb4(%rip)                                                            #  87    0x39085  7      
  je .L_392a0                                                                           #  88    0x3908c  6      
  nop                                                                                   #  89    0x39092  1      
  nop                                                                                   #  90    0x39093  1      
.L_39140:                                                                               #        0x39094  0      
  movl 0xfff7cae(%rip), %eax                                                            #  91    0x39094  6      
  testl %eax, %eax                                                                      #  92    0x3909a  2      
  je .L_390e0                                                                           #  93    0x3909c  6      
  xchgw %ax, %ax                                                                        #  94    0x390a2  3      
  nop                                                                                   #  95    0x390a5  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v        #  96    0x390a6  5      
  movl %r12d, %r12d                                                                     #  97    0x390ab  3      
  movq 0x8(%r15,%r12,1), %r8                                                            #  98    0x390ae  5      
  movl %eax, %eax                                                                       #  99    0x390b3  2      
  movl %r14d, %ecx                                                                      #  100   0x390b5  3      
  movl %eax, %eax                                                                       #  101   0x390b8  2      
  movl (%r15,%rax,1), %eax                                                              #  102   0x390ba  4      
  movl 0x34(%rsp), %edx                                                                 #  103   0x390be  4      
  movsd 0x28(%rsp), %xmm0                                                               #  104   0x390c2  6      
  nop                                                                                   #  105   0x390c8  1      
  movl 0x24(%rsp), %esi                                                                 #  106   0x390c9  4      
  movq %r8, 0x60(%rsp)                                                                  #  107   0x390cd  5      
  movl %r12d, %r12d                                                                     #  108   0x390d2  3      
  movq 0x10(%r15,%r12,1), %r9                                                           #  109   0x390d5  5      
  movl %r13d, %r13d                                                                     #  110   0x390da  3      
  movl (%r15,%r13,1), %edi                                                              #  111   0x390dd  4      
  movq %r9, 0x68(%rsp)                                                                  #  112   0x390e1  5      
  nop                                                                                   #  113   0x390e6  1      
  nop                                                                                   #  114   0x390e7  1      
  nop                                                                                   #  115   0x390e8  1      
  andl $0xffffffe0, %eax                                                                #  116   0x390e9  5      
  addq %r15, %rax                                                                       #  117   0x390ee  3      
  callq %rax                                                                            #  118   0x390f1  2      
  movl %eax, %esi                                                                       #  119   0x390f3  2      
  movl %ebx, %edi                                                                       #  120   0x390f5  2      
  nop                                                                                   #  121   0x390f7  1      
  nop                                                                                   #  122   0x390f8  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                      #  123   0x390f9  5      
  jmpq .L_390e0                                                                         #  124   0x390fe  5      
  nop                                                                                   #  125   0x39103  1      
  nop                                                                                   #  126   0x39104  1      
.L_39200:                                                                               #        0x39105  0      
  movl $0x10030d30, %edi                                                                #  127   0x39105  5      
  nop                                                                                   #  128   0x3910a  1      
  nop                                                                                   #  129   0x3910b  1      
  callq .__cxa_guard_acquire                                                            #  130   0x3910c  5      
  testl %eax, %eax                                                                      #  131   0x39111  2      
  je .L_38fe0                                                                           #  132   0x39113  6      
  nop                                                                                   #  133   0x39119  1      
  nop                                                                                   #  134   0x3911a  1      
  callq ._ZN2pp6Module3GetEv                                                            #  135   0x3911b  5      
  movl %eax, %edi                                                                       #  136   0x39120  2      
  movl $0x1002068a, %esi                                                                #  137   0x39122  5      
  nop                                                                                   #  138   0x39127  1      
  nop                                                                                   #  139   0x39128  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  140   0x39129  5      
  movl $0x10030d30, %edi                                                                #  141   0x3912e  5      
  movl %eax, 0xfff7bff(%rip)                                                            #  142   0x39133  6      
  nop                                                                                   #  143   0x39139  1      
  nop                                                                                   #  144   0x3913a  1      
  callq .__cxa_guard_release                                                            #  145   0x3913b  5      
  jmpq .L_38fe0                                                                         #  146   0x39140  5      
  nop                                                                                   #  147   0x39145  1      
  nop                                                                                   #  148   0x39146  1      
.L_392a0:                                                                               #        0x39147  0      
  movl $0x10030d40, %edi                                                                #  149   0x39147  5      
  nop                                                                                   #  150   0x3914c  1      
  nop                                                                                   #  151   0x3914d  1      
  callq .__cxa_guard_acquire                                                            #  152   0x3914e  5      
  testl %eax, %eax                                                                      #  153   0x39153  2      
  je .L_39140                                                                           #  154   0x39155  6      
  nop                                                                                   #  155   0x3915b  1      
  nop                                                                                   #  156   0x3915c  1      
  callq ._ZN2pp6Module3GetEv                                                            #  157   0x3915d  5      
  movl %eax, %edi                                                                       #  158   0x39162  2      
  movl $0x100206a5, %esi                                                                #  159   0x39164  5      
  nop                                                                                   #  160   0x39169  1      
  nop                                                                                   #  161   0x3916a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                         #  162   0x3916b  5      
  movl $0x10030d40, %edi                                                                #  163   0x39170  5      
  movl %eax, 0xfff7bcd(%rip)                                                            #  164   0x39175  6      
  nop                                                                                   #  165   0x3917b  1      
  nop                                                                                   #  166   0x3917c  1      
  callq .__cxa_guard_release                                                            #  167   0x3917d  5      
  jmpq .L_39140                                                                         #  168   0x39182  5      
  nop                                                                                   #  169   0x39187  1      
  nop                                                                                   #  170   0x39188  1      
  movl $0x10030d30, %edi                                                                #  171   0x39189  5      
  movl %eax, %r12d                                                                      #  172   0x3918e  3      
  nop                                                                                   #  173   0x39191  1      
  nop                                                                                   #  174   0x39192  1      
  callq .__cxa_guard_abort                                                              #  175   0x39193  5      
.L_39360:                                                                               #        0x39198  0      
  movl %ebx, %edi                                                                       #  176   0x39198  2      
  nop                                                                                   #  177   0x3919a  1      
  nop                                                                                   #  178   0x3919b  1      
  callq ._ZN2pp10InputEventD2Ev                                                         #  179   0x3919c  5      
  movl %r12d, %edi                                                                      #  180   0x391a1  3      
  nop                                                                                   #  181   0x391a4  1      
  nop                                                                                   #  182   0x391a5  1      
  callq ._Unwind_Resume                                                                 #  183   0x391a6  5      
  movl 0x18(%rsp), %edi                                                                 #  184   0x391ab  4      
  movl %eax, %r12d                                                                      #  185   0x391af  3      
  nop                                                                                   #  186   0x391b2  1      
  nop                                                                                   #  187   0x391b3  1      
  callq ._ZN2pp3VarD1Ev                                                                 #  188   0x391b4  5      
  jmpq .L_39360                                                                         #  189   0x391b9  5      
  nop                                                                                   #  190   0x391be  1      
  nop                                                                                   #  191   0x391bf  1      
  movl %eax, %r12d                                                                      #  192   0x391c0  3      
  jmpq .L_39360                                                                         #  193   0x391c3  5      
  nop                                                                                   #  194   0x391c8  1      
  nop                                                                                   #  195   0x391c9  1      
  movl $0x10030d40, %edi                                                                #  196   0x391ca  5      
  movl %eax, %r12d                                                                      #  197   0x391cf  3      
  nop                                                                                   #  198   0x391d2  1      
  nop                                                                                   #  199   0x391d3  1      
  callq .__cxa_guard_abort                                                              #  200   0x391d4  5      
  jmpq .L_39360                                                                         #  201   0x391d9  5      
  nop                                                                                   #  202   0x391de  1      
  nop                                                                                   #  203   0x391df  1      
  nop                                                                                   #  204   0x391e0  1      
                                                                                                                 
.size _ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE, .-_ZN2pp18KeyboardInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_TypedjjRKNS_3VarE

