  .text
  .globl d_substitution
  .type d_substitution, @function

#! file-offset 0x50120
#! rip-offset  0x50120
#! capacity    1120 bytes

# Text                           #  Line  RIP      Bytes  
.d_substitution:                 #        0x50120  0      
  movl %edi, %edi                #  1     0x50120  2      
  movl %edi, %edi                #  2     0x50122  2      
  movl 0xc(%r15,%rdi,1), %eax    #  3     0x50124  5      
  movl %eax, %eax                #  4     0x50129  2      
  cmpb $0x53, (%r15,%rax,1)      #  5     0x5012b  5      
  je .L_50180                    #  6     0x50130  6      
  nop                            #  7     0x50136  1      
.L_50140:                        #        0x50137  0      
  xorl %eax, %eax                #  8     0x50137  2      
  nop                            #  9     0x50139  1      
  nop                            #  10    0x5013a  1      
.L_50160:                        #        0x5013b  0      
  popq %r11                      #  11    0x5013b  3      
  andl $0xffffffe0, %r11d        #  12    0x5013e  7      
  addq %r15, %r11                #  13    0x50145  3      
  jmpq %r11                      #  14    0x50148  3      
  nop                            #  15    0x5014b  1      
  nop                            #  16    0x5014c  1      
.L_50180:                        #        0x5014d  0      
  leal 0x1(%rax), %edx           #  17    0x5014d  3      
  movl %edi, %edi                #  18    0x50150  2      
  movl %edx, 0xc(%r15,%rdi,1)    #  19    0x50152  5      
  movl %edx, %edx                #  20    0x50157  2      
  movzbl (%r15,%rdx,1), %eax     #  21    0x50159  5      
  testb %al, %al                 #  22    0x5015e  2      
  jne .L_50260                   #  23    0x50160  6      
  nop                            #  24    0x50166  1      
.L_501a0:                        #        0x50167  0      
  movl %edi, %edi                #  25    0x50167  2      
  movl 0x8(%r15,%rdi,1), %r8d    #  26    0x50169  5      
  shrl $0x3, %r8d                #  27    0x5016e  4      
  andl $0x1, %r8d                #  28    0x50172  4      
  testl %esi, %esi               #  29    0x50176  2      
  je .L_501e0                    #  30    0x50178  6      
  testl %r8d, %r8d               #  31    0x5017e  3      
  jne .L_501e0                   #  32    0x50181  6      
  movl %edi, %edi                #  33    0x50187  2      
  movl 0xc(%r15,%rdi,1), %edx    #  34    0x50189  5      
  nop                            #  35    0x5018e  1      
  xorl %r8d, %r8d                #  36    0x5018f  3      
  movl %edx, %edx                #  37    0x50192  2      
  movzbl (%r15,%rdx,1), %edx     #  38    0x50194  5      
  subl $0x43, %edx               #  39    0x50199  3      
  cmpb $0x1, %dl                 #  40    0x5019c  3      
  setbe %r8b                     #  41    0x5019f  4      
  nop                            #  42    0x501a3  1      
.L_501e0:                        #        0x501a4  0      
  movl $0x100224c4, %ecx         #  43    0x501a4  5      
  cmpl $0x10022400, %ecx         #  44    0x501a9  6      
  jbe .L_50140                   #  45    0x501af  6      
  cmpb $0x74, %al                #  46    0x501b5  2      
  movl %ecx, %ecx                #  47    0x501b7  2      
  movl $0x10022400, %edx         #  48    0x501b9  5      
  jne .L_50240                   #  49    0x501be  6      
  nop                            #  50    0x501c4  1      
  jmpq .L_50400                  #  51    0x501c5  5      
  nop                            #  52    0x501ca  1      
  nop                            #  53    0x501cb  1      
.L_50220:                        #        0x501cc  0      
  movl %edx, %edx                #  54    0x501cc  2      
  cmpb (%r15,%rdx,1), %al        #  55    0x501ce  4      
  je .L_50400                    #  56    0x501d2  6      
  nop                            #  57    0x501d8  1      
  nop                            #  58    0x501d9  1      
.L_50240:                        #        0x501da  0      
  addl $0x1c, %edx               #  59    0x501da  3      
  cmpl %ecx, %edx                #  60    0x501dd  2      
  jne .L_50220                   #  61    0x501df  6      
  jmpq .L_50140                  #  62    0x501e5  5      
  nop                            #  63    0x501ea  1      
  nop                            #  64    0x501eb  1      
.L_50260:                        #        0x501ec  0      
  addl $0x1, %edx                #  65    0x501ec  3      
  movl %edi, %edi                #  66    0x501ef  2      
  movl %edx, 0xc(%r15,%rdi,1)    #  67    0x501f1  5      
  leal -0x30(%rax), %edx         #  68    0x501f6  3      
  cmpb $0x9, %dl                 #  69    0x501f9  3      
  jbe .L_50360                   #  70    0x501fc  6      
  cmpb $0x5f, %al                #  71    0x50202  2      
  je .L_50380                    #  72    0x50204  6      
  xchgw %ax, %ax                 #  73    0x5020a  3      
  leal -0x41(%rax), %edx         #  74    0x5020d  3      
  cmpb $0x19, %dl                #  75    0x50210  3      
  ja .L_501a0                    #  76    0x50213  6      
  nop                            #  77    0x50219  1      
  nop                            #  78    0x5021a  1      
.L_502a0:                        #        0x5021b  0      
  leal -0x30(%rax), %ecx         #  79    0x5021b  3      
  xorl %edx, %edx                #  80    0x5021e  2      
  cmpb $0x9, %cl                 #  81    0x50220  3      
  ja .L_50340                    #  82    0x50223  6      
  nop                            #  83    0x50229  1      
  nop                            #  84    0x5022a  1      
.L_502c0:                        #        0x5022b  0      
  leal (%rdx,%rdx,8), %ecx       #  85    0x5022b  3      
  movsbl %al, %eax               #  86    0x5022e  3      
  leal -0x30(%rax,%rcx,4), %ecx  #  87    0x50231  4      
  nop                            #  88    0x50235  1      
  nop                            #  89    0x50236  1      
.L_502e0:                        #        0x50237  0      
  cmpl %ecx, %edx                #  90    0x50237  2      
  ja .L_50140                    #  91    0x50239  6      
  movl %edi, %edi                #  92    0x5023f  2      
  movl 0xc(%r15,%rdi,1), %edx    #  93    0x50241  5      
  movl %edx, %edx                #  94    0x50246  2      
  movzbl (%r15,%rdx,1), %eax     #  95    0x50248  5      
  testb %al, %al                 #  96    0x5024d  2      
  je .L_50320                    #  97    0x5024f  6      
  addl $0x1, %edx                #  98    0x50255  3      
  cmpb $0x5f, %al                #  99    0x50258  2      
  nop                            #  100   0x5025a  1      
  movl %edi, %edi                #  101   0x5025b  2      
  movl %edx, 0xc(%r15,%rdi,1)    #  102   0x5025d  5      
  je .L_503a0                    #  103   0x50262  6      
  nop                            #  104   0x50268  1      
  nop                            #  105   0x50269  1      
.L_50320:                        #        0x5026a  0      
  movl %ecx, %edx                #  106   0x5026a  2      
  leal -0x30(%rax), %ecx         #  107   0x5026c  3      
  cmpb $0x9, %cl                 #  108   0x5026f  3      
  jbe .L_502c0                   #  109   0x50272  6      
  nop                            #  110   0x50278  1      
  nop                            #  111   0x50279  1      
.L_50340:                        #        0x5027a  0      
  leal -0x41(%rax), %ecx         #  112   0x5027a  3      
  cmpb $0x19, %cl                #  113   0x5027d  3      
  ja .L_50140                    #  114   0x50280  6      
  leal (%rdx,%rdx,8), %ecx       #  115   0x50286  3      
  movsbl %al, %eax               #  116   0x50289  3      
  leal -0x37(%rax,%rcx,4), %ecx  #  117   0x5028c  4      
  jmpq .L_502e0                  #  118   0x50290  5      
  nop                            #  119   0x50295  1      
.L_50360:                        #        0x50296  0      
  cmpb $0x5f, %al                #  120   0x50296  2      
  jne .L_502a0                   #  121   0x50298  6      
  nop                            #  122   0x5029e  1      
  nop                            #  123   0x5029f  1      
.L_50380:                        #        0x502a0  0      
  xorl %ecx, %ecx                #  124   0x502a0  2      
  jmpq .L_503c0                  #  125   0x502a2  5      
  nop                            #  126   0x502a7  1      
  nop                            #  127   0x502a8  1      
.L_503a0:                        #        0x502a9  0      
  addl $0x1, %ecx                #  128   0x502a9  3      
  nop                            #  129   0x502ac  1      
  nop                            #  130   0x502ad  1      
.L_503c0:                        #        0x502ae  0      
  movl %edi, %edi                #  131   0x502ae  2      
  cmpl 0x20(%r15,%rdi,1), %ecx   #  132   0x502b0  5      
  jae .L_50140                   #  133   0x502b5  6      
  shll $0x2, %ecx                #  134   0x502bb  3      
  movl %edi, %edi                #  135   0x502be  2      
  addl 0x1c(%r15,%rdi,1), %ecx   #  136   0x502c0  5      
  movl %edi, %edi                #  137   0x502c5  2      
  addl $0x1, 0x28(%r15,%rdi,1)   #  138   0x502c7  6      
  nop                            #  139   0x502cd  1      
  movl %ecx, %ecx                #  140   0x502ce  2      
  movl (%r15,%rcx,1), %eax       #  141   0x502d0  4      
  popq %r11                      #  142   0x502d4  3      
  andl $0xffffffe0, %r11d        #  143   0x502d7  7      
  addq %r15, %r11                #  144   0x502de  3      
  jmpq %r11                      #  145   0x502e1  3      
  nop                            #  146   0x502e4  1      
.L_50400:                        #        0x502e5  0      
  movl %edx, %edx                #  147   0x502e5  2      
  movl 0x14(%r15,%rdx,1), %esi   #  148   0x502e7  5      
  testq %rsi, %rsi               #  149   0x502ec  3      
  je .L_50560                    #  150   0x502ef  6      
  movl %edi, %edi                #  151   0x502f5  2      
  movl 0x14(%r15,%rdi,1), %ecx   #  152   0x502f7  5      
  xorl %eax, %eax                #  153   0x502fc  2      
  movl %edi, %edi                #  154   0x502fe  2      
  cmpl 0x18(%r15,%rdi,1), %ecx   #  155   0x50300  5      
  movl %edx, %edx                #  156   0x50305  2      
  movl 0x18(%r15,%rdx,1), %r9d   #  157   0x50307  5      
  jge .L_50480                   #  158   0x5030c  6      
  leal (%rcx,%rcx,2), %eax       #  159   0x50312  3      
  addl $0x1, %ecx                #  160   0x50315  3      
  movl %edi, %edi                #  161   0x50318  2      
  movl %ecx, 0x14(%r15,%rdi,1)   #  162   0x5031a  5      
  shll $0x2, %eax                #  163   0x5031f  3      
  movl %edi, %edi                #  164   0x50322  2      
  addl 0x10(%r15,%rdi,1), %eax   #  165   0x50324  5      
  testq %rax, %rax               #  166   0x50329  3      
  je .L_50480                    #  167   0x5032c  6      
  movl %eax, %eax                #  168   0x50332  2      
  movl %esi, 0x4(%r15,%rax,1)    #  169   0x50334  5      
  movl %eax, %eax                #  170   0x50339  2      
  movl %r9d, 0x8(%r15,%rax,1)    #  171   0x5033b  5      
  movl %edi, %edi                #  172   0x50340  2      
  movl 0x14(%r15,%rdi,1), %ecx   #  173   0x50342  5      
  nop                            #  174   0x50347  1      
  movl %eax, %eax                #  175   0x50348  2      
  movl $0x16, (%r15,%rax,1)      #  176   0x5034a  8      
  nop                            #  177   0x50352  1      
  nop                            #  178   0x50353  1      
.L_50480:                        #        0x50354  0      
  movl %edi, %edi                #  179   0x50354  2      
  movl %eax, 0x2c(%r15,%rdi,1)   #  180   0x50356  5      
  nop                            #  181   0x5035b  1      
  nop                            #  182   0x5035c  1      
.L_504a0:                        #        0x5035d  0      
  testl %r8d, %r8d               #  183   0x5035d  3      
  je .L_50540                    #  184   0x50360  6      
  movl %edx, %edx                #  185   0x50366  2      
  movl 0xc(%r15,%rdx,1), %esi    #  186   0x50368  5      
  movl %edx, %edx                #  187   0x5036d  2      
  movl 0x10(%r15,%rdx,1), %edx   #  188   0x5036f  5      
  nop                            #  189   0x50374  1      
.L_504c0:                        #        0x50375  0      
  movl %edi, %edi                #  190   0x50375  2      
  addl %edx, 0x30(%r15,%rdi,1)   #  191   0x50377  5      
  movl %edi, %edi                #  192   0x5037c  2      
  cmpl 0x18(%r15,%rdi,1), %ecx   #  193   0x5037e  5      
  jge .L_50140                   #  194   0x50383  6      
  leal (%rcx,%rcx,2), %eax       #  195   0x50389  3      
  addl $0x1, %ecx                #  196   0x5038c  3      
  nop                            #  197   0x5038f  1      
  movl %edi, %edi                #  198   0x50390  2      
  movl %ecx, 0x14(%r15,%rdi,1)   #  199   0x50392  5      
  shll $0x2, %eax                #  200   0x50397  3      
  movl %edi, %edi                #  201   0x5039a  2      
  addl 0x10(%r15,%rdi,1), %eax   #  202   0x5039c  5      
  testq %rax, %rax               #  203   0x503a1  3      
  je .L_50160                    #  204   0x503a4  6      
  nop                            #  205   0x503aa  1      
  movl %eax, %eax                #  206   0x503ab  2      
  movl $0x16, (%r15,%rax,1)      #  207   0x503ad  8      
  movl %eax, %eax                #  208   0x503b5  2      
  movl %esi, 0x4(%r15,%rax,1)    #  209   0x503b7  5      
  movl %eax, %eax                #  210   0x503bc  2      
  movl %edx, 0x8(%r15,%rax,1)    #  211   0x503be  5      
  popq %r11                      #  212   0x503c3  3      
  nop                            #  213   0x503c6  1      
  andl $0xffffffe0, %r11d        #  214   0x503c7  7      
  addq %r15, %r11                #  215   0x503ce  3      
  jmpq %r11                      #  216   0x503d1  3      
  nop                            #  217   0x503d4  1      
  nop                            #  218   0x503d5  1      
.L_50540:                        #        0x503d6  0      
  movl %edx, %edx                #  219   0x503d6  2      
  movl 0x4(%r15,%rdx,1), %esi    #  220   0x503d8  5      
  movl %edx, %edx                #  221   0x503dd  2      
  movl 0x8(%r15,%rdx,1), %edx    #  222   0x503df  5      
  jmpq .L_504c0                  #  223   0x503e4  5      
  nop                            #  224   0x503e9  1      
.L_50560:                        #        0x503ea  0      
  movl %edi, %edi                #  225   0x503ea  2      
  movl 0x14(%r15,%rdi,1), %ecx   #  226   0x503ec  5      
  jmpq .L_504a0                  #  227   0x503f1  5      
  nop                            #  228   0x503f6  1      
  nop                            #  229   0x503f7  1      
                                                          
.size d_substitution, .-d_substitution

