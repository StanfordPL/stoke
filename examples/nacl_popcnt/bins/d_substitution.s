  .text
  .globl d_substitution
  .type d_substitution, @function

#! file-offset 0x50080
#! rip-offset  0x50080
#! capacity    1120 bytes

# Text                           #  Line  RIP      Bytes  
.d_substitution:                 #        0x50080  0      
  movl %edi, %edi                #  1     0x50080  2      
  movl %edi, %edi                #  2     0x50082  2      
  movl 0xc(%r15,%rdi,1), %eax    #  3     0x50084  5      
  movl %eax, %eax                #  4     0x50089  2      
  cmpb $0x53, (%r15,%rax,1)      #  5     0x5008b  5      
  je .L_500e0                    #  6     0x50090  6      
  nop                            #  7     0x50096  1      
.L_500a0:                        #        0x50097  0      
  xorl %eax, %eax                #  8     0x50097  2      
  nop                            #  9     0x50099  1      
  nop                            #  10    0x5009a  1      
.L_500c0:                        #        0x5009b  0      
  popq %r11                      #  11    0x5009b  3      
  andl $0xffffffe0, %r11d        #  12    0x5009e  7      
  addq %r15, %r11                #  13    0x500a5  3      
  jmpq %r11                      #  14    0x500a8  3      
  nop                            #  15    0x500ab  1      
  nop                            #  16    0x500ac  1      
.L_500e0:                        #        0x500ad  0      
  leal 0x1(%rax), %edx           #  17    0x500ad  3      
  movl %edi, %edi                #  18    0x500b0  2      
  movl %edx, 0xc(%r15,%rdi,1)    #  19    0x500b2  5      
  movl %edx, %edx                #  20    0x500b7  2      
  movzbl (%r15,%rdx,1), %eax     #  21    0x500b9  5      
  testb %al, %al                 #  22    0x500be  2      
  jne .L_501c0                   #  23    0x500c0  6      
  nop                            #  24    0x500c6  1      
.L_50100:                        #        0x500c7  0      
  movl %edi, %edi                #  25    0x500c7  2      
  movl 0x8(%r15,%rdi,1), %r8d    #  26    0x500c9  5      
  shrl $0x3, %r8d                #  27    0x500ce  4      
  andl $0x1, %r8d                #  28    0x500d2  4      
  testl %esi, %esi               #  29    0x500d6  2      
  je .L_50140                    #  30    0x500d8  6      
  testl %r8d, %r8d               #  31    0x500de  3      
  jne .L_50140                   #  32    0x500e1  6      
  movl %edi, %edi                #  33    0x500e7  2      
  movl 0xc(%r15,%rdi,1), %edx    #  34    0x500e9  5      
  nop                            #  35    0x500ee  1      
  xorl %r8d, %r8d                #  36    0x500ef  3      
  movl %edx, %edx                #  37    0x500f2  2      
  movzbl (%r15,%rdx,1), %edx     #  38    0x500f4  5      
  subl $0x43, %edx               #  39    0x500f9  3      
  cmpb $0x1, %dl                 #  40    0x500fc  3      
  setbe %r8b                     #  41    0x500ff  4      
  nop                            #  42    0x50103  1      
.L_50140:                        #        0x50104  0      
  movl $0x100224c4, %ecx         #  43    0x50104  5      
  cmpl $0x10022400, %ecx         #  44    0x50109  6      
  jbe .L_500a0                   #  45    0x5010f  6      
  cmpb $0x74, %al                #  46    0x50115  2      
  movl %ecx, %ecx                #  47    0x50117  2      
  movl $0x10022400, %edx         #  48    0x50119  5      
  jne .L_501a0                   #  49    0x5011e  6      
  nop                            #  50    0x50124  1      
  jmpq .L_50360                  #  51    0x50125  5      
  nop                            #  52    0x5012a  1      
  nop                            #  53    0x5012b  1      
.L_50180:                        #        0x5012c  0      
  movl %edx, %edx                #  54    0x5012c  2      
  cmpb (%r15,%rdx,1), %al        #  55    0x5012e  4      
  je .L_50360                    #  56    0x50132  6      
  nop                            #  57    0x50138  1      
  nop                            #  58    0x50139  1      
.L_501a0:                        #        0x5013a  0      
  addl $0x1c, %edx               #  59    0x5013a  3      
  cmpl %ecx, %edx                #  60    0x5013d  2      
  jne .L_50180                   #  61    0x5013f  6      
  jmpq .L_500a0                  #  62    0x50145  5      
  nop                            #  63    0x5014a  1      
  nop                            #  64    0x5014b  1      
.L_501c0:                        #        0x5014c  0      
  addl $0x1, %edx                #  65    0x5014c  3      
  movl %edi, %edi                #  66    0x5014f  2      
  movl %edx, 0xc(%r15,%rdi,1)    #  67    0x50151  5      
  leal -0x30(%rax), %edx         #  68    0x50156  3      
  cmpb $0x9, %dl                 #  69    0x50159  3      
  jbe .L_502c0                   #  70    0x5015c  6      
  cmpb $0x5f, %al                #  71    0x50162  2      
  je .L_502e0                    #  72    0x50164  6      
  xchgw %ax, %ax                 #  73    0x5016a  3      
  leal -0x41(%rax), %edx         #  74    0x5016d  3      
  cmpb $0x19, %dl                #  75    0x50170  3      
  ja .L_50100                    #  76    0x50173  6      
  nop                            #  77    0x50179  1      
  nop                            #  78    0x5017a  1      
.L_50200:                        #        0x5017b  0      
  leal -0x30(%rax), %ecx         #  79    0x5017b  3      
  xorl %edx, %edx                #  80    0x5017e  2      
  cmpb $0x9, %cl                 #  81    0x50180  3      
  ja .L_502a0                    #  82    0x50183  6      
  nop                            #  83    0x50189  1      
  nop                            #  84    0x5018a  1      
.L_50220:                        #        0x5018b  0      
  leal (%rdx,%rdx,8), %ecx       #  85    0x5018b  3      
  movsbl %al, %eax               #  86    0x5018e  3      
  leal -0x30(%rax,%rcx,4), %ecx  #  87    0x50191  4      
  nop                            #  88    0x50195  1      
  nop                            #  89    0x50196  1      
.L_50240:                        #        0x50197  0      
  cmpl %ecx, %edx                #  90    0x50197  2      
  ja .L_500a0                    #  91    0x50199  6      
  movl %edi, %edi                #  92    0x5019f  2      
  movl 0xc(%r15,%rdi,1), %edx    #  93    0x501a1  5      
  movl %edx, %edx                #  94    0x501a6  2      
  movzbl (%r15,%rdx,1), %eax     #  95    0x501a8  5      
  testb %al, %al                 #  96    0x501ad  2      
  je .L_50280                    #  97    0x501af  6      
  addl $0x1, %edx                #  98    0x501b5  3      
  cmpb $0x5f, %al                #  99    0x501b8  2      
  nop                            #  100   0x501ba  1      
  movl %edi, %edi                #  101   0x501bb  2      
  movl %edx, 0xc(%r15,%rdi,1)    #  102   0x501bd  5      
  je .L_50300                    #  103   0x501c2  6      
  nop                            #  104   0x501c8  1      
  nop                            #  105   0x501c9  1      
.L_50280:                        #        0x501ca  0      
  movl %ecx, %edx                #  106   0x501ca  2      
  leal -0x30(%rax), %ecx         #  107   0x501cc  3      
  cmpb $0x9, %cl                 #  108   0x501cf  3      
  jbe .L_50220                   #  109   0x501d2  6      
  nop                            #  110   0x501d8  1      
  nop                            #  111   0x501d9  1      
.L_502a0:                        #        0x501da  0      
  leal -0x41(%rax), %ecx         #  112   0x501da  3      
  cmpb $0x19, %cl                #  113   0x501dd  3      
  ja .L_500a0                    #  114   0x501e0  6      
  leal (%rdx,%rdx,8), %ecx       #  115   0x501e6  3      
  movsbl %al, %eax               #  116   0x501e9  3      
  leal -0x37(%rax,%rcx,4), %ecx  #  117   0x501ec  4      
  jmpq .L_50240                  #  118   0x501f0  5      
  nop                            #  119   0x501f5  1      
.L_502c0:                        #        0x501f6  0      
  cmpb $0x5f, %al                #  120   0x501f6  2      
  jne .L_50200                   #  121   0x501f8  6      
  nop                            #  122   0x501fe  1      
  nop                            #  123   0x501ff  1      
.L_502e0:                        #        0x50200  0      
  xorl %ecx, %ecx                #  124   0x50200  2      
  jmpq .L_50320                  #  125   0x50202  5      
  nop                            #  126   0x50207  1      
  nop                            #  127   0x50208  1      
.L_50300:                        #        0x50209  0      
  addl $0x1, %ecx                #  128   0x50209  3      
  nop                            #  129   0x5020c  1      
  nop                            #  130   0x5020d  1      
.L_50320:                        #        0x5020e  0      
  movl %edi, %edi                #  131   0x5020e  2      
  cmpl 0x20(%r15,%rdi,1), %ecx   #  132   0x50210  5      
  jae .L_500a0                   #  133   0x50215  6      
  shll $0x2, %ecx                #  134   0x5021b  3      
  movl %edi, %edi                #  135   0x5021e  2      
  addl 0x1c(%r15,%rdi,1), %ecx   #  136   0x50220  5      
  movl %edi, %edi                #  137   0x50225  2      
  addl $0x1, 0x28(%r15,%rdi,1)   #  138   0x50227  6      
  nop                            #  139   0x5022d  1      
  movl %ecx, %ecx                #  140   0x5022e  2      
  movl (%r15,%rcx,1), %eax       #  141   0x50230  4      
  popq %r11                      #  142   0x50234  3      
  andl $0xffffffe0, %r11d        #  143   0x50237  7      
  addq %r15, %r11                #  144   0x5023e  3      
  jmpq %r11                      #  145   0x50241  3      
  nop                            #  146   0x50244  1      
.L_50360:                        #        0x50245  0      
  movl %edx, %edx                #  147   0x50245  2      
  movl 0x14(%r15,%rdx,1), %esi   #  148   0x50247  5      
  testq %rsi, %rsi               #  149   0x5024c  3      
  je .L_504c0                    #  150   0x5024f  6      
  movl %edi, %edi                #  151   0x50255  2      
  movl 0x14(%r15,%rdi,1), %ecx   #  152   0x50257  5      
  xorl %eax, %eax                #  153   0x5025c  2      
  movl %edi, %edi                #  154   0x5025e  2      
  cmpl 0x18(%r15,%rdi,1), %ecx   #  155   0x50260  5      
  movl %edx, %edx                #  156   0x50265  2      
  movl 0x18(%r15,%rdx,1), %r9d   #  157   0x50267  5      
  jge .L_503e0                   #  158   0x5026c  6      
  leal (%rcx,%rcx,2), %eax       #  159   0x50272  3      
  addl $0x1, %ecx                #  160   0x50275  3      
  movl %edi, %edi                #  161   0x50278  2      
  movl %ecx, 0x14(%r15,%rdi,1)   #  162   0x5027a  5      
  shll $0x2, %eax                #  163   0x5027f  3      
  movl %edi, %edi                #  164   0x50282  2      
  addl 0x10(%r15,%rdi,1), %eax   #  165   0x50284  5      
  testq %rax, %rax               #  166   0x50289  3      
  je .L_503e0                    #  167   0x5028c  6      
  movl %eax, %eax                #  168   0x50292  2      
  movl %esi, 0x4(%r15,%rax,1)    #  169   0x50294  5      
  movl %eax, %eax                #  170   0x50299  2      
  movl %r9d, 0x8(%r15,%rax,1)    #  171   0x5029b  5      
  movl %edi, %edi                #  172   0x502a0  2      
  movl 0x14(%r15,%rdi,1), %ecx   #  173   0x502a2  5      
  nop                            #  174   0x502a7  1      
  movl %eax, %eax                #  175   0x502a8  2      
  movl $0x16, (%r15,%rax,1)      #  176   0x502aa  8      
  nop                            #  177   0x502b2  1      
  nop                            #  178   0x502b3  1      
.L_503e0:                        #        0x502b4  0      
  movl %edi, %edi                #  179   0x502b4  2      
  movl %eax, 0x2c(%r15,%rdi,1)   #  180   0x502b6  5      
  nop                            #  181   0x502bb  1      
  nop                            #  182   0x502bc  1      
.L_50400:                        #        0x502bd  0      
  testl %r8d, %r8d               #  183   0x502bd  3      
  je .L_504a0                    #  184   0x502c0  6      
  movl %edx, %edx                #  185   0x502c6  2      
  movl 0xc(%r15,%rdx,1), %esi    #  186   0x502c8  5      
  movl %edx, %edx                #  187   0x502cd  2      
  movl 0x10(%r15,%rdx,1), %edx   #  188   0x502cf  5      
  nop                            #  189   0x502d4  1      
.L_50420:                        #        0x502d5  0      
  movl %edi, %edi                #  190   0x502d5  2      
  addl %edx, 0x30(%r15,%rdi,1)   #  191   0x502d7  5      
  movl %edi, %edi                #  192   0x502dc  2      
  cmpl 0x18(%r15,%rdi,1), %ecx   #  193   0x502de  5      
  jge .L_500a0                   #  194   0x502e3  6      
  leal (%rcx,%rcx,2), %eax       #  195   0x502e9  3      
  addl $0x1, %ecx                #  196   0x502ec  3      
  nop                            #  197   0x502ef  1      
  movl %edi, %edi                #  198   0x502f0  2      
  movl %ecx, 0x14(%r15,%rdi,1)   #  199   0x502f2  5      
  shll $0x2, %eax                #  200   0x502f7  3      
  movl %edi, %edi                #  201   0x502fa  2      
  addl 0x10(%r15,%rdi,1), %eax   #  202   0x502fc  5      
  testq %rax, %rax               #  203   0x50301  3      
  je .L_500c0                    #  204   0x50304  6      
  nop                            #  205   0x5030a  1      
  movl %eax, %eax                #  206   0x5030b  2      
  movl $0x16, (%r15,%rax,1)      #  207   0x5030d  8      
  movl %eax, %eax                #  208   0x50315  2      
  movl %esi, 0x4(%r15,%rax,1)    #  209   0x50317  5      
  movl %eax, %eax                #  210   0x5031c  2      
  movl %edx, 0x8(%r15,%rax,1)    #  211   0x5031e  5      
  popq %r11                      #  212   0x50323  3      
  nop                            #  213   0x50326  1      
  andl $0xffffffe0, %r11d        #  214   0x50327  7      
  addq %r15, %r11                #  215   0x5032e  3      
  jmpq %r11                      #  216   0x50331  3      
  nop                            #  217   0x50334  1      
  nop                            #  218   0x50335  1      
.L_504a0:                        #        0x50336  0      
  movl %edx, %edx                #  219   0x50336  2      
  movl 0x4(%r15,%rdx,1), %esi    #  220   0x50338  5      
  movl %edx, %edx                #  221   0x5033d  2      
  movl 0x8(%r15,%rdx,1), %edx    #  222   0x5033f  5      
  jmpq .L_50420                  #  223   0x50344  5      
  nop                            #  224   0x50349  1      
.L_504c0:                        #        0x5034a  0      
  movl %edi, %edi                #  225   0x5034a  2      
  movl 0x14(%r15,%rdi,1), %ecx   #  226   0x5034c  5      
  jmpq .L_50400                  #  227   0x50351  5      
  nop                            #  228   0x50356  1      
  nop                            #  229   0x50357  1      
                                                          
.size d_substitution, .-d_substitution

