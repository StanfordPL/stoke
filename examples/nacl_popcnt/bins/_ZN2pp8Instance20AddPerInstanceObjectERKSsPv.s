  .text
  .globl _ZN2pp8Instance20AddPerInstanceObjectERKSsPv
  .type _ZN2pp8Instance20AddPerInstanceObjectERKSsPv, @function

#! file-offset 0x21880
#! rip-offset  0x21880
#! capacity    704 bytes

# Text                                                                                                                                   #  Line  RIP      Bytes  
._ZN2pp8Instance20AddPerInstanceObjectERKSsPv:                                                                                           #        0x21880  0      
  pushq %r14                                                                                                                             #  1     0x21880  3      
  movl %edx, %r14d                                                                                                                       #  2     0x21883  3      
  movl %esi, %r10d                                                                                                                       #  3     0x21886  3      
  pushq %r13                                                                                                                             #  4     0x21889  3      
  pushq %r12                                                                                                                             #  5     0x2188c  3      
  movl %edi, %r12d                                                                                                                       #  6     0x2188f  3      
  leal 0xc(%r12), %r11d                                                                                                                  #  7     0x21892  5      
  pushq %rbx                                                                                                                             #  8     0x21897  2      
  movq %r11, %rbx                                                                                                                        #  9     0x21899  3      
  subl $0x18, %esp                                                                                                                       #  10    0x2189c  3      
  addq %r15, %rsp                                                                                                                        #  11    0x2189f  3      
  xchgw %ax, %ax                                                                                                                         #  12    0x218a2  3      
  movl %r12d, %r12d                                                                                                                      #  13    0x218a5  3      
  movl 0x10(%r15,%r12,1), %edx                                                                                                           #  14    0x218a8  5      
  testq %rdx, %rdx                                                                                                                       #  15    0x218ad  3      
  je .L_219a0                                                                                                                            #  16    0x218b0  6      
  movl %r10d, %r10d                                                                                                                      #  17    0x218b6  3      
  movl (%r15,%r10,1), %r9d                                                                                                               #  18    0x218b9  4      
  leal -0xc(%r9), %eax                                                                                                                   #  19    0x218bd  4      
  nop                                                                                                                                    #  20    0x218c1  1      
  movl %eax, %eax                                                                                                                        #  21    0x218c2  2      
  movl (%r15,%rax,1), %r8d                                                                                                               #  22    0x218c4  4      
  jmpq .L_21920                                                                                                                          #  23    0x218c8  5      
  nop                                                                                                                                    #  24    0x218cd  1      
  nop                                                                                                                                    #  25    0x218ce  1      
.L_218e0:                                                                                                                                #        0x218cf  0      
  movl %edx, %edx                                                                                                                        #  26    0x218cf  2      
  movl 0x8(%r15,%rdx,1), %eax                                                                                                            #  27    0x218d1  5      
  movq %rdx, %rbx                                                                                                                        #  28    0x218d6  3      
  testq %rax, %rax                                                                                                                       #  29    0x218d9  3      
  je .L_219a0                                                                                                                            #  30    0x218dc  6      
  nop                                                                                                                                    #  31    0x218e2  1      
.L_21900:                                                                                                                                #        0x218e3  0      
  movq %rax, %rdx                                                                                                                        #  32    0x218e3  3      
  nop                                                                                                                                    #  33    0x218e6  1      
  nop                                                                                                                                    #  34    0x218e7  1      
.L_21920:                                                                                                                                #        0x218e8  0      
  movl %edx, %edx                                                                                                                        #  35    0x218e8  2      
  movl 0x10(%r15,%rdx,1), %esi                                                                                                           #  36    0x218ea  5      
  movq %r9, %rdi                                                                                                                         #  37    0x218ef  3      
  leal -0xc(%rsi), %eax                                                                                                                  #  38    0x218f2  3      
  movl %eax, %eax                                                                                                                        #  39    0x218f5  2      
  movl (%r15,%rax,1), %eax                                                                                                               #  40    0x218f7  4      
  cmpl %eax, %r8d                                                                                                                        #  41    0x218fb  3      
  movl %eax, %ecx                                                                                                                        #  42    0x218fe  2      
  cmovbel %r8d, %ecx                                                                                                                     #  43    0x21900  4      
  movl %ecx, %ecx                                                                                                                        #  44    0x21904  2      
  xchgw %ax, %ax                                                                                                                         #  45    0x21906  3      
  cmpq %rcx, %rcx                                                                                                                        #  46    0x21909  3      
  movl %esi, %esi                                                                                                                        #  47    0x2190c  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                               #  48    0x2190e  4      
  movl %edi, %edi                                                                                                                        #  49    0x21912  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                               #  50    0x21914  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                                      #  51    0x21918  3      
  movl %esi, %esi                                                                                                                        #  52    0x2191b  2      
  movl %edi, %edi                                                                                                                        #  53    0x2191d  2      
  seta %cl                                                                                                                               #  54    0x2191f  3      
  setb %sil                                                                                                                              #  55    0x21922  4      
  subl %r8d, %eax                                                                                                                        #  56    0x21926  3      
  nop                                                                                                                                    #  57    0x21929  1      
  subb %sil, %cl                                                                                                                         #  58    0x2192a  3      
  movsbl %cl, %ecx                                                                                                                       #  59    0x2192d  3      
  testl %ecx, %ecx                                                                                                                       #  60    0x21930  2      
  cmovel %eax, %ecx                                                                                                                      #  61    0x21932  3      
  testl %ecx, %ecx                                                                                                                       #  62    0x21935  2      
  jns .L_218e0                                                                                                                           #  63    0x21937  6      
  movl %edx, %edx                                                                                                                        #  64    0x2193d  2      
  movl 0xc(%r15,%rdx,1), %eax                                                                                                            #  65    0x2193f  5      
  testq %rax, %rax                                                                                                                       #  66    0x21944  3      
  nop                                                                                                                                    #  67    0x21947  1      
  jne .L_21900                                                                                                                           #  68    0x21948  6      
  nop                                                                                                                                    #  69    0x2194e  1      
  nop                                                                                                                                    #  70    0x2194f  1      
.L_219a0:                                                                                                                                #        0x21950  0      
  cmpl %ebx, %r11d                                                                                                                       #  71    0x21950  3      
  movq %rbx, %r13                                                                                                                        #  72    0x21953  3      
  je .L_21a60                                                                                                                            #  73    0x21956  6      
  movl %r10d, %r10d                                                                                                                      #  74    0x2195c  3      
  movl (%r15,%r10,1), %esi                                                                                                               #  75    0x2195f  4      
  movl %ebx, %ebx                                                                                                                        #  76    0x21963  2      
  movl 0x10(%r15,%rbx,1), %edi                                                                                                           #  77    0x21965  5      
  leal -0xc(%rsi), %eax                                                                                                                  #  78    0x2196a  3      
  nop                                                                                                                                    #  79    0x2196d  1      
  movl %eax, %eax                                                                                                                        #  80    0x2196e  2      
  movl (%r15,%rax,1), %edx                                                                                                               #  81    0x21970  4      
  leal -0xc(%rdi), %eax                                                                                                                  #  82    0x21974  3      
  movl %eax, %eax                                                                                                                        #  83    0x21977  2      
  movl (%r15,%rax,1), %eax                                                                                                               #  84    0x21979  4      
  movl %edx, %ecx                                                                                                                        #  85    0x2197d  2      
  cmpl %edx, %eax                                                                                                                        #  86    0x2197f  2      
  cmovbel %eax, %ecx                                                                                                                     #  87    0x21981  3      
  movl %ecx, %ecx                                                                                                                        #  88    0x21984  2      
  cmpq %rcx, %rcx                                                                                                                        #  89    0x21986  3      
  nop                                                                                                                                    #  90    0x21989  1      
  movl %esi, %esi                                                                                                                        #  91    0x2198a  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                               #  92    0x2198c  4      
  movl %edi, %edi                                                                                                                        #  93    0x21990  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                               #  94    0x21992  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                                      #  95    0x21996  3      
  movl %esi, %esi                                                                                                                        #  96    0x21999  2      
  movl %edi, %edi                                                                                                                        #  97    0x2199b  2      
  seta %cl                                                                                                                               #  98    0x2199d  3      
  setb %sil                                                                                                                              #  99    0x219a0  4      
  subl %eax, %edx                                                                                                                        #  100   0x219a4  2      
  subb %sil, %cl                                                                                                                         #  101   0x219a6  3      
  xchgw %ax, %ax                                                                                                                         #  102   0x219a9  3      
  movsbl %cl, %ecx                                                                                                                       #  103   0x219ac  3      
  testl %ecx, %ecx                                                                                                                       #  104   0x219af  2      
  cmovel %edx, %ecx                                                                                                                      #  105   0x219b1  3      
  testl %ecx, %ecx                                                                                                                       #  106   0x219b4  2      
  js .L_21a60                                                                                                                            #  107   0x219b6  6      
  nop                                                                                                                                    #  108   0x219bc  1      
  nop                                                                                                                                    #  109   0x219bd  1      
.L_21a20:                                                                                                                                #        0x219be  0      
  movl %r13d, %r13d                                                                                                                      #  110   0x219be  3      
  movl %r14d, 0x14(%r15,%r13,1)                                                                                                          #  111   0x219c1  5      
  addl $0x18, %esp                                                                                                                       #  112   0x219c6  3      
  addq %r15, %rsp                                                                                                                        #  113   0x219c9  3      
  popq %rbx                                                                                                                              #  114   0x219cc  2      
  popq %r12                                                                                                                              #  115   0x219ce  3      
  popq %r13                                                                                                                              #  116   0x219d1  3      
  popq %r14                                                                                                                              #  117   0x219d4  3      
  popq %r11                                                                                                                              #  118   0x219d7  3      
  nop                                                                                                                                    #  119   0x219da  1      
  andl $0xffffffe0, %r11d                                                                                                                #  120   0x219db  7      
  addq %r15, %r11                                                                                                                        #  121   0x219e2  3      
  jmpq %r11                                                                                                                              #  122   0x219e5  3      
  nop                                                                                                                                    #  123   0x219e8  1      
  nop                                                                                                                                    #  124   0x219e9  1      
.L_21a60:                                                                                                                                #        0x219ea  0      
  movl %r10d, %esi                                                                                                                       #  125   0x219ea  3      
  movl %esp, %edi                                                                                                                        #  126   0x219ed  2      
  movl %esp, %r13d                                                                                                                       #  127   0x219ef  3      
  nop                                                                                                                                    #  128   0x219f2  1      
  nop                                                                                                                                    #  129   0x219f3  1      
  callq ._ZNSsC1ERKSs                                                                                                                    #  130   0x219f4  5      
  leal 0x8(%r12), %edi                                                                                                                   #  131   0x219f9  5      
  movl %esp, %edx                                                                                                                        #  132   0x219fe  2      
  movl %ebx, %esi                                                                                                                        #  133   0x21a00  2      
  movl $0x0, 0x4(%rsp)                                                                                                                   #  134   0x21a02  8      
  nop                                                                                                                                    #  135   0x21a0a  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS3_ERKS3_  #  136   0x21a0b  5      
  movl (%rsp), %edi                                                                                                                      #  137   0x21a10  3      
  movl %eax, %r13d                                                                                                                       #  138   0x21a13  3      
  subl $0xc, %edi                                                                                                                        #  139   0x21a16  3      
  cmpl $0x10031da0, %edi                                                                                                                 #  140   0x21a19  6      
  je .L_21a20                                                                                                                            #  141   0x21a1f  6      
  movl %edi, %edi                                                                                                                        #  142   0x21a25  2      
  movl 0x8(%r15,%rdi,1), %eax                                                                                                            #  143   0x21a27  5      
  leal -0x1(%rax), %edx                                                                                                                  #  144   0x21a2c  3      
  nop                                                                                                                                    #  145   0x21a2f  1      
  testl %eax, %eax                                                                                                                       #  146   0x21a30  2      
  movl %edi, %edi                                                                                                                        #  147   0x21a32  2      
  movl %edx, 0x8(%r15,%rdi,1)                                                                                                            #  148   0x21a34  5      
  jg .L_21a20                                                                                                                            #  149   0x21a39  6      
  leal 0xf(%rsp), %esi                                                                                                                   #  150   0x21a3f  4      
  nop                                                                                                                                    #  151   0x21a43  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE                                                                                                  #  152   0x21a44  5      
  jmpq .L_21a20                                                                                                                          #  153   0x21a49  5      
  nop                                                                                                                                    #  154   0x21a4e  1      
  nop                                                                                                                                    #  155   0x21a4f  1      
  movl %eax, %ebx                                                                                                                        #  156   0x21a50  2      
  movl %r13d, %edi                                                                                                                       #  157   0x21a52  3      
  nop                                                                                                                                    #  158   0x21a55  1      
  nop                                                                                                                                    #  159   0x21a56  1      
  callq ._ZNSsD1Ev                                                                                                                       #  160   0x21a57  5      
  movl %ebx, %edi                                                                                                                        #  161   0x21a5c  2      
  nop                                                                                                                                    #  162   0x21a5e  1      
  nop                                                                                                                                    #  163   0x21a5f  1      
  callq ._Unwind_Resume                                                                                                                  #  164   0x21a60  5      
                                                                                                                                                                  
.size _ZN2pp8Instance20AddPerInstanceObjectERKSsPv, .-_ZN2pp8Instance20AddPerInstanceObjectERKSsPv

