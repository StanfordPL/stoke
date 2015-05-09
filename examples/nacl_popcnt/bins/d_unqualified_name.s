  .text
  .globl d_unqualified_name
  .type d_unqualified_name, @function

#! file-offset 0x52700
#! rip-offset  0x52700
#! capacity    1088 bytes

# Text                           #  Line  RIP      Bytes  
.d_unqualified_name:             #        0x52700  0      
  pushq %r12                     #  1     0x52700  3      
  pushq %rbx                     #  2     0x52703  2      
  movl %edi, %ebx                #  3     0x52705  2      
  subl $0x8, %esp                #  4     0x52707  3      
  addq %r15, %rsp                #  5     0x5270a  3      
  movl %ebx, %ebx                #  6     0x5270d  2      
  movl 0xc(%r15,%rbx,1), %edx    #  7     0x5270f  5      
  movl %edx, %edx                #  8     0x52714  2      
  movzbl (%r15,%rdx,1), %eax     #  9     0x52716  5      
  leal -0x30(%rax), %ecx         #  10    0x5271b  3      
  cmpb $0x9, %cl                 #  11    0x5271e  3      
  nop                            #  12    0x52721  1      
  jbe .L_52860                   #  13    0x52722  6      
  leal -0x61(%rax), %ecx         #  14    0x52728  3      
  cmpb $0x19, %cl                #  15    0x5272b  3      
  jbe .L_52800                   #  16    0x5272e  6      
  leal -0x43(%rax), %ecx         #  17    0x52734  3      
  cmpb $0x1, %cl                 #  18    0x52737  3      
  ja .L_52960                    #  19    0x5273a  6      
  xchgw %ax, %ax                 #  20    0x52740  3      
  movl %ebx, %ebx                #  21    0x52743  2      
  movl 0x2c(%r15,%rbx,1), %ecx   #  22    0x52745  5      
  testq %rcx, %rcx               #  23    0x5274a  3      
  je .L_52780                    #  24    0x5274d  6      
  movl %ecx, %ecx                #  25    0x52753  2      
  movl (%r15,%rcx,1), %esi       #  26    0x52755  4      
  testl %esi, %esi               #  27    0x52759  2      
  jne .L_52880                   #  28    0x5275b  6      
  nop                            #  29    0x52761  1      
.L_52760:                        #        0x52762  0      
  movl %ecx, %ecx                #  30    0x52762  2      
  movl 0x8(%r15,%rcx,1), %eax    #  31    0x52764  5      
  movl %ebx, %ebx                #  32    0x52769  2      
  addl %eax, 0x30(%r15,%rbx,1)   #  33    0x5276b  5      
  movl %edx, %edx                #  34    0x52770  2      
  movzbl (%r15,%rdx,1), %eax     #  35    0x52772  5      
  nop                            #  36    0x52777  1      
.L_52780:                        #        0x52778  0      
  cmpb $0x43, %al                #  37    0x52778  2      
  je .L_528a0                    #  38    0x5277a  6      
  nop                            #  39    0x52780  1      
  nop                            #  40    0x52781  1      
.L_527a0:                        #        0x52782  0      
  cmpb $0x44, %al                #  41    0x52782  2      
  je .L_529c0                    #  42    0x52784  6      
  nop                            #  43    0x5278a  1      
  nop                            #  44    0x5278b  1      
.L_527c0:                        #        0x5278c  0      
  xorl %eax, %eax                #  45    0x5278c  2      
  nop                            #  46    0x5278e  1      
  nop                            #  47    0x5278f  1      
.L_527e0:                        #        0x52790  0      
  addl $0x8, %esp                #  48    0x52790  3      
  addq %r15, %rsp                #  49    0x52793  3      
  popq %rbx                      #  50    0x52796  2      
  popq %r12                      #  51    0x52798  3      
  popq %r11                      #  52    0x5279b  3      
  andl $0xffffffe0, %r11d        #  53    0x5279e  7      
  addq %r15, %r11                #  54    0x527a5  3      
  jmpq %r11                      #  55    0x527a8  3      
  nop                            #  56    0x527ab  1      
.L_52800:                        #        0x527ac  0      
  movl %ebx, %edi                #  57    0x527ac  2      
  nop                            #  58    0x527ae  1      
  nop                            #  59    0x527af  1      
  callq .d_operator_name         #  60    0x527b0  5      
  movl %eax, %eax                #  61    0x527b5  2      
  testq %rax, %rax               #  62    0x527b7  3      
  je .L_527e0                    #  63    0x527ba  6      
  movl %eax, %eax                #  64    0x527c0  2      
  cmpl $0x2b, (%r15,%rax,1)      #  65    0x527c2  5      
  jne .L_527e0                   #  66    0x527c7  6      
  movl %eax, %eax                #  67    0x527cd  2      
  movl 0x4(%r15,%rax,1), %ecx    #  68    0x527cf  5      
  movl %ebx, %ebx                #  69    0x527d4  2      
  movl 0x30(%r15,%rbx,1), %edx   #  70    0x527d6  5      
  xchgw %ax, %ax                 #  71    0x527db  3      
  movl %ecx, %ecx                #  72    0x527de  2      
  addl 0x8(%r15,%rcx,1), %edx    #  73    0x527e0  5      
  addl $0x7, %edx                #  74    0x527e5  3      
  movl %ebx, %ebx                #  75    0x527e8  2      
  movl %edx, 0x30(%r15,%rbx,1)   #  76    0x527ea  5      
  jmpq .L_527e0                  #  77    0x527ef  5      
  nop                            #  78    0x527f4  1      
.L_52860:                        #        0x527f5  0      
  addl $0x8, %esp                #  79    0x527f5  3      
  addq %r15, %rsp                #  80    0x527f8  3      
  movl %ebx, %edi                #  81    0x527fb  2      
  popq %rbx                      #  82    0x527fd  2      
  popq %r12                      #  83    0x527ff  3      
  jmpq .d_source_name            #  84    0x52802  5      
  nop                            #  85    0x52807  1      
  nop                            #  86    0x52808  1      
.L_52880:                        #        0x52809  0      
  cmpl $0x16, %esi               #  87    0x52809  3      
  je .L_52760                    #  88    0x5280c  6      
  cmpb $0x43, %al                #  89    0x52812  2      
  jne .L_527a0                   #  90    0x52814  6      
  nop                            #  91    0x5281a  1      
.L_528a0:                        #        0x5281b  0      
  movl %edx, %edx                #  92    0x5281b  2      
  movzbl 0x1(%r15,%rdx,1), %eax  #  93    0x5281d  6      
  cmpb $0x32, %al                #  94    0x52823  2      
  je .L_52ac0                    #  95    0x52825  6      
  cmpb $0x33, %al                #  96    0x5282b  2      
  je .L_52aa0                    #  97    0x5282d  6      
  cmpb $0x31, %al                #  98    0x52833  2      
  jne .L_527c0                   #  99    0x52835  6      
  movl $0x1, %esi                #  100   0x5283b  5      
  nop                            #  101   0x52840  1      
  nop                            #  102   0x52841  1      
.L_528e0:                        #        0x52842  0      
  addl $0x2, %edx                #  103   0x52842  3      
  movl %ebx, %ebx                #  104   0x52845  2      
  movl %edx, 0xc(%r15,%rbx,1)    #  105   0x52847  5      
  movl %ebx, %ebx                #  106   0x5284c  2      
  movl 0x14(%r15,%rbx,1), %edx   #  107   0x5284e  5      
  movl %ebx, %ebx                #  108   0x52853  2      
  cmpl 0x18(%r15,%rbx,1), %edx   #  109   0x52855  5      
  jge .L_527c0                   #  110   0x5285a  6      
  xchgw %ax, %ax                 #  111   0x52860  3      
  leal (%rdx,%rdx,2), %eax       #  112   0x52863  3      
  addl $0x1, %edx                #  113   0x52866  3      
  movl %ebx, %ebx                #  114   0x52869  2      
  movl %edx, 0x14(%r15,%rbx,1)   #  115   0x5286b  5      
  shll $0x2, %eax                #  116   0x52870  3      
  movl %ebx, %ebx                #  117   0x52873  2      
  addl 0x10(%r15,%rbx,1), %eax   #  118   0x52875  5      
  testq %rax, %rax               #  119   0x5287a  3      
  je .L_527c0                    #  120   0x5287d  6      
  testq %rcx, %rcx               #  121   0x52883  3      
  je .L_527c0                    #  122   0x52886  6      
  movl %eax, %eax                #  123   0x5288c  2      
  movl $0x7, (%r15,%rax,1)       #  124   0x5288e  8      
  movl %eax, %eax                #  125   0x52896  2      
  movl %esi, 0x4(%r15,%rax,1)    #  126   0x52898  5      
  nop                            #  127   0x5289d  1      
  movl %eax, %eax                #  128   0x5289e  2      
  movl %ecx, 0x8(%r15,%rax,1)    #  129   0x528a0  5      
  jmpq .L_527e0                  #  130   0x528a5  5      
  nop                            #  131   0x528aa  1      
  nop                            #  132   0x528ab  1      
.L_52960:                        #        0x528ac  0      
  cmpb $0x4c, %al                #  133   0x528ac  2      
  jne .L_527c0                   #  134   0x528ae  6      
  addl $0x1, %edx                #  135   0x528b4  3      
  movl %ebx, %edi                #  136   0x528b7  2      
  movl %ebx, %ebx                #  137   0x528b9  2      
  movl %edx, 0xc(%r15,%rbx,1)    #  138   0x528bb  5      
  nop                            #  139   0x528c0  1      
  callq .d_source_name           #  140   0x528c1  5      
  movl %eax, %r12d               #  141   0x528c6  3      
  testq %r12, %r12               #  142   0x528c9  3      
  je .L_527c0                    #  143   0x528cc  6      
  movl %ebx, %ebx                #  144   0x528d2  2      
  movl 0xc(%r15,%rbx,1), %eax    #  145   0x528d4  5      
  movl %eax, %eax                #  146   0x528d9  2      
  cmpb $0x5f, (%r15,%rax,1)      #  147   0x528db  5      
  je .L_52b00                    #  148   0x528e0  6      
.L_529a0:                        #        0x528e6  0      
  movq %r12, %rax                #  149   0x528e6  3      
  jmpq .L_527e0                  #  150   0x528e9  5      
  nop                            #  151   0x528ee  1      
  nop                            #  152   0x528ef  1      
.L_529c0:                        #        0x528f0  0      
  movl %edx, %edx                #  153   0x528f0  2      
  movzbl 0x1(%r15,%rdx,1), %eax  #  154   0x528f2  6      
  cmpb $0x31, %al                #  155   0x528f8  2      
  je .L_52ae0                    #  156   0x528fa  6      
  cmpb $0x32, %al                #  157   0x52900  2      
  je .L_52a80                    #  158   0x52902  6      
  cmpb $0x30, %al                #  159   0x52908  2      
  jne .L_527c0                   #  160   0x5290a  6      
  movl $0x1, %esi                #  161   0x52910  5      
  nop                            #  162   0x52915  1      
  nop                            #  163   0x52916  1      
.L_52a00:                        #        0x52917  0      
  addl $0x2, %edx                #  164   0x52917  3      
  movl %ebx, %ebx                #  165   0x5291a  2      
  movl %edx, 0xc(%r15,%rbx,1)    #  166   0x5291c  5      
  movl %ebx, %ebx                #  167   0x52921  2      
  movl 0x14(%r15,%rbx,1), %edx   #  168   0x52923  5      
  movl %ebx, %ebx                #  169   0x52928  2      
  cmpl 0x18(%r15,%rbx,1), %edx   #  170   0x5292a  5      
  jge .L_527c0                   #  171   0x5292f  6      
  xchgw %ax, %ax                 #  172   0x52935  3      
  leal (%rdx,%rdx,2), %eax       #  173   0x52938  3      
  addl $0x1, %edx                #  174   0x5293b  3      
  movl %ebx, %ebx                #  175   0x5293e  2      
  movl %edx, 0x14(%r15,%rbx,1)   #  176   0x52940  5      
  shll $0x2, %eax                #  177   0x52945  3      
  movl %ebx, %ebx                #  178   0x52948  2      
  addl 0x10(%r15,%rbx,1), %eax   #  179   0x5294a  5      
  testq %rax, %rax               #  180   0x5294f  3      
  je .L_527c0                    #  181   0x52952  6      
  testq %rcx, %rcx               #  182   0x52958  3      
  je .L_527c0                    #  183   0x5295b  6      
  movl %eax, %eax                #  184   0x52961  2      
  movl $0x8, (%r15,%rax,1)       #  185   0x52963  8      
  movl %eax, %eax                #  186   0x5296b  2      
  movl %esi, 0x4(%r15,%rax,1)    #  187   0x5296d  5      
  nop                            #  188   0x52972  1      
  movl %eax, %eax                #  189   0x52973  2      
  movl %ecx, 0x8(%r15,%rax,1)    #  190   0x52975  5      
  jmpq .L_527e0                  #  191   0x5297a  5      
  nop                            #  192   0x5297f  1      
  nop                            #  193   0x52980  1      
.L_52a80:                        #        0x52981  0      
  movl $0x3, %esi                #  194   0x52981  5      
  jmpq .L_52a00                  #  195   0x52986  5      
  nop                            #  196   0x5298b  1      
  nop                            #  197   0x5298c  1      
.L_52aa0:                        #        0x5298d  0      
  movl $0x3, %esi                #  198   0x5298d  5      
  jmpq .L_528e0                  #  199   0x52992  5      
  nop                            #  200   0x52997  1      
  nop                            #  201   0x52998  1      
.L_52ac0:                        #        0x52999  0      
  movl $0x2, %esi                #  202   0x52999  5      
  jmpq .L_528e0                  #  203   0x5299e  5      
  nop                            #  204   0x529a3  1      
  nop                            #  205   0x529a4  1      
.L_52ae0:                        #        0x529a5  0      
  movl $0x2, %esi                #  206   0x529a5  5      
  jmpq .L_52a00                  #  207   0x529aa  5      
  nop                            #  208   0x529af  1      
  nop                            #  209   0x529b0  1      
.L_52b00:                        #        0x529b1  0      
  addl $0x1, %eax                #  210   0x529b1  3      
  movl %ebx, %edi                #  211   0x529b4  2      
  movl %ebx, %ebx                #  212   0x529b6  2      
  movl %eax, 0xc(%r15,%rbx,1)    #  213   0x529b8  5      
  nop                            #  214   0x529bd  1      
  callq .d_number                #  215   0x529be  5      
  testl %eax, %eax               #  216   0x529c3  2      
  jns .L_529a0                   #  217   0x529c5  6      
  jmpq .L_527c0                  #  218   0x529cb  5      
  nop                            #  219   0x529d0  1      
  nop                            #  220   0x529d1  1      
                                                          
.size d_unqualified_name, .-d_unqualified_name

