  .text
  .globl _ZNK2pp18KeyboardInputEvent16GetCharacterTextEv
  .type _ZNK2pp18KeyboardInputEvent16GetCharacterTextEv, @function

#! file-offset 0x3c740
#! rip-offset  0x3c740
#! capacity    992 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZNK2pp18KeyboardInputEvent16GetCharacterTextEv:                                 #        0x3c740  0      
  pushq %r12                                                                      #  1     0x3c740  3      
  movl %esi, %r12d                                                                #  2     0x3c743  3      
  pushq %rbx                                                                      #  3     0x3c746  2      
  movl %edi, %ebx                                                                 #  4     0x3c748  2      
  subl $0x38, %esp                                                                #  5     0x3c74a  3      
  addq %r15, %rsp                                                                 #  6     0x3c74d  3      
  cmpb $0x0, 0xfff45d9(%rip)                                                      #  7     0x3c750  7      
  je .L_3c960                                                                     #  8     0x3c757  6      
  nop                                                                             #  9     0x3c75d  1      
.L_3c760:                                                                         #        0x3c75e  0      
  movl 0xfff45d4(%rip), %eax                                                      #  10    0x3c75e  6      
  testq %rax, %rax                                                                #  11    0x3c764  3      
  jne .L_3c900                                                                    #  12    0x3c767  6      
  cmpb $0x0, 0xfff45cc(%rip)                                                      #  13    0x3c76d  7      
  je .L_3c860                                                                     #  14    0x3c774  6      
  nop                                                                             #  15    0x3c77a  1      
.L_3c780:                                                                         #        0x3c77b  0      
  movl 0xfff45c7(%rip), %ecx                                                      #  16    0x3c77b  6      
  testl %ecx, %ecx                                                                #  17    0x3c781  2      
  jne .L_3c7c0                                                                    #  18    0x3c783  6      
  movl %ebx, %edi                                                                 #  19    0x3c789  2      
  nop                                                                             #  20    0x3c78b  1      
  callq ._ZN2pp3VarC1Ev                                                           #  21    0x3c78c  5      
  addl $0x38, %esp                                                                #  22    0x3c791  3      
  addq %r15, %rsp                                                                 #  23    0x3c794  3      
  movl %ebx, %eax                                                                 #  24    0x3c797  2      
  popq %rbx                                                                       #  25    0x3c799  2      
  popq %r12                                                                       #  26    0x3c79b  3      
  popq %r11                                                                       #  27    0x3c79e  3      
  andl $0xffffffe0, %r11d                                                         #  28    0x3c7a1  7      
  addq %r15, %r11                                                                 #  29    0x3c7a8  3      
  jmpq %r11                                                                       #  30    0x3c7ab  3      
  nop                                                                             #  31    0x3c7ae  1      
.L_3c7c0:                                                                         #        0x3c7af  0      
  nop                                                                             #  32    0x3c7af  1      
  nop                                                                             #  33    0x3c7b0  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  34    0x3c7b1  5      
  movl %eax, %eax                                                                 #  35    0x3c7b6  2      
  nop                                                                             #  36    0x3c7b8  1      
  nop                                                                             #  37    0x3c7b9  1      
.L_3c800:                                                                         #        0x3c7ba  0      
  movl %eax, %eax                                                                 #  38    0x3c7ba  2      
  movl 0xc(%r15,%rax,1), %eax                                                     #  39    0x3c7bc  5      
  movl %r12d, %r12d                                                               #  40    0x3c7c1  3      
  movl 0x4(%r15,%r12,1), %edi                                                     #  41    0x3c7c4  5      
  nop                                                                             #  42    0x3c7c9  1      
  andl $0xffffffe0, %eax                                                          #  43    0x3c7ca  5      
  addq %r15, %rax                                                                 #  44    0x3c7cf  3      
  callq %rax                                                                      #  45    0x3c7d2  2      
  movl %ebx, %ebx                                                                 #  46    0x3c7d4  2      
  movl $0x100205f8, (%r15,%rbx,1)                                                 #  47    0x3c7d6  8      
  movl %ebx, %ebx                                                                 #  48    0x3c7de  2      
  movq %rdx, 0x10(%r15,%rbx,1)                                                    #  49    0x3c7e0  5      
  movl %ebx, %ebx                                                                 #  50    0x3c7e5  2      
  movb $0x1, 0x18(%r15,%rbx,1)                                                    #  51    0x3c7e7  6      
  movl %ebx, %ebx                                                                 #  52    0x3c7ed  2      
  movq %rax, 0x8(%r15,%rbx,1)                                                     #  53    0x3c7ef  5      
  addl $0x38, %esp                                                                #  54    0x3c7f4  3      
  addq %r15, %rsp                                                                 #  55    0x3c7f7  3      
  movl %ebx, %eax                                                                 #  56    0x3c7fa  2      
  popq %rbx                                                                       #  57    0x3c7fc  2      
  popq %r12                                                                       #  58    0x3c7fe  3      
  popq %r11                                                                       #  59    0x3c801  3      
  andl $0xffffffe0, %r11d                                                         #  60    0x3c804  7      
  addq %r15, %r11                                                                 #  61    0x3c80b  3      
  jmpq %r11                                                                       #  62    0x3c80e  3      
  nop                                                                             #  63    0x3c811  1      
.L_3c860:                                                                         #        0x3c812  0      
  movl $0x10030d40, %edi                                                          #  64    0x3c812  5      
  nop                                                                             #  65    0x3c817  1      
  nop                                                                             #  66    0x3c818  1      
  callq .__cxa_guard_acquire                                                      #  67    0x3c819  5      
  testl %eax, %eax                                                                #  68    0x3c81e  2      
  je .L_3c780                                                                     #  69    0x3c820  6      
  nop                                                                             #  70    0x3c826  1      
  nop                                                                             #  71    0x3c827  1      
  callq ._ZN2pp6Module3GetEv                                                      #  72    0x3c828  5      
  movl %eax, %edi                                                                 #  73    0x3c82d  2      
  movl $0x100206a5, %esi                                                          #  74    0x3c82f  5      
  nop                                                                             #  75    0x3c834  1      
  nop                                                                             #  76    0x3c835  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  77    0x3c836  5      
  movl $0x10030d40, %edi                                                          #  78    0x3c83b  5      
  movl %eax, 0xfff4502(%rip)                                                      #  79    0x3c840  6      
  nop                                                                             #  80    0x3c846  1      
  nop                                                                             #  81    0x3c847  1      
  callq .__cxa_guard_release                                                      #  82    0x3c848  5      
  jmpq .L_3c780                                                                   #  83    0x3c84d  5      
  nop                                                                             #  84    0x3c852  1      
  nop                                                                             #  85    0x3c853  1      
.L_3c900:                                                                         #        0x3c854  0      
  cmpb $0x0, 0xfff44d5(%rip)                                                      #  86    0x3c854  7      
  jne .L_3c800                                                                    #  87    0x3c85b  6      
  movl $0x10030d30, %edi                                                          #  88    0x3c861  5      
  nop                                                                             #  89    0x3c866  1      
  callq .__cxa_guard_acquire                                                      #  90    0x3c867  5      
  testl %eax, %eax                                                                #  91    0x3c86c  2      
  jne .L_3ca00                                                                    #  92    0x3c86e  6      
  nop                                                                             #  93    0x3c874  1      
  nop                                                                             #  94    0x3c875  1      
.L_3c940:                                                                         #        0x3c876  0      
  movl 0xfff44bc(%rip), %eax                                                      #  95    0x3c876  6      
  jmpq .L_3c800                                                                   #  96    0x3c87c  5      
  nop                                                                             #  97    0x3c881  1      
  nop                                                                             #  98    0x3c882  1      
.L_3c960:                                                                         #        0x3c883  0      
  movl $0x10030d30, %edi                                                          #  99    0x3c883  5      
  nop                                                                             #  100   0x3c888  1      
  nop                                                                             #  101   0x3c889  1      
  callq .__cxa_guard_acquire                                                      #  102   0x3c88a  5      
  testl %eax, %eax                                                                #  103   0x3c88f  2      
  je .L_3c760                                                                     #  104   0x3c891  6      
  nop                                                                             #  105   0x3c897  1      
  nop                                                                             #  106   0x3c898  1      
  callq ._ZN2pp6Module3GetEv                                                      #  107   0x3c899  5      
  movl %eax, %edi                                                                 #  108   0x3c89e  2      
  movl $0x1002068a, %esi                                                          #  109   0x3c8a0  5      
  nop                                                                             #  110   0x3c8a5  1      
  nop                                                                             #  111   0x3c8a6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  112   0x3c8a7  5      
  movl $0x10030d30, %edi                                                          #  113   0x3c8ac  5      
  movl %eax, 0xfff4481(%rip)                                                      #  114   0x3c8b1  6      
  nop                                                                             #  115   0x3c8b7  1      
  nop                                                                             #  116   0x3c8b8  1      
  callq .__cxa_guard_release                                                      #  117   0x3c8b9  5      
  jmpq .L_3c760                                                                   #  118   0x3c8be  5      
  nop                                                                             #  119   0x3c8c3  1      
  nop                                                                             #  120   0x3c8c4  1      
.L_3ca00:                                                                         #        0x3c8c5  0      
  nop                                                                             #  121   0x3c8c5  1      
  nop                                                                             #  122   0x3c8c6  1      
  callq ._ZN2pp6Module3GetEv                                                      #  123   0x3c8c7  5      
  movl %eax, %edi                                                                 #  124   0x3c8cc  2      
  movl $0x1002068a, %esi                                                          #  125   0x3c8ce  5      
  nop                                                                             #  126   0x3c8d3  1      
  nop                                                                             #  127   0x3c8d4  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  128   0x3c8d5  5      
  movl $0x10030d30, %edi                                                          #  129   0x3c8da  5      
  movl %eax, 0xfff4453(%rip)                                                      #  130   0x3c8df  6      
  nop                                                                             #  131   0x3c8e5  1      
  nop                                                                             #  132   0x3c8e6  1      
  callq .__cxa_guard_release                                                      #  133   0x3c8e7  5      
  jmpq .L_3c940                                                                   #  134   0x3c8ec  5      
  nop                                                                             #  135   0x3c8f1  1      
  nop                                                                             #  136   0x3c8f2  1      
.L_3ca80:                                                                         #        0x3c8f3  0      
  movl %eax, %ebx                                                                 #  137   0x3c8f3  2      
  movl $0x10030d30, %edi                                                          #  138   0x3c8f5  5      
  nop                                                                             #  139   0x3c8fa  1      
  nop                                                                             #  140   0x3c8fb  1      
  callq .__cxa_guard_abort                                                        #  141   0x3c8fc  5      
  movl %ebx, %edi                                                                 #  142   0x3c901  2      
  nop                                                                             #  143   0x3c903  1      
  nop                                                                             #  144   0x3c904  1      
  callq ._Unwind_Resume                                                           #  145   0x3c905  5      
  jmpq .L_3ca80                                                                   #  146   0x3c90a  5      
  nop                                                                             #  147   0x3c90f  1      
  nop                                                                             #  148   0x3c910  1      
  movl %eax, %ebx                                                                 #  149   0x3c911  2      
  movl $0x10030d40, %edi                                                          #  150   0x3c913  5      
  nop                                                                             #  151   0x3c918  1      
  nop                                                                             #  152   0x3c919  1      
  callq .__cxa_guard_abort                                                        #  153   0x3c91a  5      
  movl %ebx, %edi                                                                 #  154   0x3c91f  2      
  nop                                                                             #  155   0x3c921  1      
  nop                                                                             #  156   0x3c922  1      
  callq ._Unwind_Resume                                                           #  157   0x3c923  5      
                                                                                                           
.size _ZNK2pp18KeyboardInputEvent16GetCharacterTextEv, .-_ZNK2pp18KeyboardInputEvent16GetCharacterTextEv

