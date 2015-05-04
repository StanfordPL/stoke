  .text
  .globl _ZN2pp8Instance11PostMessageERKNS_3VarE
  .type _ZN2pp8Instance11PostMessageERKNS_3VarE, @function

#! file-offset 0x232e0
#! rip-offset  0x232e0
#! capacity    1248 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance11PostMessageERKNS_3VarE:        #        0x232e0  0      
  pushq %r12                                     #  1     0x232e0  3      
  movl %edi, %r12d                               #  2     0x232e3  3      
  pushq %rbx                                     #  3     0x232e6  2      
  movl %esi, %ebx                                #  4     0x232e8  2      
  subl $0x28, %esp                               #  5     0x232ea  3      
  addq %r15, %rsp                                #  6     0x232ed  3      
  cmpb $0x0, 0x1000d921(%rip)                    #  7     0x232f0  7      
  je .L_233c0                                    #  8     0x232f7  6      
  nop                                            #  9     0x232fd  1      
.L_23300:                                        #        0x232fe  0      
  movl 0x1000d91c(%rip), %eax                    #  10    0x232fe  6      
  testq %rax, %rax                               #  11    0x23304  3      
  je .L_23460                                    #  12    0x23307  6      
  xchgw %ax, %ax                                 #  13    0x2330d  3      
  nop                                            #  14    0x23310  1      
.L_23320:                                        #        0x23311  0      
  cmpb $0x0, 0x1000d900(%rip)                    #  15    0x23311  7      
  je .L_23380                                    #  16    0x23318  6      
  nop                                            #  17    0x2331e  1      
  nop                                            #  18    0x2331f  1      
.L_23340:                                        #        0x23320  0      
  movl %ebx, %ebx                                #  19    0x23320  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  20    0x23322  5      
  movl %eax, %eax                                #  21    0x23327  2      
  movl (%r15,%rax,1), %eax                       #  22    0x23329  4      
  movq %rsi, 0x10(%rsp)                          #  23    0x2332d  5      
  movl %ebx, %ebx                                #  24    0x23332  2      
  movq 0x10(%r15,%rbx,1), %rdx                   #  25    0x23334  5      
  movq %rdx, 0x18(%rsp)                          #  26    0x23339  5      
  xchgw %ax, %ax                                 #  27    0x2333e  3      
  movl %r12d, %r12d                              #  28    0x23341  3      
  movl 0x4(%r15,%r12,1), %edi                    #  29    0x23344  5      
  addl $0x28, %esp                               #  30    0x23349  3      
  addq %r15, %rsp                                #  31    0x2334c  3      
  popq %rbx                                      #  32    0x2334f  2      
  popq %r12                                      #  33    0x23351  3      
  andl $0xffffffe0, %eax                         #  34    0x23354  5      
  addq %r15, %rax                                #  35    0x23359  3      
  jmpq %rax                                      #  36    0x2335c  2      
  nop                                            #  37    0x2335e  1      
.L_23380:                                        #        0x2335f  0      
  movl $0x10030c18, %edi                         #  38    0x2335f  5      
  nop                                            #  39    0x23364  1      
  nop                                            #  40    0x23365  1      
  callq .__cxa_guard_acquire                     #  41    0x23366  5      
  testl %eax, %eax                               #  42    0x2336b  2      
  jne .L_234e0                                   #  43    0x2336d  6      
  movl 0x1000d8a7(%rip), %eax                    #  44    0x23373  6      
  jmpq .L_23340                                  #  45    0x23379  5      
  nop                                            #  46    0x2337e  1      
  nop                                            #  47    0x2337f  1      
.L_233c0:                                        #        0x23380  0      
  movl $0x10030c18, %edi                         #  48    0x23380  5      
  nop                                            #  49    0x23385  1      
  nop                                            #  50    0x23386  1      
  callq .__cxa_guard_acquire                     #  51    0x23387  5      
  testl %eax, %eax                               #  52    0x2338c  2      
  je .L_23300                                    #  53    0x2338e  6      
  nop                                            #  54    0x23394  1      
  nop                                            #  55    0x23395  1      
  callq ._ZN2pp6Module3GetEv                     #  56    0x23396  5      
  movl %eax, %edi                                #  57    0x2339b  2      
  movl $0x100202db, %esi                         #  58    0x2339d  5      
  nop                                            #  59    0x233a2  1      
  nop                                            #  60    0x233a3  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  61    0x233a4  5      
  movl $0x10030c18, %edi                         #  62    0x233a9  5      
  movl %eax, 0x1000d86c(%rip)                    #  63    0x233ae  6      
  nop                                            #  64    0x233b4  1      
  nop                                            #  65    0x233b5  1      
  callq .__cxa_guard_release                     #  66    0x233b6  5      
  movl 0x1000d85f(%rip), %eax                    #  67    0x233bb  6      
  testq %rax, %rax                               #  68    0x233c1  3      
  jne .L_23320                                   #  69    0x233c4  6      
  xchgw %ax, %ax                                 #  70    0x233ca  3      
  nop                                            #  71    0x233cd  1      
.L_23460:                                        #        0x233ce  0      
  cmpb $0x0, 0x1000d853(%rip)                    #  72    0x233ce  7      
  je .L_23560                                    #  73    0x233d5  6      
  nop                                            #  74    0x233db  1      
  nop                                            #  75    0x233dc  1      
.L_23480:                                        #        0x233dd  0      
  movl 0x1000d84d(%rip), %eax                    #  76    0x233dd  6      
  testq %rax, %rax                               #  77    0x233e3  3      
  je .L_23660                                    #  78    0x233e6  6      
  cmpb $0x0, 0x1000d835(%rip)                    #  79    0x233ec  7      
  je .L_23600                                    #  80    0x233f3  6      
  nop                                            #  81    0x233f9  1      
.L_234a0:                                        #        0x233fa  0      
  movl %ebx, %ebx                                #  82    0x233fa  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  83    0x233fc  5      
  movl %eax, %eax                                #  84    0x23401  2      
  movl (%r15,%rax,1), %eax                       #  85    0x23403  4      
  movq %rsi, (%rsp)                              #  86    0x23407  4      
  movl %ebx, %ebx                                #  87    0x2340b  2      
  movq 0x10(%r15,%rbx,1), %rdx                   #  88    0x2340d  5      
  movq %rdx, 0x8(%rsp)                           #  89    0x23412  5      
  nop                                            #  90    0x23417  1      
  movl %r12d, %r12d                              #  91    0x23418  3      
  movl 0x4(%r15,%r12,1), %edi                    #  92    0x2341b  5      
  addl $0x28, %esp                               #  93    0x23420  3      
  addq %r15, %rsp                                #  94    0x23423  3      
  popq %rbx                                      #  95    0x23426  2      
  popq %r12                                      #  96    0x23428  3      
  andl $0xffffffe0, %eax                         #  97    0x2342b  5      
  addq %r15, %rax                                #  98    0x23430  3      
  jmpq %rax                                      #  99    0x23433  2      
  nop                                            #  100   0x23435  1      
.L_234e0:                                        #        0x23436  0      
  nop                                            #  101   0x23436  1      
  nop                                            #  102   0x23437  1      
  callq ._ZN2pp6Module3GetEv                     #  103   0x23438  5      
  movl %eax, %edi                                #  104   0x2343d  2      
  movl $0x100202db, %esi                         #  105   0x2343f  5      
  nop                                            #  106   0x23444  1      
  nop                                            #  107   0x23445  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  108   0x23446  5      
  movl $0x10030c18, %edi                         #  109   0x2344b  5      
  movl %eax, 0x1000d7ca(%rip)                    #  110   0x23450  6      
  nop                                            #  111   0x23456  1      
  nop                                            #  112   0x23457  1      
  callq .__cxa_guard_release                     #  113   0x23458  5      
  movl 0x1000d7bd(%rip), %eax                    #  114   0x2345d  6      
  jmpq .L_23340                                  #  115   0x23463  5      
  nop                                            #  116   0x23468  1      
  nop                                            #  117   0x23469  1      
.L_23560:                                        #        0x2346a  0      
  movl $0x10030c28, %edi                         #  118   0x2346a  5      
  nop                                            #  119   0x2346f  1      
  nop                                            #  120   0x23470  1      
  callq .__cxa_guard_acquire                     #  121   0x23471  5      
  testl %eax, %eax                               #  122   0x23476  2      
  je .L_23480                                    #  123   0x23478  6      
  nop                                            #  124   0x2347e  1      
  nop                                            #  125   0x2347f  1      
  callq ._ZN2pp6Module3GetEv                     #  126   0x23480  5      
  movl %eax, %edi                                #  127   0x23485  2      
  movl $0x100202fe, %esi                         #  128   0x23487  5      
  nop                                            #  129   0x2348c  1      
  nop                                            #  130   0x2348d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  131   0x2348e  5      
  movl $0x10030c28, %edi                         #  132   0x23493  5      
  movl %eax, 0x1000d792(%rip)                    #  133   0x23498  6      
  nop                                            #  134   0x2349e  1      
  nop                                            #  135   0x2349f  1      
  callq .__cxa_guard_release                     #  136   0x234a0  5      
  jmpq .L_23480                                  #  137   0x234a5  5      
  nop                                            #  138   0x234aa  1      
  nop                                            #  139   0x234ab  1      
.L_23600:                                        #        0x234ac  0      
  movl $0x10030c28, %edi                         #  140   0x234ac  5      
  nop                                            #  141   0x234b1  1      
  nop                                            #  142   0x234b2  1      
  callq .__cxa_guard_acquire                     #  143   0x234b3  5      
  testl %eax, %eax                               #  144   0x234b8  2      
  jne .L_23680                                   #  145   0x234ba  6      
  nop                                            #  146   0x234c0  1      
  nop                                            #  147   0x234c1  1      
.L_23640:                                        #        0x234c2  0      
  movl 0x1000d768(%rip), %eax                    #  148   0x234c2  6      
  jmpq .L_234a0                                  #  149   0x234c8  5      
  nop                                            #  150   0x234cd  1      
  nop                                            #  151   0x234ce  1      
.L_23660:                                        #        0x234cf  0      
  addl $0x28, %esp                               #  152   0x234cf  3      
  addq %r15, %rsp                                #  153   0x234d2  3      
  popq %rbx                                      #  154   0x234d5  2      
  popq %r12                                      #  155   0x234d7  3      
  popq %r11                                      #  156   0x234da  3      
  andl $0xffffffe0, %r11d                        #  157   0x234dd  7      
  addq %r15, %r11                                #  158   0x234e4  3      
  jmpq %r11                                      #  159   0x234e7  3      
  nop                                            #  160   0x234ea  1      
.L_23680:                                        #        0x234eb  0      
  nop                                            #  161   0x234eb  1      
  nop                                            #  162   0x234ec  1      
  callq ._ZN2pp6Module3GetEv                     #  163   0x234ed  5      
  movl %eax, %edi                                #  164   0x234f2  2      
  movl $0x100202fe, %esi                         #  165   0x234f4  5      
  nop                                            #  166   0x234f9  1      
  nop                                            #  167   0x234fa  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  168   0x234fb  5      
  movl $0x10030c28, %edi                         #  169   0x23500  5      
  movl %eax, 0x1000d725(%rip)                    #  170   0x23505  6      
  nop                                            #  171   0x2350b  1      
  nop                                            #  172   0x2350c  1      
  callq .__cxa_guard_release                     #  173   0x2350d  5      
  jmpq .L_23640                                  #  174   0x23512  5      
  nop                                            #  175   0x23517  1      
  nop                                            #  176   0x23518  1      
.L_23700:                                        #        0x23519  0      
  movl %eax, %ebx                                #  177   0x23519  2      
  movl $0x10030c18, %edi                         #  178   0x2351b  5      
  nop                                            #  179   0x23520  1      
  nop                                            #  180   0x23521  1      
  callq .__cxa_guard_abort                       #  181   0x23522  5      
  movl %ebx, %edi                                #  182   0x23527  2      
  nop                                            #  183   0x23529  1      
  nop                                            #  184   0x2352a  1      
  callq ._Unwind_Resume                          #  185   0x2352b  5      
.L_23740:                                        #        0x23530  0      
  movl %eax, %ebx                                #  186   0x23530  2      
  movl $0x10030c28, %edi                         #  187   0x23532  5      
  nop                                            #  188   0x23537  1      
  nop                                            #  189   0x23538  1      
  callq .__cxa_guard_abort                       #  190   0x23539  5      
  movl %ebx, %edi                                #  191   0x2353e  2      
  nop                                            #  192   0x23540  1      
  nop                                            #  193   0x23541  1      
  callq ._Unwind_Resume                          #  194   0x23542  5      
  jmpq .L_23700                                  #  195   0x23547  5      
  nop                                            #  196   0x2354c  1      
  nop                                            #  197   0x2354d  1      
  jmpq .L_23740                                  #  198   0x2354e  5      
  nop                                            #  199   0x23553  1      
  nop                                            #  200   0x23554  1      
  nop                                            #  201   0x23555  1      
  nop                                            #  202   0x23556  1      
  nop                                            #  203   0x23557  1      
  nop                                            #  204   0x23558  1      
  nop                                            #  205   0x23559  1      
  nop                                            #  206   0x2355a  1      
  nop                                            #  207   0x2355b  1      
  nop                                            #  208   0x2355c  1      
  nop                                            #  209   0x2355d  1      
  nop                                            #  210   0x2355e  1      
  nop                                            #  211   0x2355f  1      
  nop                                            #  212   0x23560  1      
  nop                                            #  213   0x23561  1      
  nop                                            #  214   0x23562  1      
  nop                                            #  215   0x23563  1      
  nop                                            #  216   0x23564  1      
  nop                                            #  217   0x23565  1      
  nop                                            #  218   0x23566  1      
  nop                                            #  219   0x23567  1      
  nop                                            #  220   0x23568  1      
  nop                                            #  221   0x23569  1      
  nop                                            #  222   0x2356a  1      
  nop                                            #  223   0x2356b  1      
  nop                                            #  224   0x2356c  1      
  nop                                            #  225   0x2356d  1      
  nop                                            #  226   0x2356e  1      
  nop                                            #  227   0x2356f  1      
  nop                                            #  228   0x23570  1      
                                                                          
.size _ZN2pp8Instance11PostMessageERKNS_3VarE, .-_ZN2pp8Instance11PostMessageERKNS_3VarE

