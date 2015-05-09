  .text
  .globl _ZN2pp8Instance20AddPerInstanceObjectERKSsPv
  .type _ZN2pp8Instance20AddPerInstanceObjectERKSsPv, @function

#! file-offset 0x21860
#! rip-offset  0x21860
#! capacity    704 bytes

# Text                                                                                                                                   #  Line  RIP      Bytes  
._ZN2pp8Instance20AddPerInstanceObjectERKSsPv:                                                                                           #        0x21860  0      
  pushq %r14                                                                                                                             #  1     0x21860  3      
  movl %edx, %r14d                                                                                                                       #  2     0x21863  3      
  movl %esi, %r10d                                                                                                                       #  3     0x21866  3      
  pushq %r13                                                                                                                             #  4     0x21869  3      
  pushq %r12                                                                                                                             #  5     0x2186c  3      
  movl %edi, %r12d                                                                                                                       #  6     0x2186f  3      
  leal 0xc(%r12), %r11d                                                                                                                  #  7     0x21872  5      
  pushq %rbx                                                                                                                             #  8     0x21877  2      
  movq %r11, %rbx                                                                                                                        #  9     0x21879  3      
  subl $0x18, %esp                                                                                                                       #  10    0x2187c  3      
  addq %r15, %rsp                                                                                                                        #  11    0x2187f  3      
  xchgw %ax, %ax                                                                                                                         #  12    0x21882  3      
  movl %r12d, %r12d                                                                                                                      #  13    0x21885  3      
  movl 0x10(%r15,%r12,1), %edx                                                                                                           #  14    0x21888  5      
  testq %rdx, %rdx                                                                                                                       #  15    0x2188d  3      
  je .L_21980                                                                                                                            #  16    0x21890  6      
  movl %r10d, %r10d                                                                                                                      #  17    0x21896  3      
  movl (%r15,%r10,1), %r9d                                                                                                               #  18    0x21899  4      
  leal -0xc(%r9), %eax                                                                                                                   #  19    0x2189d  4      
  nop                                                                                                                                    #  20    0x218a1  1      
  movl %eax, %eax                                                                                                                        #  21    0x218a2  2      
  movl (%r15,%rax,1), %r8d                                                                                                               #  22    0x218a4  4      
  jmpq .L_21900                                                                                                                          #  23    0x218a8  5      
  nop                                                                                                                                    #  24    0x218ad  1      
  nop                                                                                                                                    #  25    0x218ae  1      
.L_218c0:                                                                                                                                #        0x218af  0      
  movl %edx, %edx                                                                                                                        #  26    0x218af  2      
  movl 0x8(%r15,%rdx,1), %eax                                                                                                            #  27    0x218b1  5      
  movq %rdx, %rbx                                                                                                                        #  28    0x218b6  3      
  testq %rax, %rax                                                                                                                       #  29    0x218b9  3      
  je .L_21980                                                                                                                            #  30    0x218bc  6      
  nop                                                                                                                                    #  31    0x218c2  1      
.L_218e0:                                                                                                                                #        0x218c3  0      
  movq %rax, %rdx                                                                                                                        #  32    0x218c3  3      
  nop                                                                                                                                    #  33    0x218c6  1      
  nop                                                                                                                                    #  34    0x218c7  1      
.L_21900:                                                                                                                                #        0x218c8  0      
  movl %edx, %edx                                                                                                                        #  35    0x218c8  2      
  movl 0x10(%r15,%rdx,1), %esi                                                                                                           #  36    0x218ca  5      
  movq %r9, %rdi                                                                                                                         #  37    0x218cf  3      
  leal -0xc(%rsi), %eax                                                                                                                  #  38    0x218d2  3      
  movl %eax, %eax                                                                                                                        #  39    0x218d5  2      
  movl (%r15,%rax,1), %eax                                                                                                               #  40    0x218d7  4      
  cmpl %eax, %r8d                                                                                                                        #  41    0x218db  3      
  movl %eax, %ecx                                                                                                                        #  42    0x218de  2      
  cmovbel %r8d, %ecx                                                                                                                     #  43    0x218e0  4      
  movl %ecx, %ecx                                                                                                                        #  44    0x218e4  2      
  xchgw %ax, %ax                                                                                                                         #  45    0x218e6  3      
  cmpq %rcx, %rcx                                                                                                                        #  46    0x218e9  3      
  movl %esi, %esi                                                                                                                        #  47    0x218ec  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                               #  48    0x218ee  4      
  movl %edi, %edi                                                                                                                        #  49    0x218f2  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                               #  50    0x218f4  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                                      #  51    0x218f8  3      
  movl %esi, %esi                                                                                                                        #  52    0x218fb  2      
  movl %edi, %edi                                                                                                                        #  53    0x218fd  2      
  seta %cl                                                                                                                               #  54    0x218ff  3      
  setb %sil                                                                                                                              #  55    0x21902  4      
  subl %r8d, %eax                                                                                                                        #  56    0x21906  3      
  nop                                                                                                                                    #  57    0x21909  1      
  subb %sil, %cl                                                                                                                         #  58    0x2190a  3      
  movsbl %cl, %ecx                                                                                                                       #  59    0x2190d  3      
  testl %ecx, %ecx                                                                                                                       #  60    0x21910  2      
  cmovel %eax, %ecx                                                                                                                      #  61    0x21912  3      
  testl %ecx, %ecx                                                                                                                       #  62    0x21915  2      
  jns .L_218c0                                                                                                                           #  63    0x21917  6      
  movl %edx, %edx                                                                                                                        #  64    0x2191d  2      
  movl 0xc(%r15,%rdx,1), %eax                                                                                                            #  65    0x2191f  5      
  testq %rax, %rax                                                                                                                       #  66    0x21924  3      
  nop                                                                                                                                    #  67    0x21927  1      
  jne .L_218e0                                                                                                                           #  68    0x21928  6      
  nop                                                                                                                                    #  69    0x2192e  1      
  nop                                                                                                                                    #  70    0x2192f  1      
.L_21980:                                                                                                                                #        0x21930  0      
  cmpl %ebx, %r11d                                                                                                                       #  71    0x21930  3      
  movq %rbx, %r13                                                                                                                        #  72    0x21933  3      
  je .L_21a40                                                                                                                            #  73    0x21936  6      
  movl %r10d, %r10d                                                                                                                      #  74    0x2193c  3      
  movl (%r15,%r10,1), %esi                                                                                                               #  75    0x2193f  4      
  movl %ebx, %ebx                                                                                                                        #  76    0x21943  2      
  movl 0x10(%r15,%rbx,1), %edi                                                                                                           #  77    0x21945  5      
  leal -0xc(%rsi), %eax                                                                                                                  #  78    0x2194a  3      
  nop                                                                                                                                    #  79    0x2194d  1      
  movl %eax, %eax                                                                                                                        #  80    0x2194e  2      
  movl (%r15,%rax,1), %edx                                                                                                               #  81    0x21950  4      
  leal -0xc(%rdi), %eax                                                                                                                  #  82    0x21954  3      
  movl %eax, %eax                                                                                                                        #  83    0x21957  2      
  movl (%r15,%rax,1), %eax                                                                                                               #  84    0x21959  4      
  movl %edx, %ecx                                                                                                                        #  85    0x2195d  2      
  cmpl %edx, %eax                                                                                                                        #  86    0x2195f  2      
  cmovbel %eax, %ecx                                                                                                                     #  87    0x21961  3      
  movl %ecx, %ecx                                                                                                                        #  88    0x21964  2      
  cmpq %rcx, %rcx                                                                                                                        #  89    0x21966  3      
  nop                                                                                                                                    #  90    0x21969  1      
  movl %esi, %esi                                                                                                                        #  91    0x2196a  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                               #  92    0x2196c  4      
  movl %edi, %edi                                                                                                                        #  93    0x21970  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                               #  94    0x21972  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                                      #  95    0x21976  3      
  movl %esi, %esi                                                                                                                        #  96    0x21979  2      
  movl %edi, %edi                                                                                                                        #  97    0x2197b  2      
  seta %cl                                                                                                                               #  98    0x2197d  3      
  setb %sil                                                                                                                              #  99    0x21980  4      
  subl %eax, %edx                                                                                                                        #  100   0x21984  2      
  subb %sil, %cl                                                                                                                         #  101   0x21986  3      
  xchgw %ax, %ax                                                                                                                         #  102   0x21989  3      
  movsbl %cl, %ecx                                                                                                                       #  103   0x2198c  3      
  testl %ecx, %ecx                                                                                                                       #  104   0x2198f  2      
  cmovel %edx, %ecx                                                                                                                      #  105   0x21991  3      
  testl %ecx, %ecx                                                                                                                       #  106   0x21994  2      
  js .L_21a40                                                                                                                            #  107   0x21996  6      
  nop                                                                                                                                    #  108   0x2199c  1      
  nop                                                                                                                                    #  109   0x2199d  1      
.L_21a00:                                                                                                                                #        0x2199e  0      
  movl %r13d, %r13d                                                                                                                      #  110   0x2199e  3      
  movl %r14d, 0x14(%r15,%r13,1)                                                                                                          #  111   0x219a1  5      
  addl $0x18, %esp                                                                                                                       #  112   0x219a6  3      
  addq %r15, %rsp                                                                                                                        #  113   0x219a9  3      
  popq %rbx                                                                                                                              #  114   0x219ac  2      
  popq %r12                                                                                                                              #  115   0x219ae  3      
  popq %r13                                                                                                                              #  116   0x219b1  3      
  popq %r14                                                                                                                              #  117   0x219b4  3      
  popq %r11                                                                                                                              #  118   0x219b7  3      
  nop                                                                                                                                    #  119   0x219ba  1      
  andl $0xffffffe0, %r11d                                                                                                                #  120   0x219bb  7      
  addq %r15, %r11                                                                                                                        #  121   0x219c2  3      
  jmpq %r11                                                                                                                              #  122   0x219c5  3      
  nop                                                                                                                                    #  123   0x219c8  1      
  nop                                                                                                                                    #  124   0x219c9  1      
.L_21a40:                                                                                                                                #        0x219ca  0      
  movl %r10d, %esi                                                                                                                       #  125   0x219ca  3      
  movl %esp, %edi                                                                                                                        #  126   0x219cd  2      
  movl %esp, %r13d                                                                                                                       #  127   0x219cf  3      
  nop                                                                                                                                    #  128   0x219d2  1      
  nop                                                                                                                                    #  129   0x219d3  1      
  callq ._ZNSsC1ERKSs                                                                                                                    #  130   0x219d4  5      
  leal 0x8(%r12), %edi                                                                                                                   #  131   0x219d9  5      
  movl %esp, %edx                                                                                                                        #  132   0x219de  2      
  movl %ebx, %esi                                                                                                                        #  133   0x219e0  2      
  movl $0x0, 0x4(%rsp)                                                                                                                   #  134   0x219e2  8      
  nop                                                                                                                                    #  135   0x219ea  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS3_ERKS3_  #  136   0x219eb  5      
  movl (%rsp), %edi                                                                                                                      #  137   0x219f0  3      
  movl %eax, %r13d                                                                                                                       #  138   0x219f3  3      
  subl $0xc, %edi                                                                                                                        #  139   0x219f6  3      
  cmpl $0x10031da0, %edi                                                                                                                 #  140   0x219f9  6      
  je .L_21a00                                                                                                                            #  141   0x219ff  6      
  movl %edi, %edi                                                                                                                        #  142   0x21a05  2      
  movl 0x8(%r15,%rdi,1), %eax                                                                                                            #  143   0x21a07  5      
  leal -0x1(%rax), %edx                                                                                                                  #  144   0x21a0c  3      
  nop                                                                                                                                    #  145   0x21a0f  1      
  testl %eax, %eax                                                                                                                       #  146   0x21a10  2      
  movl %edi, %edi                                                                                                                        #  147   0x21a12  2      
  movl %edx, 0x8(%r15,%rdi,1)                                                                                                            #  148   0x21a14  5      
  jg .L_21a00                                                                                                                            #  149   0x21a19  6      
  leal 0xf(%rsp), %esi                                                                                                                   #  150   0x21a1f  4      
  nop                                                                                                                                    #  151   0x21a23  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE                                                                                                  #  152   0x21a24  5      
  jmpq .L_21a00                                                                                                                          #  153   0x21a29  5      
  nop                                                                                                                                    #  154   0x21a2e  1      
  nop                                                                                                                                    #  155   0x21a2f  1      
  movl %eax, %ebx                                                                                                                        #  156   0x21a30  2      
  movl %r13d, %edi                                                                                                                       #  157   0x21a32  3      
  nop                                                                                                                                    #  158   0x21a35  1      
  nop                                                                                                                                    #  159   0x21a36  1      
  callq ._ZNSsD1Ev                                                                                                                       #  160   0x21a37  5      
  movl %ebx, %edi                                                                                                                        #  161   0x21a3c  2      
  nop                                                                                                                                    #  162   0x21a3e  1      
  nop                                                                                                                                    #  163   0x21a3f  1      
  callq ._Unwind_Resume                                                                                                                  #  164   0x21a40  5      
                                                                                                                                                                  
.size _ZN2pp8Instance20AddPerInstanceObjectERKSsPv, .-_ZN2pp8Instance20AddPerInstanceObjectERKSsPv

