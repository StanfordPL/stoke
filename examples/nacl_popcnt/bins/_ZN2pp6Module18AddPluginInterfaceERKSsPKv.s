  .text
  .globl _ZN2pp6Module18AddPluginInterfaceERKSsPKv
  .type _ZN2pp6Module18AddPluginInterfaceERKSsPKv, @function

#! file-offset 0x25440
#! rip-offset  0x25440
#! capacity    736 bytes

# Text                                                                                                                                    #  Line  RIP      Bytes  
._ZN2pp6Module18AddPluginInterfaceERKSsPKv:                                                                                               #        0x25440  0      
  pushq %r14                                                                                                                              #  1     0x25440  3      
  movl %edx, %r14d                                                                                                                        #  2     0x25443  3      
  pushq %r13                                                                                                                              #  3     0x25446  3      
  movl %edi, %r13d                                                                                                                        #  4     0x25449  3      
  movl %r13d, %edi                                                                                                                        #  5     0x2544c  3      
  pushq %r12                                                                                                                              #  6     0x2544f  3      
  movl %esi, %r12d                                                                                                                        #  7     0x25452  3      
  pushq %rbx                                                                                                                              #  8     0x25455  2      
  subl $0x38, %esp                                                                                                                        #  9     0x25457  3      
  addq %r15, %rsp                                                                                                                         #  10    0x2545a  3      
  movl %r12d, %r12d                                                                                                                       #  11    0x2545d  3      
  movl (%r15,%r12,1), %esi                                                                                                                #  12    0x25460  4      
  nop                                                                                                                                     #  13    0x25464  1      
  nop                                                                                                                                     #  14    0x25465  1      
  callq ._ZN2pp6Module18GetPluginInterfaceEPKc                                                                                            #  15    0x25466  5      
  testl %eax, %eax                                                                                                                        #  16    0x2546b  2      
  je .L_254a0                                                                                                                             #  17    0x2546d  6      
  addl $0x38, %esp                                                                                                                        #  18    0x25473  3      
  addq %r15, %rsp                                                                                                                         #  19    0x25476  3      
  popq %rbx                                                                                                                               #  20    0x25479  2      
  popq %r12                                                                                                                               #  21    0x2547b  3      
  popq %r13                                                                                                                               #  22    0x2547e  3      
  popq %r14                                                                                                                               #  23    0x25481  3      
  popq %r11                                                                                                                               #  24    0x25484  3      
  andl $0xffffffe0, %r11d                                                                                                                 #  25    0x25487  7      
  addq %r15, %r11                                                                                                                         #  26    0x2548e  3      
  jmpq %r11                                                                                                                               #  27    0x25491  3      
  nop                                                                                                                                     #  28    0x25494  1      
.L_254a0:                                                                                                                                 #        0x25495  0      
  movl %r13d, %r13d                                                                                                                       #  29    0x25495  3      
  movl 0x30(%r15,%r13,1), %edx                                                                                                            #  30    0x25498  5      
  leal 0x2c(%r13), %r10d                                                                                                                  #  31    0x2549d  4      
  movq %r10, %rbx                                                                                                                         #  32    0x254a1  3      
  testq %rdx, %rdx                                                                                                                        #  33    0x254a4  3      
  je .L_255a0                                                                                                                             #  34    0x254a7  6      
  movl %r12d, %r12d                                                                                                                       #  35    0x254ad  3      
  movl (%r15,%r12,1), %r9d                                                                                                                #  36    0x254b0  4      
  nop                                                                                                                                     #  37    0x254b4  1      
  leal -0xc(%r9), %eax                                                                                                                    #  38    0x254b5  4      
  movl %eax, %eax                                                                                                                         #  39    0x254b9  2      
  movl (%r15,%rax,1), %r8d                                                                                                                #  40    0x254bb  4      
  jmpq .L_25520                                                                                                                           #  41    0x254bf  5      
  nop                                                                                                                                     #  42    0x254c4  1      
  nop                                                                                                                                     #  43    0x254c5  1      
.L_254e0:                                                                                                                                 #        0x254c6  0      
  movl %edx, %edx                                                                                                                         #  44    0x254c6  2      
  movl 0x8(%r15,%rdx,1), %eax                                                                                                             #  45    0x254c8  5      
  movq %rdx, %rbx                                                                                                                         #  46    0x254cd  3      
  testq %rax, %rax                                                                                                                        #  47    0x254d0  3      
  je .L_255a0                                                                                                                             #  48    0x254d3  6      
  nop                                                                                                                                     #  49    0x254d9  1      
.L_25500:                                                                                                                                 #        0x254da  0      
  movq %rax, %rdx                                                                                                                         #  50    0x254da  3      
  nop                                                                                                                                     #  51    0x254dd  1      
  nop                                                                                                                                     #  52    0x254de  1      
.L_25520:                                                                                                                                 #        0x254df  0      
  movl %edx, %edx                                                                                                                         #  53    0x254df  2      
  movl 0x10(%r15,%rdx,1), %esi                                                                                                            #  54    0x254e1  5      
  movq %r9, %rdi                                                                                                                          #  55    0x254e6  3      
  leal -0xc(%rsi), %eax                                                                                                                   #  56    0x254e9  3      
  movl %eax, %eax                                                                                                                         #  57    0x254ec  2      
  movl (%r15,%rax,1), %eax                                                                                                                #  58    0x254ee  4      
  cmpl %eax, %r8d                                                                                                                         #  59    0x254f2  3      
  movl %eax, %ecx                                                                                                                         #  60    0x254f5  2      
  cmovbel %r8d, %ecx                                                                                                                      #  61    0x254f7  4      
  movl %ecx, %ecx                                                                                                                         #  62    0x254fb  2      
  xchgw %ax, %ax                                                                                                                          #  63    0x254fd  3      
  cmpq %rcx, %rcx                                                                                                                         #  64    0x25500  3      
  movl %esi, %esi                                                                                                                         #  65    0x25503  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                                #  66    0x25505  4      
  movl %edi, %edi                                                                                                                         #  67    0x25509  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                                #  68    0x2550b  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                                       #  69    0x2550f  3      
  movl %esi, %esi                                                                                                                         #  70    0x25512  2      
  movl %edi, %edi                                                                                                                         #  71    0x25514  2      
  seta %cl                                                                                                                                #  72    0x25516  3      
  setb %sil                                                                                                                               #  73    0x25519  4      
  subl %r8d, %eax                                                                                                                         #  74    0x2551d  3      
  nop                                                                                                                                     #  75    0x25520  1      
  subb %sil, %cl                                                                                                                          #  76    0x25521  3      
  movsbl %cl, %ecx                                                                                                                        #  77    0x25524  3      
  testl %ecx, %ecx                                                                                                                        #  78    0x25527  2      
  cmovel %eax, %ecx                                                                                                                       #  79    0x25529  3      
  testl %ecx, %ecx                                                                                                                        #  80    0x2552c  2      
  jns .L_254e0                                                                                                                            #  81    0x2552e  6      
  movl %edx, %edx                                                                                                                         #  82    0x25534  2      
  movl 0xc(%r15,%rdx,1), %eax                                                                                                             #  83    0x25536  5      
  testq %rax, %rax                                                                                                                        #  84    0x2553b  3      
  nop                                                                                                                                     #  85    0x2553e  1      
  jne .L_25500                                                                                                                            #  86    0x2553f  6      
  nop                                                                                                                                     #  87    0x25545  1      
  nop                                                                                                                                     #  88    0x25546  1      
.L_255a0:                                                                                                                                 #        0x25547  0      
  cmpl %ebx, %r10d                                                                                                                        #  89    0x25547  3      
  movq %rbx, %r8                                                                                                                          #  90    0x2554a  3      
  je .L_25660                                                                                                                             #  91    0x2554d  6      
  movl %r12d, %r12d                                                                                                                       #  92    0x25553  3      
  movl (%r15,%r12,1), %esi                                                                                                                #  93    0x25556  4      
  movl %ebx, %ebx                                                                                                                         #  94    0x2555a  2      
  movl 0x10(%r15,%rbx,1), %edi                                                                                                            #  95    0x2555c  5      
  leal -0xc(%rsi), %eax                                                                                                                   #  96    0x25561  3      
  nop                                                                                                                                     #  97    0x25564  1      
  movl %eax, %eax                                                                                                                         #  98    0x25565  2      
  movl (%r15,%rax,1), %edx                                                                                                                #  99    0x25567  4      
  leal -0xc(%rdi), %eax                                                                                                                   #  100   0x2556b  3      
  movl %eax, %eax                                                                                                                         #  101   0x2556e  2      
  movl (%r15,%rax,1), %eax                                                                                                                #  102   0x25570  4      
  movl %edx, %ecx                                                                                                                         #  103   0x25574  2      
  cmpl %edx, %eax                                                                                                                         #  104   0x25576  2      
  cmovbel %eax, %ecx                                                                                                                      #  105   0x25578  3      
  movl %ecx, %ecx                                                                                                                         #  106   0x2557b  2      
  cmpq %rcx, %rcx                                                                                                                         #  107   0x2557d  3      
  nop                                                                                                                                     #  108   0x25580  1      
  movl %esi, %esi                                                                                                                         #  109   0x25581  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                                #  110   0x25583  4      
  movl %edi, %edi                                                                                                                         #  111   0x25587  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                                #  112   0x25589  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                                       #  113   0x2558d  3      
  movl %esi, %esi                                                                                                                         #  114   0x25590  2      
  movl %edi, %edi                                                                                                                         #  115   0x25592  2      
  seta %cl                                                                                                                                #  116   0x25594  3      
  setb %sil                                                                                                                               #  117   0x25597  4      
  subl %eax, %edx                                                                                                                         #  118   0x2559b  2      
  subb %sil, %cl                                                                                                                          #  119   0x2559d  3      
  xchgw %ax, %ax                                                                                                                          #  120   0x255a0  3      
  movsbl %cl, %ecx                                                                                                                        #  121   0x255a3  3      
  testl %ecx, %ecx                                                                                                                        #  122   0x255a6  2      
  cmovel %edx, %ecx                                                                                                                       #  123   0x255a8  3      
  testl %ecx, %ecx                                                                                                                        #  124   0x255ab  2      
  js .L_25660                                                                                                                             #  125   0x255ad  6      
  nop                                                                                                                                     #  126   0x255b3  1      
  nop                                                                                                                                     #  127   0x255b4  1      
.L_25620:                                                                                                                                 #        0x255b5  0      
  movl %r8d, %r8d                                                                                                                         #  128   0x255b5  3      
  movl %r14d, 0x14(%r15,%r8,1)                                                                                                            #  129   0x255b8  5      
  addl $0x38, %esp                                                                                                                        #  130   0x255bd  3      
  addq %r15, %rsp                                                                                                                         #  131   0x255c0  3      
  popq %rbx                                                                                                                               #  132   0x255c3  2      
  popq %r12                                                                                                                               #  133   0x255c5  3      
  popq %r13                                                                                                                               #  134   0x255c8  3      
  popq %r14                                                                                                                               #  135   0x255cb  3      
  popq %r11                                                                                                                               #  136   0x255ce  3      
  nop                                                                                                                                     #  137   0x255d1  1      
  andl $0xffffffe0, %r11d                                                                                                                 #  138   0x255d2  7      
  addq %r15, %r11                                                                                                                         #  139   0x255d9  3      
  jmpq %r11                                                                                                                               #  140   0x255dc  3      
  nop                                                                                                                                     #  141   0x255df  1      
  nop                                                                                                                                     #  142   0x255e0  1      
.L_25660:                                                                                                                                 #        0x255e1  0      
  leal 0x20(%rsp), %eax                                                                                                                   #  143   0x255e1  4      
  movl %r12d, %esi                                                                                                                        #  144   0x255e5  3      
  movl %eax, %edi                                                                                                                         #  145   0x255e8  2      
  movq %rax, 0x8(%rsp)                                                                                                                    #  146   0x255ea  5      
  nop                                                                                                                                     #  147   0x255ef  1      
  callq ._ZNSsC1ERKSs                                                                                                                     #  148   0x255f0  5      
  movl 0x8(%rsp), %edx                                                                                                                    #  149   0x255f5  4      
  leal 0x28(%r13), %edi                                                                                                                   #  150   0x255f9  4      
  movl %ebx, %esi                                                                                                                         #  151   0x255fd  2      
  movl $0x0, 0x24(%rsp)                                                                                                                   #  152   0x255ff  8      
  nop                                                                                                                                     #  153   0x25607  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_  #  154   0x25608  5      
  movl 0x8(%rsp), %edi                                                                                                                    #  155   0x2560d  4      
  movl %eax, %r8d                                                                                                                         #  156   0x25611  3      
  movq %r8, 0x18(%rsp)                                                                                                                    #  157   0x25614  5      
  nop                                                                                                                                     #  158   0x25619  1      
  callq ._ZNSsD1Ev                                                                                                                        #  159   0x2561a  5      
  movq 0x18(%rsp), %r8                                                                                                                    #  160   0x2561f  5      
  jmpq .L_25620                                                                                                                           #  161   0x25624  5      
  nop                                                                                                                                     #  162   0x25629  1      
  nop                                                                                                                                     #  163   0x2562a  1      
  movl 0x8(%rsp), %edi                                                                                                                    #  164   0x2562b  4      
  movl %eax, %ebx                                                                                                                         #  165   0x2562f  2      
  nop                                                                                                                                     #  166   0x25631  1      
  nop                                                                                                                                     #  167   0x25632  1      
  callq ._ZNSsD1Ev                                                                                                                        #  168   0x25633  5      
  movl %ebx, %edi                                                                                                                         #  169   0x25638  2      
  nop                                                                                                                                     #  170   0x2563a  1      
  nop                                                                                                                                     #  171   0x2563b  1      
  callq ._Unwind_Resume                                                                                                                   #  172   0x2563c  5      
                                                                                                                                                                   
.size _ZN2pp6Module18AddPluginInterfaceERKSsPKv, .-_ZN2pp6Module18AddPluginInterfaceERKSsPKv

