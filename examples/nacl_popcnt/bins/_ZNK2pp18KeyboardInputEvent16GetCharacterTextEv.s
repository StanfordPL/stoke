  .text
  .globl _ZNK2pp18KeyboardInputEvent16GetCharacterTextEv
  .type _ZNK2pp18KeyboardInputEvent16GetCharacterTextEv, @function

#! file-offset 0x3c6c0
#! rip-offset  0x3c6c0
#! capacity    992 bytes

# Text                                                                            #  Line  RIP      Bytes  
._ZNK2pp18KeyboardInputEvent16GetCharacterTextEv:                                 #        0x3c6c0  0      
  pushq %r12                                                                      #  1     0x3c6c0  3      
  movl %esi, %r12d                                                                #  2     0x3c6c3  3      
  pushq %rbx                                                                      #  3     0x3c6c6  2      
  movl %edi, %ebx                                                                 #  4     0x3c6c8  2      
  subl $0x38, %esp                                                                #  5     0x3c6ca  3      
  addq %r15, %rsp                                                                 #  6     0x3c6cd  3      
  cmpb $0x0, 0xfff4659(%rip)                                                      #  7     0x3c6d0  7      
  je .L_3c8e0                                                                     #  8     0x3c6d7  6      
  nop                                                                             #  9     0x3c6dd  1      
.L_3c6e0:                                                                         #        0x3c6de  0      
  movl 0xfff4654(%rip), %eax                                                      #  10    0x3c6de  6      
  testq %rax, %rax                                                                #  11    0x3c6e4  3      
  jne .L_3c880                                                                    #  12    0x3c6e7  6      
  cmpb $0x0, 0xfff464c(%rip)                                                      #  13    0x3c6ed  7      
  je .L_3c7e0                                                                     #  14    0x3c6f4  6      
  nop                                                                             #  15    0x3c6fa  1      
.L_3c700:                                                                         #        0x3c6fb  0      
  movl 0xfff4647(%rip), %ecx                                                      #  16    0x3c6fb  6      
  testl %ecx, %ecx                                                                #  17    0x3c701  2      
  jne .L_3c740                                                                    #  18    0x3c703  6      
  movl %ebx, %edi                                                                 #  19    0x3c709  2      
  nop                                                                             #  20    0x3c70b  1      
  callq ._ZN2pp3VarC1Ev                                                           #  21    0x3c70c  5      
  addl $0x38, %esp                                                                #  22    0x3c711  3      
  addq %r15, %rsp                                                                 #  23    0x3c714  3      
  movl %ebx, %eax                                                                 #  24    0x3c717  2      
  popq %rbx                                                                       #  25    0x3c719  2      
  popq %r12                                                                       #  26    0x3c71b  3      
  popq %r11                                                                       #  27    0x3c71e  3      
  andl $0xffffffe0, %r11d                                                         #  28    0x3c721  7      
  addq %r15, %r11                                                                 #  29    0x3c728  3      
  jmpq %r11                                                                       #  30    0x3c72b  3      
  nop                                                                             #  31    0x3c72e  1      
.L_3c740:                                                                         #        0x3c72f  0      
  nop                                                                             #  32    0x3c72f  1      
  nop                                                                             #  33    0x3c730  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI26PPB_KeyboardInputEvent_1_0EEPKT_v  #  34    0x3c731  5      
  movl %eax, %eax                                                                 #  35    0x3c736  2      
  nop                                                                             #  36    0x3c738  1      
  nop                                                                             #  37    0x3c739  1      
.L_3c780:                                                                         #        0x3c73a  0      
  movl %eax, %eax                                                                 #  38    0x3c73a  2      
  movl 0xc(%r15,%rax,1), %eax                                                     #  39    0x3c73c  5      
  movl %r12d, %r12d                                                               #  40    0x3c741  3      
  movl 0x4(%r15,%r12,1), %edi                                                     #  41    0x3c744  5      
  nop                                                                             #  42    0x3c749  1      
  andl $0xffffffe0, %eax                                                          #  43    0x3c74a  5      
  addq %r15, %rax                                                                 #  44    0x3c74f  3      
  callq %rax                                                                      #  45    0x3c752  2      
  movl %ebx, %ebx                                                                 #  46    0x3c754  2      
  movl $0x100205f8, (%r15,%rbx,1)                                                 #  47    0x3c756  8      
  movl %ebx, %ebx                                                                 #  48    0x3c75e  2      
  movq %rdx, 0x10(%r15,%rbx,1)                                                    #  49    0x3c760  5      
  movl %ebx, %ebx                                                                 #  50    0x3c765  2      
  movb $0x1, 0x18(%r15,%rbx,1)                                                    #  51    0x3c767  6      
  movl %ebx, %ebx                                                                 #  52    0x3c76d  2      
  movq %rax, 0x8(%r15,%rbx,1)                                                     #  53    0x3c76f  5      
  addl $0x38, %esp                                                                #  54    0x3c774  3      
  addq %r15, %rsp                                                                 #  55    0x3c777  3      
  movl %ebx, %eax                                                                 #  56    0x3c77a  2      
  popq %rbx                                                                       #  57    0x3c77c  2      
  popq %r12                                                                       #  58    0x3c77e  3      
  popq %r11                                                                       #  59    0x3c781  3      
  andl $0xffffffe0, %r11d                                                         #  60    0x3c784  7      
  addq %r15, %r11                                                                 #  61    0x3c78b  3      
  jmpq %r11                                                                       #  62    0x3c78e  3      
  nop                                                                             #  63    0x3c791  1      
.L_3c7e0:                                                                         #        0x3c792  0      
  movl $0x10030d40, %edi                                                          #  64    0x3c792  5      
  nop                                                                             #  65    0x3c797  1      
  nop                                                                             #  66    0x3c798  1      
  callq .__cxa_guard_acquire                                                      #  67    0x3c799  5      
  testl %eax, %eax                                                                #  68    0x3c79e  2      
  je .L_3c700                                                                     #  69    0x3c7a0  6      
  nop                                                                             #  70    0x3c7a6  1      
  nop                                                                             #  71    0x3c7a7  1      
  callq ._ZN2pp6Module3GetEv                                                      #  72    0x3c7a8  5      
  movl %eax, %edi                                                                 #  73    0x3c7ad  2      
  movl $0x100206a5, %esi                                                          #  74    0x3c7af  5      
  nop                                                                             #  75    0x3c7b4  1      
  nop                                                                             #  76    0x3c7b5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  77    0x3c7b6  5      
  movl $0x10030d40, %edi                                                          #  78    0x3c7bb  5      
  movl %eax, 0xfff4582(%rip)                                                      #  79    0x3c7c0  6      
  nop                                                                             #  80    0x3c7c6  1      
  nop                                                                             #  81    0x3c7c7  1      
  callq .__cxa_guard_release                                                      #  82    0x3c7c8  5      
  jmpq .L_3c700                                                                   #  83    0x3c7cd  5      
  nop                                                                             #  84    0x3c7d2  1      
  nop                                                                             #  85    0x3c7d3  1      
.L_3c880:                                                                         #        0x3c7d4  0      
  cmpb $0x0, 0xfff4555(%rip)                                                      #  86    0x3c7d4  7      
  jne .L_3c780                                                                    #  87    0x3c7db  6      
  movl $0x10030d30, %edi                                                          #  88    0x3c7e1  5      
  nop                                                                             #  89    0x3c7e6  1      
  callq .__cxa_guard_acquire                                                      #  90    0x3c7e7  5      
  testl %eax, %eax                                                                #  91    0x3c7ec  2      
  jne .L_3c980                                                                    #  92    0x3c7ee  6      
  nop                                                                             #  93    0x3c7f4  1      
  nop                                                                             #  94    0x3c7f5  1      
.L_3c8c0:                                                                         #        0x3c7f6  0      
  movl 0xfff453c(%rip), %eax                                                      #  95    0x3c7f6  6      
  jmpq .L_3c780                                                                   #  96    0x3c7fc  5      
  nop                                                                             #  97    0x3c801  1      
  nop                                                                             #  98    0x3c802  1      
.L_3c8e0:                                                                         #        0x3c803  0      
  movl $0x10030d30, %edi                                                          #  99    0x3c803  5      
  nop                                                                             #  100   0x3c808  1      
  nop                                                                             #  101   0x3c809  1      
  callq .__cxa_guard_acquire                                                      #  102   0x3c80a  5      
  testl %eax, %eax                                                                #  103   0x3c80f  2      
  je .L_3c6e0                                                                     #  104   0x3c811  6      
  nop                                                                             #  105   0x3c817  1      
  nop                                                                             #  106   0x3c818  1      
  callq ._ZN2pp6Module3GetEv                                                      #  107   0x3c819  5      
  movl %eax, %edi                                                                 #  108   0x3c81e  2      
  movl $0x1002068a, %esi                                                          #  109   0x3c820  5      
  nop                                                                             #  110   0x3c825  1      
  nop                                                                             #  111   0x3c826  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  112   0x3c827  5      
  movl $0x10030d30, %edi                                                          #  113   0x3c82c  5      
  movl %eax, 0xfff4501(%rip)                                                      #  114   0x3c831  6      
  nop                                                                             #  115   0x3c837  1      
  nop                                                                             #  116   0x3c838  1      
  callq .__cxa_guard_release                                                      #  117   0x3c839  5      
  jmpq .L_3c6e0                                                                   #  118   0x3c83e  5      
  nop                                                                             #  119   0x3c843  1      
  nop                                                                             #  120   0x3c844  1      
.L_3c980:                                                                         #        0x3c845  0      
  nop                                                                             #  121   0x3c845  1      
  nop                                                                             #  122   0x3c846  1      
  callq ._ZN2pp6Module3GetEv                                                      #  123   0x3c847  5      
  movl %eax, %edi                                                                 #  124   0x3c84c  2      
  movl $0x1002068a, %esi                                                          #  125   0x3c84e  5      
  nop                                                                             #  126   0x3c853  1      
  nop                                                                             #  127   0x3c854  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                   #  128   0x3c855  5      
  movl $0x10030d30, %edi                                                          #  129   0x3c85a  5      
  movl %eax, 0xfff44d3(%rip)                                                      #  130   0x3c85f  6      
  nop                                                                             #  131   0x3c865  1      
  nop                                                                             #  132   0x3c866  1      
  callq .__cxa_guard_release                                                      #  133   0x3c867  5      
  jmpq .L_3c8c0                                                                   #  134   0x3c86c  5      
  nop                                                                             #  135   0x3c871  1      
  nop                                                                             #  136   0x3c872  1      
.L_3ca00:                                                                         #        0x3c873  0      
  movl %eax, %ebx                                                                 #  137   0x3c873  2      
  movl $0x10030d30, %edi                                                          #  138   0x3c875  5      
  nop                                                                             #  139   0x3c87a  1      
  nop                                                                             #  140   0x3c87b  1      
  callq .__cxa_guard_abort                                                        #  141   0x3c87c  5      
  movl %ebx, %edi                                                                 #  142   0x3c881  2      
  nop                                                                             #  143   0x3c883  1      
  nop                                                                             #  144   0x3c884  1      
  callq ._Unwind_Resume                                                           #  145   0x3c885  5      
  jmpq .L_3ca00                                                                   #  146   0x3c88a  5      
  nop                                                                             #  147   0x3c88f  1      
  nop                                                                             #  148   0x3c890  1      
  movl %eax, %ebx                                                                 #  149   0x3c891  2      
  movl $0x10030d40, %edi                                                          #  150   0x3c893  5      
  nop                                                                             #  151   0x3c898  1      
  nop                                                                             #  152   0x3c899  1      
  callq .__cxa_guard_abort                                                        #  153   0x3c89a  5      
  movl %ebx, %edi                                                                 #  154   0x3c89f  2      
  nop                                                                             #  155   0x3c8a1  1      
  nop                                                                             #  156   0x3c8a2  1      
  callq ._Unwind_Resume                                                           #  157   0x3c8a3  5      
                                                                                                           
.size _ZNK2pp18KeyboardInputEvent16GetCharacterTextEv, .-_ZNK2pp18KeyboardInputEvent16GetCharacterTextEv

