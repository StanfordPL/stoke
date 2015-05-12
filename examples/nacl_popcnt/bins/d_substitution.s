  .text
  .globl d_substitution
  .type d_substitution, @function

#! file-offset 0x500a0
#! rip-offset  0x500a0
#! capacity    1120 bytes

# Text                           #  Line  RIP      Bytes  
.d_substitution:                 #        0x500a0  0      
  movl %edi, %edi                #  1     0x500a0  2      
  movl %edi, %edi                #  2     0x500a2  2      
  movl 0xc(%r15,%rdi,1), %eax    #  3     0x500a4  5      
  movl %eax, %eax                #  4     0x500a9  2      
  cmpb $0x53, (%r15,%rax,1)      #  5     0x500ab  5      
  je .L_50100                    #  6     0x500b0  6      
  nop                            #  7     0x500b6  1      
.L_500c0:                        #        0x500b7  0      
  xorl %eax, %eax                #  8     0x500b7  2      
  nop                            #  9     0x500b9  1      
  nop                            #  10    0x500ba  1      
.L_500e0:                        #        0x500bb  0      
  popq %r11                      #  11    0x500bb  3      
  andl $0xffffffe0, %r11d        #  12    0x500be  7      
  addq %r15, %r11                #  13    0x500c5  3      
  jmpq %r11                      #  14    0x500c8  3      
  nop                            #  15    0x500cb  1      
  nop                            #  16    0x500cc  1      
.L_50100:                        #        0x500cd  0      
  leal 0x1(%rax), %edx           #  17    0x500cd  3      
  movl %edi, %edi                #  18    0x500d0  2      
  movl %edx, 0xc(%r15,%rdi,1)    #  19    0x500d2  5      
  movl %edx, %edx                #  20    0x500d7  2      
  movzbl (%r15,%rdx,1), %eax     #  21    0x500d9  5      
  testb %al, %al                 #  22    0x500de  2      
  jne .L_501e0                   #  23    0x500e0  6      
  nop                            #  24    0x500e6  1      
.L_50120:                        #        0x500e7  0      
  movl %edi, %edi                #  25    0x500e7  2      
  movl 0x8(%r15,%rdi,1), %r8d    #  26    0x500e9  5      
  shrl $0x3, %r8d                #  27    0x500ee  4      
  andl $0x1, %r8d                #  28    0x500f2  4      
  testl %esi, %esi               #  29    0x500f6  2      
  je .L_50160                    #  30    0x500f8  6      
  testl %r8d, %r8d               #  31    0x500fe  3      
  jne .L_50160                   #  32    0x50101  6      
  movl %edi, %edi                #  33    0x50107  2      
  movl 0xc(%r15,%rdi,1), %edx    #  34    0x50109  5      
  nop                            #  35    0x5010e  1      
  xorl %r8d, %r8d                #  36    0x5010f  3      
  movl %edx, %edx                #  37    0x50112  2      
  movzbl (%r15,%rdx,1), %edx     #  38    0x50114  5      
  subl $0x43, %edx               #  39    0x50119  3      
  cmpb $0x1, %dl                 #  40    0x5011c  3      
  setbe %r8b                     #  41    0x5011f  4      
  nop                            #  42    0x50123  1      
.L_50160:                        #        0x50124  0      
  movl $0x100224c4, %ecx         #  43    0x50124  5      
  cmpl $0x10022400, %ecx         #  44    0x50129  6      
  jbe .L_500c0                   #  45    0x5012f  6      
  cmpb $0x74, %al                #  46    0x50135  2      
  movl %ecx, %ecx                #  47    0x50137  2      
  movl $0x10022400, %edx         #  48    0x50139  5      
  jne .L_501c0                   #  49    0x5013e  6      
  nop                            #  50    0x50144  1      
  jmpq .L_50380                  #  51    0x50145  5      
  nop                            #  52    0x5014a  1      
  nop                            #  53    0x5014b  1      
.L_501a0:                        #        0x5014c  0      
  movl %edx, %edx                #  54    0x5014c  2      
  cmpb (%r15,%rdx,1), %al        #  55    0x5014e  4      
  je .L_50380                    #  56    0x50152  6      
  nop                            #  57    0x50158  1      
  nop                            #  58    0x50159  1      
.L_501c0:                        #        0x5015a  0      
  addl $0x1c, %edx               #  59    0x5015a  3      
  cmpl %ecx, %edx                #  60    0x5015d  2      
  jne .L_501a0                   #  61    0x5015f  6      
  jmpq .L_500c0                  #  62    0x50165  5      
  nop                            #  63    0x5016a  1      
  nop                            #  64    0x5016b  1      
.L_501e0:                        #        0x5016c  0      
  addl $0x1, %edx                #  65    0x5016c  3      
  movl %edi, %edi                #  66    0x5016f  2      
  movl %edx, 0xc(%r15,%rdi,1)    #  67    0x50171  5      
  leal -0x30(%rax), %edx         #  68    0x50176  3      
  cmpb $0x9, %dl                 #  69    0x50179  3      
  jbe .L_502e0                   #  70    0x5017c  6      
  cmpb $0x5f, %al                #  71    0x50182  2      
  je .L_50300                    #  72    0x50184  6      
  xchgw %ax, %ax                 #  73    0x5018a  3      
  leal -0x41(%rax), %edx         #  74    0x5018d  3      
  cmpb $0x19, %dl                #  75    0x50190  3      
  ja .L_50120                    #  76    0x50193  6      
  nop                            #  77    0x50199  1      
  nop                            #  78    0x5019a  1      
.L_50220:                        #        0x5019b  0      
  leal -0x30(%rax), %ecx         #  79    0x5019b  3      
  xorl %edx, %edx                #  80    0x5019e  2      
  cmpb $0x9, %cl                 #  81    0x501a0  3      
  ja .L_502c0                    #  82    0x501a3  6      
  nop                            #  83    0x501a9  1      
  nop                            #  84    0x501aa  1      
.L_50240:                        #        0x501ab  0      
  leal (%rdx,%rdx,8), %ecx       #  85    0x501ab  3      
  movsbl %al, %eax               #  86    0x501ae  3      
  leal -0x30(%rax,%rcx,4), %ecx  #  87    0x501b1  4      
  nop                            #  88    0x501b5  1      
  nop                            #  89    0x501b6  1      
.L_50260:                        #        0x501b7  0      
  cmpl %ecx, %edx                #  90    0x501b7  2      
  ja .L_500c0                    #  91    0x501b9  6      
  movl %edi, %edi                #  92    0x501bf  2      
  movl 0xc(%r15,%rdi,1), %edx    #  93    0x501c1  5      
  movl %edx, %edx                #  94    0x501c6  2      
  movzbl (%r15,%rdx,1), %eax     #  95    0x501c8  5      
  testb %al, %al                 #  96    0x501cd  2      
  je .L_502a0                    #  97    0x501cf  6      
  addl $0x1, %edx                #  98    0x501d5  3      
  cmpb $0x5f, %al                #  99    0x501d8  2      
  nop                            #  100   0x501da  1      
  movl %edi, %edi                #  101   0x501db  2      
  movl %edx, 0xc(%r15,%rdi,1)    #  102   0x501dd  5      
  je .L_50320                    #  103   0x501e2  6      
  nop                            #  104   0x501e8  1      
  nop                            #  105   0x501e9  1      
.L_502a0:                        #        0x501ea  0      
  movl %ecx, %edx                #  106   0x501ea  2      
  leal -0x30(%rax), %ecx         #  107   0x501ec  3      
  cmpb $0x9, %cl                 #  108   0x501ef  3      
  jbe .L_50240                   #  109   0x501f2  6      
  nop                            #  110   0x501f8  1      
  nop                            #  111   0x501f9  1      
.L_502c0:                        #        0x501fa  0      
  leal -0x41(%rax), %ecx         #  112   0x501fa  3      
  cmpb $0x19, %cl                #  113   0x501fd  3      
  ja .L_500c0                    #  114   0x50200  6      
  leal (%rdx,%rdx,8), %ecx       #  115   0x50206  3      
  movsbl %al, %eax               #  116   0x50209  3      
  leal -0x37(%rax,%rcx,4), %ecx  #  117   0x5020c  4      
  jmpq .L_50260                  #  118   0x50210  5      
  nop                            #  119   0x50215  1      
.L_502e0:                        #        0x50216  0      
  cmpb $0x5f, %al                #  120   0x50216  2      
  jne .L_50220                   #  121   0x50218  6      
  nop                            #  122   0x5021e  1      
  nop                            #  123   0x5021f  1      
.L_50300:                        #        0x50220  0      
  xorl %ecx, %ecx                #  124   0x50220  2      
  jmpq .L_50340                  #  125   0x50222  5      
  nop                            #  126   0x50227  1      
  nop                            #  127   0x50228  1      
.L_50320:                        #        0x50229  0      
  addl $0x1, %ecx                #  128   0x50229  3      
  nop                            #  129   0x5022c  1      
  nop                            #  130   0x5022d  1      
.L_50340:                        #        0x5022e  0      
  movl %edi, %edi                #  131   0x5022e  2      
  cmpl 0x20(%r15,%rdi,1), %ecx   #  132   0x50230  5      
  jae .L_500c0                   #  133   0x50235  6      
  shll $0x2, %ecx                #  134   0x5023b  3      
  movl %edi, %edi                #  135   0x5023e  2      
  addl 0x1c(%r15,%rdi,1), %ecx   #  136   0x50240  5      
  movl %edi, %edi                #  137   0x50245  2      
  addl $0x1, 0x28(%r15,%rdi,1)   #  138   0x50247  6      
  nop                            #  139   0x5024d  1      
  movl %ecx, %ecx                #  140   0x5024e  2      
  movl (%r15,%rcx,1), %eax       #  141   0x50250  4      
  popq %r11                      #  142   0x50254  3      
  andl $0xffffffe0, %r11d        #  143   0x50257  7      
  addq %r15, %r11                #  144   0x5025e  3      
  jmpq %r11                      #  145   0x50261  3      
  nop                            #  146   0x50264  1      
.L_50380:                        #        0x50265  0      
  movl %edx, %edx                #  147   0x50265  2      
  movl 0x14(%r15,%rdx,1), %esi   #  148   0x50267  5      
  testq %rsi, %rsi               #  149   0x5026c  3      
  je .L_504e0                    #  150   0x5026f  6      
  movl %edi, %edi                #  151   0x50275  2      
  movl 0x14(%r15,%rdi,1), %ecx   #  152   0x50277  5      
  xorl %eax, %eax                #  153   0x5027c  2      
  movl %edi, %edi                #  154   0x5027e  2      
  cmpl 0x18(%r15,%rdi,1), %ecx   #  155   0x50280  5      
  movl %edx, %edx                #  156   0x50285  2      
  movl 0x18(%r15,%rdx,1), %r9d   #  157   0x50287  5      
  jge .L_50400                   #  158   0x5028c  6      
  leal (%rcx,%rcx,2), %eax       #  159   0x50292  3      
  addl $0x1, %ecx                #  160   0x50295  3      
  movl %edi, %edi                #  161   0x50298  2      
  movl %ecx, 0x14(%r15,%rdi,1)   #  162   0x5029a  5      
  shll $0x2, %eax                #  163   0x5029f  3      
  movl %edi, %edi                #  164   0x502a2  2      
  addl 0x10(%r15,%rdi,1), %eax   #  165   0x502a4  5      
  testq %rax, %rax               #  166   0x502a9  3      
  je .L_50400                    #  167   0x502ac  6      
  movl %eax, %eax                #  168   0x502b2  2      
  movl %esi, 0x4(%r15,%rax,1)    #  169   0x502b4  5      
  movl %eax, %eax                #  170   0x502b9  2      
  movl %r9d, 0x8(%r15,%rax,1)    #  171   0x502bb  5      
  movl %edi, %edi                #  172   0x502c0  2      
  movl 0x14(%r15,%rdi,1), %ecx   #  173   0x502c2  5      
  nop                            #  174   0x502c7  1      
  movl %eax, %eax                #  175   0x502c8  2      
  movl $0x16, (%r15,%rax,1)      #  176   0x502ca  8      
  nop                            #  177   0x502d2  1      
  nop                            #  178   0x502d3  1      
.L_50400:                        #        0x502d4  0      
  movl %edi, %edi                #  179   0x502d4  2      
  movl %eax, 0x2c(%r15,%rdi,1)   #  180   0x502d6  5      
  nop                            #  181   0x502db  1      
  nop                            #  182   0x502dc  1      
.L_50420:                        #        0x502dd  0      
  testl %r8d, %r8d               #  183   0x502dd  3      
  je .L_504c0                    #  184   0x502e0  6      
  movl %edx, %edx                #  185   0x502e6  2      
  movl 0xc(%r15,%rdx,1), %esi    #  186   0x502e8  5      
  movl %edx, %edx                #  187   0x502ed  2      
  movl 0x10(%r15,%rdx,1), %edx   #  188   0x502ef  5      
  nop                            #  189   0x502f4  1      
.L_50440:                        #        0x502f5  0      
  movl %edi, %edi                #  190   0x502f5  2      
  addl %edx, 0x30(%r15,%rdi,1)   #  191   0x502f7  5      
  movl %edi, %edi                #  192   0x502fc  2      
  cmpl 0x18(%r15,%rdi,1), %ecx   #  193   0x502fe  5      
  jge .L_500c0                   #  194   0x50303  6      
  leal (%rcx,%rcx,2), %eax       #  195   0x50309  3      
  addl $0x1, %ecx                #  196   0x5030c  3      
  nop                            #  197   0x5030f  1      
  movl %edi, %edi                #  198   0x50310  2      
  movl %ecx, 0x14(%r15,%rdi,1)   #  199   0x50312  5      
  shll $0x2, %eax                #  200   0x50317  3      
  movl %edi, %edi                #  201   0x5031a  2      
  addl 0x10(%r15,%rdi,1), %eax   #  202   0x5031c  5      
  testq %rax, %rax               #  203   0x50321  3      
  je .L_500e0                    #  204   0x50324  6      
  nop                            #  205   0x5032a  1      
  movl %eax, %eax                #  206   0x5032b  2      
  movl $0x16, (%r15,%rax,1)      #  207   0x5032d  8      
  movl %eax, %eax                #  208   0x50335  2      
  movl %esi, 0x4(%r15,%rax,1)    #  209   0x50337  5      
  movl %eax, %eax                #  210   0x5033c  2      
  movl %edx, 0x8(%r15,%rax,1)    #  211   0x5033e  5      
  popq %r11                      #  212   0x50343  3      
  nop                            #  213   0x50346  1      
  andl $0xffffffe0, %r11d        #  214   0x50347  7      
  addq %r15, %r11                #  215   0x5034e  3      
  jmpq %r11                      #  216   0x50351  3      
  nop                            #  217   0x50354  1      
  nop                            #  218   0x50355  1      
.L_504c0:                        #        0x50356  0      
  movl %edx, %edx                #  219   0x50356  2      
  movl 0x4(%r15,%rdx,1), %esi    #  220   0x50358  5      
  movl %edx, %edx                #  221   0x5035d  2      
  movl 0x8(%r15,%rdx,1), %edx    #  222   0x5035f  5      
  jmpq .L_50440                  #  223   0x50364  5      
  nop                            #  224   0x50369  1      
.L_504e0:                        #        0x5036a  0      
  movl %edi, %edi                #  225   0x5036a  2      
  movl 0x14(%r15,%rdi,1), %ecx   #  226   0x5036c  5      
  jmpq .L_50420                  #  227   0x50371  5      
  nop                            #  228   0x50376  1      
  nop                            #  229   0x50377  1      
                                                          
.size d_substitution, .-d_substitution

