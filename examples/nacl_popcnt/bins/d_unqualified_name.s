  .text
  .globl d_unqualified_name
  .type d_unqualified_name, @function

#! file-offset 0x527a0
#! rip-offset  0x527a0
#! capacity    1088 bytes

# Text                           #  Line  RIP      Bytes  
.d_unqualified_name:             #        0x527a0  0      
  pushq %r12                     #  1     0x527a0  3      
  pushq %rbx                     #  2     0x527a3  2      
  movl %edi, %ebx                #  3     0x527a5  2      
  subl $0x8, %esp                #  4     0x527a7  3      
  addq %r15, %rsp                #  5     0x527aa  3      
  movl %ebx, %ebx                #  6     0x527ad  2      
  movl 0xc(%r15,%rbx,1), %edx    #  7     0x527af  5      
  movl %edx, %edx                #  8     0x527b4  2      
  movzbl (%r15,%rdx,1), %eax     #  9     0x527b6  5      
  leal -0x30(%rax), %ecx         #  10    0x527bb  3      
  cmpb $0x9, %cl                 #  11    0x527be  3      
  nop                            #  12    0x527c1  1      
  jbe .L_52900                   #  13    0x527c2  6      
  leal -0x61(%rax), %ecx         #  14    0x527c8  3      
  cmpb $0x19, %cl                #  15    0x527cb  3      
  jbe .L_528a0                   #  16    0x527ce  6      
  leal -0x43(%rax), %ecx         #  17    0x527d4  3      
  cmpb $0x1, %cl                 #  18    0x527d7  3      
  ja .L_52a00                    #  19    0x527da  6      
  xchgw %ax, %ax                 #  20    0x527e0  3      
  movl %ebx, %ebx                #  21    0x527e3  2      
  movl 0x2c(%r15,%rbx,1), %ecx   #  22    0x527e5  5      
  testq %rcx, %rcx               #  23    0x527ea  3      
  je .L_52820                    #  24    0x527ed  6      
  movl %ecx, %ecx                #  25    0x527f3  2      
  movl (%r15,%rcx,1), %esi       #  26    0x527f5  4      
  testl %esi, %esi               #  27    0x527f9  2      
  jne .L_52920                   #  28    0x527fb  6      
  nop                            #  29    0x52801  1      
.L_52800:                        #        0x52802  0      
  movl %ecx, %ecx                #  30    0x52802  2      
  movl 0x8(%r15,%rcx,1), %eax    #  31    0x52804  5      
  movl %ebx, %ebx                #  32    0x52809  2      
  addl %eax, 0x30(%r15,%rbx,1)   #  33    0x5280b  5      
  movl %edx, %edx                #  34    0x52810  2      
  movzbl (%r15,%rdx,1), %eax     #  35    0x52812  5      
  nop                            #  36    0x52817  1      
.L_52820:                        #        0x52818  0      
  cmpb $0x43, %al                #  37    0x52818  2      
  je .L_52940                    #  38    0x5281a  6      
  nop                            #  39    0x52820  1      
  nop                            #  40    0x52821  1      
.L_52840:                        #        0x52822  0      
  cmpb $0x44, %al                #  41    0x52822  2      
  je .L_52a60                    #  42    0x52824  6      
  nop                            #  43    0x5282a  1      
  nop                            #  44    0x5282b  1      
.L_52860:                        #        0x5282c  0      
  xorl %eax, %eax                #  45    0x5282c  2      
  nop                            #  46    0x5282e  1      
  nop                            #  47    0x5282f  1      
.L_52880:                        #        0x52830  0      
  addl $0x8, %esp                #  48    0x52830  3      
  addq %r15, %rsp                #  49    0x52833  3      
  popq %rbx                      #  50    0x52836  2      
  popq %r12                      #  51    0x52838  3      
  popq %r11                      #  52    0x5283b  3      
  andl $0xffffffe0, %r11d        #  53    0x5283e  7      
  addq %r15, %r11                #  54    0x52845  3      
  jmpq %r11                      #  55    0x52848  3      
  nop                            #  56    0x5284b  1      
.L_528a0:                        #        0x5284c  0      
  movl %ebx, %edi                #  57    0x5284c  2      
  nop                            #  58    0x5284e  1      
  nop                            #  59    0x5284f  1      
  callq .d_operator_name         #  60    0x52850  5      
  movl %eax, %eax                #  61    0x52855  2      
  testq %rax, %rax               #  62    0x52857  3      
  je .L_52880                    #  63    0x5285a  6      
  movl %eax, %eax                #  64    0x52860  2      
  cmpl $0x2b, (%r15,%rax,1)      #  65    0x52862  5      
  jne .L_52880                   #  66    0x52867  6      
  movl %eax, %eax                #  67    0x5286d  2      
  movl 0x4(%r15,%rax,1), %ecx    #  68    0x5286f  5      
  movl %ebx, %ebx                #  69    0x52874  2      
  movl 0x30(%r15,%rbx,1), %edx   #  70    0x52876  5      
  xchgw %ax, %ax                 #  71    0x5287b  3      
  movl %ecx, %ecx                #  72    0x5287e  2      
  addl 0x8(%r15,%rcx,1), %edx    #  73    0x52880  5      
  addl $0x7, %edx                #  74    0x52885  3      
  movl %ebx, %ebx                #  75    0x52888  2      
  movl %edx, 0x30(%r15,%rbx,1)   #  76    0x5288a  5      
  jmpq .L_52880                  #  77    0x5288f  5      
  nop                            #  78    0x52894  1      
.L_52900:                        #        0x52895  0      
  addl $0x8, %esp                #  79    0x52895  3      
  addq %r15, %rsp                #  80    0x52898  3      
  movl %ebx, %edi                #  81    0x5289b  2      
  popq %rbx                      #  82    0x5289d  2      
  popq %r12                      #  83    0x5289f  3      
  jmpq .d_source_name            #  84    0x528a2  5      
  nop                            #  85    0x528a7  1      
  nop                            #  86    0x528a8  1      
.L_52920:                        #        0x528a9  0      
  cmpl $0x16, %esi               #  87    0x528a9  3      
  je .L_52800                    #  88    0x528ac  6      
  cmpb $0x43, %al                #  89    0x528b2  2      
  jne .L_52840                   #  90    0x528b4  6      
  nop                            #  91    0x528ba  1      
.L_52940:                        #        0x528bb  0      
  movl %edx, %edx                #  92    0x528bb  2      
  movzbl 0x1(%r15,%rdx,1), %eax  #  93    0x528bd  6      
  cmpb $0x32, %al                #  94    0x528c3  2      
  je .L_52b60                    #  95    0x528c5  6      
  cmpb $0x33, %al                #  96    0x528cb  2      
  je .L_52b40                    #  97    0x528cd  6      
  cmpb $0x31, %al                #  98    0x528d3  2      
  jne .L_52860                   #  99    0x528d5  6      
  movl $0x1, %esi                #  100   0x528db  5      
  nop                            #  101   0x528e0  1      
  nop                            #  102   0x528e1  1      
.L_52980:                        #        0x528e2  0      
  addl $0x2, %edx                #  103   0x528e2  3      
  movl %ebx, %ebx                #  104   0x528e5  2      
  movl %edx, 0xc(%r15,%rbx,1)    #  105   0x528e7  5      
  movl %ebx, %ebx                #  106   0x528ec  2      
  movl 0x14(%r15,%rbx,1), %edx   #  107   0x528ee  5      
  movl %ebx, %ebx                #  108   0x528f3  2      
  cmpl 0x18(%r15,%rbx,1), %edx   #  109   0x528f5  5      
  jge .L_52860                   #  110   0x528fa  6      
  xchgw %ax, %ax                 #  111   0x52900  3      
  leal (%rdx,%rdx,2), %eax       #  112   0x52903  3      
  addl $0x1, %edx                #  113   0x52906  3      
  movl %ebx, %ebx                #  114   0x52909  2      
  movl %edx, 0x14(%r15,%rbx,1)   #  115   0x5290b  5      
  shll $0x2, %eax                #  116   0x52910  3      
  movl %ebx, %ebx                #  117   0x52913  2      
  addl 0x10(%r15,%rbx,1), %eax   #  118   0x52915  5      
  testq %rax, %rax               #  119   0x5291a  3      
  je .L_52860                    #  120   0x5291d  6      
  testq %rcx, %rcx               #  121   0x52923  3      
  je .L_52860                    #  122   0x52926  6      
  movl %eax, %eax                #  123   0x5292c  2      
  movl $0x7, (%r15,%rax,1)       #  124   0x5292e  8      
  movl %eax, %eax                #  125   0x52936  2      
  movl %esi, 0x4(%r15,%rax,1)    #  126   0x52938  5      
  nop                            #  127   0x5293d  1      
  movl %eax, %eax                #  128   0x5293e  2      
  movl %ecx, 0x8(%r15,%rax,1)    #  129   0x52940  5      
  jmpq .L_52880                  #  130   0x52945  5      
  nop                            #  131   0x5294a  1      
  nop                            #  132   0x5294b  1      
.L_52a00:                        #        0x5294c  0      
  cmpb $0x4c, %al                #  133   0x5294c  2      
  jne .L_52860                   #  134   0x5294e  6      
  addl $0x1, %edx                #  135   0x52954  3      
  movl %ebx, %edi                #  136   0x52957  2      
  movl %ebx, %ebx                #  137   0x52959  2      
  movl %edx, 0xc(%r15,%rbx,1)    #  138   0x5295b  5      
  nop                            #  139   0x52960  1      
  callq .d_source_name           #  140   0x52961  5      
  movl %eax, %r12d               #  141   0x52966  3      
  testq %r12, %r12               #  142   0x52969  3      
  je .L_52860                    #  143   0x5296c  6      
  movl %ebx, %ebx                #  144   0x52972  2      
  movl 0xc(%r15,%rbx,1), %eax    #  145   0x52974  5      
  movl %eax, %eax                #  146   0x52979  2      
  cmpb $0x5f, (%r15,%rax,1)      #  147   0x5297b  5      
  je .L_52ba0                    #  148   0x52980  6      
.L_52a40:                        #        0x52986  0      
  movq %r12, %rax                #  149   0x52986  3      
  jmpq .L_52880                  #  150   0x52989  5      
  nop                            #  151   0x5298e  1      
  nop                            #  152   0x5298f  1      
.L_52a60:                        #        0x52990  0      
  movl %edx, %edx                #  153   0x52990  2      
  movzbl 0x1(%r15,%rdx,1), %eax  #  154   0x52992  6      
  cmpb $0x31, %al                #  155   0x52998  2      
  je .L_52b80                    #  156   0x5299a  6      
  cmpb $0x32, %al                #  157   0x529a0  2      
  je .L_52b20                    #  158   0x529a2  6      
  cmpb $0x30, %al                #  159   0x529a8  2      
  jne .L_52860                   #  160   0x529aa  6      
  movl $0x1, %esi                #  161   0x529b0  5      
  nop                            #  162   0x529b5  1      
  nop                            #  163   0x529b6  1      
.L_52aa0:                        #        0x529b7  0      
  addl $0x2, %edx                #  164   0x529b7  3      
  movl %ebx, %ebx                #  165   0x529ba  2      
  movl %edx, 0xc(%r15,%rbx,1)    #  166   0x529bc  5      
  movl %ebx, %ebx                #  167   0x529c1  2      
  movl 0x14(%r15,%rbx,1), %edx   #  168   0x529c3  5      
  movl %ebx, %ebx                #  169   0x529c8  2      
  cmpl 0x18(%r15,%rbx,1), %edx   #  170   0x529ca  5      
  jge .L_52860                   #  171   0x529cf  6      
  xchgw %ax, %ax                 #  172   0x529d5  3      
  leal (%rdx,%rdx,2), %eax       #  173   0x529d8  3      
  addl $0x1, %edx                #  174   0x529db  3      
  movl %ebx, %ebx                #  175   0x529de  2      
  movl %edx, 0x14(%r15,%rbx,1)   #  176   0x529e0  5      
  shll $0x2, %eax                #  177   0x529e5  3      
  movl %ebx, %ebx                #  178   0x529e8  2      
  addl 0x10(%r15,%rbx,1), %eax   #  179   0x529ea  5      
  testq %rax, %rax               #  180   0x529ef  3      
  je .L_52860                    #  181   0x529f2  6      
  testq %rcx, %rcx               #  182   0x529f8  3      
  je .L_52860                    #  183   0x529fb  6      
  movl %eax, %eax                #  184   0x52a01  2      
  movl $0x8, (%r15,%rax,1)       #  185   0x52a03  8      
  movl %eax, %eax                #  186   0x52a0b  2      
  movl %esi, 0x4(%r15,%rax,1)    #  187   0x52a0d  5      
  nop                            #  188   0x52a12  1      
  movl %eax, %eax                #  189   0x52a13  2      
  movl %ecx, 0x8(%r15,%rax,1)    #  190   0x52a15  5      
  jmpq .L_52880                  #  191   0x52a1a  5      
  nop                            #  192   0x52a1f  1      
  nop                            #  193   0x52a20  1      
.L_52b20:                        #        0x52a21  0      
  movl $0x3, %esi                #  194   0x52a21  5      
  jmpq .L_52aa0                  #  195   0x52a26  5      
  nop                            #  196   0x52a2b  1      
  nop                            #  197   0x52a2c  1      
.L_52b40:                        #        0x52a2d  0      
  movl $0x3, %esi                #  198   0x52a2d  5      
  jmpq .L_52980                  #  199   0x52a32  5      
  nop                            #  200   0x52a37  1      
  nop                            #  201   0x52a38  1      
.L_52b60:                        #        0x52a39  0      
  movl $0x2, %esi                #  202   0x52a39  5      
  jmpq .L_52980                  #  203   0x52a3e  5      
  nop                            #  204   0x52a43  1      
  nop                            #  205   0x52a44  1      
.L_52b80:                        #        0x52a45  0      
  movl $0x2, %esi                #  206   0x52a45  5      
  jmpq .L_52aa0                  #  207   0x52a4a  5      
  nop                            #  208   0x52a4f  1      
  nop                            #  209   0x52a50  1      
.L_52ba0:                        #        0x52a51  0      
  addl $0x1, %eax                #  210   0x52a51  3      
  movl %ebx, %edi                #  211   0x52a54  2      
  movl %ebx, %ebx                #  212   0x52a56  2      
  movl %eax, 0xc(%r15,%rbx,1)    #  213   0x52a58  5      
  nop                            #  214   0x52a5d  1      
  callq .d_number                #  215   0x52a5e  5      
  testl %eax, %eax               #  216   0x52a63  2      
  jns .L_52a40                   #  217   0x52a65  6      
  jmpq .L_52860                  #  218   0x52a6b  5      
  nop                            #  219   0x52a70  1      
  nop                            #  220   0x52a71  1      
                                                          
.size d_unqualified_name, .-d_unqualified_name

