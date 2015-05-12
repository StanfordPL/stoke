  .text
  .globl _ZN2pp6Module18AddPluginInterfaceERKSsPKv
  .type _ZN2pp6Module18AddPluginInterfaceERKSsPKv, @function

#! file-offset 0x25460
#! rip-offset  0x25460
#! capacity    736 bytes

# Text                                                                                                                                    #  Line  RIP      Bytes  
._ZN2pp6Module18AddPluginInterfaceERKSsPKv:                                                                                               #        0x25460  0      
  pushq %r14                                                                                                                              #  1     0x25460  3      
  movl %edx, %r14d                                                                                                                        #  2     0x25463  3      
  pushq %r13                                                                                                                              #  3     0x25466  3      
  movl %edi, %r13d                                                                                                                        #  4     0x25469  3      
  movl %r13d, %edi                                                                                                                        #  5     0x2546c  3      
  pushq %r12                                                                                                                              #  6     0x2546f  3      
  movl %esi, %r12d                                                                                                                        #  7     0x25472  3      
  pushq %rbx                                                                                                                              #  8     0x25475  2      
  subl $0x38, %esp                                                                                                                        #  9     0x25477  3      
  addq %r15, %rsp                                                                                                                         #  10    0x2547a  3      
  movl %r12d, %r12d                                                                                                                       #  11    0x2547d  3      
  movl (%r15,%r12,1), %esi                                                                                                                #  12    0x25480  4      
  nop                                                                                                                                     #  13    0x25484  1      
  nop                                                                                                                                     #  14    0x25485  1      
  callq ._ZN2pp6Module18GetPluginInterfaceEPKc                                                                                            #  15    0x25486  5      
  testl %eax, %eax                                                                                                                        #  16    0x2548b  2      
  je .L_254c0                                                                                                                             #  17    0x2548d  6      
  addl $0x38, %esp                                                                                                                        #  18    0x25493  3      
  addq %r15, %rsp                                                                                                                         #  19    0x25496  3      
  popq %rbx                                                                                                                               #  20    0x25499  2      
  popq %r12                                                                                                                               #  21    0x2549b  3      
  popq %r13                                                                                                                               #  22    0x2549e  3      
  popq %r14                                                                                                                               #  23    0x254a1  3      
  popq %r11                                                                                                                               #  24    0x254a4  3      
  andl $0xffffffe0, %r11d                                                                                                                 #  25    0x254a7  7      
  addq %r15, %r11                                                                                                                         #  26    0x254ae  3      
  jmpq %r11                                                                                                                               #  27    0x254b1  3      
  nop                                                                                                                                     #  28    0x254b4  1      
.L_254c0:                                                                                                                                 #        0x254b5  0      
  movl %r13d, %r13d                                                                                                                       #  29    0x254b5  3      
  movl 0x30(%r15,%r13,1), %edx                                                                                                            #  30    0x254b8  5      
  leal 0x2c(%r13), %r10d                                                                                                                  #  31    0x254bd  4      
  movq %r10, %rbx                                                                                                                         #  32    0x254c1  3      
  testq %rdx, %rdx                                                                                                                        #  33    0x254c4  3      
  je .L_255c0                                                                                                                             #  34    0x254c7  6      
  movl %r12d, %r12d                                                                                                                       #  35    0x254cd  3      
  movl (%r15,%r12,1), %r9d                                                                                                                #  36    0x254d0  4      
  nop                                                                                                                                     #  37    0x254d4  1      
  leal -0xc(%r9), %eax                                                                                                                    #  38    0x254d5  4      
  movl %eax, %eax                                                                                                                         #  39    0x254d9  2      
  movl (%r15,%rax,1), %r8d                                                                                                                #  40    0x254db  4      
  jmpq .L_25540                                                                                                                           #  41    0x254df  5      
  nop                                                                                                                                     #  42    0x254e4  1      
  nop                                                                                                                                     #  43    0x254e5  1      
.L_25500:                                                                                                                                 #        0x254e6  0      
  movl %edx, %edx                                                                                                                         #  44    0x254e6  2      
  movl 0x8(%r15,%rdx,1), %eax                                                                                                             #  45    0x254e8  5      
  movq %rdx, %rbx                                                                                                                         #  46    0x254ed  3      
  testq %rax, %rax                                                                                                                        #  47    0x254f0  3      
  je .L_255c0                                                                                                                             #  48    0x254f3  6      
  nop                                                                                                                                     #  49    0x254f9  1      
.L_25520:                                                                                                                                 #        0x254fa  0      
  movq %rax, %rdx                                                                                                                         #  50    0x254fa  3      
  nop                                                                                                                                     #  51    0x254fd  1      
  nop                                                                                                                                     #  52    0x254fe  1      
.L_25540:                                                                                                                                 #        0x254ff  0      
  movl %edx, %edx                                                                                                                         #  53    0x254ff  2      
  movl 0x10(%r15,%rdx,1), %esi                                                                                                            #  54    0x25501  5      
  movq %r9, %rdi                                                                                                                          #  55    0x25506  3      
  leal -0xc(%rsi), %eax                                                                                                                   #  56    0x25509  3      
  movl %eax, %eax                                                                                                                         #  57    0x2550c  2      
  movl (%r15,%rax,1), %eax                                                                                                                #  58    0x2550e  4      
  cmpl %eax, %r8d                                                                                                                         #  59    0x25512  3      
  movl %eax, %ecx                                                                                                                         #  60    0x25515  2      
  cmovbel %r8d, %ecx                                                                                                                      #  61    0x25517  4      
  movl %ecx, %ecx                                                                                                                         #  62    0x2551b  2      
  xchgw %ax, %ax                                                                                                                          #  63    0x2551d  3      
  cmpq %rcx, %rcx                                                                                                                         #  64    0x25520  3      
  movl %esi, %esi                                                                                                                         #  65    0x25523  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                                #  66    0x25525  4      
  movl %edi, %edi                                                                                                                         #  67    0x25529  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                                #  68    0x2552b  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                                       #  69    0x2552f  3      
  movl %esi, %esi                                                                                                                         #  70    0x25532  2      
  movl %edi, %edi                                                                                                                         #  71    0x25534  2      
  seta %cl                                                                                                                                #  72    0x25536  3      
  setb %sil                                                                                                                               #  73    0x25539  4      
  subl %r8d, %eax                                                                                                                         #  74    0x2553d  3      
  nop                                                                                                                                     #  75    0x25540  1      
  subb %sil, %cl                                                                                                                          #  76    0x25541  3      
  movsbl %cl, %ecx                                                                                                                        #  77    0x25544  3      
  testl %ecx, %ecx                                                                                                                        #  78    0x25547  2      
  cmovel %eax, %ecx                                                                                                                       #  79    0x25549  3      
  testl %ecx, %ecx                                                                                                                        #  80    0x2554c  2      
  jns .L_25500                                                                                                                            #  81    0x2554e  6      
  movl %edx, %edx                                                                                                                         #  82    0x25554  2      
  movl 0xc(%r15,%rdx,1), %eax                                                                                                             #  83    0x25556  5      
  testq %rax, %rax                                                                                                                        #  84    0x2555b  3      
  nop                                                                                                                                     #  85    0x2555e  1      
  jne .L_25520                                                                                                                            #  86    0x2555f  6      
  nop                                                                                                                                     #  87    0x25565  1      
  nop                                                                                                                                     #  88    0x25566  1      
.L_255c0:                                                                                                                                 #        0x25567  0      
  cmpl %ebx, %r10d                                                                                                                        #  89    0x25567  3      
  movq %rbx, %r8                                                                                                                          #  90    0x2556a  3      
  je .L_25680                                                                                                                             #  91    0x2556d  6      
  movl %r12d, %r12d                                                                                                                       #  92    0x25573  3      
  movl (%r15,%r12,1), %esi                                                                                                                #  93    0x25576  4      
  movl %ebx, %ebx                                                                                                                         #  94    0x2557a  2      
  movl 0x10(%r15,%rbx,1), %edi                                                                                                            #  95    0x2557c  5      
  leal -0xc(%rsi), %eax                                                                                                                   #  96    0x25581  3      
  nop                                                                                                                                     #  97    0x25584  1      
  movl %eax, %eax                                                                                                                         #  98    0x25585  2      
  movl (%r15,%rax,1), %edx                                                                                                                #  99    0x25587  4      
  leal -0xc(%rdi), %eax                                                                                                                   #  100   0x2558b  3      
  movl %eax, %eax                                                                                                                         #  101   0x2558e  2      
  movl (%r15,%rax,1), %eax                                                                                                                #  102   0x25590  4      
  movl %edx, %ecx                                                                                                                         #  103   0x25594  2      
  cmpl %edx, %eax                                                                                                                         #  104   0x25596  2      
  cmovbel %eax, %ecx                                                                                                                      #  105   0x25598  3      
  movl %ecx, %ecx                                                                                                                         #  106   0x2559b  2      
  cmpq %rcx, %rcx                                                                                                                         #  107   0x2559d  3      
  nop                                                                                                                                     #  108   0x255a0  1      
  movl %esi, %esi                                                                                                                         #  109   0x255a1  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                                #  110   0x255a3  4      
  movl %edi, %edi                                                                                                                         #  111   0x255a7  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                                #  112   0x255a9  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                                       #  113   0x255ad  3      
  movl %esi, %esi                                                                                                                         #  114   0x255b0  2      
  movl %edi, %edi                                                                                                                         #  115   0x255b2  2      
  seta %cl                                                                                                                                #  116   0x255b4  3      
  setb %sil                                                                                                                               #  117   0x255b7  4      
  subl %eax, %edx                                                                                                                         #  118   0x255bb  2      
  subb %sil, %cl                                                                                                                          #  119   0x255bd  3      
  xchgw %ax, %ax                                                                                                                          #  120   0x255c0  3      
  movsbl %cl, %ecx                                                                                                                        #  121   0x255c3  3      
  testl %ecx, %ecx                                                                                                                        #  122   0x255c6  2      
  cmovel %edx, %ecx                                                                                                                       #  123   0x255c8  3      
  testl %ecx, %ecx                                                                                                                        #  124   0x255cb  2      
  js .L_25680                                                                                                                             #  125   0x255cd  6      
  nop                                                                                                                                     #  126   0x255d3  1      
  nop                                                                                                                                     #  127   0x255d4  1      
.L_25640:                                                                                                                                 #        0x255d5  0      
  movl %r8d, %r8d                                                                                                                         #  128   0x255d5  3      
  movl %r14d, 0x14(%r15,%r8,1)                                                                                                            #  129   0x255d8  5      
  addl $0x38, %esp                                                                                                                        #  130   0x255dd  3      
  addq %r15, %rsp                                                                                                                         #  131   0x255e0  3      
  popq %rbx                                                                                                                               #  132   0x255e3  2      
  popq %r12                                                                                                                               #  133   0x255e5  3      
  popq %r13                                                                                                                               #  134   0x255e8  3      
  popq %r14                                                                                                                               #  135   0x255eb  3      
  popq %r11                                                                                                                               #  136   0x255ee  3      
  nop                                                                                                                                     #  137   0x255f1  1      
  andl $0xffffffe0, %r11d                                                                                                                 #  138   0x255f2  7      
  addq %r15, %r11                                                                                                                         #  139   0x255f9  3      
  jmpq %r11                                                                                                                               #  140   0x255fc  3      
  nop                                                                                                                                     #  141   0x255ff  1      
  nop                                                                                                                                     #  142   0x25600  1      
.L_25680:                                                                                                                                 #        0x25601  0      
  leal 0x20(%rsp), %eax                                                                                                                   #  143   0x25601  4      
  movl %r12d, %esi                                                                                                                        #  144   0x25605  3      
  movl %eax, %edi                                                                                                                         #  145   0x25608  2      
  movq %rax, 0x8(%rsp)                                                                                                                    #  146   0x2560a  5      
  nop                                                                                                                                     #  147   0x2560f  1      
  callq ._ZNSsC1ERKSs                                                                                                                     #  148   0x25610  5      
  movl 0x8(%rsp), %edx                                                                                                                    #  149   0x25615  4      
  leal 0x28(%r13), %edi                                                                                                                   #  150   0x25619  4      
  movl %ebx, %esi                                                                                                                         #  151   0x2561d  2      
  movl $0x0, 0x24(%rsp)                                                                                                                   #  152   0x2561f  8      
  nop                                                                                                                                     #  153   0x25627  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_  #  154   0x25628  5      
  movl 0x8(%rsp), %edi                                                                                                                    #  155   0x2562d  4      
  movl %eax, %r8d                                                                                                                         #  156   0x25631  3      
  movq %r8, 0x18(%rsp)                                                                                                                    #  157   0x25634  5      
  nop                                                                                                                                     #  158   0x25639  1      
  callq ._ZNSsD1Ev                                                                                                                        #  159   0x2563a  5      
  movq 0x18(%rsp), %r8                                                                                                                    #  160   0x2563f  5      
  jmpq .L_25640                                                                                                                           #  161   0x25644  5      
  nop                                                                                                                                     #  162   0x25649  1      
  nop                                                                                                                                     #  163   0x2564a  1      
  movl 0x8(%rsp), %edi                                                                                                                    #  164   0x2564b  4      
  movl %eax, %ebx                                                                                                                         #  165   0x2564f  2      
  nop                                                                                                                                     #  166   0x25651  1      
  nop                                                                                                                                     #  167   0x25652  1      
  callq ._ZNSsD1Ev                                                                                                                        #  168   0x25653  5      
  movl %ebx, %edi                                                                                                                         #  169   0x25658  2      
  nop                                                                                                                                     #  170   0x2565a  1      
  nop                                                                                                                                     #  171   0x2565b  1      
  callq ._Unwind_Resume                                                                                                                   #  172   0x2565c  5      
                                                                                                                                                                   
.size _ZN2pp6Module18AddPluginInterfaceERKSsPKv, .-_ZN2pp6Module18AddPluginInterfaceERKSsPKv

