  .text
  .globl _ZNK2pp4View7GetRectEv
  .type _ZNK2pp4View7GetRectEv, @function

#! file-offset 0x2eae0
#! rip-offset  0x2eae0
#! capacity    1664 bytes

# Text                                                              #  Line  RIP      Bytes  
._ZNK2pp4View7GetRectEv:                                            #        0x2eae0  0      
  pushq %r12                                                        #  1     0x2eae0  3      
  movl %esi, %r12d                                                  #  2     0x2eae3  3      
  pushq %rbx                                                        #  3     0x2eae6  2      
  movl %edi, %ebx                                                   #  4     0x2eae8  2      
  subl $0x18, %esp                                                  #  5     0x2eaea  3      
  addq %r15, %rsp                                                   #  6     0x2eaed  3      
  cmpb $0x0, 0x100021b9(%rip)                                       #  7     0x2eaf0  7      
  je .L_2ed20                                                       #  8     0x2eaf7  6      
  nop                                                               #  9     0x2eafd  1      
.L_2eb00:                                                           #        0x2eafe  0      
  movl 0x100021b4(%rip), %eax                                       #  10    0x2eafe  6      
  testq %rax, %rax                                                  #  11    0x2eb04  3      
  je .L_2ebc0                                                       #  12    0x2eb07  6      
  cmpb $0x0, 0x1000219c(%rip)                                       #  13    0x2eb0d  7      
  je .L_2edc0                                                       #  14    0x2eb14  6      
  nop                                                               #  15    0x2eb1a  1      
.L_2eb20:                                                           #        0x2eb1b  0      
  movl %eax, %eax                                                   #  16    0x2eb1b  2      
  movl 0x4(%r15,%rax,1), %eax                                       #  17    0x2eb1d  5      
  movl %esp, %esi                                                   #  18    0x2eb22  2      
  movl %r12d, %r12d                                                 #  19    0x2eb24  3      
  movl 0x4(%r15,%r12,1), %edi                                       #  20    0x2eb27  5      
  nop                                                               #  21    0x2eb2c  1      
  andl $0xffffffe0, %eax                                            #  22    0x2eb2d  5      
  addq %r15, %rax                                                   #  23    0x2eb32  3      
  callq %rax                                                        #  24    0x2eb35  2      
  testl %eax, %eax                                                  #  25    0x2eb37  2      
  jne .L_2ec60                                                      #  26    0x2eb39  6      
  nop                                                               #  27    0x2eb3f  1      
  nop                                                               #  28    0x2eb40  1      
.L_2eb60:                                                           #        0x2eb41  0      
  movl %ebx, %ebx                                                   #  29    0x2eb41  2      
  movl $0x0, (%r15,%rbx,1)                                          #  30    0x2eb43  8      
  movl %ebx, %ebx                                                   #  31    0x2eb4b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                                       #  32    0x2eb4d  9      
  movl %ebx, %eax                                                   #  33    0x2eb56  2      
  nop                                                               #  34    0x2eb58  1      
  movl %ebx, %ebx                                                   #  35    0x2eb59  2      
  movl $0x0, 0x8(%r15,%rbx,1)                                       #  36    0x2eb5b  9      
  movl %ebx, %ebx                                                   #  37    0x2eb64  2      
  movl $0x0, 0xc(%r15,%rbx,1)                                       #  38    0x2eb66  9      
  addl $0x18, %esp                                                  #  39    0x2eb6f  3      
  addq %r15, %rsp                                                   #  40    0x2eb72  3      
  popq %rbx                                                         #  41    0x2eb75  2      
  popq %r12                                                         #  42    0x2eb77  3      
  nop                                                               #  43    0x2eb7a  1      
  popq %r11                                                         #  44    0x2eb7b  3      
  andl $0xffffffe0, %r11d                                           #  45    0x2eb7e  7      
  addq %r15, %r11                                                   #  46    0x2eb85  3      
  jmpq %r11                                                         #  47    0x2eb88  3      
  nop                                                               #  48    0x2eb8b  1      
  nop                                                               #  49    0x2eb8c  1      
.L_2ebc0:                                                           #        0x2eb8d  0      
  cmpb $0x0, 0x1000212c(%rip)                                       #  50    0x2eb8d  7      
  je .L_2ee20                                                       #  51    0x2eb94  6      
  nop                                                               #  52    0x2eb9a  1      
  nop                                                               #  53    0x2eb9b  1      
.L_2ebe0:                                                           #        0x2eb9c  0      
  movl 0x10002126(%rip), %eax                                       #  54    0x2eb9c  6      
  testq %rax, %rax                                                  #  55    0x2eba2  3      
  je .L_2ecc0                                                       #  56    0x2eba5  6      
  cmpb $0x0, 0x1000210e(%rip)                                       #  57    0x2ebab  7      
  jne .L_2eb20                                                      #  58    0x2ebb2  6      
  nop                                                               #  59    0x2ebb8  1      
  movl $0x10030cc0, %edi                                            #  60    0x2ebb9  5      
  nop                                                               #  61    0x2ebbe  1      
  nop                                                               #  62    0x2ebbf  1      
  callq .__cxa_guard_acquire                                        #  63    0x2ebc0  5      
  testl %eax, %eax                                                  #  64    0x2ebc5  2      
  jne .L_2efe0                                                      #  65    0x2ebc7  6      
  nop                                                               #  66    0x2ebcd  1      
  nop                                                               #  67    0x2ebce  1      
.L_2ec40:                                                           #        0x2ebcf  0      
  movl 0x100020f3(%rip), %eax                                       #  68    0x2ebcf  6      
  jmpq .L_2eb20                                                     #  69    0x2ebd5  5      
  nop                                                               #  70    0x2ebda  1      
  nop                                                               #  71    0x2ebdb  1      
.L_2ec60:                                                           #        0x2ebdc  0      
  movl (%rsp), %eax                                                 #  72    0x2ebdc  3      
  movl 0x8(%rsp), %edx                                              #  73    0x2ebdf  4      
  movl %ebx, %ebx                                                   #  74    0x2ebe3  2      
  movl %eax, (%r15,%rbx,1)                                          #  75    0x2ebe5  4      
  movl 0x4(%rsp), %eax                                              #  76    0x2ebe9  4      
  movl %ebx, %ebx                                                   #  77    0x2ebed  2      
  movl %eax, 0x4(%r15,%rbx,1)                                       #  78    0x2ebef  5      
  xorl %eax, %eax                                                   #  79    0x2ebf4  2      
  testl %edx, %edx                                                  #  80    0x2ebf6  2      
  cmovsl %eax, %edx                                                 #  81    0x2ebf8  3      
  nop                                                               #  82    0x2ebfb  1      
  movl %ebx, %ebx                                                   #  83    0x2ebfc  2      
  movl %edx, 0x8(%r15,%rbx,1)                                       #  84    0x2ebfe  5      
  movl 0xc(%rsp), %edx                                              #  85    0x2ec03  4      
  testl %edx, %edx                                                  #  86    0x2ec07  2      
  cmovnsl %edx, %eax                                                #  87    0x2ec09  3      
  movl %ebx, %ebx                                                   #  88    0x2ec0c  2      
  movl %eax, 0xc(%r15,%rbx,1)                                       #  89    0x2ec0e  5      
  addl $0x18, %esp                                                  #  90    0x2ec13  3      
  addq %r15, %rsp                                                   #  91    0x2ec16  3      
  movl %ebx, %eax                                                   #  92    0x2ec19  2      
  popq %rbx                                                         #  93    0x2ec1b  2      
  popq %r12                                                         #  94    0x2ec1d  3      
  popq %r11                                                         #  95    0x2ec20  3      
  andl $0xffffffe0, %r11d                                           #  96    0x2ec23  7      
  addq %r15, %r11                                                   #  97    0x2ec2a  3      
  jmpq %r11                                                         #  98    0x2ec2d  3      
  nop                                                               #  99    0x2ec30  1      
  nop                                                               #  100   0x2ec31  1      
.L_2ecc0:                                                           #        0x2ec32  0      
  cmpb $0x0, 0x10002097(%rip)                                       #  101   0x2ec32  7      
  je .L_2eec0                                                       #  102   0x2ec39  6      
  nop                                                               #  103   0x2ec3f  1      
  nop                                                               #  104   0x2ec40  1      
.L_2ece0:                                                           #        0x2ec41  0      
  movl 0x10002091(%rip), %edx                                       #  105   0x2ec41  6      
  testl %edx, %edx                                                  #  106   0x2ec47  2      
  je .L_2eb60                                                       #  107   0x2ec49  6      
  nop                                                               #  108   0x2ec4f  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v  #  109   0x2ec50  5      
  movl %eax, %eax                                                   #  110   0x2ec55  2      
  jmpq .L_2eb20                                                     #  111   0x2ec57  5      
  nop                                                               #  112   0x2ec5c  1      
  nop                                                               #  113   0x2ec5d  1      
.L_2ed20:                                                           #        0x2ec5e  0      
  movl $0x10030cb0, %edi                                            #  114   0x2ec5e  5      
  nop                                                               #  115   0x2ec63  1      
  nop                                                               #  116   0x2ec64  1      
  callq .__cxa_guard_acquire                                        #  117   0x2ec65  5      
  testl %eax, %eax                                                  #  118   0x2ec6a  2      
  je .L_2eb00                                                       #  119   0x2ec6c  6      
  nop                                                               #  120   0x2ec72  1      
  nop                                                               #  121   0x2ec73  1      
  callq ._ZN2pp6Module3GetEv                                        #  122   0x2ec74  5      
  movl %eax, %edi                                                   #  123   0x2ec79  2      
  movl $0x10020625, %esi                                            #  124   0x2ec7b  5      
  nop                                                               #  125   0x2ec80  1      
  nop                                                               #  126   0x2ec81  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  127   0x2ec82  5      
  movl $0x10030cb0, %edi                                            #  128   0x2ec87  5      
  movl %eax, 0x10002026(%rip)                                       #  129   0x2ec8c  6      
  nop                                                               #  130   0x2ec92  1      
  nop                                                               #  131   0x2ec93  1      
  callq .__cxa_guard_release                                        #  132   0x2ec94  5      
  jmpq .L_2eb00                                                     #  133   0x2ec99  5      
  nop                                                               #  134   0x2ec9e  1      
  nop                                                               #  135   0x2ec9f  1      
.L_2edc0:                                                           #        0x2eca0  0      
  movl $0x10030cb0, %edi                                            #  136   0x2eca0  5      
  nop                                                               #  137   0x2eca5  1      
  nop                                                               #  138   0x2eca6  1      
  callq .__cxa_guard_acquire                                        #  139   0x2eca7  5      
  testl %eax, %eax                                                  #  140   0x2ecac  2      
  jne .L_2ef60                                                      #  141   0x2ecae  6      
  nop                                                               #  142   0x2ecb4  1      
  nop                                                               #  143   0x2ecb5  1      
.L_2ee00:                                                           #        0x2ecb6  0      
  movl 0x10001ffc(%rip), %eax                                       #  144   0x2ecb6  6      
  jmpq .L_2eb20                                                     #  145   0x2ecbc  5      
  nop                                                               #  146   0x2ecc1  1      
  nop                                                               #  147   0x2ecc2  1      
.L_2ee20:                                                           #        0x2ecc3  0      
  movl $0x10030cc0, %edi                                            #  148   0x2ecc3  5      
  nop                                                               #  149   0x2ecc8  1      
  nop                                                               #  150   0x2ecc9  1      
  callq .__cxa_guard_acquire                                        #  151   0x2ecca  5      
  testl %eax, %eax                                                  #  152   0x2eccf  2      
  je .L_2ebe0                                                       #  153   0x2ecd1  6      
  nop                                                               #  154   0x2ecd7  1      
  nop                                                               #  155   0x2ecd8  1      
  callq ._ZN2pp6Module3GetEv                                        #  156   0x2ecd9  5      
  movl %eax, %edi                                                   #  157   0x2ecde  2      
  movl $0x10020632, %esi                                            #  158   0x2ece0  5      
  nop                                                               #  159   0x2ece5  1      
  nop                                                               #  160   0x2ece6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  161   0x2ece7  5      
  movl $0x10030cc0, %edi                                            #  162   0x2ecec  5      
  movl %eax, 0x10001fd1(%rip)                                       #  163   0x2ecf1  6      
  nop                                                               #  164   0x2ecf7  1      
  nop                                                               #  165   0x2ecf8  1      
  callq .__cxa_guard_release                                        #  166   0x2ecf9  5      
  jmpq .L_2ebe0                                                     #  167   0x2ecfe  5      
  nop                                                               #  168   0x2ed03  1      
  nop                                                               #  169   0x2ed04  1      
.L_2eec0:                                                           #        0x2ed05  0      
  movl $0x10030cd0, %edi                                            #  170   0x2ed05  5      
  nop                                                               #  171   0x2ed0a  1      
  nop                                                               #  172   0x2ed0b  1      
  callq .__cxa_guard_acquire                                        #  173   0x2ed0c  5      
  testl %eax, %eax                                                  #  174   0x2ed11  2      
  je .L_2ece0                                                       #  175   0x2ed13  6      
  nop                                                               #  176   0x2ed19  1      
  nop                                                               #  177   0x2ed1a  1      
  callq ._ZN2pp6Module3GetEv                                        #  178   0x2ed1b  5      
  movl %eax, %edi                                                   #  179   0x2ed20  2      
  movl $0x10020618, %esi                                            #  180   0x2ed22  5      
  nop                                                               #  181   0x2ed27  1      
  nop                                                               #  182   0x2ed28  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  183   0x2ed29  5      
  movl $0x10030cd0, %edi                                            #  184   0x2ed2e  5      
  movl %eax, 0x10001f9f(%rip)                                       #  185   0x2ed33  6      
  nop                                                               #  186   0x2ed39  1      
  nop                                                               #  187   0x2ed3a  1      
  callq .__cxa_guard_release                                        #  188   0x2ed3b  5      
  jmpq .L_2ece0                                                     #  189   0x2ed40  5      
  nop                                                               #  190   0x2ed45  1      
  nop                                                               #  191   0x2ed46  1      
.L_2ef60:                                                           #        0x2ed47  0      
  nop                                                               #  192   0x2ed47  1      
  nop                                                               #  193   0x2ed48  1      
  callq ._ZN2pp6Module3GetEv                                        #  194   0x2ed49  5      
  movl %eax, %edi                                                   #  195   0x2ed4e  2      
  movl $0x10020625, %esi                                            #  196   0x2ed50  5      
  nop                                                               #  197   0x2ed55  1      
  nop                                                               #  198   0x2ed56  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  199   0x2ed57  5      
  movl $0x10030cb0, %edi                                            #  200   0x2ed5c  5      
  movl %eax, 0x10001f51(%rip)                                       #  201   0x2ed61  6      
  nop                                                               #  202   0x2ed67  1      
  nop                                                               #  203   0x2ed68  1      
  callq .__cxa_guard_release                                        #  204   0x2ed69  5      
  jmpq .L_2ee00                                                     #  205   0x2ed6e  5      
  nop                                                               #  206   0x2ed73  1      
  nop                                                               #  207   0x2ed74  1      
.L_2efe0:                                                           #        0x2ed75  0      
  nop                                                               #  208   0x2ed75  1      
  nop                                                               #  209   0x2ed76  1      
  callq ._ZN2pp6Module3GetEv                                        #  210   0x2ed77  5      
  movl %eax, %edi                                                   #  211   0x2ed7c  2      
  movl $0x10020632, %esi                                            #  212   0x2ed7e  5      
  nop                                                               #  213   0x2ed83  1      
  nop                                                               #  214   0x2ed84  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  215   0x2ed85  5      
  movl $0x10030cc0, %edi                                            #  216   0x2ed8a  5      
  movl %eax, 0x10001f33(%rip)                                       #  217   0x2ed8f  6      
  nop                                                               #  218   0x2ed95  1      
  nop                                                               #  219   0x2ed96  1      
  callq .__cxa_guard_release                                        #  220   0x2ed97  5      
  jmpq .L_2ec40                                                     #  221   0x2ed9c  5      
  nop                                                               #  222   0x2eda1  1      
  nop                                                               #  223   0x2eda2  1      
.L_2f060:                                                           #        0x2eda3  0      
  movl %eax, %ebx                                                   #  224   0x2eda3  2      
  movl $0x10030cc0, %edi                                            #  225   0x2eda5  5      
  nop                                                               #  226   0x2edaa  1      
  nop                                                               #  227   0x2edab  1      
  callq .__cxa_guard_abort                                          #  228   0x2edac  5      
  movl %ebx, %edi                                                   #  229   0x2edb1  2      
  nop                                                               #  230   0x2edb3  1      
  nop                                                               #  231   0x2edb4  1      
  callq ._Unwind_Resume                                             #  232   0x2edb5  5      
.L_2f0a0:                                                           #        0x2edba  0      
  movl %eax, %ebx                                                   #  233   0x2edba  2      
  movl $0x10030cb0, %edi                                            #  234   0x2edbc  5      
  nop                                                               #  235   0x2edc1  1      
  nop                                                               #  236   0x2edc2  1      
  callq .__cxa_guard_abort                                          #  237   0x2edc3  5      
  movl %ebx, %edi                                                   #  238   0x2edc8  2      
  nop                                                               #  239   0x2edca  1      
  nop                                                               #  240   0x2edcb  1      
  callq ._Unwind_Resume                                             #  241   0x2edcc  5      
  movl %eax, %ebx                                                   #  242   0x2edd1  2      
  movl $0x10030cd0, %edi                                            #  243   0x2edd3  5      
  nop                                                               #  244   0x2edd8  1      
  nop                                                               #  245   0x2edd9  1      
  callq .__cxa_guard_abort                                          #  246   0x2edda  5      
  movl %ebx, %edi                                                   #  247   0x2eddf  2      
  nop                                                               #  248   0x2ede1  1      
  nop                                                               #  249   0x2ede2  1      
  callq ._Unwind_Resume                                             #  250   0x2ede3  5      
  jmpq .L_2f0a0                                                     #  251   0x2ede8  5      
  nop                                                               #  252   0x2eded  1      
  nop                                                               #  253   0x2edee  1      
  jmpq .L_2f060                                                     #  254   0x2edef  5      
  nop                                                               #  255   0x2edf4  1      
  nop                                                               #  256   0x2edf5  1      
  nop                                                               #  257   0x2edf6  1      
                                                                                             
.size _ZNK2pp4View7GetRectEv, .-_ZNK2pp4View7GetRectEv

