  .text
  .globl _ZN2pp6Module18AddPluginInterfaceERKSsPKv
  .type _ZN2pp6Module18AddPluginInterfaceERKSsPKv, @function

#! file-offset 0x254e0
#! rip-offset  0x254e0
#! capacity    736 bytes

# Text                                                                                                                                    #  Line  RIP      Bytes  
._ZN2pp6Module18AddPluginInterfaceERKSsPKv:                                                                                               #        0x254e0  0      
  pushq %r14                                                                                                                              #  1     0x254e0  3      
  movl %edx, %r14d                                                                                                                        #  2     0x254e3  3      
  pushq %r13                                                                                                                              #  3     0x254e6  3      
  movl %edi, %r13d                                                                                                                        #  4     0x254e9  3      
  movl %r13d, %edi                                                                                                                        #  5     0x254ec  3      
  pushq %r12                                                                                                                              #  6     0x254ef  3      
  movl %esi, %r12d                                                                                                                        #  7     0x254f2  3      
  pushq %rbx                                                                                                                              #  8     0x254f5  2      
  subl $0x38, %esp                                                                                                                        #  9     0x254f7  3      
  addq %r15, %rsp                                                                                                                         #  10    0x254fa  3      
  movl %r12d, %r12d                                                                                                                       #  11    0x254fd  3      
  movl (%r15,%r12,1), %esi                                                                                                                #  12    0x25500  4      
  nop                                                                                                                                     #  13    0x25504  1      
  nop                                                                                                                                     #  14    0x25505  1      
  callq ._ZN2pp6Module18GetPluginInterfaceEPKc                                                                                            #  15    0x25506  5      
  testl %eax, %eax                                                                                                                        #  16    0x2550b  2      
  je .L_25540                                                                                                                             #  17    0x2550d  6      
  addl $0x38, %esp                                                                                                                        #  18    0x25513  3      
  addq %r15, %rsp                                                                                                                         #  19    0x25516  3      
  popq %rbx                                                                                                                               #  20    0x25519  2      
  popq %r12                                                                                                                               #  21    0x2551b  3      
  popq %r13                                                                                                                               #  22    0x2551e  3      
  popq %r14                                                                                                                               #  23    0x25521  3      
  popq %r11                                                                                                                               #  24    0x25524  3      
  andl $0xffffffe0, %r11d                                                                                                                 #  25    0x25527  7      
  addq %r15, %r11                                                                                                                         #  26    0x2552e  3      
  jmpq %r11                                                                                                                               #  27    0x25531  3      
  nop                                                                                                                                     #  28    0x25534  1      
.L_25540:                                                                                                                                 #        0x25535  0      
  movl %r13d, %r13d                                                                                                                       #  29    0x25535  3      
  movl 0x30(%r15,%r13,1), %edx                                                                                                            #  30    0x25538  5      
  leal 0x2c(%r13), %r10d                                                                                                                  #  31    0x2553d  4      
  movq %r10, %rbx                                                                                                                         #  32    0x25541  3      
  testq %rdx, %rdx                                                                                                                        #  33    0x25544  3      
  je .L_25640                                                                                                                             #  34    0x25547  6      
  movl %r12d, %r12d                                                                                                                       #  35    0x2554d  3      
  movl (%r15,%r12,1), %r9d                                                                                                                #  36    0x25550  4      
  nop                                                                                                                                     #  37    0x25554  1      
  leal -0xc(%r9), %eax                                                                                                                    #  38    0x25555  4      
  movl %eax, %eax                                                                                                                         #  39    0x25559  2      
  movl (%r15,%rax,1), %r8d                                                                                                                #  40    0x2555b  4      
  jmpq .L_255c0                                                                                                                           #  41    0x2555f  5      
  nop                                                                                                                                     #  42    0x25564  1      
  nop                                                                                                                                     #  43    0x25565  1      
.L_25580:                                                                                                                                 #        0x25566  0      
  movl %edx, %edx                                                                                                                         #  44    0x25566  2      
  movl 0x8(%r15,%rdx,1), %eax                                                                                                             #  45    0x25568  5      
  movq %rdx, %rbx                                                                                                                         #  46    0x2556d  3      
  testq %rax, %rax                                                                                                                        #  47    0x25570  3      
  je .L_25640                                                                                                                             #  48    0x25573  6      
  nop                                                                                                                                     #  49    0x25579  1      
.L_255a0:                                                                                                                                 #        0x2557a  0      
  movq %rax, %rdx                                                                                                                         #  50    0x2557a  3      
  nop                                                                                                                                     #  51    0x2557d  1      
  nop                                                                                                                                     #  52    0x2557e  1      
.L_255c0:                                                                                                                                 #        0x2557f  0      
  movl %edx, %edx                                                                                                                         #  53    0x2557f  2      
  movl 0x10(%r15,%rdx,1), %esi                                                                                                            #  54    0x25581  5      
  movq %r9, %rdi                                                                                                                          #  55    0x25586  3      
  leal -0xc(%rsi), %eax                                                                                                                   #  56    0x25589  3      
  movl %eax, %eax                                                                                                                         #  57    0x2558c  2      
  movl (%r15,%rax,1), %eax                                                                                                                #  58    0x2558e  4      
  cmpl %eax, %r8d                                                                                                                         #  59    0x25592  3      
  movl %eax, %ecx                                                                                                                         #  60    0x25595  2      
  cmovbel %r8d, %ecx                                                                                                                      #  61    0x25597  4      
  movl %ecx, %ecx                                                                                                                         #  62    0x2559b  2      
  xchgw %ax, %ax                                                                                                                          #  63    0x2559d  3      
  cmpq %rcx, %rcx                                                                                                                         #  64    0x255a0  3      
  movl %esi, %esi                                                                                                                         #  65    0x255a3  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                                #  66    0x255a5  4      
  movl %edi, %edi                                                                                                                         #  67    0x255a9  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                                #  68    0x255ab  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                                       #  69    0x255af  3      
  movl %esi, %esi                                                                                                                         #  70    0x255b2  2      
  movl %edi, %edi                                                                                                                         #  71    0x255b4  2      
  seta %cl                                                                                                                                #  72    0x255b6  3      
  setb %sil                                                                                                                               #  73    0x255b9  4      
  subl %r8d, %eax                                                                                                                         #  74    0x255bd  3      
  nop                                                                                                                                     #  75    0x255c0  1      
  subb %sil, %cl                                                                                                                          #  76    0x255c1  3      
  movsbl %cl, %ecx                                                                                                                        #  77    0x255c4  3      
  testl %ecx, %ecx                                                                                                                        #  78    0x255c7  2      
  cmovel %eax, %ecx                                                                                                                       #  79    0x255c9  3      
  testl %ecx, %ecx                                                                                                                        #  80    0x255cc  2      
  jns .L_25580                                                                                                                            #  81    0x255ce  6      
  movl %edx, %edx                                                                                                                         #  82    0x255d4  2      
  movl 0xc(%r15,%rdx,1), %eax                                                                                                             #  83    0x255d6  5      
  testq %rax, %rax                                                                                                                        #  84    0x255db  3      
  nop                                                                                                                                     #  85    0x255de  1      
  jne .L_255a0                                                                                                                            #  86    0x255df  6      
  nop                                                                                                                                     #  87    0x255e5  1      
  nop                                                                                                                                     #  88    0x255e6  1      
.L_25640:                                                                                                                                 #        0x255e7  0      
  cmpl %ebx, %r10d                                                                                                                        #  89    0x255e7  3      
  movq %rbx, %r8                                                                                                                          #  90    0x255ea  3      
  je .L_25700                                                                                                                             #  91    0x255ed  6      
  movl %r12d, %r12d                                                                                                                       #  92    0x255f3  3      
  movl (%r15,%r12,1), %esi                                                                                                                #  93    0x255f6  4      
  movl %ebx, %ebx                                                                                                                         #  94    0x255fa  2      
  movl 0x10(%r15,%rbx,1), %edi                                                                                                            #  95    0x255fc  5      
  leal -0xc(%rsi), %eax                                                                                                                   #  96    0x25601  3      
  nop                                                                                                                                     #  97    0x25604  1      
  movl %eax, %eax                                                                                                                         #  98    0x25605  2      
  movl (%r15,%rax,1), %edx                                                                                                                #  99    0x25607  4      
  leal -0xc(%rdi), %eax                                                                                                                   #  100   0x2560b  3      
  movl %eax, %eax                                                                                                                         #  101   0x2560e  2      
  movl (%r15,%rax,1), %eax                                                                                                                #  102   0x25610  4      
  movl %edx, %ecx                                                                                                                         #  103   0x25614  2      
  cmpl %edx, %eax                                                                                                                         #  104   0x25616  2      
  cmovbel %eax, %ecx                                                                                                                      #  105   0x25618  3      
  movl %ecx, %ecx                                                                                                                         #  106   0x2561b  2      
  cmpq %rcx, %rcx                                                                                                                         #  107   0x2561d  3      
  nop                                                                                                                                     #  108   0x25620  1      
  movl %esi, %esi                                                                                                                         #  109   0x25621  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                                #  110   0x25623  4      
  movl %edi, %edi                                                                                                                         #  111   0x25627  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                                #  112   0x25629  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                                       #  113   0x2562d  3      
  movl %esi, %esi                                                                                                                         #  114   0x25630  2      
  movl %edi, %edi                                                                                                                         #  115   0x25632  2      
  seta %cl                                                                                                                                #  116   0x25634  3      
  setb %sil                                                                                                                               #  117   0x25637  4      
  subl %eax, %edx                                                                                                                         #  118   0x2563b  2      
  subb %sil, %cl                                                                                                                          #  119   0x2563d  3      
  xchgw %ax, %ax                                                                                                                          #  120   0x25640  3      
  movsbl %cl, %ecx                                                                                                                        #  121   0x25643  3      
  testl %ecx, %ecx                                                                                                                        #  122   0x25646  2      
  cmovel %edx, %ecx                                                                                                                       #  123   0x25648  3      
  testl %ecx, %ecx                                                                                                                        #  124   0x2564b  2      
  js .L_25700                                                                                                                             #  125   0x2564d  6      
  nop                                                                                                                                     #  126   0x25653  1      
  nop                                                                                                                                     #  127   0x25654  1      
.L_256c0:                                                                                                                                 #        0x25655  0      
  movl %r8d, %r8d                                                                                                                         #  128   0x25655  3      
  movl %r14d, 0x14(%r15,%r8,1)                                                                                                            #  129   0x25658  5      
  addl $0x38, %esp                                                                                                                        #  130   0x2565d  3      
  addq %r15, %rsp                                                                                                                         #  131   0x25660  3      
  popq %rbx                                                                                                                               #  132   0x25663  2      
  popq %r12                                                                                                                               #  133   0x25665  3      
  popq %r13                                                                                                                               #  134   0x25668  3      
  popq %r14                                                                                                                               #  135   0x2566b  3      
  popq %r11                                                                                                                               #  136   0x2566e  3      
  nop                                                                                                                                     #  137   0x25671  1      
  andl $0xffffffe0, %r11d                                                                                                                 #  138   0x25672  7      
  addq %r15, %r11                                                                                                                         #  139   0x25679  3      
  jmpq %r11                                                                                                                               #  140   0x2567c  3      
  nop                                                                                                                                     #  141   0x2567f  1      
  nop                                                                                                                                     #  142   0x25680  1      
.L_25700:                                                                                                                                 #        0x25681  0      
  leal 0x20(%rsp), %eax                                                                                                                   #  143   0x25681  4      
  movl %r12d, %esi                                                                                                                        #  144   0x25685  3      
  movl %eax, %edi                                                                                                                         #  145   0x25688  2      
  movq %rax, 0x8(%rsp)                                                                                                                    #  146   0x2568a  5      
  nop                                                                                                                                     #  147   0x2568f  1      
  callq ._ZNSsC1ERKSs                                                                                                                     #  148   0x25690  5      
  movl 0x8(%rsp), %edx                                                                                                                    #  149   0x25695  4      
  leal 0x28(%r13), %edi                                                                                                                   #  150   0x25699  4      
  movl %ebx, %esi                                                                                                                         #  151   0x2569d  2      
  movl $0x0, 0x24(%rsp)                                                                                                                   #  152   0x2569f  8      
  nop                                                                                                                                     #  153   0x256a7  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_  #  154   0x256a8  5      
  movl 0x8(%rsp), %edi                                                                                                                    #  155   0x256ad  4      
  movl %eax, %r8d                                                                                                                         #  156   0x256b1  3      
  movq %r8, 0x18(%rsp)                                                                                                                    #  157   0x256b4  5      
  nop                                                                                                                                     #  158   0x256b9  1      
  callq ._ZNSsD1Ev                                                                                                                        #  159   0x256ba  5      
  movq 0x18(%rsp), %r8                                                                                                                    #  160   0x256bf  5      
  jmpq .L_256c0                                                                                                                           #  161   0x256c4  5      
  nop                                                                                                                                     #  162   0x256c9  1      
  nop                                                                                                                                     #  163   0x256ca  1      
  movl 0x8(%rsp), %edi                                                                                                                    #  164   0x256cb  4      
  movl %eax, %ebx                                                                                                                         #  165   0x256cf  2      
  nop                                                                                                                                     #  166   0x256d1  1      
  nop                                                                                                                                     #  167   0x256d2  1      
  callq ._ZNSsD1Ev                                                                                                                        #  168   0x256d3  5      
  movl %ebx, %edi                                                                                                                         #  169   0x256d8  2      
  nop                                                                                                                                     #  170   0x256da  1      
  nop                                                                                                                                     #  171   0x256db  1      
  callq ._Unwind_Resume                                                                                                                   #  172   0x256dc  5      
                                                                                                                                                                   
.size _ZN2pp6Module18AddPluginInterfaceERKSsPKv, .-_ZN2pp6Module18AddPluginInterfaceERKSsPKv

