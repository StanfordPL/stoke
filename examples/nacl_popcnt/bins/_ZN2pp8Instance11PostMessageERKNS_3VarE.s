  .text
  .globl _ZN2pp8Instance11PostMessageERKNS_3VarE
  .type _ZN2pp8Instance11PostMessageERKNS_3VarE, @function

#! file-offset 0x23260
#! rip-offset  0x23260
#! capacity    1248 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance11PostMessageERKNS_3VarE:        #        0x23260  0      
  pushq %r12                                     #  1     0x23260  3      
  movl %edi, %r12d                               #  2     0x23263  3      
  pushq %rbx                                     #  3     0x23266  2      
  movl %esi, %ebx                                #  4     0x23268  2      
  subl $0x28, %esp                               #  5     0x2326a  3      
  addq %r15, %rsp                                #  6     0x2326d  3      
  cmpb $0x0, 0x1000d9a1(%rip)                    #  7     0x23270  7      
  je .L_23340                                    #  8     0x23277  6      
  nop                                            #  9     0x2327d  1      
.L_23280:                                        #        0x2327e  0      
  movl 0x1000d99c(%rip), %eax                    #  10    0x2327e  6      
  testq %rax, %rax                               #  11    0x23284  3      
  je .L_233e0                                    #  12    0x23287  6      
  xchgw %ax, %ax                                 #  13    0x2328d  3      
  nop                                            #  14    0x23290  1      
.L_232a0:                                        #        0x23291  0      
  cmpb $0x0, 0x1000d980(%rip)                    #  15    0x23291  7      
  je .L_23300                                    #  16    0x23298  6      
  nop                                            #  17    0x2329e  1      
  nop                                            #  18    0x2329f  1      
.L_232c0:                                        #        0x232a0  0      
  movl %ebx, %ebx                                #  19    0x232a0  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  20    0x232a2  5      
  movl %eax, %eax                                #  21    0x232a7  2      
  movl (%r15,%rax,1), %eax                       #  22    0x232a9  4      
  movq %rsi, 0x10(%rsp)                          #  23    0x232ad  5      
  movl %ebx, %ebx                                #  24    0x232b2  2      
  movq 0x10(%r15,%rbx,1), %rdx                   #  25    0x232b4  5      
  movq %rdx, 0x18(%rsp)                          #  26    0x232b9  5      
  xchgw %ax, %ax                                 #  27    0x232be  3      
  movl %r12d, %r12d                              #  28    0x232c1  3      
  movl 0x4(%r15,%r12,1), %edi                    #  29    0x232c4  5      
  addl $0x28, %esp                               #  30    0x232c9  3      
  addq %r15, %rsp                                #  31    0x232cc  3      
  popq %rbx                                      #  32    0x232cf  2      
  popq %r12                                      #  33    0x232d1  3      
  andl $0xffffffe0, %eax                         #  34    0x232d4  5      
  addq %r15, %rax                                #  35    0x232d9  3      
  jmpq %rax                                      #  36    0x232dc  2      
  nop                                            #  37    0x232de  1      
.L_23300:                                        #        0x232df  0      
  movl $0x10030c18, %edi                         #  38    0x232df  5      
  nop                                            #  39    0x232e4  1      
  nop                                            #  40    0x232e5  1      
  callq .__cxa_guard_acquire                     #  41    0x232e6  5      
  testl %eax, %eax                               #  42    0x232eb  2      
  jne .L_23460                                   #  43    0x232ed  6      
  movl 0x1000d927(%rip), %eax                    #  44    0x232f3  6      
  jmpq .L_232c0                                  #  45    0x232f9  5      
  nop                                            #  46    0x232fe  1      
  nop                                            #  47    0x232ff  1      
.L_23340:                                        #        0x23300  0      
  movl $0x10030c18, %edi                         #  48    0x23300  5      
  nop                                            #  49    0x23305  1      
  nop                                            #  50    0x23306  1      
  callq .__cxa_guard_acquire                     #  51    0x23307  5      
  testl %eax, %eax                               #  52    0x2330c  2      
  je .L_23280                                    #  53    0x2330e  6      
  nop                                            #  54    0x23314  1      
  nop                                            #  55    0x23315  1      
  callq ._ZN2pp6Module3GetEv                     #  56    0x23316  5      
  movl %eax, %edi                                #  57    0x2331b  2      
  movl $0x100202db, %esi                         #  58    0x2331d  5      
  nop                                            #  59    0x23322  1      
  nop                                            #  60    0x23323  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  61    0x23324  5      
  movl $0x10030c18, %edi                         #  62    0x23329  5      
  movl %eax, 0x1000d8ec(%rip)                    #  63    0x2332e  6      
  nop                                            #  64    0x23334  1      
  nop                                            #  65    0x23335  1      
  callq .__cxa_guard_release                     #  66    0x23336  5      
  movl 0x1000d8df(%rip), %eax                    #  67    0x2333b  6      
  testq %rax, %rax                               #  68    0x23341  3      
  jne .L_232a0                                   #  69    0x23344  6      
  xchgw %ax, %ax                                 #  70    0x2334a  3      
  nop                                            #  71    0x2334d  1      
.L_233e0:                                        #        0x2334e  0      
  cmpb $0x0, 0x1000d8d3(%rip)                    #  72    0x2334e  7      
  je .L_234e0                                    #  73    0x23355  6      
  nop                                            #  74    0x2335b  1      
  nop                                            #  75    0x2335c  1      
.L_23400:                                        #        0x2335d  0      
  movl 0x1000d8cd(%rip), %eax                    #  76    0x2335d  6      
  testq %rax, %rax                               #  77    0x23363  3      
  je .L_235e0                                    #  78    0x23366  6      
  cmpb $0x0, 0x1000d8b5(%rip)                    #  79    0x2336c  7      
  je .L_23580                                    #  80    0x23373  6      
  nop                                            #  81    0x23379  1      
.L_23420:                                        #        0x2337a  0      
  movl %ebx, %ebx                                #  82    0x2337a  2      
  movq 0x8(%r15,%rbx,1), %rsi                    #  83    0x2337c  5      
  movl %eax, %eax                                #  84    0x23381  2      
  movl (%r15,%rax,1), %eax                       #  85    0x23383  4      
  movq %rsi, (%rsp)                              #  86    0x23387  4      
  movl %ebx, %ebx                                #  87    0x2338b  2      
  movq 0x10(%r15,%rbx,1), %rdx                   #  88    0x2338d  5      
  movq %rdx, 0x8(%rsp)                           #  89    0x23392  5      
  nop                                            #  90    0x23397  1      
  movl %r12d, %r12d                              #  91    0x23398  3      
  movl 0x4(%r15,%r12,1), %edi                    #  92    0x2339b  5      
  addl $0x28, %esp                               #  93    0x233a0  3      
  addq %r15, %rsp                                #  94    0x233a3  3      
  popq %rbx                                      #  95    0x233a6  2      
  popq %r12                                      #  96    0x233a8  3      
  andl $0xffffffe0, %eax                         #  97    0x233ab  5      
  addq %r15, %rax                                #  98    0x233b0  3      
  jmpq %rax                                      #  99    0x233b3  2      
  nop                                            #  100   0x233b5  1      
.L_23460:                                        #        0x233b6  0      
  nop                                            #  101   0x233b6  1      
  nop                                            #  102   0x233b7  1      
  callq ._ZN2pp6Module3GetEv                     #  103   0x233b8  5      
  movl %eax, %edi                                #  104   0x233bd  2      
  movl $0x100202db, %esi                         #  105   0x233bf  5      
  nop                                            #  106   0x233c4  1      
  nop                                            #  107   0x233c5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  108   0x233c6  5      
  movl $0x10030c18, %edi                         #  109   0x233cb  5      
  movl %eax, 0x1000d84a(%rip)                    #  110   0x233d0  6      
  nop                                            #  111   0x233d6  1      
  nop                                            #  112   0x233d7  1      
  callq .__cxa_guard_release                     #  113   0x233d8  5      
  movl 0x1000d83d(%rip), %eax                    #  114   0x233dd  6      
  jmpq .L_232c0                                  #  115   0x233e3  5      
  nop                                            #  116   0x233e8  1      
  nop                                            #  117   0x233e9  1      
.L_234e0:                                        #        0x233ea  0      
  movl $0x10030c28, %edi                         #  118   0x233ea  5      
  nop                                            #  119   0x233ef  1      
  nop                                            #  120   0x233f0  1      
  callq .__cxa_guard_acquire                     #  121   0x233f1  5      
  testl %eax, %eax                               #  122   0x233f6  2      
  je .L_23400                                    #  123   0x233f8  6      
  nop                                            #  124   0x233fe  1      
  nop                                            #  125   0x233ff  1      
  callq ._ZN2pp6Module3GetEv                     #  126   0x23400  5      
  movl %eax, %edi                                #  127   0x23405  2      
  movl $0x100202fe, %esi                         #  128   0x23407  5      
  nop                                            #  129   0x2340c  1      
  nop                                            #  130   0x2340d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  131   0x2340e  5      
  movl $0x10030c28, %edi                         #  132   0x23413  5      
  movl %eax, 0x1000d812(%rip)                    #  133   0x23418  6      
  nop                                            #  134   0x2341e  1      
  nop                                            #  135   0x2341f  1      
  callq .__cxa_guard_release                     #  136   0x23420  5      
  jmpq .L_23400                                  #  137   0x23425  5      
  nop                                            #  138   0x2342a  1      
  nop                                            #  139   0x2342b  1      
.L_23580:                                        #        0x2342c  0      
  movl $0x10030c28, %edi                         #  140   0x2342c  5      
  nop                                            #  141   0x23431  1      
  nop                                            #  142   0x23432  1      
  callq .__cxa_guard_acquire                     #  143   0x23433  5      
  testl %eax, %eax                               #  144   0x23438  2      
  jne .L_23600                                   #  145   0x2343a  6      
  nop                                            #  146   0x23440  1      
  nop                                            #  147   0x23441  1      
.L_235c0:                                        #        0x23442  0      
  movl 0x1000d7e8(%rip), %eax                    #  148   0x23442  6      
  jmpq .L_23420                                  #  149   0x23448  5      
  nop                                            #  150   0x2344d  1      
  nop                                            #  151   0x2344e  1      
.L_235e0:                                        #        0x2344f  0      
  addl $0x28, %esp                               #  152   0x2344f  3      
  addq %r15, %rsp                                #  153   0x23452  3      
  popq %rbx                                      #  154   0x23455  2      
  popq %r12                                      #  155   0x23457  3      
  popq %r11                                      #  156   0x2345a  3      
  andl $0xffffffe0, %r11d                        #  157   0x2345d  7      
  addq %r15, %r11                                #  158   0x23464  3      
  jmpq %r11                                      #  159   0x23467  3      
  nop                                            #  160   0x2346a  1      
.L_23600:                                        #        0x2346b  0      
  nop                                            #  161   0x2346b  1      
  nop                                            #  162   0x2346c  1      
  callq ._ZN2pp6Module3GetEv                     #  163   0x2346d  5      
  movl %eax, %edi                                #  164   0x23472  2      
  movl $0x100202fe, %esi                         #  165   0x23474  5      
  nop                                            #  166   0x23479  1      
  nop                                            #  167   0x2347a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  168   0x2347b  5      
  movl $0x10030c28, %edi                         #  169   0x23480  5      
  movl %eax, 0x1000d7a5(%rip)                    #  170   0x23485  6      
  nop                                            #  171   0x2348b  1      
  nop                                            #  172   0x2348c  1      
  callq .__cxa_guard_release                     #  173   0x2348d  5      
  jmpq .L_235c0                                  #  174   0x23492  5      
  nop                                            #  175   0x23497  1      
  nop                                            #  176   0x23498  1      
.L_23680:                                        #        0x23499  0      
  movl %eax, %ebx                                #  177   0x23499  2      
  movl $0x10030c18, %edi                         #  178   0x2349b  5      
  nop                                            #  179   0x234a0  1      
  nop                                            #  180   0x234a1  1      
  callq .__cxa_guard_abort                       #  181   0x234a2  5      
  movl %ebx, %edi                                #  182   0x234a7  2      
  nop                                            #  183   0x234a9  1      
  nop                                            #  184   0x234aa  1      
  callq ._Unwind_Resume                          #  185   0x234ab  5      
.L_236c0:                                        #        0x234b0  0      
  movl %eax, %ebx                                #  186   0x234b0  2      
  movl $0x10030c28, %edi                         #  187   0x234b2  5      
  nop                                            #  188   0x234b7  1      
  nop                                            #  189   0x234b8  1      
  callq .__cxa_guard_abort                       #  190   0x234b9  5      
  movl %ebx, %edi                                #  191   0x234be  2      
  nop                                            #  192   0x234c0  1      
  nop                                            #  193   0x234c1  1      
  callq ._Unwind_Resume                          #  194   0x234c2  5      
  jmpq .L_23680                                  #  195   0x234c7  5      
  nop                                            #  196   0x234cc  1      
  nop                                            #  197   0x234cd  1      
  jmpq .L_236c0                                  #  198   0x234ce  5      
  nop                                            #  199   0x234d3  1      
  nop                                            #  200   0x234d4  1      
  nop                                            #  201   0x234d5  1      
  nop                                            #  202   0x234d6  1      
  nop                                            #  203   0x234d7  1      
  nop                                            #  204   0x234d8  1      
  nop                                            #  205   0x234d9  1      
  nop                                            #  206   0x234da  1      
  nop                                            #  207   0x234db  1      
  nop                                            #  208   0x234dc  1      
  nop                                            #  209   0x234dd  1      
  nop                                            #  210   0x234de  1      
  nop                                            #  211   0x234df  1      
  nop                                            #  212   0x234e0  1      
  nop                                            #  213   0x234e1  1      
  nop                                            #  214   0x234e2  1      
  nop                                            #  215   0x234e3  1      
  nop                                            #  216   0x234e4  1      
  nop                                            #  217   0x234e5  1      
  nop                                            #  218   0x234e6  1      
  nop                                            #  219   0x234e7  1      
  nop                                            #  220   0x234e8  1      
  nop                                            #  221   0x234e9  1      
  nop                                            #  222   0x234ea  1      
  nop                                            #  223   0x234eb  1      
  nop                                            #  224   0x234ec  1      
  nop                                            #  225   0x234ed  1      
  nop                                            #  226   0x234ee  1      
  nop                                            #  227   0x234ef  1      
  nop                                            #  228   0x234f0  1      
                                                                          
.size _ZN2pp8Instance11PostMessageERKNS_3VarE, .-_ZN2pp8Instance11PostMessageERKNS_3VarE

