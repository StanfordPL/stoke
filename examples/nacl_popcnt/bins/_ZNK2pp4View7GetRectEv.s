  .text
  .globl _ZNK2pp4View7GetRectEv
  .type _ZNK2pp4View7GetRectEv, @function

#! file-offset 0x2eb60
#! rip-offset  0x2eb60
#! capacity    1664 bytes

# Text                                                              #  Line  RIP      Bytes  
._ZNK2pp4View7GetRectEv:                                            #        0x2eb60  0      
  pushq %r12                                                        #  1     0x2eb60  3      
  movl %esi, %r12d                                                  #  2     0x2eb63  3      
  pushq %rbx                                                        #  3     0x2eb66  2      
  movl %edi, %ebx                                                   #  4     0x2eb68  2      
  subl $0x18, %esp                                                  #  5     0x2eb6a  3      
  addq %r15, %rsp                                                   #  6     0x2eb6d  3      
  cmpb $0x0, 0x10002139(%rip)                                       #  7     0x2eb70  7      
  je .L_2eda0                                                       #  8     0x2eb77  6      
  nop                                                               #  9     0x2eb7d  1      
.L_2eb80:                                                           #        0x2eb7e  0      
  movl 0x10002134(%rip), %eax                                       #  10    0x2eb7e  6      
  testq %rax, %rax                                                  #  11    0x2eb84  3      
  je .L_2ec40                                                       #  12    0x2eb87  6      
  cmpb $0x0, 0x1000211c(%rip)                                       #  13    0x2eb8d  7      
  je .L_2ee40                                                       #  14    0x2eb94  6      
  nop                                                               #  15    0x2eb9a  1      
.L_2eba0:                                                           #        0x2eb9b  0      
  movl %eax, %eax                                                   #  16    0x2eb9b  2      
  movl 0x4(%r15,%rax,1), %eax                                       #  17    0x2eb9d  5      
  movl %esp, %esi                                                   #  18    0x2eba2  2      
  movl %r12d, %r12d                                                 #  19    0x2eba4  3      
  movl 0x4(%r15,%r12,1), %edi                                       #  20    0x2eba7  5      
  nop                                                               #  21    0x2ebac  1      
  andl $0xffffffe0, %eax                                            #  22    0x2ebad  5      
  addq %r15, %rax                                                   #  23    0x2ebb2  3      
  callq %rax                                                        #  24    0x2ebb5  2      
  testl %eax, %eax                                                  #  25    0x2ebb7  2      
  jne .L_2ece0                                                      #  26    0x2ebb9  6      
  nop                                                               #  27    0x2ebbf  1      
  nop                                                               #  28    0x2ebc0  1      
.L_2ebe0:                                                           #        0x2ebc1  0      
  movl %ebx, %ebx                                                   #  29    0x2ebc1  2      
  movl $0x0, (%r15,%rbx,1)                                          #  30    0x2ebc3  8      
  movl %ebx, %ebx                                                   #  31    0x2ebcb  2      
  movl $0x0, 0x4(%r15,%rbx,1)                                       #  32    0x2ebcd  9      
  movl %ebx, %eax                                                   #  33    0x2ebd6  2      
  nop                                                               #  34    0x2ebd8  1      
  movl %ebx, %ebx                                                   #  35    0x2ebd9  2      
  movl $0x0, 0x8(%r15,%rbx,1)                                       #  36    0x2ebdb  9      
  movl %ebx, %ebx                                                   #  37    0x2ebe4  2      
  movl $0x0, 0xc(%r15,%rbx,1)                                       #  38    0x2ebe6  9      
  addl $0x18, %esp                                                  #  39    0x2ebef  3      
  addq %r15, %rsp                                                   #  40    0x2ebf2  3      
  popq %rbx                                                         #  41    0x2ebf5  2      
  popq %r12                                                         #  42    0x2ebf7  3      
  nop                                                               #  43    0x2ebfa  1      
  popq %r11                                                         #  44    0x2ebfb  3      
  andl $0xffffffe0, %r11d                                           #  45    0x2ebfe  7      
  addq %r15, %r11                                                   #  46    0x2ec05  3      
  jmpq %r11                                                         #  47    0x2ec08  3      
  nop                                                               #  48    0x2ec0b  1      
  nop                                                               #  49    0x2ec0c  1      
.L_2ec40:                                                           #        0x2ec0d  0      
  cmpb $0x0, 0x100020ac(%rip)                                       #  50    0x2ec0d  7      
  je .L_2eea0                                                       #  51    0x2ec14  6      
  nop                                                               #  52    0x2ec1a  1      
  nop                                                               #  53    0x2ec1b  1      
.L_2ec60:                                                           #        0x2ec1c  0      
  movl 0x100020a6(%rip), %eax                                       #  54    0x2ec1c  6      
  testq %rax, %rax                                                  #  55    0x2ec22  3      
  je .L_2ed40                                                       #  56    0x2ec25  6      
  cmpb $0x0, 0x1000208e(%rip)                                       #  57    0x2ec2b  7      
  jne .L_2eba0                                                      #  58    0x2ec32  6      
  nop                                                               #  59    0x2ec38  1      
  movl $0x10030cc0, %edi                                            #  60    0x2ec39  5      
  nop                                                               #  61    0x2ec3e  1      
  nop                                                               #  62    0x2ec3f  1      
  callq .__cxa_guard_acquire                                        #  63    0x2ec40  5      
  testl %eax, %eax                                                  #  64    0x2ec45  2      
  jne .L_2f060                                                      #  65    0x2ec47  6      
  nop                                                               #  66    0x2ec4d  1      
  nop                                                               #  67    0x2ec4e  1      
.L_2ecc0:                                                           #        0x2ec4f  0      
  movl 0x10002073(%rip), %eax                                       #  68    0x2ec4f  6      
  jmpq .L_2eba0                                                     #  69    0x2ec55  5      
  nop                                                               #  70    0x2ec5a  1      
  nop                                                               #  71    0x2ec5b  1      
.L_2ece0:                                                           #        0x2ec5c  0      
  movl (%rsp), %eax                                                 #  72    0x2ec5c  3      
  movl 0x8(%rsp), %edx                                              #  73    0x2ec5f  4      
  movl %ebx, %ebx                                                   #  74    0x2ec63  2      
  movl %eax, (%r15,%rbx,1)                                          #  75    0x2ec65  4      
  movl 0x4(%rsp), %eax                                              #  76    0x2ec69  4      
  movl %ebx, %ebx                                                   #  77    0x2ec6d  2      
  movl %eax, 0x4(%r15,%rbx,1)                                       #  78    0x2ec6f  5      
  xorl %eax, %eax                                                   #  79    0x2ec74  2      
  testl %edx, %edx                                                  #  80    0x2ec76  2      
  cmovsl %eax, %edx                                                 #  81    0x2ec78  3      
  nop                                                               #  82    0x2ec7b  1      
  movl %ebx, %ebx                                                   #  83    0x2ec7c  2      
  movl %edx, 0x8(%r15,%rbx,1)                                       #  84    0x2ec7e  5      
  movl 0xc(%rsp), %edx                                              #  85    0x2ec83  4      
  testl %edx, %edx                                                  #  86    0x2ec87  2      
  cmovnsl %edx, %eax                                                #  87    0x2ec89  3      
  movl %ebx, %ebx                                                   #  88    0x2ec8c  2      
  movl %eax, 0xc(%r15,%rbx,1)                                       #  89    0x2ec8e  5      
  addl $0x18, %esp                                                  #  90    0x2ec93  3      
  addq %r15, %rsp                                                   #  91    0x2ec96  3      
  movl %ebx, %eax                                                   #  92    0x2ec99  2      
  popq %rbx                                                         #  93    0x2ec9b  2      
  popq %r12                                                         #  94    0x2ec9d  3      
  popq %r11                                                         #  95    0x2eca0  3      
  andl $0xffffffe0, %r11d                                           #  96    0x2eca3  7      
  addq %r15, %r11                                                   #  97    0x2ecaa  3      
  jmpq %r11                                                         #  98    0x2ecad  3      
  nop                                                               #  99    0x2ecb0  1      
  nop                                                               #  100   0x2ecb1  1      
.L_2ed40:                                                           #        0x2ecb2  0      
  cmpb $0x0, 0x10002017(%rip)                                       #  101   0x2ecb2  7      
  je .L_2ef40                                                       #  102   0x2ecb9  6      
  nop                                                               #  103   0x2ecbf  1      
  nop                                                               #  104   0x2ecc0  1      
.L_2ed60:                                                           #        0x2ecc1  0      
  movl 0x10002011(%rip), %edx                                       #  105   0x2ecc1  6      
  testl %edx, %edx                                                  #  106   0x2ecc7  2      
  je .L_2ebe0                                                       #  107   0x2ecc9  6      
  nop                                                               #  108   0x2eccf  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI12PPB_View_1_0EEPKT_v  #  109   0x2ecd0  5      
  movl %eax, %eax                                                   #  110   0x2ecd5  2      
  jmpq .L_2eba0                                                     #  111   0x2ecd7  5      
  nop                                                               #  112   0x2ecdc  1      
  nop                                                               #  113   0x2ecdd  1      
.L_2eda0:                                                           #        0x2ecde  0      
  movl $0x10030cb0, %edi                                            #  114   0x2ecde  5      
  nop                                                               #  115   0x2ece3  1      
  nop                                                               #  116   0x2ece4  1      
  callq .__cxa_guard_acquire                                        #  117   0x2ece5  5      
  testl %eax, %eax                                                  #  118   0x2ecea  2      
  je .L_2eb80                                                       #  119   0x2ecec  6      
  nop                                                               #  120   0x2ecf2  1      
  nop                                                               #  121   0x2ecf3  1      
  callq ._ZN2pp6Module3GetEv                                        #  122   0x2ecf4  5      
  movl %eax, %edi                                                   #  123   0x2ecf9  2      
  movl $0x10020625, %esi                                            #  124   0x2ecfb  5      
  nop                                                               #  125   0x2ed00  1      
  nop                                                               #  126   0x2ed01  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  127   0x2ed02  5      
  movl $0x10030cb0, %edi                                            #  128   0x2ed07  5      
  movl %eax, 0x10001fa6(%rip)                                       #  129   0x2ed0c  6      
  nop                                                               #  130   0x2ed12  1      
  nop                                                               #  131   0x2ed13  1      
  callq .__cxa_guard_release                                        #  132   0x2ed14  5      
  jmpq .L_2eb80                                                     #  133   0x2ed19  5      
  nop                                                               #  134   0x2ed1e  1      
  nop                                                               #  135   0x2ed1f  1      
.L_2ee40:                                                           #        0x2ed20  0      
  movl $0x10030cb0, %edi                                            #  136   0x2ed20  5      
  nop                                                               #  137   0x2ed25  1      
  nop                                                               #  138   0x2ed26  1      
  callq .__cxa_guard_acquire                                        #  139   0x2ed27  5      
  testl %eax, %eax                                                  #  140   0x2ed2c  2      
  jne .L_2efe0                                                      #  141   0x2ed2e  6      
  nop                                                               #  142   0x2ed34  1      
  nop                                                               #  143   0x2ed35  1      
.L_2ee80:                                                           #        0x2ed36  0      
  movl 0x10001f7c(%rip), %eax                                       #  144   0x2ed36  6      
  jmpq .L_2eba0                                                     #  145   0x2ed3c  5      
  nop                                                               #  146   0x2ed41  1      
  nop                                                               #  147   0x2ed42  1      
.L_2eea0:                                                           #        0x2ed43  0      
  movl $0x10030cc0, %edi                                            #  148   0x2ed43  5      
  nop                                                               #  149   0x2ed48  1      
  nop                                                               #  150   0x2ed49  1      
  callq .__cxa_guard_acquire                                        #  151   0x2ed4a  5      
  testl %eax, %eax                                                  #  152   0x2ed4f  2      
  je .L_2ec60                                                       #  153   0x2ed51  6      
  nop                                                               #  154   0x2ed57  1      
  nop                                                               #  155   0x2ed58  1      
  callq ._ZN2pp6Module3GetEv                                        #  156   0x2ed59  5      
  movl %eax, %edi                                                   #  157   0x2ed5e  2      
  movl $0x10020632, %esi                                            #  158   0x2ed60  5      
  nop                                                               #  159   0x2ed65  1      
  nop                                                               #  160   0x2ed66  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  161   0x2ed67  5      
  movl $0x10030cc0, %edi                                            #  162   0x2ed6c  5      
  movl %eax, 0x10001f51(%rip)                                       #  163   0x2ed71  6      
  nop                                                               #  164   0x2ed77  1      
  nop                                                               #  165   0x2ed78  1      
  callq .__cxa_guard_release                                        #  166   0x2ed79  5      
  jmpq .L_2ec60                                                     #  167   0x2ed7e  5      
  nop                                                               #  168   0x2ed83  1      
  nop                                                               #  169   0x2ed84  1      
.L_2ef40:                                                           #        0x2ed85  0      
  movl $0x10030cd0, %edi                                            #  170   0x2ed85  5      
  nop                                                               #  171   0x2ed8a  1      
  nop                                                               #  172   0x2ed8b  1      
  callq .__cxa_guard_acquire                                        #  173   0x2ed8c  5      
  testl %eax, %eax                                                  #  174   0x2ed91  2      
  je .L_2ed60                                                       #  175   0x2ed93  6      
  nop                                                               #  176   0x2ed99  1      
  nop                                                               #  177   0x2ed9a  1      
  callq ._ZN2pp6Module3GetEv                                        #  178   0x2ed9b  5      
  movl %eax, %edi                                                   #  179   0x2eda0  2      
  movl $0x10020618, %esi                                            #  180   0x2eda2  5      
  nop                                                               #  181   0x2eda7  1      
  nop                                                               #  182   0x2eda8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  183   0x2eda9  5      
  movl $0x10030cd0, %edi                                            #  184   0x2edae  5      
  movl %eax, 0x10001f1f(%rip)                                       #  185   0x2edb3  6      
  nop                                                               #  186   0x2edb9  1      
  nop                                                               #  187   0x2edba  1      
  callq .__cxa_guard_release                                        #  188   0x2edbb  5      
  jmpq .L_2ed60                                                     #  189   0x2edc0  5      
  nop                                                               #  190   0x2edc5  1      
  nop                                                               #  191   0x2edc6  1      
.L_2efe0:                                                           #        0x2edc7  0      
  nop                                                               #  192   0x2edc7  1      
  nop                                                               #  193   0x2edc8  1      
  callq ._ZN2pp6Module3GetEv                                        #  194   0x2edc9  5      
  movl %eax, %edi                                                   #  195   0x2edce  2      
  movl $0x10020625, %esi                                            #  196   0x2edd0  5      
  nop                                                               #  197   0x2edd5  1      
  nop                                                               #  198   0x2edd6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  199   0x2edd7  5      
  movl $0x10030cb0, %edi                                            #  200   0x2eddc  5      
  movl %eax, 0x10001ed1(%rip)                                       #  201   0x2ede1  6      
  nop                                                               #  202   0x2ede7  1      
  nop                                                               #  203   0x2ede8  1      
  callq .__cxa_guard_release                                        #  204   0x2ede9  5      
  jmpq .L_2ee80                                                     #  205   0x2edee  5      
  nop                                                               #  206   0x2edf3  1      
  nop                                                               #  207   0x2edf4  1      
.L_2f060:                                                           #        0x2edf5  0      
  nop                                                               #  208   0x2edf5  1      
  nop                                                               #  209   0x2edf6  1      
  callq ._ZN2pp6Module3GetEv                                        #  210   0x2edf7  5      
  movl %eax, %edi                                                   #  211   0x2edfc  2      
  movl $0x10020632, %esi                                            #  212   0x2edfe  5      
  nop                                                               #  213   0x2ee03  1      
  nop                                                               #  214   0x2ee04  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                     #  215   0x2ee05  5      
  movl $0x10030cc0, %edi                                            #  216   0x2ee0a  5      
  movl %eax, 0x10001eb3(%rip)                                       #  217   0x2ee0f  6      
  nop                                                               #  218   0x2ee15  1      
  nop                                                               #  219   0x2ee16  1      
  callq .__cxa_guard_release                                        #  220   0x2ee17  5      
  jmpq .L_2ecc0                                                     #  221   0x2ee1c  5      
  nop                                                               #  222   0x2ee21  1      
  nop                                                               #  223   0x2ee22  1      
.L_2f0e0:                                                           #        0x2ee23  0      
  movl %eax, %ebx                                                   #  224   0x2ee23  2      
  movl $0x10030cc0, %edi                                            #  225   0x2ee25  5      
  nop                                                               #  226   0x2ee2a  1      
  nop                                                               #  227   0x2ee2b  1      
  callq .__cxa_guard_abort                                          #  228   0x2ee2c  5      
  movl %ebx, %edi                                                   #  229   0x2ee31  2      
  nop                                                               #  230   0x2ee33  1      
  nop                                                               #  231   0x2ee34  1      
  callq ._Unwind_Resume                                             #  232   0x2ee35  5      
.L_2f120:                                                           #        0x2ee3a  0      
  movl %eax, %ebx                                                   #  233   0x2ee3a  2      
  movl $0x10030cb0, %edi                                            #  234   0x2ee3c  5      
  nop                                                               #  235   0x2ee41  1      
  nop                                                               #  236   0x2ee42  1      
  callq .__cxa_guard_abort                                          #  237   0x2ee43  5      
  movl %ebx, %edi                                                   #  238   0x2ee48  2      
  nop                                                               #  239   0x2ee4a  1      
  nop                                                               #  240   0x2ee4b  1      
  callq ._Unwind_Resume                                             #  241   0x2ee4c  5      
  movl %eax, %ebx                                                   #  242   0x2ee51  2      
  movl $0x10030cd0, %edi                                            #  243   0x2ee53  5      
  nop                                                               #  244   0x2ee58  1      
  nop                                                               #  245   0x2ee59  1      
  callq .__cxa_guard_abort                                          #  246   0x2ee5a  5      
  movl %ebx, %edi                                                   #  247   0x2ee5f  2      
  nop                                                               #  248   0x2ee61  1      
  nop                                                               #  249   0x2ee62  1      
  callq ._Unwind_Resume                                             #  250   0x2ee63  5      
  jmpq .L_2f120                                                     #  251   0x2ee68  5      
  nop                                                               #  252   0x2ee6d  1      
  nop                                                               #  253   0x2ee6e  1      
  jmpq .L_2f0e0                                                     #  254   0x2ee6f  5      
  nop                                                               #  255   0x2ee74  1      
  nop                                                               #  256   0x2ee75  1      
  nop                                                               #  257   0x2ee76  1      
                                                                                             
.size _ZNK2pp4View7GetRectEv, .-_ZNK2pp4View7GetRectEv

