  .text
  .globl _ZN2pp8Instance11PostMessageERKNS_3VarE
  .type _ZN2pp8Instance11PostMessageERKNS_3VarE, @function

#! file-offset 0x23240
#! rip-offset  0x23240
#! capacity    1248 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance11PostMessageERKNS_3VarE:        #        0x23240  0      
  pushq %r12                                     #  1     0x23240  3      
  movl %edi, %r12d                               #  2     0x23243  3      
  pushq %rbx                                     #  3     0x23246  2      
  movl %esi, %ebx                                #  4     0x23248  2      
  subl $0x28, %esp                               #  5     0x2324a  3      
  addq %r15, %rsp                                #  6     0x2324d  3      
  cmpb $0x0, 0x1000d9c1(%rip)                    #  7     0x23250  7      
  je .L_23320                                    #  8     0x23257  6      
  nop                                            #  9     0x2325d  1      
.L_23260:                                        #        0x2325e  0      
  movl 0x1000d9bc(%rip), %eax                    #  10    0x2325e  6      
  testq %rax, %rax                               #  11    0x23264  3      
  je .L_233c0                                    #  12    0x23267  6      
  xchgw %ax, %ax                                 #  13    0x2326d  3      
  nop                                            #  14    0x23270  1      
.L_23280:                                        #        0x23271  0      
  cmpb $0x0, 0x1000d9a0(%rip)                    #  15    0x23271  7      
  je .L_232e0                                    #  16    0x23278  6      
  nop                                            #  17    0x2327e  1      
  nop                                            #  18    0x2327f  1      
.L_232a0:                                        #        0x23280  0      
  movl %ebx, %ebx                                #  19    0x23280  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  20    0x23282  5      
  movl %eax, %eax                                #  21    0x23287  2      
  movl (%r15,%rax,1), %eax                       #  22    0x23289  4      
  movq %rsi, 0x10(%rsp)                          #  23    0x2328d  5      
  movl %ebx, %ebx                                #  24    0x23292  2      
  movq 0x10(%r15,%rbx,1), %rdx                   #  25    0x23294  5      
  movq %rdx, 0x18(%rsp)                          #  26    0x23299  5      
  xchgw %ax, %ax                                 #  27    0x2329e  3      
  movl %r12d, %r12d                              #  28    0x232a1  3      
  movl 0x4(%r15,%r12,1), %edi                    #  29    0x232a4  5      
  addl $0x28, %esp                               #  30    0x232a9  3      
  addq %r15, %rsp                                #  31    0x232ac  3      
  popq %rbx                                      #  32    0x232af  2      
  popq %r12                                      #  33    0x232b1  3      
  andl $0xffffffe0, %eax                         #  34    0x232b4  5      
  addq %r15, %rax                                #  35    0x232b9  3      
  jmpq %rax                                      #  36    0x232bc  2      
  nop                                            #  37    0x232be  1      
.L_232e0:                                        #        0x232bf  0      
  movl $0x10030c18, %edi                         #  38    0x232bf  5      
  nop                                            #  39    0x232c4  1      
  nop                                            #  40    0x232c5  1      
  callq .__cxa_guard_acquire                     #  41    0x232c6  5      
  testl %eax, %eax                               #  42    0x232cb  2      
  jne .L_23440                                   #  43    0x232cd  6      
  movl 0x1000d947(%rip), %eax                    #  44    0x232d3  6      
  jmpq .L_232a0                                  #  45    0x232d9  5      
  nop                                            #  46    0x232de  1      
  nop                                            #  47    0x232df  1      
.L_23320:                                        #        0x232e0  0      
  movl $0x10030c18, %edi                         #  48    0x232e0  5      
  nop                                            #  49    0x232e5  1      
  nop                                            #  50    0x232e6  1      
  callq .__cxa_guard_acquire                     #  51    0x232e7  5      
  testl %eax, %eax                               #  52    0x232ec  2      
  je .L_23260                                    #  53    0x232ee  6      
  nop                                            #  54    0x232f4  1      
  nop                                            #  55    0x232f5  1      
  callq ._ZN2pp6Module3GetEv                     #  56    0x232f6  5      
  movl %eax, %edi                                #  57    0x232fb  2      
  movl $0x100202db, %esi                         #  58    0x232fd  5      
  nop                                            #  59    0x23302  1      
  nop                                            #  60    0x23303  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  61    0x23304  5      
  movl $0x10030c18, %edi                         #  62    0x23309  5      
  movl %eax, 0x1000d90c(%rip)                    #  63    0x2330e  6      
  nop                                            #  64    0x23314  1      
  nop                                            #  65    0x23315  1      
  callq .__cxa_guard_release                     #  66    0x23316  5      
  movl 0x1000d8ff(%rip), %eax                    #  67    0x2331b  6      
  testq %rax, %rax                               #  68    0x23321  3      
  jne .L_23280                                   #  69    0x23324  6      
  xchgw %ax, %ax                                 #  70    0x2332a  3      
  nop                                            #  71    0x2332d  1      
.L_233c0:                                        #        0x2332e  0      
  cmpb $0x0, 0x1000d8f3(%rip)                    #  72    0x2332e  7      
  je .L_234c0                                    #  73    0x23335  6      
  nop                                            #  74    0x2333b  1      
  nop                                            #  75    0x2333c  1      
.L_233e0:                                        #        0x2333d  0      
  movl 0x1000d8ed(%rip), %eax                    #  76    0x2333d  6      
  testq %rax, %rax                               #  77    0x23343  3      
  je .L_235c0                                    #  78    0x23346  6      
  cmpb $0x0, 0x1000d8d5(%rip)                    #  79    0x2334c  7      
  je .L_23560                                    #  80    0x23353  6      
  nop                                            #  81    0x23359  1      
.L_23400:                                        #        0x2335a  0      
  movl %ebx, %ebx                                #  82    0x2335a  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  83    0x2335c  5      
  movl %eax, %eax                                #  84    0x23361  2      
  movl (%r15,%rax,1), %eax                       #  85    0x23363  4      
  movq %rsi, (%rsp)                              #  86    0x23367  4      
  movl %ebx, %ebx                                #  87    0x2336b  2      
  movq 0x10(%r15,%rbx,1), %rdx                   #  88    0x2336d  5      
  movq %rdx, 0x8(%rsp)                           #  89    0x23372  5      
  nop                                            #  90    0x23377  1      
  movl %r12d, %r12d                              #  91    0x23378  3      
  movl 0x4(%r15,%r12,1), %edi                    #  92    0x2337b  5      
  addl $0x28, %esp                               #  93    0x23380  3      
  addq %r15, %rsp                                #  94    0x23383  3      
  popq %rbx                                      #  95    0x23386  2      
  popq %r12                                      #  96    0x23388  3      
  andl $0xffffffe0, %eax                         #  97    0x2338b  5      
  addq %r15, %rax                                #  98    0x23390  3      
  jmpq %rax                                      #  99    0x23393  2      
  nop                                            #  100   0x23395  1      
.L_23440:                                        #        0x23396  0      
  nop                                            #  101   0x23396  1      
  nop                                            #  102   0x23397  1      
  callq ._ZN2pp6Module3GetEv                     #  103   0x23398  5      
  movl %eax, %edi                                #  104   0x2339d  2      
  movl $0x100202db, %esi                         #  105   0x2339f  5      
  nop                                            #  106   0x233a4  1      
  nop                                            #  107   0x233a5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  108   0x233a6  5      
  movl $0x10030c18, %edi                         #  109   0x233ab  5      
  movl %eax, 0x1000d86a(%rip)                    #  110   0x233b0  6      
  nop                                            #  111   0x233b6  1      
  nop                                            #  112   0x233b7  1      
  callq .__cxa_guard_release                     #  113   0x233b8  5      
  movl 0x1000d85d(%rip), %eax                    #  114   0x233bd  6      
  jmpq .L_232a0                                  #  115   0x233c3  5      
  nop                                            #  116   0x233c8  1      
  nop                                            #  117   0x233c9  1      
.L_234c0:                                        #        0x233ca  0      
  movl $0x10030c28, %edi                         #  118   0x233ca  5      
  nop                                            #  119   0x233cf  1      
  nop                                            #  120   0x233d0  1      
  callq .__cxa_guard_acquire                     #  121   0x233d1  5      
  testl %eax, %eax                               #  122   0x233d6  2      
  je .L_233e0                                    #  123   0x233d8  6      
  nop                                            #  124   0x233de  1      
  nop                                            #  125   0x233df  1      
  callq ._ZN2pp6Module3GetEv                     #  126   0x233e0  5      
  movl %eax, %edi                                #  127   0x233e5  2      
  movl $0x100202fe, %esi                         #  128   0x233e7  5      
  nop                                            #  129   0x233ec  1      
  nop                                            #  130   0x233ed  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  131   0x233ee  5      
  movl $0x10030c28, %edi                         #  132   0x233f3  5      
  movl %eax, 0x1000d832(%rip)                    #  133   0x233f8  6      
  nop                                            #  134   0x233fe  1      
  nop                                            #  135   0x233ff  1      
  callq .__cxa_guard_release                     #  136   0x23400  5      
  jmpq .L_233e0                                  #  137   0x23405  5      
  nop                                            #  138   0x2340a  1      
  nop                                            #  139   0x2340b  1      
.L_23560:                                        #        0x2340c  0      
  movl $0x10030c28, %edi                         #  140   0x2340c  5      
  nop                                            #  141   0x23411  1      
  nop                                            #  142   0x23412  1      
  callq .__cxa_guard_acquire                     #  143   0x23413  5      
  testl %eax, %eax                               #  144   0x23418  2      
  jne .L_235e0                                   #  145   0x2341a  6      
  nop                                            #  146   0x23420  1      
  nop                                            #  147   0x23421  1      
.L_235a0:                                        #        0x23422  0      
  movl 0x1000d808(%rip), %eax                    #  148   0x23422  6      
  jmpq .L_23400                                  #  149   0x23428  5      
  nop                                            #  150   0x2342d  1      
  nop                                            #  151   0x2342e  1      
.L_235c0:                                        #        0x2342f  0      
  addl $0x28, %esp                               #  152   0x2342f  3      
  addq %r15, %rsp                                #  153   0x23432  3      
  popq %rbx                                      #  154   0x23435  2      
  popq %r12                                      #  155   0x23437  3      
  popq %r11                                      #  156   0x2343a  3      
  andl $0xffffffe0, %r11d                        #  157   0x2343d  7      
  addq %r15, %r11                                #  158   0x23444  3      
  jmpq %r11                                      #  159   0x23447  3      
  nop                                            #  160   0x2344a  1      
.L_235e0:                                        #        0x2344b  0      
  nop                                            #  161   0x2344b  1      
  nop                                            #  162   0x2344c  1      
  callq ._ZN2pp6Module3GetEv                     #  163   0x2344d  5      
  movl %eax, %edi                                #  164   0x23452  2      
  movl $0x100202fe, %esi                         #  165   0x23454  5      
  nop                                            #  166   0x23459  1      
  nop                                            #  167   0x2345a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  168   0x2345b  5      
  movl $0x10030c28, %edi                         #  169   0x23460  5      
  movl %eax, 0x1000d7c5(%rip)                    #  170   0x23465  6      
  nop                                            #  171   0x2346b  1      
  nop                                            #  172   0x2346c  1      
  callq .__cxa_guard_release                     #  173   0x2346d  5      
  jmpq .L_235a0                                  #  174   0x23472  5      
  nop                                            #  175   0x23477  1      
  nop                                            #  176   0x23478  1      
.L_23660:                                        #        0x23479  0      
  movl %eax, %ebx                                #  177   0x23479  2      
  movl $0x10030c18, %edi                         #  178   0x2347b  5      
  nop                                            #  179   0x23480  1      
  nop                                            #  180   0x23481  1      
  callq .__cxa_guard_abort                       #  181   0x23482  5      
  movl %ebx, %edi                                #  182   0x23487  2      
  nop                                            #  183   0x23489  1      
  nop                                            #  184   0x2348a  1      
  callq ._Unwind_Resume                          #  185   0x2348b  5      
.L_236a0:                                        #        0x23490  0      
  movl %eax, %ebx                                #  186   0x23490  2      
  movl $0x10030c28, %edi                         #  187   0x23492  5      
  nop                                            #  188   0x23497  1      
  nop                                            #  189   0x23498  1      
  callq .__cxa_guard_abort                       #  190   0x23499  5      
  movl %ebx, %edi                                #  191   0x2349e  2      
  nop                                            #  192   0x234a0  1      
  nop                                            #  193   0x234a1  1      
  callq ._Unwind_Resume                          #  194   0x234a2  5      
  jmpq .L_23660                                  #  195   0x234a7  5      
  nop                                            #  196   0x234ac  1      
  nop                                            #  197   0x234ad  1      
  jmpq .L_236a0                                  #  198   0x234ae  5      
  nop                                            #  199   0x234b3  1      
  nop                                            #  200   0x234b4  1      
  nop                                            #  201   0x234b5  1      
  nop                                            #  202   0x234b6  1      
  nop                                            #  203   0x234b7  1      
  nop                                            #  204   0x234b8  1      
  nop                                            #  205   0x234b9  1      
  nop                                            #  206   0x234ba  1      
  nop                                            #  207   0x234bb  1      
  nop                                            #  208   0x234bc  1      
  nop                                            #  209   0x234bd  1      
  nop                                            #  210   0x234be  1      
  nop                                            #  211   0x234bf  1      
  nop                                            #  212   0x234c0  1      
  nop                                            #  213   0x234c1  1      
  nop                                            #  214   0x234c2  1      
  nop                                            #  215   0x234c3  1      
  nop                                            #  216   0x234c4  1      
  nop                                            #  217   0x234c5  1      
  nop                                            #  218   0x234c6  1      
  nop                                            #  219   0x234c7  1      
  nop                                            #  220   0x234c8  1      
  nop                                            #  221   0x234c9  1      
  nop                                            #  222   0x234ca  1      
  nop                                            #  223   0x234cb  1      
  nop                                            #  224   0x234cc  1      
  nop                                            #  225   0x234cd  1      
  nop                                            #  226   0x234ce  1      
  nop                                            #  227   0x234cf  1      
  nop                                            #  228   0x234d0  1      
                                                                          
.size _ZN2pp8Instance11PostMessageERKNS_3VarE, .-_ZN2pp8Instance11PostMessageERKNS_3VarE

