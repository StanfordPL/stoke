  .text
  .globl _ZNK2pp4View11GetClipRectEv
  .type _ZNK2pp4View11GetClipRectEv, @function

#! file-offset 0x2dba0
#! rip-offset  0x2dba0
#! capacity    1664 bytes

# Text                                                              #  Line  RIP      Bytes  
._ZNK2pp4View11GetClipRectEv:                                       #        0x2dba0  0      
  pushq %r12                                                        #  1     0x2dba0  3      
  movl %esi, %r12d                                                  #  2     0x2dba3  3      
  pushq %rbx                                                        #  3     0x2dba6  2      
  movl %edi, %ebx                                                   #  4     0x2dba8  2      
  subl $0x18, %esp                                                  #  5     0x2dbaa  3      
  addq %r15, %rsp                                                   #  6     0x2dbad  3      
  cmpb $0x0, 0x100030f9(%rip)                                       #  7     0x2dbb0  7      
  je .L_2dde0                                                       #  8     0x2dbb7  6      
  nop                                                               #  9     0x2dbbd  1      
.L_2dbc0:                                                           #        0x2dbbe  0      
  movl 0x100030f4(%rip), %eax                                       #  10    0x2dbbe  6      
  testq %rax, %rax                                                  #  11    0x2dbc4  3      
  je .L_2dc80                                                       #  12    0x2dbc7  6      
  cmpb $0x0, 0x100030dc(%rip)                                       #  13    0x2dbcd  7      
  je .L_2de80                                                       #  14    0x2dbd4  6      
  nop                                                               #  15    0x2dbda  1      
.L_2dbe0:                                                           #        0x2dbdb  0      
  movl %eax, %eax                                                   #  16    0x2dbdb  2      
  movl 0x14(%r15,%rax,1), %eax                                      #  17    0x2dbdd  5      
  movl %esp, %esi                                                   #  18    0x2dbe2  2      
  movl %r12d, %r12d                                                 #  19    0x2dbe4  3      
  movl 0x4(%r15,%r12,1), %edi                                       #  20    0x2dbe7  5      
  nop                                                               #  21    0x2dbec  1      
  andl $0xffffffe0, %eax                                            #  22    0x2dbed  5      
  addq %r15, %rax                                                   #  23    0x2dbf2  3      
  callq %rax                                                        #  24    0x2dbf5  2      
  testl %eax, %eax                                                  #  25    0x2dbf7  2      
  jne .L_2dd20                                                      #  26    0x2dbf9  6      
  nop                                                               #  27    0x2dbff  1      
  nop                                                               #  28    0x2dc00  1      
.L_2dc20:                                                           #        0x2dc01  0      
  movl %ebx, %ebx                                                   #  29    0x2dc01  2      
  movl $0x0, (%r15,%rbx,1)                                          #  30    0x2dc03  8      
  movl %ebx, %ebx                                                   #  31    0x2dc0b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                                       #  32    0x2dc0d  9      
  movl %ebx, %eax                                                   #  33    0x2dc16  2      
  nop                                                               #  34    0x2dc18  1      
  movl %ebx, %ebx                                                   #  35    0x2dc19  2      
  movl $0x0, 0x8(%r15,%rbx,1)                                       #  36    0x2dc1b  9      
  movl %ebx, %ebx                                                   #  37    0x2dc24  2      
  movl $0x0, 0xc(%r15,%rbx,1)                                       #  38    0x2dc26  9      
  addl $0x18, %esp                                                  #  39    0x2dc2f  3      
  addq %r15, %rsp                                                   #  40    0x2dc32  3      
  popq %rbx                                                         #  41    0x2dc35  2      
  popq %r12                                                         #  42    0x2dc37  3      
  nop                                                               #  43    0x2dc3a  1      
  popq %r11                                                         #  44    0x2dc3b  3      
  andl $0xffffffe0, %r11d                                           #  45    0x2dc3e  7      
  addq %r15, %r11                                                   #  46    0x2dc45  3      
  jmpq %r11                                                         #  47    0x2dc48  3      
  nop                                                               #  48    0x2dc4b  1      
  nop                                                               #  49    0x2dc4c  1      
.L_2dc80:                                                           #        0x2dc4d  0      
  cmpb $0x0, 0x1000306c(%rip)                                       #  50    0x2dc4d  7      
  je .L_2dee0                                                       #  51    0x2dc54  6      
  nop                                                               #  52    0x2dc5a  1      
  nop                                                               #  53    0x2dc5b  1      
.L_2dca0:                                                           #        0x2dc5c  0      
  movl 0x10003066(%rip), %eax                                       #  54    0x2dc5c  6      
  testq %rax, %rax                                                  #  55    0x2dc62  3      
  je .L_2dd80                                                       #  56    0x2dc65  6      
  cmpb $0x0, 0x1000304e(%rip)                                       #  57    0x2dc6b  7      
  jne .L_2dbe0                                                      #  58    0x2dc72  6      
  nop                                                               #  59    0x2dc78  1      
  movl $0x10030cc0, %edi                                            #  60    0x2dc79  5      
  nop                                                               #  61    0x2dc7e  1      
  nop                                                               #  62    0x2dc7f  1      
  callq .__cxa_guard_acquire                                        #  63    0x2dc80  5      
  testl %eax, %eax                                                  #  64    0x2dc85  2      
  jne .L_2e0a0                                                      #  65    0x2dc87  6      
  nop                                                               #  66    0x2dc8d  1      
  nop                                                               #  67    0x2dc8e  1      
.L_2dd00:                                                           #        0x2dc8f  0      
  movl 0x10003033(%rip), %eax                                       #  68    0x2dc8f  6      
  jmpq .L_2dbe0                                                     #  69    0x2dc95  5      
  nop                                                               #  70    0x2dc9a  1      
  nop                                                               #  71    0x2dc9b  1      
.L_2dd20:                                                           #        0x2dc9c  0      
  movl (%rsp), %eax                                                 #  72    0x2dc9c  3      
  movl 0x8(%rsp), %edx                                              #  73    0x2dc9f  4      
  movl %ebx, %ebx                                                   #  74    0x2dca3  2      
  movl %eax, (%r15,%rbx,1)                                          #  75    0x2dca5  4      
  movl 0x4(%rsp), %eax                                              #  76    0x2dca9  4      
  movl %ebx, %ebx                                                   #  77    0x2dcad  2      
  movl %eax, 0x4(%r15,%rbx,1)                                       #  78    0x2dcaf  5      
  xorl %eax, %eax                                                   #  79    0x2dcb4  2      
  testl %edx, %edx                                                  #  80    0x2dcb6  2      
  cmovsl %eax, %edx                                                 #  81    0x2dcb8  3      
  nop                                                               #  82    0x2dcbb  1      
  movl %ebx, %ebx                                                   #  83    0x2dcbc  2      
  movl %edx, 0x8(%r15,%rbx,1)                                       #  84    0x2dcbe  5      
  movl 0xc(%rsp), %edx                                              #  85    0x2dcc3  4      
  testl %edx, %edx                                                  #  86    0x2dcc7  2      
  cmovnsl %edx, %eax                                                #  87    0x2dcc9  3      
  movl %ebx, %ebx                                                   #  88    0x2dccc  2      
  movl %eax, 0xc(%r15,%rbx,1)                                       #  89    0x2dcce  5      
  addl $0x18, %esp                                                  #  90    0x2dcd3  3      
  addq %r15, %rsp                                                   #  91    0x2dcd6  3      
  movl %ebx, %eax                                                   #  92    0x2dcd9  2      
  popq %rbx                                                         #  93    0x2dcdb  2      
  popq %r12                                                         #  94    0x2dcdd  3      
  popq %r11                                                         #  95    0x2dce0  3      
  andl $0xffffffe0, %r11d                                           #  96    0x2dce3  7      
  addq %r15, %r11                                                   #  97    0x2dcea  3      
  jmpq %r11                                                         #  98    0x2dced  3      
  nop                                                               #  99    0x2dcf0  1      
  nop                                                               #  100   0x2dcf1  1      
.L_2dd80:                                                           #        0x2dcf2  0      
  cmpb $0x0, 0x10002fd7(%rip)                                       #  101   0x2dcf2  7      
  je .L_2df80                                                       #  102   0x2dcf9  6      
  nop                                                               #  103   0x2dcff  1      
  nop                                                               #  104   0x2dd00  1      
.L_2dda0:                                                           #        0x2dd01  0      
  movl 0x10002fd1(%rip), %eax                                       #  105   0x2dd01  6      
  testl %eax, %eax                                                  #  106   0x2dd07  2      
  je .L_2dc20                                                       #  107   0x2dd09  6      
  nop                                                               #  108   0x2dd0f  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v  #  109   0x2dd10  5      
  movl %eax, %eax                                                   #  110   0x2dd15  2      
  jmpq .L_2dbe0                                                     #  111   0x2dd17  5      
  nop                                                               #  112   0x2dd1c  1      
  nop                                                               #  113   0x2dd1d  1      
.L_2dde0:                                                           #        0x2dd1e  0      
  movl $0x10030cb0, %edi                                            #  114   0x2dd1e  5      
  nop                                                               #  115   0x2dd23  1      
  nop                                                               #  116   0x2dd24  1      
  callq .__cxa_guard_acquire                                        #  117   0x2dd25  5      
  testl %eax, %eax                                                  #  118   0x2dd2a  2      
  je .L_2dbc0                                                       #  119   0x2dd2c  6      
  nop                                                               #  120   0x2dd32  1      
  nop                                                               #  121   0x2dd33  1      
  callq ._ZN2pp6Module3GetEv                                        #  122   0x2dd34  5      
  movl %eax, %edi                                                   #  123   0x2dd39  2      
  movl $0x10020625, %esi                                            #  124   0x2dd3b  5      
  nop                                                               #  125   0x2dd40  1      
  nop                                                               #  126   0x2dd41  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  127   0x2dd42  5      
  movl $0x10030cb0, %edi                                            #  128   0x2dd47  5      
  movl %eax, 0x10002f66(%rip)                                       #  129   0x2dd4c  6      
  nop                                                               #  130   0x2dd52  1      
  nop                                                               #  131   0x2dd53  1      
  callq .__cxa_guard_release                                        #  132   0x2dd54  5      
  jmpq .L_2dbc0                                                     #  133   0x2dd59  5      
  nop                                                               #  134   0x2dd5e  1      
  nop                                                               #  135   0x2dd5f  1      
.L_2de80:                                                           #        0x2dd60  0      
  movl $0x10030cb0, %edi                                            #  136   0x2dd60  5      
  nop                                                               #  137   0x2dd65  1      
  nop                                                               #  138   0x2dd66  1      
  callq .__cxa_guard_acquire                                        #  139   0x2dd67  5      
  testl %eax, %eax                                                  #  140   0x2dd6c  2      
  jne .L_2e020                                                      #  141   0x2dd6e  6      
  nop                                                               #  142   0x2dd74  1      
  nop                                                               #  143   0x2dd75  1      
.L_2dec0:                                                           #        0x2dd76  0      
  movl 0x10002f3c(%rip), %eax                                       #  144   0x2dd76  6      
  jmpq .L_2dbe0                                                     #  145   0x2dd7c  5      
  nop                                                               #  146   0x2dd81  1      
  nop                                                               #  147   0x2dd82  1      
.L_2dee0:                                                           #        0x2dd83  0      
  movl $0x10030cc0, %edi                                            #  148   0x2dd83  5      
  nop                                                               #  149   0x2dd88  1      
  nop                                                               #  150   0x2dd89  1      
  callq .__cxa_guard_acquire                                        #  151   0x2dd8a  5      
  testl %eax, %eax                                                  #  152   0x2dd8f  2      
  je .L_2dca0                                                       #  153   0x2dd91  6      
  nop                                                               #  154   0x2dd97  1      
  nop                                                               #  155   0x2dd98  1      
  callq ._ZN2pp6Module3GetEv                                        #  156   0x2dd99  5      
  movl %eax, %edi                                                   #  157   0x2dd9e  2      
  movl $0x10020632, %esi                                            #  158   0x2dda0  5      
  nop                                                               #  159   0x2dda5  1      
  nop                                                               #  160   0x2dda6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  161   0x2dda7  5      
  movl $0x10030cc0, %edi                                            #  162   0x2ddac  5      
  movl %eax, 0x10002f11(%rip)                                       #  163   0x2ddb1  6      
  nop                                                               #  164   0x2ddb7  1      
  nop                                                               #  165   0x2ddb8  1      
  callq .__cxa_guard_release                                        #  166   0x2ddb9  5      
  jmpq .L_2dca0                                                     #  167   0x2ddbe  5      
  nop                                                               #  168   0x2ddc3  1      
  nop                                                               #  169   0x2ddc4  1      
.L_2df80:                                                           #        0x2ddc5  0      
  movl $0x10030cd0, %edi                                            #  170   0x2ddc5  5      
  nop                                                               #  171   0x2ddca  1      
  nop                                                               #  172   0x2ddcb  1      
  callq .__cxa_guard_acquire                                        #  173   0x2ddcc  5      
  testl %eax, %eax                                                  #  174   0x2ddd1  2      
  je .L_2dda0                                                       #  175   0x2ddd3  6      
  nop                                                               #  176   0x2ddd9  1      
  nop                                                               #  177   0x2ddda  1      
  callq ._ZN2pp6Module3GetEv                                        #  178   0x2dddb  5      
  movl %eax, %edi                                                   #  179   0x2dde0  2      
  movl $0x10020618, %esi                                            #  180   0x2dde2  5      
  nop                                                               #  181   0x2dde7  1      
  nop                                                               #  182   0x2dde8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  183   0x2dde9  5      
  movl $0x10030cd0, %edi                                            #  184   0x2ddee  5      
  movl %eax, 0x10002edf(%rip)                                       #  185   0x2ddf3  6      
  nop                                                               #  186   0x2ddf9  1      
  nop                                                               #  187   0x2ddfa  1      
  callq .__cxa_guard_release                                        #  188   0x2ddfb  5      
  jmpq .L_2dda0                                                     #  189   0x2de00  5      
  nop                                                               #  190   0x2de05  1      
  nop                                                               #  191   0x2de06  1      
.L_2e020:                                                           #        0x2de07  0      
  nop                                                               #  192   0x2de07  1      
  nop                                                               #  193   0x2de08  1      
  callq ._ZN2pp6Module3GetEv                                        #  194   0x2de09  5      
  movl %eax, %edi                                                   #  195   0x2de0e  2      
  movl $0x10020625, %esi                                            #  196   0x2de10  5      
  nop                                                               #  197   0x2de15  1      
  nop                                                               #  198   0x2de16  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  199   0x2de17  5      
  movl $0x10030cb0, %edi                                            #  200   0x2de1c  5      
  movl %eax, 0x10002e91(%rip)                                       #  201   0x2de21  6      
  nop                                                               #  202   0x2de27  1      
  nop                                                               #  203   0x2de28  1      
  callq .__cxa_guard_release                                        #  204   0x2de29  5      
  jmpq .L_2dec0                                                     #  205   0x2de2e  5      
  nop                                                               #  206   0x2de33  1      
  nop                                                               #  207   0x2de34  1      
.L_2e0a0:                                                           #        0x2de35  0      
  nop                                                               #  208   0x2de35  1      
  nop                                                               #  209   0x2de36  1      
  callq ._ZN2pp6Module3GetEv                                        #  210   0x2de37  5      
  movl %eax, %edi                                                   #  211   0x2de3c  2      
  movl $0x10020632, %esi                                            #  212   0x2de3e  5      
  nop                                                               #  213   0x2de43  1      
  nop                                                               #  214   0x2de44  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  215   0x2de45  5      
  movl $0x10030cc0, %edi                                            #  216   0x2de4a  5      
  movl %eax, 0x10002e73(%rip)                                       #  217   0x2de4f  6      
  nop                                                               #  218   0x2de55  1      
  nop                                                               #  219   0x2de56  1      
  callq .__cxa_guard_release                                        #  220   0x2de57  5      
  jmpq .L_2dd00                                                     #  221   0x2de5c  5      
  nop                                                               #  222   0x2de61  1      
  nop                                                               #  223   0x2de62  1      
.L_2e120:                                                           #        0x2de63  0      
  movl %eax, %ebx                                                   #  224   0x2de63  2      
  movl $0x10030cc0, %edi                                            #  225   0x2de65  5      
  nop                                                               #  226   0x2de6a  1      
  nop                                                               #  227   0x2de6b  1      
  callq .__cxa_guard_abort                                          #  228   0x2de6c  5      
  movl %ebx, %edi                                                   #  229   0x2de71  2      
  nop                                                               #  230   0x2de73  1      
  nop                                                               #  231   0x2de74  1      
  callq ._Unwind_Resume                                             #  232   0x2de75  5      
.L_2e160:                                                           #        0x2de7a  0      
  movl %eax, %ebx                                                   #  233   0x2de7a  2      
  movl $0x10030cb0, %edi                                            #  234   0x2de7c  5      
  nop                                                               #  235   0x2de81  1      
  nop                                                               #  236   0x2de82  1      
  callq .__cxa_guard_abort                                          #  237   0x2de83  5      
  movl %ebx, %edi                                                   #  238   0x2de88  2      
  nop                                                               #  239   0x2de8a  1      
  nop                                                               #  240   0x2de8b  1      
  callq ._Unwind_Resume                                             #  241   0x2de8c  5      
  movl %eax, %ebx                                                   #  242   0x2de91  2      
  movl $0x10030cd0, %edi                                            #  243   0x2de93  5      
  nop                                                               #  244   0x2de98  1      
  nop                                                               #  245   0x2de99  1      
  callq .__cxa_guard_abort                                          #  246   0x2de9a  5      
  movl %ebx, %edi                                                   #  247   0x2de9f  2      
  nop                                                               #  248   0x2dea1  1      
  nop                                                               #  249   0x2dea2  1      
  callq ._Unwind_Resume                                             #  250   0x2dea3  5      
  jmpq .L_2e160                                                     #  251   0x2dea8  5      
  nop                                                               #  252   0x2dead  1      
  nop                                                               #  253   0x2deae  1      
  jmpq .L_2e120                                                     #  254   0x2deaf  5      
  nop                                                               #  255   0x2deb4  1      
  nop                                                               #  256   0x2deb5  1      
  nop                                                               #  257   0x2deb6  1      
                                                                                             
.size _ZNK2pp4View11GetClipRectEv, .-_ZNK2pp4View11GetClipRectEv

