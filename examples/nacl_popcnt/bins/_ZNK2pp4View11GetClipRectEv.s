  .text
  .globl _ZNK2pp4View11GetClipRectEv
  .type _ZNK2pp4View11GetClipRectEv, @function

#! file-offset 0x2db80
#! rip-offset  0x2db80
#! capacity    1664 bytes

# Text                                                              #  Line  RIP      Bytes  
._ZNK2pp4View11GetClipRectEv:                                       #        0x2db80  0      
  pushq %r12                                                        #  1     0x2db80  3      
  movl %esi, %r12d                                                  #  2     0x2db83  3      
  pushq %rbx                                                        #  3     0x2db86  2      
  movl %edi, %ebx                                                   #  4     0x2db88  2      
  subl $0x18, %esp                                                  #  5     0x2db8a  3      
  addq %r15, %rsp                                                   #  6     0x2db8d  3      
  cmpb $0x0, 0x10003119(%rip)                                       #  7     0x2db90  7      
  je .L_2ddc0                                                       #  8     0x2db97  6      
  nop                                                               #  9     0x2db9d  1      
.L_2dba0:                                                           #        0x2db9e  0      
  movl 0x10003114(%rip), %eax                                       #  10    0x2db9e  6      
  testq %rax, %rax                                                  #  11    0x2dba4  3      
  je .L_2dc60                                                       #  12    0x2dba7  6      
  cmpb $0x0, 0x100030fc(%rip)                                       #  13    0x2dbad  7      
  je .L_2de60                                                       #  14    0x2dbb4  6      
  nop                                                               #  15    0x2dbba  1      
.L_2dbc0:                                                           #        0x2dbbb  0      
  movl %eax, %eax                                                   #  16    0x2dbbb  2      
  movl 0x14(%r15,%rax,1), %eax                                      #  17    0x2dbbd  5      
  movl %esp, %esi                                                   #  18    0x2dbc2  2      
  movl %r12d, %r12d                                                 #  19    0x2dbc4  3      
  movl 0x4(%r15,%r12,1), %edi                                       #  20    0x2dbc7  5      
  nop                                                               #  21    0x2dbcc  1      
  andl $0xffffffe0, %eax                                            #  22    0x2dbcd  5      
  addq %r15, %rax                                                   #  23    0x2dbd2  3      
  callq %rax                                                        #  24    0x2dbd5  2      
  testl %eax, %eax                                                  #  25    0x2dbd7  2      
  jne .L_2dd00                                                      #  26    0x2dbd9  6      
  nop                                                               #  27    0x2dbdf  1      
  nop                                                               #  28    0x2dbe0  1      
.L_2dc00:                                                           #        0x2dbe1  0      
  movl %ebx, %ebx                                                   #  29    0x2dbe1  2      
  movl $0x0, (%r15,%rbx,1)                                          #  30    0x2dbe3  8      
  movl %ebx, %ebx                                                   #  31    0x2dbeb  2      
  movl $0x0, 0x4(%r15,%rbx,1)                                       #  32    0x2dbed  9      
  movl %ebx, %eax                                                   #  33    0x2dbf6  2      
  nop                                                               #  34    0x2dbf8  1      
  movl %ebx, %ebx                                                   #  35    0x2dbf9  2      
  movl $0x0, 0x8(%r15,%rbx,1)                                       #  36    0x2dbfb  9      
  movl %ebx, %ebx                                                   #  37    0x2dc04  2      
  movl $0x0, 0xc(%r15,%rbx,1)                                       #  38    0x2dc06  9      
  addl $0x18, %esp                                                  #  39    0x2dc0f  3      
  addq %r15, %rsp                                                   #  40    0x2dc12  3      
  popq %rbx                                                         #  41    0x2dc15  2      
  popq %r12                                                         #  42    0x2dc17  3      
  nop                                                               #  43    0x2dc1a  1      
  popq %r11                                                         #  44    0x2dc1b  3      
  andl $0xffffffe0, %r11d                                           #  45    0x2dc1e  7      
  addq %r15, %r11                                                   #  46    0x2dc25  3      
  jmpq %r11                                                         #  47    0x2dc28  3      
  nop                                                               #  48    0x2dc2b  1      
  nop                                                               #  49    0x2dc2c  1      
.L_2dc60:                                                           #        0x2dc2d  0      
  cmpb $0x0, 0x1000308c(%rip)                                       #  50    0x2dc2d  7      
  je .L_2dec0                                                       #  51    0x2dc34  6      
  nop                                                               #  52    0x2dc3a  1      
  nop                                                               #  53    0x2dc3b  1      
.L_2dc80:                                                           #        0x2dc3c  0      
  movl 0x10003086(%rip), %eax                                       #  54    0x2dc3c  6      
  testq %rax, %rax                                                  #  55    0x2dc42  3      
  je .L_2dd60                                                       #  56    0x2dc45  6      
  cmpb $0x0, 0x1000306e(%rip)                                       #  57    0x2dc4b  7      
  jne .L_2dbc0                                                      #  58    0x2dc52  6      
  nop                                                               #  59    0x2dc58  1      
  movl $0x10030cc0, %edi                                            #  60    0x2dc59  5      
  nop                                                               #  61    0x2dc5e  1      
  nop                                                               #  62    0x2dc5f  1      
  callq .__cxa_guard_acquire                                        #  63    0x2dc60  5      
  testl %eax, %eax                                                  #  64    0x2dc65  2      
  jne .L_2e080                                                      #  65    0x2dc67  6      
  nop                                                               #  66    0x2dc6d  1      
  nop                                                               #  67    0x2dc6e  1      
.L_2dce0:                                                           #        0x2dc6f  0      
  movl 0x10003053(%rip), %eax                                       #  68    0x2dc6f  6      
  jmpq .L_2dbc0                                                     #  69    0x2dc75  5      
  nop                                                               #  70    0x2dc7a  1      
  nop                                                               #  71    0x2dc7b  1      
.L_2dd00:                                                           #        0x2dc7c  0      
  movl (%rsp), %eax                                                 #  72    0x2dc7c  3      
  movl 0x8(%rsp), %edx                                              #  73    0x2dc7f  4      
  movl %ebx, %ebx                                                   #  74    0x2dc83  2      
  movl %eax, (%r15,%rbx,1)                                          #  75    0x2dc85  4      
  movl 0x4(%rsp), %eax                                              #  76    0x2dc89  4      
  movl %ebx, %ebx                                                   #  77    0x2dc8d  2      
  movl %eax, 0x4(%r15,%rbx,1)                                       #  78    0x2dc8f  5      
  xorl %eax, %eax                                                   #  79    0x2dc94  2      
  testl %edx, %edx                                                  #  80    0x2dc96  2      
  cmovsl %eax, %edx                                                 #  81    0x2dc98  3      
  nop                                                               #  82    0x2dc9b  1      
  movl %ebx, %ebx                                                   #  83    0x2dc9c  2      
  movl %edx, 0x8(%r15,%rbx,1)                                       #  84    0x2dc9e  5      
  movl 0xc(%rsp), %edx                                              #  85    0x2dca3  4      
  testl %edx, %edx                                                  #  86    0x2dca7  2      
  cmovnsl %edx, %eax                                                #  87    0x2dca9  3      
  movl %ebx, %ebx                                                   #  88    0x2dcac  2      
  movl %eax, 0xc(%r15,%rbx,1)                                       #  89    0x2dcae  5      
  addl $0x18, %esp                                                  #  90    0x2dcb3  3      
  addq %r15, %rsp                                                   #  91    0x2dcb6  3      
  movl %ebx, %eax                                                   #  92    0x2dcb9  2      
  popq %rbx                                                         #  93    0x2dcbb  2      
  popq %r12                                                         #  94    0x2dcbd  3      
  popq %r11                                                         #  95    0x2dcc0  3      
  andl $0xffffffe0, %r11d                                           #  96    0x2dcc3  7      
  addq %r15, %r11                                                   #  97    0x2dcca  3      
  jmpq %r11                                                         #  98    0x2dccd  3      
  nop                                                               #  99    0x2dcd0  1      
  nop                                                               #  100   0x2dcd1  1      
.L_2dd60:                                                           #        0x2dcd2  0      
  cmpb $0x0, 0x10002ff7(%rip)                                       #  101   0x2dcd2  7      
  je .L_2df60                                                       #  102   0x2dcd9  6      
  nop                                                               #  103   0x2dcdf  1      
  nop                                                               #  104   0x2dce0  1      
.L_2dd80:                                                           #        0x2dce1  0      
  movl 0x10002ff1(%rip), %eax                                       #  105   0x2dce1  6      
  testl %eax, %eax                                                  #  106   0x2dce7  2      
  je .L_2dc00                                                       #  107   0x2dce9  6      
  nop                                                               #  108   0x2dcef  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v  #  109   0x2dcf0  5      
  movl %eax, %eax                                                   #  110   0x2dcf5  2      
  jmpq .L_2dbc0                                                     #  111   0x2dcf7  5      
  nop                                                               #  112   0x2dcfc  1      
  nop                                                               #  113   0x2dcfd  1      
.L_2ddc0:                                                           #        0x2dcfe  0      
  movl $0x10030cb0, %edi                                            #  114   0x2dcfe  5      
  nop                                                               #  115   0x2dd03  1      
  nop                                                               #  116   0x2dd04  1      
  callq .__cxa_guard_acquire                                        #  117   0x2dd05  5      
  testl %eax, %eax                                                  #  118   0x2dd0a  2      
  je .L_2dba0                                                       #  119   0x2dd0c  6      
  nop                                                               #  120   0x2dd12  1      
  nop                                                               #  121   0x2dd13  1      
  callq ._ZN2pp6Module3GetEv                                        #  122   0x2dd14  5      
  movl %eax, %edi                                                   #  123   0x2dd19  2      
  movl $0x10020625, %esi                                            #  124   0x2dd1b  5      
  nop                                                               #  125   0x2dd20  1      
  nop                                                               #  126   0x2dd21  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  127   0x2dd22  5      
  movl $0x10030cb0, %edi                                            #  128   0x2dd27  5      
  movl %eax, 0x10002f86(%rip)                                       #  129   0x2dd2c  6      
  nop                                                               #  130   0x2dd32  1      
  nop                                                               #  131   0x2dd33  1      
  callq .__cxa_guard_release                                        #  132   0x2dd34  5      
  jmpq .L_2dba0                                                     #  133   0x2dd39  5      
  nop                                                               #  134   0x2dd3e  1      
  nop                                                               #  135   0x2dd3f  1      
.L_2de60:                                                           #        0x2dd40  0      
  movl $0x10030cb0, %edi                                            #  136   0x2dd40  5      
  nop                                                               #  137   0x2dd45  1      
  nop                                                               #  138   0x2dd46  1      
  callq .__cxa_guard_acquire                                        #  139   0x2dd47  5      
  testl %eax, %eax                                                  #  140   0x2dd4c  2      
  jne .L_2e000                                                      #  141   0x2dd4e  6      
  nop                                                               #  142   0x2dd54  1      
  nop                                                               #  143   0x2dd55  1      
.L_2dea0:                                                           #        0x2dd56  0      
  movl 0x10002f5c(%rip), %eax                                       #  144   0x2dd56  6      
  jmpq .L_2dbc0                                                     #  145   0x2dd5c  5      
  nop                                                               #  146   0x2dd61  1      
  nop                                                               #  147   0x2dd62  1      
.L_2dec0:                                                           #        0x2dd63  0      
  movl $0x10030cc0, %edi                                            #  148   0x2dd63  5      
  nop                                                               #  149   0x2dd68  1      
  nop                                                               #  150   0x2dd69  1      
  callq .__cxa_guard_acquire                                        #  151   0x2dd6a  5      
  testl %eax, %eax                                                  #  152   0x2dd6f  2      
  je .L_2dc80                                                       #  153   0x2dd71  6      
  nop                                                               #  154   0x2dd77  1      
  nop                                                               #  155   0x2dd78  1      
  callq ._ZN2pp6Module3GetEv                                        #  156   0x2dd79  5      
  movl %eax, %edi                                                   #  157   0x2dd7e  2      
  movl $0x10020632, %esi                                            #  158   0x2dd80  5      
  nop                                                               #  159   0x2dd85  1      
  nop                                                               #  160   0x2dd86  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  161   0x2dd87  5      
  movl $0x10030cc0, %edi                                            #  162   0x2dd8c  5      
  movl %eax, 0x10002f31(%rip)                                       #  163   0x2dd91  6      
  nop                                                               #  164   0x2dd97  1      
  nop                                                               #  165   0x2dd98  1      
  callq .__cxa_guard_release                                        #  166   0x2dd99  5      
  jmpq .L_2dc80                                                     #  167   0x2dd9e  5      
  nop                                                               #  168   0x2dda3  1      
  nop                                                               #  169   0x2dda4  1      
.L_2df60:                                                           #        0x2dda5  0      
  movl $0x10030cd0, %edi                                            #  170   0x2dda5  5      
  nop                                                               #  171   0x2ddaa  1      
  nop                                                               #  172   0x2ddab  1      
  callq .__cxa_guard_acquire                                        #  173   0x2ddac  5      
  testl %eax, %eax                                                  #  174   0x2ddb1  2      
  je .L_2dd80                                                       #  175   0x2ddb3  6      
  nop                                                               #  176   0x2ddb9  1      
  nop                                                               #  177   0x2ddba  1      
  callq ._ZN2pp6Module3GetEv                                        #  178   0x2ddbb  5      
  movl %eax, %edi                                                   #  179   0x2ddc0  2      
  movl $0x10020618, %esi                                            #  180   0x2ddc2  5      
  nop                                                               #  181   0x2ddc7  1      
  nop                                                               #  182   0x2ddc8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  183   0x2ddc9  5      
  movl $0x10030cd0, %edi                                            #  184   0x2ddce  5      
  movl %eax, 0x10002eff(%rip)                                       #  185   0x2ddd3  6      
  nop                                                               #  186   0x2ddd9  1      
  nop                                                               #  187   0x2ddda  1      
  callq .__cxa_guard_release                                        #  188   0x2dddb  5      
  jmpq .L_2dd80                                                     #  189   0x2dde0  5      
  nop                                                               #  190   0x2dde5  1      
  nop                                                               #  191   0x2dde6  1      
.L_2e000:                                                           #        0x2dde7  0      
  nop                                                               #  192   0x2dde7  1      
  nop                                                               #  193   0x2dde8  1      
  callq ._ZN2pp6Module3GetEv                                        #  194   0x2dde9  5      
  movl %eax, %edi                                                   #  195   0x2ddee  2      
  movl $0x10020625, %esi                                            #  196   0x2ddf0  5      
  nop                                                               #  197   0x2ddf5  1      
  nop                                                               #  198   0x2ddf6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  199   0x2ddf7  5      
  movl $0x10030cb0, %edi                                            #  200   0x2ddfc  5      
  movl %eax, 0x10002eb1(%rip)                                       #  201   0x2de01  6      
  nop                                                               #  202   0x2de07  1      
  nop                                                               #  203   0x2de08  1      
  callq .__cxa_guard_release                                        #  204   0x2de09  5      
  jmpq .L_2dea0                                                     #  205   0x2de0e  5      
  nop                                                               #  206   0x2de13  1      
  nop                                                               #  207   0x2de14  1      
.L_2e080:                                                           #        0x2de15  0      
  nop                                                               #  208   0x2de15  1      
  nop                                                               #  209   0x2de16  1      
  callq ._ZN2pp6Module3GetEv                                        #  210   0x2de17  5      
  movl %eax, %edi                                                   #  211   0x2de1c  2      
  movl $0x10020632, %esi                                            #  212   0x2de1e  5      
  nop                                                               #  213   0x2de23  1      
  nop                                                               #  214   0x2de24  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  215   0x2de25  5      
  movl $0x10030cc0, %edi                                            #  216   0x2de2a  5      
  movl %eax, 0x10002e93(%rip)                                       #  217   0x2de2f  6      
  nop                                                               #  218   0x2de35  1      
  nop                                                               #  219   0x2de36  1      
  callq .__cxa_guard_release                                        #  220   0x2de37  5      
  jmpq .L_2dce0                                                     #  221   0x2de3c  5      
  nop                                                               #  222   0x2de41  1      
  nop                                                               #  223   0x2de42  1      
.L_2e100:                                                           #        0x2de43  0      
  movl %eax, %ebx                                                   #  224   0x2de43  2      
  movl $0x10030cc0, %edi                                            #  225   0x2de45  5      
  nop                                                               #  226   0x2de4a  1      
  nop                                                               #  227   0x2de4b  1      
  callq .__cxa_guard_abort                                          #  228   0x2de4c  5      
  movl %ebx, %edi                                                   #  229   0x2de51  2      
  nop                                                               #  230   0x2de53  1      
  nop                                                               #  231   0x2de54  1      
  callq ._Unwind_Resume                                             #  232   0x2de55  5      
.L_2e140:                                                           #        0x2de5a  0      
  movl %eax, %ebx                                                   #  233   0x2de5a  2      
  movl $0x10030cb0, %edi                                            #  234   0x2de5c  5      
  nop                                                               #  235   0x2de61  1      
  nop                                                               #  236   0x2de62  1      
  callq .__cxa_guard_abort                                          #  237   0x2de63  5      
  movl %ebx, %edi                                                   #  238   0x2de68  2      
  nop                                                               #  239   0x2de6a  1      
  nop                                                               #  240   0x2de6b  1      
  callq ._Unwind_Resume                                             #  241   0x2de6c  5      
  movl %eax, %ebx                                                   #  242   0x2de71  2      
  movl $0x10030cd0, %edi                                            #  243   0x2de73  5      
  nop                                                               #  244   0x2de78  1      
  nop                                                               #  245   0x2de79  1      
  callq .__cxa_guard_abort                                          #  246   0x2de7a  5      
  movl %ebx, %edi                                                   #  247   0x2de7f  2      
  nop                                                               #  248   0x2de81  1      
  nop                                                               #  249   0x2de82  1      
  callq ._Unwind_Resume                                             #  250   0x2de83  5      
  jmpq .L_2e140                                                     #  251   0x2de88  5      
  nop                                                               #  252   0x2de8d  1      
  nop                                                               #  253   0x2de8e  1      
  jmpq .L_2e100                                                     #  254   0x2de8f  5      
  nop                                                               #  255   0x2de94  1      
  nop                                                               #  256   0x2de95  1      
  nop                                                               #  257   0x2de96  1      
                                                                                             
.size _ZNK2pp4View11GetClipRectEv, .-_ZNK2pp4View11GetClipRectEv

