  .text
  .globl _ZNK2pp4View11GetClipRectEv
  .type _ZNK2pp4View11GetClipRectEv, @function

#! file-offset 0x2dc20
#! rip-offset  0x2dc20
#! capacity    1664 bytes

# Text                                                              #  Line  RIP      Bytes  
._ZNK2pp4View11GetClipRectEv:                                       #        0x2dc20  0      
  pushq %r12                                                        #  1     0x2dc20  3      
  movl %esi, %r12d                                                  #  2     0x2dc23  3      
  pushq %rbx                                                        #  3     0x2dc26  2      
  movl %edi, %ebx                                                   #  4     0x2dc28  2      
  subl $0x18, %esp                                                  #  5     0x2dc2a  3      
  addq %r15, %rsp                                                   #  6     0x2dc2d  3      
  cmpb $0x0, 0x10003079(%rip)                                       #  7     0x2dc30  7      
  je .L_2de60                                                       #  8     0x2dc37  6      
  nop                                                               #  9     0x2dc3d  1      
.L_2dc40:                                                           #        0x2dc3e  0      
  movl 0x10003074(%rip), %eax                                       #  10    0x2dc3e  6      
  testq %rax, %rax                                                  #  11    0x2dc44  3      
  je .L_2dd00                                                       #  12    0x2dc47  6      
  cmpb $0x0, 0x1000305c(%rip)                                       #  13    0x2dc4d  7      
  je .L_2df00                                                       #  14    0x2dc54  6      
  nop                                                               #  15    0x2dc5a  1      
.L_2dc60:                                                           #        0x2dc5b  0      
  movl %eax, %eax                                                   #  16    0x2dc5b  2      
  movl 0x14(%r15,%rax,1), %eax                                      #  17    0x2dc5d  5      
  movl %esp, %esi                                                   #  18    0x2dc62  2      
  movl %r12d, %r12d                                                 #  19    0x2dc64  3      
  movl 0x4(%r15,%r12,1), %edi                                       #  20    0x2dc67  5      
  nop                                                               #  21    0x2dc6c  1      
  andl $0xffffffe0, %eax                                            #  22    0x2dc6d  5      
  addq %r15, %rax                                                   #  23    0x2dc72  3      
  callq %rax                                                        #  24    0x2dc75  2      
  testl %eax, %eax                                                  #  25    0x2dc77  2      
  jne .L_2dda0                                                      #  26    0x2dc79  6      
  nop                                                               #  27    0x2dc7f  1      
  nop                                                               #  28    0x2dc80  1      
.L_2dca0:                                                           #        0x2dc81  0      
  movl %ebx, %ebx                                                   #  29    0x2dc81  2      
  movl $0x0, (%r15,%rbx,1)                                          #  30    0x2dc83  8      
  movl %ebx, %ebx                                                   #  31    0x2dc8b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                                       #  32    0x2dc8d  9      
  movl %ebx, %eax                                                   #  33    0x2dc96  2      
  nop                                                               #  34    0x2dc98  1      
  movl %ebx, %ebx                                                   #  35    0x2dc99  2      
  movl $0x0, 0x8(%r15,%rbx,1)                                       #  36    0x2dc9b  9      
  movl %ebx, %ebx                                                   #  37    0x2dca4  2      
  movl $0x0, 0xc(%r15,%rbx,1)                                       #  38    0x2dca6  9      
  addl $0x18, %esp                                                  #  39    0x2dcaf  3      
  addq %r15, %rsp                                                   #  40    0x2dcb2  3      
  popq %rbx                                                         #  41    0x2dcb5  2      
  popq %r12                                                         #  42    0x2dcb7  3      
  nop                                                               #  43    0x2dcba  1      
  popq %r11                                                         #  44    0x2dcbb  3      
  andl $0xffffffe0, %r11d                                           #  45    0x2dcbe  7      
  addq %r15, %r11                                                   #  46    0x2dcc5  3      
  jmpq %r11                                                         #  47    0x2dcc8  3      
  nop                                                               #  48    0x2dccb  1      
  nop                                                               #  49    0x2dccc  1      
.L_2dd00:                                                           #        0x2dccd  0      
  cmpb $0x0, 0x10002fec(%rip)                                       #  50    0x2dccd  7      
  je .L_2df60                                                       #  51    0x2dcd4  6      
  nop                                                               #  52    0x2dcda  1      
  nop                                                               #  53    0x2dcdb  1      
.L_2dd20:                                                           #        0x2dcdc  0      
  movl 0x10002fe6(%rip), %eax                                       #  54    0x2dcdc  6      
  testq %rax, %rax                                                  #  55    0x2dce2  3      
  je .L_2de00                                                       #  56    0x2dce5  6      
  cmpb $0x0, 0x10002fce(%rip)                                       #  57    0x2dceb  7      
  jne .L_2dc60                                                      #  58    0x2dcf2  6      
  nop                                                               #  59    0x2dcf8  1      
  movl $0x10030cc0, %edi                                            #  60    0x2dcf9  5      
  nop                                                               #  61    0x2dcfe  1      
  nop                                                               #  62    0x2dcff  1      
  callq .__cxa_guard_acquire                                        #  63    0x2dd00  5      
  testl %eax, %eax                                                  #  64    0x2dd05  2      
  jne .L_2e120                                                      #  65    0x2dd07  6      
  nop                                                               #  66    0x2dd0d  1      
  nop                                                               #  67    0x2dd0e  1      
.L_2dd80:                                                           #        0x2dd0f  0      
  movl 0x10002fb3(%rip), %eax                                       #  68    0x2dd0f  6      
  jmpq .L_2dc60                                                     #  69    0x2dd15  5      
  nop                                                               #  70    0x2dd1a  1      
  nop                                                               #  71    0x2dd1b  1      
.L_2dda0:                                                           #        0x2dd1c  0      
  movl (%rsp), %eax                                                 #  72    0x2dd1c  3      
  movl 0x8(%rsp), %edx                                              #  73    0x2dd1f  4      
  movl %ebx, %ebx                                                   #  74    0x2dd23  2      
  movl %eax, (%r15,%rbx,1)                                          #  75    0x2dd25  4      
  movl 0x4(%rsp), %eax                                              #  76    0x2dd29  4      
  movl %ebx, %ebx                                                   #  77    0x2dd2d  2      
  movl %eax, 0x4(%r15,%rbx,1)                                       #  78    0x2dd2f  5      
  xorl %eax, %eax                                                   #  79    0x2dd34  2      
  testl %edx, %edx                                                  #  80    0x2dd36  2      
  cmovsl %eax, %edx                                                 #  81    0x2dd38  3      
  nop                                                               #  82    0x2dd3b  1      
  movl %ebx, %ebx                                                   #  83    0x2dd3c  2      
  movl %edx, 0x8(%r15,%rbx,1)                                       #  84    0x2dd3e  5      
  movl 0xc(%rsp), %edx                                              #  85    0x2dd43  4      
  testl %edx, %edx                                                  #  86    0x2dd47  2      
  cmovnsl %edx, %eax                                                #  87    0x2dd49  3      
  movl %ebx, %ebx                                                   #  88    0x2dd4c  2      
  movl %eax, 0xc(%r15,%rbx,1)                                       #  89    0x2dd4e  5      
  addl $0x18, %esp                                                  #  90    0x2dd53  3      
  addq %r15, %rsp                                                   #  91    0x2dd56  3      
  movl %ebx, %eax                                                   #  92    0x2dd59  2      
  popq %rbx                                                         #  93    0x2dd5b  2      
  popq %r12                                                         #  94    0x2dd5d  3      
  popq %r11                                                         #  95    0x2dd60  3      
  andl $0xffffffe0, %r11d                                           #  96    0x2dd63  7      
  addq %r15, %r11                                                   #  97    0x2dd6a  3      
  jmpq %r11                                                         #  98    0x2dd6d  3      
  nop                                                               #  99    0x2dd70  1      
  nop                                                               #  100   0x2dd71  1      
.L_2de00:                                                           #        0x2dd72  0      
  cmpb $0x0, 0x10002f57(%rip)                                       #  101   0x2dd72  7      
  je .L_2e000                                                       #  102   0x2dd79  6      
  nop                                                               #  103   0x2dd7f  1      
  nop                                                               #  104   0x2dd80  1      
.L_2de20:                                                           #        0x2dd81  0      
  movl 0x10002f51(%rip), %eax                                       #  105   0x2dd81  6      
  testl %eax, %eax                                                  #  106   0x2dd87  2      
  je .L_2dca0                                                       #  107   0x2dd89  6      
  nop                                                               #  108   0x2dd8f  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v  #  109   0x2dd90  5      
  movl %eax, %eax                                                   #  110   0x2dd95  2      
  jmpq .L_2dc60                                                     #  111   0x2dd97  5      
  nop                                                               #  112   0x2dd9c  1      
  nop                                                               #  113   0x2dd9d  1      
.L_2de60:                                                           #        0x2dd9e  0      
  movl $0x10030cb0, %edi                                            #  114   0x2dd9e  5      
  nop                                                               #  115   0x2dda3  1      
  nop                                                               #  116   0x2dda4  1      
  callq .__cxa_guard_acquire                                        #  117   0x2dda5  5      
  testl %eax, %eax                                                  #  118   0x2ddaa  2      
  je .L_2dc40                                                       #  119   0x2ddac  6      
  nop                                                               #  120   0x2ddb2  1      
  nop                                                               #  121   0x2ddb3  1      
  callq ._ZN2pp6Module3GetEv                                        #  122   0x2ddb4  5      
  movl %eax, %edi                                                   #  123   0x2ddb9  2      
  movl $0x10020625, %esi                                            #  124   0x2ddbb  5      
  nop                                                               #  125   0x2ddc0  1      
  nop                                                               #  126   0x2ddc1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  127   0x2ddc2  5      
  movl $0x10030cb0, %edi                                            #  128   0x2ddc7  5      
  movl %eax, 0x10002ee6(%rip)                                       #  129   0x2ddcc  6      
  nop                                                               #  130   0x2ddd2  1      
  nop                                                               #  131   0x2ddd3  1      
  callq .__cxa_guard_release                                        #  132   0x2ddd4  5      
  jmpq .L_2dc40                                                     #  133   0x2ddd9  5      
  nop                                                               #  134   0x2ddde  1      
  nop                                                               #  135   0x2dddf  1      
.L_2df00:                                                           #        0x2dde0  0      
  movl $0x10030cb0, %edi                                            #  136   0x2dde0  5      
  nop                                                               #  137   0x2dde5  1      
  nop                                                               #  138   0x2dde6  1      
  callq .__cxa_guard_acquire                                        #  139   0x2dde7  5      
  testl %eax, %eax                                                  #  140   0x2ddec  2      
  jne .L_2e0a0                                                      #  141   0x2ddee  6      
  nop                                                               #  142   0x2ddf4  1      
  nop                                                               #  143   0x2ddf5  1      
.L_2df40:                                                           #        0x2ddf6  0      
  movl 0x10002ebc(%rip), %eax                                       #  144   0x2ddf6  6      
  jmpq .L_2dc60                                                     #  145   0x2ddfc  5      
  nop                                                               #  146   0x2de01  1      
  nop                                                               #  147   0x2de02  1      
.L_2df60:                                                           #        0x2de03  0      
  movl $0x10030cc0, %edi                                            #  148   0x2de03  5      
  nop                                                               #  149   0x2de08  1      
  nop                                                               #  150   0x2de09  1      
  callq .__cxa_guard_acquire                                        #  151   0x2de0a  5      
  testl %eax, %eax                                                  #  152   0x2de0f  2      
  je .L_2dd20                                                       #  153   0x2de11  6      
  nop                                                               #  154   0x2de17  1      
  nop                                                               #  155   0x2de18  1      
  callq ._ZN2pp6Module3GetEv                                        #  156   0x2de19  5      
  movl %eax, %edi                                                   #  157   0x2de1e  2      
  movl $0x10020632, %esi                                            #  158   0x2de20  5      
  nop                                                               #  159   0x2de25  1      
  nop                                                               #  160   0x2de26  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  161   0x2de27  5      
  movl $0x10030cc0, %edi                                            #  162   0x2de2c  5      
  movl %eax, 0x10002e91(%rip)                                       #  163   0x2de31  6      
  nop                                                               #  164   0x2de37  1      
  nop                                                               #  165   0x2de38  1      
  callq .__cxa_guard_release                                        #  166   0x2de39  5      
  jmpq .L_2dd20                                                     #  167   0x2de3e  5      
  nop                                                               #  168   0x2de43  1      
  nop                                                               #  169   0x2de44  1      
.L_2e000:                                                           #        0x2de45  0      
  movl $0x10030cd0, %edi                                            #  170   0x2de45  5      
  nop                                                               #  171   0x2de4a  1      
  nop                                                               #  172   0x2de4b  1      
  callq .__cxa_guard_acquire                                        #  173   0x2de4c  5      
  testl %eax, %eax                                                  #  174   0x2de51  2      
  je .L_2de20                                                       #  175   0x2de53  6      
  nop                                                               #  176   0x2de59  1      
  nop                                                               #  177   0x2de5a  1      
  callq ._ZN2pp6Module3GetEv                                        #  178   0x2de5b  5      
  movl %eax, %edi                                                   #  179   0x2de60  2      
  movl $0x10020618, %esi                                            #  180   0x2de62  5      
  nop                                                               #  181   0x2de67  1      
  nop                                                               #  182   0x2de68  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  183   0x2de69  5      
  movl $0x10030cd0, %edi                                            #  184   0x2de6e  5      
  movl %eax, 0x10002e5f(%rip)                                       #  185   0x2de73  6      
  nop                                                               #  186   0x2de79  1      
  nop                                                               #  187   0x2de7a  1      
  callq .__cxa_guard_release                                        #  188   0x2de7b  5      
  jmpq .L_2de20                                                     #  189   0x2de80  5      
  nop                                                               #  190   0x2de85  1      
  nop                                                               #  191   0x2de86  1      
.L_2e0a0:                                                           #        0x2de87  0      
  nop                                                               #  192   0x2de87  1      
  nop                                                               #  193   0x2de88  1      
  callq ._ZN2pp6Module3GetEv                                        #  194   0x2de89  5      
  movl %eax, %edi                                                   #  195   0x2de8e  2      
  movl $0x10020625, %esi                                            #  196   0x2de90  5      
  nop                                                               #  197   0x2de95  1      
  nop                                                               #  198   0x2de96  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  199   0x2de97  5      
  movl $0x10030cb0, %edi                                            #  200   0x2de9c  5      
  movl %eax, 0x10002e11(%rip)                                       #  201   0x2dea1  6      
  nop                                                               #  202   0x2dea7  1      
  nop                                                               #  203   0x2dea8  1      
  callq .__cxa_guard_release                                        #  204   0x2dea9  5      
  jmpq .L_2df40                                                     #  205   0x2deae  5      
  nop                                                               #  206   0x2deb3  1      
  nop                                                               #  207   0x2deb4  1      
.L_2e120:                                                           #        0x2deb5  0      
  nop                                                               #  208   0x2deb5  1      
  nop                                                               #  209   0x2deb6  1      
  callq ._ZN2pp6Module3GetEv                                        #  210   0x2deb7  5      
  movl %eax, %edi                                                   #  211   0x2debc  2      
  movl $0x10020632, %esi                                            #  212   0x2debe  5      
  nop                                                               #  213   0x2dec3  1      
  nop                                                               #  214   0x2dec4  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  215   0x2dec5  5      
  movl $0x10030cc0, %edi                                            #  216   0x2deca  5      
  movl %eax, 0x10002df3(%rip)                                       #  217   0x2decf  6      
  nop                                                               #  218   0x2ded5  1      
  nop                                                               #  219   0x2ded6  1      
  callq .__cxa_guard_release                                        #  220   0x2ded7  5      
  jmpq .L_2dd80                                                     #  221   0x2dedc  5      
  nop                                                               #  222   0x2dee1  1      
  nop                                                               #  223   0x2dee2  1      
.L_2e1a0:                                                           #        0x2dee3  0      
  movl %eax, %ebx                                                   #  224   0x2dee3  2      
  movl $0x10030cc0, %edi                                            #  225   0x2dee5  5      
  nop                                                               #  226   0x2deea  1      
  nop                                                               #  227   0x2deeb  1      
  callq .__cxa_guard_abort                                          #  228   0x2deec  5      
  movl %ebx, %edi                                                   #  229   0x2def1  2      
  nop                                                               #  230   0x2def3  1      
  nop                                                               #  231   0x2def4  1      
  callq ._Unwind_Resume                                             #  232   0x2def5  5      
.L_2e1e0:                                                           #        0x2defa  0      
  movl %eax, %ebx                                                   #  233   0x2defa  2      
  movl $0x10030cb0, %edi                                            #  234   0x2defc  5      
  nop                                                               #  235   0x2df01  1      
  nop                                                               #  236   0x2df02  1      
  callq .__cxa_guard_abort                                          #  237   0x2df03  5      
  movl %ebx, %edi                                                   #  238   0x2df08  2      
  nop                                                               #  239   0x2df0a  1      
  nop                                                               #  240   0x2df0b  1      
  callq ._Unwind_Resume                                             #  241   0x2df0c  5      
  movl %eax, %ebx                                                   #  242   0x2df11  2      
  movl $0x10030cd0, %edi                                            #  243   0x2df13  5      
  nop                                                               #  244   0x2df18  1      
  nop                                                               #  245   0x2df19  1      
  callq .__cxa_guard_abort                                          #  246   0x2df1a  5      
  movl %ebx, %edi                                                   #  247   0x2df1f  2      
  nop                                                               #  248   0x2df21  1      
  nop                                                               #  249   0x2df22  1      
  callq ._Unwind_Resume                                             #  250   0x2df23  5      
  jmpq .L_2e1e0                                                     #  251   0x2df28  5      
  nop                                                               #  252   0x2df2d  1      
  nop                                                               #  253   0x2df2e  1      
  jmpq .L_2e1a0                                                     #  254   0x2df2f  5      
  nop                                                               #  255   0x2df34  1      
  nop                                                               #  256   0x2df35  1      
  nop                                                               #  257   0x2df36  1      
                                                                                             
.size _ZNK2pp4View11GetClipRectEv, .-_ZNK2pp4View11GetClipRectEv

