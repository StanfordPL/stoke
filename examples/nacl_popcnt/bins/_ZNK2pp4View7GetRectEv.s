  .text
  .globl _ZNK2pp4View7GetRectEv
  .type _ZNK2pp4View7GetRectEv, @function

#! file-offset 0x2eac0
#! rip-offset  0x2eac0
#! capacity    1664 bytes

# Text                                                              #  Line  RIP      Bytes  
._ZNK2pp4View7GetRectEv:                                            #        0x2eac0  0      
  pushq %r12                                                        #  1     0x2eac0  3      
  movl %esi, %r12d                                                  #  2     0x2eac3  3      
  pushq %rbx                                                        #  3     0x2eac6  2      
  movl %edi, %ebx                                                   #  4     0x2eac8  2      
  subl $0x18, %esp                                                  #  5     0x2eaca  3      
  addq %r15, %rsp                                                   #  6     0x2eacd  3      
  cmpb $0x0, 0x100021d9(%rip)                                       #  7     0x2ead0  7      
  je .L_2ed00                                                       #  8     0x2ead7  6      
  nop                                                               #  9     0x2eadd  1      
.L_2eae0:                                                           #        0x2eade  0      
  movl 0x100021d4(%rip), %eax                                       #  10    0x2eade  6      
  testq %rax, %rax                                                  #  11    0x2eae4  3      
  je .L_2eba0                                                       #  12    0x2eae7  6      
  cmpb $0x0, 0x100021bc(%rip)                                       #  13    0x2eaed  7      
  je .L_2eda0                                                       #  14    0x2eaf4  6      
  nop                                                               #  15    0x2eafa  1      
.L_2eb00:                                                           #        0x2eafb  0      
  movl %eax, %eax                                                   #  16    0x2eafb  2      
  movl 0x4(%r15,%rax,1), %eax                                       #  17    0x2eafd  5      
  movl %esp, %esi                                                   #  18    0x2eb02  2      
  movl %r12d, %r12d                                                 #  19    0x2eb04  3      
  movl 0x4(%r15,%r12,1), %edi                                       #  20    0x2eb07  5      
  nop                                                               #  21    0x2eb0c  1      
  andl $0xffffffe0, %eax                                            #  22    0x2eb0d  5      
  addq %r15, %rax                                                   #  23    0x2eb12  3      
  callq %rax                                                        #  24    0x2eb15  2      
  testl %eax, %eax                                                  #  25    0x2eb17  2      
  jne .L_2ec40                                                      #  26    0x2eb19  6      
  nop                                                               #  27    0x2eb1f  1      
  nop                                                               #  28    0x2eb20  1      
.L_2eb40:                                                           #        0x2eb21  0      
  movl %ebx, %ebx                                                   #  29    0x2eb21  2      
  movl $0x0, (%r15,%rbx,1)                                          #  30    0x2eb23  8      
  movl %ebx, %ebx                                                   #  31    0x2eb2b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                                       #  32    0x2eb2d  9      
  movl %ebx, %eax                                                   #  33    0x2eb36  2      
  nop                                                               #  34    0x2eb38  1      
  movl %ebx, %ebx                                                   #  35    0x2eb39  2      
  movl $0x0, 0x8(%r15,%rbx,1)                                       #  36    0x2eb3b  9      
  movl %ebx, %ebx                                                   #  37    0x2eb44  2      
  movl $0x0, 0xc(%r15,%rbx,1)                                       #  38    0x2eb46  9      
  addl $0x18, %esp                                                  #  39    0x2eb4f  3      
  addq %r15, %rsp                                                   #  40    0x2eb52  3      
  popq %rbx                                                         #  41    0x2eb55  2      
  popq %r12                                                         #  42    0x2eb57  3      
  nop                                                               #  43    0x2eb5a  1      
  popq %r11                                                         #  44    0x2eb5b  3      
  andl $0xffffffe0, %r11d                                           #  45    0x2eb5e  7      
  addq %r15, %r11                                                   #  46    0x2eb65  3      
  jmpq %r11                                                         #  47    0x2eb68  3      
  nop                                                               #  48    0x2eb6b  1      
  nop                                                               #  49    0x2eb6c  1      
.L_2eba0:                                                           #        0x2eb6d  0      
  cmpb $0x0, 0x1000214c(%rip)                                       #  50    0x2eb6d  7      
  je .L_2ee00                                                       #  51    0x2eb74  6      
  nop                                                               #  52    0x2eb7a  1      
  nop                                                               #  53    0x2eb7b  1      
.L_2ebc0:                                                           #        0x2eb7c  0      
  movl 0x10002146(%rip), %eax                                       #  54    0x2eb7c  6      
  testq %rax, %rax                                                  #  55    0x2eb82  3      
  je .L_2eca0                                                       #  56    0x2eb85  6      
  cmpb $0x0, 0x1000212e(%rip)                                       #  57    0x2eb8b  7      
  jne .L_2eb00                                                      #  58    0x2eb92  6      
  nop                                                               #  59    0x2eb98  1      
  movl $0x10030cc0, %edi                                            #  60    0x2eb99  5      
  nop                                                               #  61    0x2eb9e  1      
  nop                                                               #  62    0x2eb9f  1      
  callq .__cxa_guard_acquire                                        #  63    0x2eba0  5      
  testl %eax, %eax                                                  #  64    0x2eba5  2      
  jne .L_2efc0                                                      #  65    0x2eba7  6      
  nop                                                               #  66    0x2ebad  1      
  nop                                                               #  67    0x2ebae  1      
.L_2ec20:                                                           #        0x2ebaf  0      
  movl 0x10002113(%rip), %eax                                       #  68    0x2ebaf  6      
  jmpq .L_2eb00                                                     #  69    0x2ebb5  5      
  nop                                                               #  70    0x2ebba  1      
  nop                                                               #  71    0x2ebbb  1      
.L_2ec40:                                                           #        0x2ebbc  0      
  movl (%rsp), %eax                                                 #  72    0x2ebbc  3      
  movl 0x8(%rsp), %edx                                              #  73    0x2ebbf  4      
  movl %ebx, %ebx                                                   #  74    0x2ebc3  2      
  movl %eax, (%r15,%rbx,1)                                          #  75    0x2ebc5  4      
  movl 0x4(%rsp), %eax                                              #  76    0x2ebc9  4      
  movl %ebx, %ebx                                                   #  77    0x2ebcd  2      
  movl %eax, 0x4(%r15,%rbx,1)                                       #  78    0x2ebcf  5      
  xorl %eax, %eax                                                   #  79    0x2ebd4  2      
  testl %edx, %edx                                                  #  80    0x2ebd6  2      
  cmovsl %eax, %edx                                                 #  81    0x2ebd8  3      
  nop                                                               #  82    0x2ebdb  1      
  movl %ebx, %ebx                                                   #  83    0x2ebdc  2      
  movl %edx, 0x8(%r15,%rbx,1)                                       #  84    0x2ebde  5      
  movl 0xc(%rsp), %edx                                              #  85    0x2ebe3  4      
  testl %edx, %edx                                                  #  86    0x2ebe7  2      
  cmovnsl %edx, %eax                                                #  87    0x2ebe9  3      
  movl %ebx, %ebx                                                   #  88    0x2ebec  2      
  movl %eax, 0xc(%r15,%rbx,1)                                       #  89    0x2ebee  5      
  addl $0x18, %esp                                                  #  90    0x2ebf3  3      
  addq %r15, %rsp                                                   #  91    0x2ebf6  3      
  movl %ebx, %eax                                                   #  92    0x2ebf9  2      
  popq %rbx                                                         #  93    0x2ebfb  2      
  popq %r12                                                         #  94    0x2ebfd  3      
  popq %r11                                                         #  95    0x2ec00  3      
  andl $0xffffffe0, %r11d                                           #  96    0x2ec03  7      
  addq %r15, %r11                                                   #  97    0x2ec0a  3      
  jmpq %r11                                                         #  98    0x2ec0d  3      
  nop                                                               #  99    0x2ec10  1      
  nop                                                               #  100   0x2ec11  1      
.L_2eca0:                                                           #        0x2ec12  0      
  cmpb $0x0, 0x100020b7(%rip)                                       #  101   0x2ec12  7      
  je .L_2eea0                                                       #  102   0x2ec19  6      
  nop                                                               #  103   0x2ec1f  1      
  nop                                                               #  104   0x2ec20  1      
.L_2ecc0:                                                           #        0x2ec21  0      
  movl 0x100020b1(%rip), %edx                                       #  105   0x2ec21  6      
  testl %edx, %edx                                                  #  106   0x2ec27  2      
  je .L_2eb40                                                       #  107   0x2ec29  6      
  nop                                                               #  108   0x2ec2f  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v  #  109   0x2ec30  5      
  movl %eax, %eax                                                   #  110   0x2ec35  2      
  jmpq .L_2eb00                                                     #  111   0x2ec37  5      
  nop                                                               #  112   0x2ec3c  1      
  nop                                                               #  113   0x2ec3d  1      
.L_2ed00:                                                           #        0x2ec3e  0      
  movl $0x10030cb0, %edi                                            #  114   0x2ec3e  5      
  nop                                                               #  115   0x2ec43  1      
  nop                                                               #  116   0x2ec44  1      
  callq .__cxa_guard_acquire                                        #  117   0x2ec45  5      
  testl %eax, %eax                                                  #  118   0x2ec4a  2      
  je .L_2eae0                                                       #  119   0x2ec4c  6      
  nop                                                               #  120   0x2ec52  1      
  nop                                                               #  121   0x2ec53  1      
  callq ._ZN2pp6Module3GetEv                                        #  122   0x2ec54  5      
  movl %eax, %edi                                                   #  123   0x2ec59  2      
  movl $0x10020625, %esi                                            #  124   0x2ec5b  5      
  nop                                                               #  125   0x2ec60  1      
  nop                                                               #  126   0x2ec61  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  127   0x2ec62  5      
  movl $0x10030cb0, %edi                                            #  128   0x2ec67  5      
  movl %eax, 0x10002046(%rip)                                       #  129   0x2ec6c  6      
  nop                                                               #  130   0x2ec72  1      
  nop                                                               #  131   0x2ec73  1      
  callq .__cxa_guard_release                                        #  132   0x2ec74  5      
  jmpq .L_2eae0                                                     #  133   0x2ec79  5      
  nop                                                               #  134   0x2ec7e  1      
  nop                                                               #  135   0x2ec7f  1      
.L_2eda0:                                                           #        0x2ec80  0      
  movl $0x10030cb0, %edi                                            #  136   0x2ec80  5      
  nop                                                               #  137   0x2ec85  1      
  nop                                                               #  138   0x2ec86  1      
  callq .__cxa_guard_acquire                                        #  139   0x2ec87  5      
  testl %eax, %eax                                                  #  140   0x2ec8c  2      
  jne .L_2ef40                                                      #  141   0x2ec8e  6      
  nop                                                               #  142   0x2ec94  1      
  nop                                                               #  143   0x2ec95  1      
.L_2ede0:                                                           #        0x2ec96  0      
  movl 0x1000201c(%rip), %eax                                       #  144   0x2ec96  6      
  jmpq .L_2eb00                                                     #  145   0x2ec9c  5      
  nop                                                               #  146   0x2eca1  1      
  nop                                                               #  147   0x2eca2  1      
.L_2ee00:                                                           #        0x2eca3  0      
  movl $0x10030cc0, %edi                                            #  148   0x2eca3  5      
  nop                                                               #  149   0x2eca8  1      
  nop                                                               #  150   0x2eca9  1      
  callq .__cxa_guard_acquire                                        #  151   0x2ecaa  5      
  testl %eax, %eax                                                  #  152   0x2ecaf  2      
  je .L_2ebc0                                                       #  153   0x2ecb1  6      
  nop                                                               #  154   0x2ecb7  1      
  nop                                                               #  155   0x2ecb8  1      
  callq ._ZN2pp6Module3GetEv                                        #  156   0x2ecb9  5      
  movl %eax, %edi                                                   #  157   0x2ecbe  2      
  movl $0x10020632, %esi                                            #  158   0x2ecc0  5      
  nop                                                               #  159   0x2ecc5  1      
  nop                                                               #  160   0x2ecc6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  161   0x2ecc7  5      
  movl $0x10030cc0, %edi                                            #  162   0x2eccc  5      
  movl %eax, 0x10001ff1(%rip)                                       #  163   0x2ecd1  6      
  nop                                                               #  164   0x2ecd7  1      
  nop                                                               #  165   0x2ecd8  1      
  callq .__cxa_guard_release                                        #  166   0x2ecd9  5      
  jmpq .L_2ebc0                                                     #  167   0x2ecde  5      
  nop                                                               #  168   0x2ece3  1      
  nop                                                               #  169   0x2ece4  1      
.L_2eea0:                                                           #        0x2ece5  0      
  movl $0x10030cd0, %edi                                            #  170   0x2ece5  5      
  nop                                                               #  171   0x2ecea  1      
  nop                                                               #  172   0x2eceb  1      
  callq .__cxa_guard_acquire                                        #  173   0x2ecec  5      
  testl %eax, %eax                                                  #  174   0x2ecf1  2      
  je .L_2ecc0                                                       #  175   0x2ecf3  6      
  nop                                                               #  176   0x2ecf9  1      
  nop                                                               #  177   0x2ecfa  1      
  callq ._ZN2pp6Module3GetEv                                        #  178   0x2ecfb  5      
  movl %eax, %edi                                                   #  179   0x2ed00  2      
  movl $0x10020618, %esi                                            #  180   0x2ed02  5      
  nop                                                               #  181   0x2ed07  1      
  nop                                                               #  182   0x2ed08  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  183   0x2ed09  5      
  movl $0x10030cd0, %edi                                            #  184   0x2ed0e  5      
  movl %eax, 0x10001fbf(%rip)                                       #  185   0x2ed13  6      
  nop                                                               #  186   0x2ed19  1      
  nop                                                               #  187   0x2ed1a  1      
  callq .__cxa_guard_release                                        #  188   0x2ed1b  5      
  jmpq .L_2ecc0                                                     #  189   0x2ed20  5      
  nop                                                               #  190   0x2ed25  1      
  nop                                                               #  191   0x2ed26  1      
.L_2ef40:                                                           #        0x2ed27  0      
  nop                                                               #  192   0x2ed27  1      
  nop                                                               #  193   0x2ed28  1      
  callq ._ZN2pp6Module3GetEv                                        #  194   0x2ed29  5      
  movl %eax, %edi                                                   #  195   0x2ed2e  2      
  movl $0x10020625, %esi                                            #  196   0x2ed30  5      
  nop                                                               #  197   0x2ed35  1      
  nop                                                               #  198   0x2ed36  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  199   0x2ed37  5      
  movl $0x10030cb0, %edi                                            #  200   0x2ed3c  5      
  movl %eax, 0x10001f71(%rip)                                       #  201   0x2ed41  6      
  nop                                                               #  202   0x2ed47  1      
  nop                                                               #  203   0x2ed48  1      
  callq .__cxa_guard_release                                        #  204   0x2ed49  5      
  jmpq .L_2ede0                                                     #  205   0x2ed4e  5      
  nop                                                               #  206   0x2ed53  1      
  nop                                                               #  207   0x2ed54  1      
.L_2efc0:                                                           #        0x2ed55  0      
  nop                                                               #  208   0x2ed55  1      
  nop                                                               #  209   0x2ed56  1      
  callq ._ZN2pp6Module3GetEv                                        #  210   0x2ed57  5      
  movl %eax, %edi                                                   #  211   0x2ed5c  2      
  movl $0x10020632, %esi                                            #  212   0x2ed5e  5      
  nop                                                               #  213   0x2ed63  1      
  nop                                                               #  214   0x2ed64  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  215   0x2ed65  5      
  movl $0x10030cc0, %edi                                            #  216   0x2ed6a  5      
  movl %eax, 0x10001f53(%rip)                                       #  217   0x2ed6f  6      
  nop                                                               #  218   0x2ed75  1      
  nop                                                               #  219   0x2ed76  1      
  callq .__cxa_guard_release                                        #  220   0x2ed77  5      
  jmpq .L_2ec20                                                     #  221   0x2ed7c  5      
  nop                                                               #  222   0x2ed81  1      
  nop                                                               #  223   0x2ed82  1      
.L_2f040:                                                           #        0x2ed83  0      
  movl %eax, %ebx                                                   #  224   0x2ed83  2      
  movl $0x10030cc0, %edi                                            #  225   0x2ed85  5      
  nop                                                               #  226   0x2ed8a  1      
  nop                                                               #  227   0x2ed8b  1      
  callq .__cxa_guard_abort                                          #  228   0x2ed8c  5      
  movl %ebx, %edi                                                   #  229   0x2ed91  2      
  nop                                                               #  230   0x2ed93  1      
  nop                                                               #  231   0x2ed94  1      
  callq ._Unwind_Resume                                             #  232   0x2ed95  5      
.L_2f080:                                                           #        0x2ed9a  0      
  movl %eax, %ebx                                                   #  233   0x2ed9a  2      
  movl $0x10030cb0, %edi                                            #  234   0x2ed9c  5      
  nop                                                               #  235   0x2eda1  1      
  nop                                                               #  236   0x2eda2  1      
  callq .__cxa_guard_abort                                          #  237   0x2eda3  5      
  movl %ebx, %edi                                                   #  238   0x2eda8  2      
  nop                                                               #  239   0x2edaa  1      
  nop                                                               #  240   0x2edab  1      
  callq ._Unwind_Resume                                             #  241   0x2edac  5      
  movl %eax, %ebx                                                   #  242   0x2edb1  2      
  movl $0x10030cd0, %edi                                            #  243   0x2edb3  5      
  nop                                                               #  244   0x2edb8  1      
  nop                                                               #  245   0x2edb9  1      
  callq .__cxa_guard_abort                                          #  246   0x2edba  5      
  movl %ebx, %edi                                                   #  247   0x2edbf  2      
  nop                                                               #  248   0x2edc1  1      
  nop                                                               #  249   0x2edc2  1      
  callq ._Unwind_Resume                                             #  250   0x2edc3  5      
  jmpq .L_2f080                                                     #  251   0x2edc8  5      
  nop                                                               #  252   0x2edcd  1      
  nop                                                               #  253   0x2edce  1      
  jmpq .L_2f040                                                     #  254   0x2edcf  5      
  nop                                                               #  255   0x2edd4  1      
  nop                                                               #  256   0x2edd5  1      
  nop                                                               #  257   0x2edd6  1      
                                                                                             
.size _ZNK2pp4View7GetRectEv, .-_ZNK2pp4View7GetRectEv

