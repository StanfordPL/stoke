  .text
  .globl _ZN2pp13IMEInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE
  .type _ZN2pp13IMEInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE, @function

#! file-offset 0x3d7a0
#! rip-offset  0x3d7a0
#! capacity    1056 bytes

# Text                                                                                                            #  Line  RIP      Bytes  
._ZN2pp13IMEInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE:  #        0x3d7a0  0      
  movq %rbx, -0x20(%rsp)                                                                                          #  1     0x3d7a0  5      
  movl %edi, %ebx                                                                                                 #  2     0x3d7a5  2      
  movq %r12, -0x18(%rsp)                                                                                          #  3     0x3d7a7  5      
  movq %r13, -0x10(%rsp)                                                                                          #  4     0x3d7ac  5      
  movq %r14, -0x8(%rsp)                                                                                           #  5     0x3d7b1  5      
  movl %esi, %esi                                                                                                 #  6     0x3d7b6  2      
  nop                                                                                                             #  7     0x3d7b8  1      
  subl $0x88, %esp                                                                                                #  8     0x3d7b9  3      
  addq %r15, %rsp                                                                                                 #  9     0x3d7bc  3      
  movl %ebx, %edi                                                                                                 #  10    0x3d7bf  2      
  movl %ecx, %r14d                                                                                                #  11    0x3d7c1  3      
  movl %edx, 0x2c(%rsp)                                                                                           #  12    0x3d7c4  4      
  movsd %xmm0, 0x30(%rsp)                                                                                         #  13    0x3d7c8  6      
  movl %r9d, 0x3c(%rsp)                                                                                           #  14    0x3d7ce  5      
  nop                                                                                                             #  15    0x3d7d3  1      
  movq %rsi, 0x20(%rsp)                                                                                           #  16    0x3d7d4  5      
  movl %r8d, %r13d                                                                                                #  17    0x3d7d9  3      
  movl 0x90(%rsp), %r12d                                                                                          #  18    0x3d7dc  8      
  nop                                                                                                             #  19    0x3d7e4  1      
  callq ._ZN2pp10InputEventC2Ev                                                                                   #  20    0x3d7e5  5      
  movl %ebx, %ebx                                                                                                 #  21    0x3d7ea  2      
  movl $0x10020748, (%r15,%rbx,1)                                                                                 #  22    0x3d7ec  8      
  cmpb $0x0, 0xfff3515(%rip)                                                                                      #  23    0x3d7f4  7      
  je .L_3d880                                                                                                     #  24    0x3d7fb  6      
  nop                                                                                                             #  25    0x3d801  1      
.L_3d820:                                                                                                         #        0x3d802  0      
  movl 0xfff3510(%rip), %eax                                                                                      #  26    0x3d802  6      
  testq %rax, %rax                                                                                                #  27    0x3d808  3      
  jne .L_3d920                                                                                                    #  28    0x3d80b  6      
  xchgw %ax, %ax                                                                                                  #  29    0x3d811  3      
  nop                                                                                                             #  30    0x3d814  1      
.L_3d840:                                                                                                         #        0x3d815  0      
  movq 0x68(%rsp), %rbx                                                                                           #  31    0x3d815  5      
  movq 0x70(%rsp), %r12                                                                                           #  32    0x3d81a  5      
  movq 0x78(%rsp), %r13                                                                                           #  33    0x3d81f  5      
  movq 0x80(%rsp), %r14                                                                                           #  34    0x3d824  8      
  addl $0x88, %esp                                                                                                #  35    0x3d82c  3      
  addq %r15, %rsp                                                                                                 #  36    0x3d82f  3      
  popq %r11                                                                                                       #  37    0x3d832  3      
  andl $0xffffffe0, %r11d                                                                                         #  38    0x3d835  7      
  addq %r15, %r11                                                                                                 #  39    0x3d83c  3      
  jmpq %r11                                                                                                       #  40    0x3d83f  3      
  nop                                                                                                             #  41    0x3d842  1      
  nop                                                                                                             #  42    0x3d843  1      
.L_3d880:                                                                                                         #        0x3d844  0      
  movl $0x10030d10, %edi                                                                                          #  43    0x3d844  5      
  nop                                                                                                             #  44    0x3d849  1      
  nop                                                                                                             #  45    0x3d84a  1      
  callq .__cxa_guard_acquire                                                                                      #  46    0x3d84b  5      
  testl %eax, %eax                                                                                                #  47    0x3d850  2      
  je .L_3d820                                                                                                     #  48    0x3d852  6      
  nop                                                                                                             #  49    0x3d858  1      
  nop                                                                                                             #  50    0x3d859  1      
  callq ._ZN2pp6Module3GetEv                                                                                      #  51    0x3d85a  5      
  movl %eax, %edi                                                                                                 #  52    0x3d85f  2      
  movl $0x10020674, %esi                                                                                          #  53    0x3d861  5      
  nop                                                                                                             #  54    0x3d866  1      
  nop                                                                                                             #  55    0x3d867  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                   #  56    0x3d868  5      
  movl $0x10030d10, %edi                                                                                          #  57    0x3d86d  5      
  movl %eax, 0xfff34a0(%rip)                                                                                      #  58    0x3d872  6      
  nop                                                                                                             #  59    0x3d878  1      
  nop                                                                                                             #  60    0x3d879  1      
  callq .__cxa_guard_release                                                                                      #  61    0x3d87a  5      
  movl 0xfff3493(%rip), %eax                                                                                      #  62    0x3d87f  6      
  testq %rax, %rax                                                                                                #  63    0x3d885  3      
  je .L_3d840                                                                                                     #  64    0x3d888  6      
  xchgw %ax, %ax                                                                                                  #  65    0x3d88e  3      
  nop                                                                                                             #  66    0x3d891  1      
.L_3d920:                                                                                                         #        0x3d892  0      
  cmpb $0x0, 0xfff3477(%rip)                                                                                      #  67    0x3d892  7      
  movl $0x0, 0x5c(%rsp)                                                                                           #  68    0x3d899  8      
  je .L_3da20                                                                                                     #  69    0x3d8a1  6      
  nop                                                                                                             #  70    0x3d8a7  1      
.L_3d940:                                                                                                         #        0x3d8a8  0      
  movl %r13d, %r13d                                                                                               #  71    0x3d8a8  3      
  movl 0x4(%r15,%r13,1), %r8d                                                                                     #  72    0x3d8ab  5      
  movl %r13d, %r13d                                                                                               #  73    0x3d8b0  3      
  movl (%r15,%r13,1), %r9d                                                                                        #  74    0x3d8b3  4      
  movl %eax, %eax                                                                                                 #  75    0x3d8b7  2      
  movl (%r15,%rax,1), %eax                                                                                        #  76    0x3d8b9  4      
  movl %r12d, %r12d                                                                                               #  77    0x3d8bd  3      
  movl 0x4(%r15,%r12,1), %esi                                                                                     #  78    0x3d8c0  5      
  nop                                                                                                             #  79    0x3d8c5  1      
  movl %r12d, %r12d                                                                                               #  80    0x3d8c6  3      
  movl (%r15,%r12,1), %edi                                                                                        #  81    0x3d8c9  4      
  cmpl %r9d, %r8d                                                                                                 #  82    0x3d8cd  3      
  je .L_3db00                                                                                                     #  83    0x3d8d0  6      
  subl %r9d, %r8d                                                                                                 #  84    0x3d8d6  3      
  sarl $0x2, %r8d                                                                                                 #  85    0x3d8d9  4      
  subl $0x1, %r8d                                                                                                 #  86    0x3d8dd  4      
  nop                                                                                                             #  87    0x3d8e1  1      
.L_3d980:                                                                                                         #        0x3d8e2  0      
  movl %esi, 0x10(%rsp)                                                                                           #  88    0x3d8e2  4      
  movl %r14d, %r14d                                                                                               #  89    0x3d8e6  3      
  movq 0x8(%r15,%r14,1), %rdx                                                                                     #  90    0x3d8e9  5      
  movl 0x3c(%rsp), %esi                                                                                           #  91    0x3d8ee  4      
  movl %r14d, %r14d                                                                                               #  92    0x3d8f2  3      
  movq 0x10(%r15,%r14,1), %rcx                                                                                    #  93    0x3d8f5  5      
  movq 0x20(%rsp), %r10                                                                                           #  94    0x3d8fa  5      
  nop                                                                                                             #  95    0x3d8ff  1      
  movl %edi, 0x8(%rsp)                                                                                            #  96    0x3d900  4      
  movq %rdx, 0x40(%rsp)                                                                                           #  97    0x3d904  5      
  movsd 0x30(%rsp), %xmm0                                                                                         #  98    0x3d909  6      
  movl %esi, (%rsp)                                                                                               #  99    0x3d90f  3      
  movq %rcx, 0x48(%rsp)                                                                                           #  100   0x3d912  5      
  movl 0x2c(%rsp), %esi                                                                                           #  101   0x3d917  4      
  nop                                                                                                             #  102   0x3d91b  1      
  movl %r10d, %r10d                                                                                               #  103   0x3d91c  3      
  movl (%r15,%r10,1), %edi                                                                                        #  104   0x3d91f  4      
  xchgw %ax, %ax                                                                                                  #  105   0x3d923  3      
  nop                                                                                                             #  106   0x3d926  1      
  andl $0xffffffe0, %eax                                                                                          #  107   0x3d927  5      
  addq %r15, %rax                                                                                                 #  108   0x3d92c  3      
  callq %rax                                                                                                      #  109   0x3d92f  2      
  movl %eax, %esi                                                                                                 #  110   0x3d931  2      
  movl %ebx, %edi                                                                                                 #  111   0x3d933  2      
  nop                                                                                                             #  112   0x3d935  1      
  nop                                                                                                             #  113   0x3d936  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                                                                #  114   0x3d937  5      
  jmpq .L_3d840                                                                                                   #  115   0x3d93c  5      
  nop                                                                                                             #  116   0x3d941  1      
  nop                                                                                                             #  117   0x3d942  1      
.L_3da20:                                                                                                         #        0x3d943  0      
  movl $0x10030d10, %edi                                                                                          #  118   0x3d943  5      
  nop                                                                                                             #  119   0x3d948  1      
  nop                                                                                                             #  120   0x3d949  1      
  callq .__cxa_guard_acquire                                                                                      #  121   0x3d94a  5      
  testl %eax, %eax                                                                                                #  122   0x3d94f  2      
  jne .L_3da80                                                                                                    #  123   0x3d951  6      
  nop                                                                                                             #  124   0x3d957  1      
  nop                                                                                                             #  125   0x3d958  1      
.L_3da60:                                                                                                         #        0x3d959  0      
  movl 0xfff33b9(%rip), %eax                                                                                      #  126   0x3d959  6      
  jmpq .L_3d940                                                                                                   #  127   0x3d95f  5      
  nop                                                                                                             #  128   0x3d964  1      
  nop                                                                                                             #  129   0x3d965  1      
.L_3da80:                                                                                                         #        0x3d966  0      
  nop                                                                                                             #  130   0x3d966  1      
  nop                                                                                                             #  131   0x3d967  1      
  callq ._ZN2pp6Module3GetEv                                                                                      #  132   0x3d968  5      
  movl %eax, %edi                                                                                                 #  133   0x3d96d  2      
  movl $0x10020674, %esi                                                                                          #  134   0x3d96f  5      
  nop                                                                                                             #  135   0x3d974  1      
  nop                                                                                                             #  136   0x3d975  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                   #  137   0x3d976  5      
  movl $0x10030d10, %edi                                                                                          #  138   0x3d97b  5      
  movl %eax, 0xfff3392(%rip)                                                                                      #  139   0x3d980  6      
  nop                                                                                                             #  140   0x3d986  1      
  nop                                                                                                             #  141   0x3d987  1      
  callq .__cxa_guard_release                                                                                      #  142   0x3d988  5      
  jmpq .L_3da60                                                                                                   #  143   0x3d98d  5      
  nop                                                                                                             #  144   0x3d992  1      
  nop                                                                                                             #  145   0x3d993  1      
.L_3db00:                                                                                                         #        0x3d994  0      
  leal 0x5c(%rsp), %r9d                                                                                           #  146   0x3d994  5      
  xorl %r8d, %r8d                                                                                                 #  147   0x3d999  3      
  jmpq .L_3d980                                                                                                   #  148   0x3d99c  5      
  nop                                                                                                             #  149   0x3d9a1  1      
  nop                                                                                                             #  150   0x3d9a2  1      
.L_3db20:                                                                                                         #        0x3d9a3  0      
  movl $0x10030d10, %edi                                                                                          #  151   0x3d9a3  5      
  movl %eax, %r12d                                                                                                #  152   0x3d9a8  3      
  nop                                                                                                             #  153   0x3d9ab  1      
  nop                                                                                                             #  154   0x3d9ac  1      
  callq .__cxa_guard_abort                                                                                        #  155   0x3d9ad  5      
.L_3db40:                                                                                                         #        0x3d9b2  0      
  movl %ebx, %edi                                                                                                 #  156   0x3d9b2  2      
  nop                                                                                                             #  157   0x3d9b4  1      
  nop                                                                                                             #  158   0x3d9b5  1      
  callq ._ZN2pp10InputEventD2Ev                                                                                   #  159   0x3d9b6  5      
  movl %r12d, %edi                                                                                                #  160   0x3d9bb  3      
  nop                                                                                                             #  161   0x3d9be  1      
  nop                                                                                                             #  162   0x3d9bf  1      
  callq ._Unwind_Resume                                                                                           #  163   0x3d9c0  5      
  movl %eax, %r12d                                                                                                #  164   0x3d9c5  3      
  jmpq .L_3db40                                                                                                   #  165   0x3d9c8  5      
  nop                                                                                                             #  166   0x3d9cd  1      
  nop                                                                                                             #  167   0x3d9ce  1      
  jmpq .L_3db20                                                                                                   #  168   0x3d9cf  5      
  nop                                                                                                             #  169   0x3d9d4  1      
  nop                                                                                                             #  170   0x3d9d5  1      
  nop                                                                                                             #  171   0x3d9d6  1      
                                                                                                                                           
.size _ZN2pp13IMEInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE, .-_ZN2pp13IMEInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_TypedRKNS_3VarERKSt6vectorIjSaIjEEiRKSt4pairIjjE

