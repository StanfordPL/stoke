  .text
  .globl d_unqualified_name
  .type d_unqualified_name, @function

#! file-offset 0x52720
#! rip-offset  0x52720
#! capacity    1088 bytes

# Text                           #  Line  RIP      Bytes  
.d_unqualified_name:             #        0x52720  0      
  pushq %r12                     #  1     0x52720  3      
  pushq %rbx                     #  2     0x52723  2      
  movl %edi, %ebx                #  3     0x52725  2      
  subl $0x8, %esp                #  4     0x52727  3      
  addq %r15, %rsp                #  5     0x5272a  3      
  movl %ebx, %ebx                #  6     0x5272d  2      
  movl 0xc(%r15,%rbx,1), %edx    #  7     0x5272f  5      
  movl %edx, %edx                #  8     0x52734  2      
  movzbl (%r15,%rdx,1), %eax     #  9     0x52736  5      
  leal -0x30(%rax), %ecx         #  10    0x5273b  3      
  cmpb $0x9, %cl                 #  11    0x5273e  3      
  nop                            #  12    0x52741  1      
  jbe .L_52880                   #  13    0x52742  6      
  leal -0x61(%rax), %ecx         #  14    0x52748  3      
  cmpb $0x19, %cl                #  15    0x5274b  3      
  jbe .L_52820                   #  16    0x5274e  6      
  leal -0x43(%rax), %ecx         #  17    0x52754  3      
  cmpb $0x1, %cl                 #  18    0x52757  3      
  ja .L_52980                    #  19    0x5275a  6      
  xchgw %ax, %ax                 #  20    0x52760  3      
  movl %ebx, %ebx                #  21    0x52763  2      
  movl 0x2c(%r15,%rbx,1), %ecx   #  22    0x52765  5      
  testq %rcx, %rcx               #  23    0x5276a  3      
  je .L_527a0                    #  24    0x5276d  6      
  movl %ecx, %ecx                #  25    0x52773  2      
  movl (%r15,%rcx,1), %esi       #  26    0x52775  4      
  testl %esi, %esi               #  27    0x52779  2      
  jne .L_528a0                   #  28    0x5277b  6      
  nop                            #  29    0x52781  1      
.L_52780:                        #        0x52782  0      
  movl %ecx, %ecx                #  30    0x52782  2      
  movl 0x8(%r15,%rcx,1), %eax    #  31    0x52784  5      
  movl %ebx, %ebx                #  32    0x52789  2      
  addl %eax, 0x30(%r15,%rbx,1)   #  33    0x5278b  5      
  movl %edx, %edx                #  34    0x52790  2      
  movzbl (%r15,%rdx,1), %eax     #  35    0x52792  5      
  nop                            #  36    0x52797  1      
.L_527a0:                        #        0x52798  0      
  cmpb $0x43, %al                #  37    0x52798  2      
  je .L_528c0                    #  38    0x5279a  6      
  nop                            #  39    0x527a0  1      
  nop                            #  40    0x527a1  1      
.L_527c0:                        #        0x527a2  0      
  cmpb $0x44, %al                #  41    0x527a2  2      
  je .L_529e0                    #  42    0x527a4  6      
  nop                            #  43    0x527aa  1      
  nop                            #  44    0x527ab  1      
.L_527e0:                        #        0x527ac  0      
  xorl %eax, %eax                #  45    0x527ac  2      
  nop                            #  46    0x527ae  1      
  nop                            #  47    0x527af  1      
.L_52800:                        #        0x527b0  0      
  addl $0x8, %esp                #  48    0x527b0  3      
  addq %r15, %rsp                #  49    0x527b3  3      
  popq %rbx                      #  50    0x527b6  2      
  popq %r12                      #  51    0x527b8  3      
  popq %r11                      #  52    0x527bb  3      
  andl $0xffffffe0, %r11d        #  53    0x527be  7      
  addq %r15, %r11                #  54    0x527c5  3      
  jmpq %r11                      #  55    0x527c8  3      
  nop                            #  56    0x527cb  1      
.L_52820:                        #        0x527cc  0      
  movl %ebx, %edi                #  57    0x527cc  2      
  nop                            #  58    0x527ce  1      
  nop                            #  59    0x527cf  1      
  callq .d_operator_name         #  60    0x527d0  5      
  movl %eax, %eax                #  61    0x527d5  2      
  testq %rax, %rax               #  62    0x527d7  3      
  je .L_52800                    #  63    0x527da  6      
  movl %eax, %eax                #  64    0x527e0  2      
  cmpl $0x2b, (%r15,%rax,1)      #  65    0x527e2  5      
  jne .L_52800                   #  66    0x527e7  6      
  movl %eax, %eax                #  67    0x527ed  2      
  movl 0x4(%r15,%rax,1), %ecx    #  68    0x527ef  5      
  movl %ebx, %ebx                #  69    0x527f4  2      
  movl 0x30(%r15,%rbx,1), %edx   #  70    0x527f6  5      
  xchgw %ax, %ax                 #  71    0x527fb  3      
  movl %ecx, %ecx                #  72    0x527fe  2      
  addl 0x8(%r15,%rcx,1), %edx    #  73    0x52800  5      
  addl $0x7, %edx                #  74    0x52805  3      
  movl %ebx, %ebx                #  75    0x52808  2      
  movl %edx, 0x30(%r15,%rbx,1)   #  76    0x5280a  5      
  jmpq .L_52800                  #  77    0x5280f  5      
  nop                            #  78    0x52814  1      
.L_52880:                        #        0x52815  0      
  addl $0x8, %esp                #  79    0x52815  3      
  addq %r15, %rsp                #  80    0x52818  3      
  movl %ebx, %edi                #  81    0x5281b  2      
  popq %rbx                      #  82    0x5281d  2      
  popq %r12                      #  83    0x5281f  3      
  jmpq .d_source_name            #  84    0x52822  5      
  nop                            #  85    0x52827  1      
  nop                            #  86    0x52828  1      
.L_528a0:                        #        0x52829  0      
  cmpl $0x16, %esi               #  87    0x52829  3      
  je .L_52780                    #  88    0x5282c  6      
  cmpb $0x43, %al                #  89    0x52832  2      
  jne .L_527c0                   #  90    0x52834  6      
  nop                            #  91    0x5283a  1      
.L_528c0:                        #        0x5283b  0      
  movl %edx, %edx                #  92    0x5283b  2      
  movzbl 0x1(%r15,%rdx,1), %eax  #  93    0x5283d  6      
  cmpb $0x32, %al                #  94    0x52843  2      
  je .L_52ae0                    #  95    0x52845  6      
  cmpb $0x33, %al                #  96    0x5284b  2      
  je .L_52ac0                    #  97    0x5284d  6      
  cmpb $0x31, %al                #  98    0x52853  2      
  jne .L_527e0                   #  99    0x52855  6      
  movl $0x1, %esi                #  100   0x5285b  5      
  nop                            #  101   0x52860  1      
  nop                            #  102   0x52861  1      
.L_52900:                        #        0x52862  0      
  addl $0x2, %edx                #  103   0x52862  3      
  movl %ebx, %ebx                #  104   0x52865  2      
  movl %edx, 0xc(%r15,%rbx,1)    #  105   0x52867  5      
  movl %ebx, %ebx                #  106   0x5286c  2      
  movl 0x14(%r15,%rbx,1), %edx   #  107   0x5286e  5      
  movl %ebx, %ebx                #  108   0x52873  2      
  cmpl 0x18(%r15,%rbx,1), %edx   #  109   0x52875  5      
  jge .L_527e0                   #  110   0x5287a  6      
  xchgw %ax, %ax                 #  111   0x52880  3      
  leal (%rdx,%rdx,2), %eax       #  112   0x52883  3      
  addl $0x1, %edx                #  113   0x52886  3      
  movl %ebx, %ebx                #  114   0x52889  2      
  movl %edx, 0x14(%r15,%rbx,1)   #  115   0x5288b  5      
  shll $0x2, %eax                #  116   0x52890  3      
  movl %ebx, %ebx                #  117   0x52893  2      
  addl 0x10(%r15,%rbx,1), %eax   #  118   0x52895  5      
  testq %rax, %rax               #  119   0x5289a  3      
  je .L_527e0                    #  120   0x5289d  6      
  testq %rcx, %rcx               #  121   0x528a3  3      
  je .L_527e0                    #  122   0x528a6  6      
  movl %eax, %eax                #  123   0x528ac  2      
  movl $0x7, (%r15,%rax,1)       #  124   0x528ae  8      
  movl %eax, %eax                #  125   0x528b6  2      
  movl %esi, 0x4(%r15,%rax,1)    #  126   0x528b8  5      
  nop                            #  127   0x528bd  1      
  movl %eax, %eax                #  128   0x528be  2      
  movl %ecx, 0x8(%r15,%rax,1)    #  129   0x528c0  5      
  jmpq .L_52800                  #  130   0x528c5  5      
  nop                            #  131   0x528ca  1      
  nop                            #  132   0x528cb  1      
.L_52980:                        #        0x528cc  0      
  cmpb $0x4c, %al                #  133   0x528cc  2      
  jne .L_527e0                   #  134   0x528ce  6      
  addl $0x1, %edx                #  135   0x528d4  3      
  movl %ebx, %edi                #  136   0x528d7  2      
  movl %ebx, %ebx                #  137   0x528d9  2      
  movl %edx, 0xc(%r15,%rbx,1)    #  138   0x528db  5      
  nop                            #  139   0x528e0  1      
  callq .d_source_name           #  140   0x528e1  5      
  movl %eax, %r12d               #  141   0x528e6  3      
  testq %r12, %r12               #  142   0x528e9  3      
  je .L_527e0                    #  143   0x528ec  6      
  movl %ebx, %ebx                #  144   0x528f2  2      
  movl 0xc(%r15,%rbx,1), %eax    #  145   0x528f4  5      
  movl %eax, %eax                #  146   0x528f9  2      
  cmpb $0x5f, (%r15,%rax,1)      #  147   0x528fb  5      
  je .L_52b20                    #  148   0x52900  6      
.L_529c0:                        #        0x52906  0      
  movq %r12, %rax                #  149   0x52906  3      
  jmpq .L_52800                  #  150   0x52909  5      
  nop                            #  151   0x5290e  1      
  nop                            #  152   0x5290f  1      
.L_529e0:                        #        0x52910  0      
  movl %edx, %edx                #  153   0x52910  2      
  movzbl 0x1(%r15,%rdx,1), %eax  #  154   0x52912  6      
  cmpb $0x31, %al                #  155   0x52918  2      
  je .L_52b00                    #  156   0x5291a  6      
  cmpb $0x32, %al                #  157   0x52920  2      
  je .L_52aa0                    #  158   0x52922  6      
  cmpb $0x30, %al                #  159   0x52928  2      
  jne .L_527e0                   #  160   0x5292a  6      
  movl $0x1, %esi                #  161   0x52930  5      
  nop                            #  162   0x52935  1      
  nop                            #  163   0x52936  1      
.L_52a20:                        #        0x52937  0      
  addl $0x2, %edx                #  164   0x52937  3      
  movl %ebx, %ebx                #  165   0x5293a  2      
  movl %edx, 0xc(%r15,%rbx,1)    #  166   0x5293c  5      
  movl %ebx, %ebx                #  167   0x52941  2      
  movl 0x14(%r15,%rbx,1), %edx   #  168   0x52943  5      
  movl %ebx, %ebx                #  169   0x52948  2      
  cmpl 0x18(%r15,%rbx,1), %edx   #  170   0x5294a  5      
  jge .L_527e0                   #  171   0x5294f  6      
  xchgw %ax, %ax                 #  172   0x52955  3      
  leal (%rdx,%rdx,2), %eax       #  173   0x52958  3      
  addl $0x1, %edx                #  174   0x5295b  3      
  movl %ebx, %ebx                #  175   0x5295e  2      
  movl %edx, 0x14(%r15,%rbx,1)   #  176   0x52960  5      
  shll $0x2, %eax                #  177   0x52965  3      
  movl %ebx, %ebx                #  178   0x52968  2      
  addl 0x10(%r15,%rbx,1), %eax   #  179   0x5296a  5      
  testq %rax, %rax               #  180   0x5296f  3      
  je .L_527e0                    #  181   0x52972  6      
  testq %rcx, %rcx               #  182   0x52978  3      
  je .L_527e0                    #  183   0x5297b  6      
  movl %eax, %eax                #  184   0x52981  2      
  movl $0x8, (%r15,%rax,1)       #  185   0x52983  8      
  movl %eax, %eax                #  186   0x5298b  2      
  movl %esi, 0x4(%r15,%rax,1)    #  187   0x5298d  5      
  nop                            #  188   0x52992  1      
  movl %eax, %eax                #  189   0x52993  2      
  movl %ecx, 0x8(%r15,%rax,1)    #  190   0x52995  5      
  jmpq .L_52800                  #  191   0x5299a  5      
  nop                            #  192   0x5299f  1      
  nop                            #  193   0x529a0  1      
.L_52aa0:                        #        0x529a1  0      
  movl $0x3, %esi                #  194   0x529a1  5      
  jmpq .L_52a20                  #  195   0x529a6  5      
  nop                            #  196   0x529ab  1      
  nop                            #  197   0x529ac  1      
.L_52ac0:                        #        0x529ad  0      
  movl $0x3, %esi                #  198   0x529ad  5      
  jmpq .L_52900                  #  199   0x529b2  5      
  nop                            #  200   0x529b7  1      
  nop                            #  201   0x529b8  1      
.L_52ae0:                        #        0x529b9  0      
  movl $0x2, %esi                #  202   0x529b9  5      
  jmpq .L_52900                  #  203   0x529be  5      
  nop                            #  204   0x529c3  1      
  nop                            #  205   0x529c4  1      
.L_52b00:                        #        0x529c5  0      
  movl $0x2, %esi                #  206   0x529c5  5      
  jmpq .L_52a20                  #  207   0x529ca  5      
  nop                            #  208   0x529cf  1      
  nop                            #  209   0x529d0  1      
.L_52b20:                        #        0x529d1  0      
  addl $0x1, %eax                #  210   0x529d1  3      
  movl %ebx, %edi                #  211   0x529d4  2      
  movl %ebx, %ebx                #  212   0x529d6  2      
  movl %eax, 0xc(%r15,%rbx,1)    #  213   0x529d8  5      
  nop                            #  214   0x529dd  1      
  callq .d_number                #  215   0x529de  5      
  testl %eax, %eax               #  216   0x529e3  2      
  jns .L_529c0                   #  217   0x529e5  6      
  jmpq .L_527e0                  #  218   0x529eb  5      
  nop                            #  219   0x529f0  1      
  nop                            #  220   0x529f1  1      
                                                          
.size d_unqualified_name, .-d_unqualified_name

