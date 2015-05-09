  .text
  .globl _ZN2pp7FileRefC1ERKNS_10FileSystemEPKc
  .type _ZN2pp7FileRefC1ERKNS_10FileSystemEPKc, @function

#! file-offset 0x31cc0
#! rip-offset  0x31cc0
#! capacity    1632 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp7FileRefC1ERKNS_10FileSystemEPKc:                               #        0x31cc0  0      
  movq %rbx, -0x18(%rsp)                                               #  1     0x31cc0  5      
  movl %edi, %ebx                                                      #  2     0x31cc5  2      
  movq %r12, -0x10(%rsp)                                               #  3     0x31cc7  5      
  movq %r13, -0x8(%rsp)                                                #  4     0x31ccc  5      
  movl %ebx, %edi                                                      #  5     0x31cd1  2      
  subl $0x18, %esp                                                     #  6     0x31cd3  3      
  addq %r15, %rsp                                                      #  7     0x31cd6  3      
  movl %esi, %r12d                                                     #  8     0x31cd9  3      
  movl %edx, %r13d                                                     #  9     0x31cdc  3      
  nop                                                                  #  10    0x31cdf  1      
  nop                                                                  #  11    0x31ce0  1      
  nop                                                                  #  12    0x31ce1  1      
  callq ._ZN2pp8ResourceC2Ev                                           #  13    0x31ce2  5      
  movl %ebx, %ebx                                                      #  14    0x31ce7  2      
  movl $0x100204e8, (%r15,%rbx,1)                                      #  15    0x31ce9  8      
  cmpb $0x0, 0xfffefe8(%rip)                                           #  16    0x31cf1  7      
  je .L_31ea0                                                          #  17    0x31cf8  6      
  nop                                                                  #  18    0x31cfe  1      
.L_31d20:                                                              #        0x31cff  0      
  movl 0xfffefe3(%rip), %eax                                           #  19    0x31cff  6      
  testq %rax, %rax                                                     #  20    0x31d05  3      
  je .L_31da0                                                          #  21    0x31d08  6      
  cmpb $0x0, 0xfffefcb(%rip)                                           #  22    0x31d0e  7      
  je .L_31fe0                                                          #  23    0x31d15  6      
  nop                                                                  #  24    0x31d1b  1      
.L_31d40:                                                              #        0x31d1c  0      
  movl %eax, %eax                                                      #  25    0x31d1c  2      
  movl (%r15,%rax,1), %eax                                             #  26    0x31d1e  4      
  movl %r12d, %r12d                                                    #  27    0x31d22  3      
  movl 0x4(%r15,%r12,1), %edi                                          #  28    0x31d25  5      
  movl %r13d, %esi                                                     #  29    0x31d2a  3      
  nop                                                                  #  30    0x31d2d  1      
  andl $0xffffffe0, %eax                                               #  31    0x31d2e  5      
  addq %r15, %rax                                                      #  32    0x31d33  3      
  callq %rax                                                           #  33    0x31d36  2      
  movl %eax, %esi                                                      #  34    0x31d38  2      
  movl %ebx, %edi                                                      #  35    0x31d3a  2      
  nop                                                                  #  36    0x31d3c  1      
  nop                                                                  #  37    0x31d3d  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                     #  38    0x31d3e  5      
.L_31d80:                                                              #        0x31d43  0      
  movq (%rsp), %rbx                                                    #  39    0x31d43  4      
  movq 0x8(%rsp), %r12                                                 #  40    0x31d47  5      
  movq 0x10(%rsp), %r13                                                #  41    0x31d4c  5      
  addl $0x18, %esp                                                     #  42    0x31d51  3      
  addq %r15, %rsp                                                      #  43    0x31d54  3      
  popq %r11                                                            #  44    0x31d57  3      
  andl $0xffffffe0, %r11d                                              #  45    0x31d5a  7      
  addq %r15, %r11                                                      #  46    0x31d61  3      
  jmpq %r11                                                            #  47    0x31d64  3      
.L_31da0:                                                              #        0x31d67  0      
  cmpb $0x0, 0xfffef82(%rip)                                           #  48    0x31d67  7      
  je .L_31f40                                                          #  49    0x31d6e  6      
  nop                                                                  #  50    0x31d74  1      
  nop                                                                  #  51    0x31d75  1      
.L_31dc0:                                                              #        0x31d76  0      
  movl 0xfffef7c(%rip), %eax                                           #  52    0x31d76  6      
  testq %rax, %rax                                                     #  53    0x31d7c  3      
  je .L_31e40                                                          #  54    0x31d7f  6      
  cmpb $0x0, 0xfffef64(%rip)                                           #  55    0x31d85  7      
  jne .L_31d40                                                         #  56    0x31d8c  6      
  movl $0x10030cf0, %edi                                               #  57    0x31d92  5      
  nop                                                                  #  58    0x31d97  1      
  nop                                                                  #  59    0x31d98  1      
  nop                                                                  #  60    0x31d99  1      
  callq .__cxa_guard_acquire                                           #  61    0x31d9a  5      
  testl %eax, %eax                                                     #  62    0x31d9f  2      
  jne .L_32160                                                         #  63    0x31da1  6      
  nop                                                                  #  64    0x31da7  1      
  nop                                                                  #  65    0x31da8  1      
.L_31e20:                                                              #        0x31da9  0      
  movl 0xfffef49(%rip), %eax                                           #  66    0x31da9  6      
  jmpq .L_31d40                                                        #  67    0x31daf  5      
  nop                                                                  #  68    0x31db4  1      
  nop                                                                  #  69    0x31db5  1      
.L_31e40:                                                              #        0x31db6  0      
  cmpb $0x0, 0xfffef43(%rip)                                           #  70    0x31db6  7      
  je .L_32040                                                          #  71    0x31dbd  6      
  nop                                                                  #  72    0x31dc3  1      
  nop                                                                  #  73    0x31dc4  1      
.L_31e60:                                                              #        0x31dc5  0      
  movl 0xfffef3c(%rip), %r8d                                           #  74    0x31dc5  7      
  testl %r8d, %r8d                                                     #  75    0x31dcc  3      
  je .L_31d80                                                          #  76    0x31dcf  6      
  nop                                                                  #  77    0x31dd5  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v  #  78    0x31dd6  5      
  movl %eax, %eax                                                      #  79    0x31ddb  2      
  jmpq .L_31d40                                                        #  80    0x31ddd  5      
  nop                                                                  #  81    0x31de2  1      
  nop                                                                  #  82    0x31de3  1      
.L_31ea0:                                                              #        0x31de4  0      
  movl $0x10030ce0, %edi                                               #  83    0x31de4  5      
  nop                                                                  #  84    0x31de9  1      
  nop                                                                  #  85    0x31dea  1      
  callq .__cxa_guard_acquire                                           #  86    0x31deb  5      
  testl %eax, %eax                                                     #  87    0x31df0  2      
  je .L_31d20                                                          #  88    0x31df2  6      
  nop                                                                  #  89    0x31df8  1      
  nop                                                                  #  90    0x31df9  1      
  callq ._ZN2pp6Module3GetEv                                           #  91    0x31dfa  5      
  movl %eax, %edi                                                      #  92    0x31dff  2      
  movl $0x10020654, %esi                                               #  93    0x31e01  5      
  nop                                                                  #  94    0x31e06  1      
  nop                                                                  #  95    0x31e07  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  96    0x31e08  5      
  movl $0x10030ce0, %edi                                               #  97    0x31e0d  5      
  movl %eax, 0xfffeed0(%rip)                                           #  98    0x31e12  6      
  nop                                                                  #  99    0x31e18  1      
  nop                                                                  #  100   0x31e19  1      
  callq .__cxa_guard_release                                           #  101   0x31e1a  5      
  jmpq .L_31d20                                                        #  102   0x31e1f  5      
  nop                                                                  #  103   0x31e24  1      
  nop                                                                  #  104   0x31e25  1      
.L_31f40:                                                              #        0x31e26  0      
  movl $0x10030cf0, %edi                                               #  105   0x31e26  5      
  nop                                                                  #  106   0x31e2b  1      
  nop                                                                  #  107   0x31e2c  1      
  callq .__cxa_guard_acquire                                           #  108   0x31e2d  5      
  testl %eax, %eax                                                     #  109   0x31e32  2      
  je .L_31dc0                                                          #  110   0x31e34  6      
  nop                                                                  #  111   0x31e3a  1      
  nop                                                                  #  112   0x31e3b  1      
  callq ._ZN2pp6Module3GetEv                                           #  113   0x31e3c  5      
  movl %eax, %edi                                                      #  114   0x31e41  2      
  movl $0x10020664, %esi                                               #  115   0x31e43  5      
  nop                                                                  #  116   0x31e48  1      
  nop                                                                  #  117   0x31e49  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  118   0x31e4a  5      
  movl $0x10030cf0, %edi                                               #  119   0x31e4f  5      
  movl %eax, 0xfffee9e(%rip)                                           #  120   0x31e54  6      
  nop                                                                  #  121   0x31e5a  1      
  nop                                                                  #  122   0x31e5b  1      
  callq .__cxa_guard_release                                           #  123   0x31e5c  5      
  jmpq .L_31dc0                                                        #  124   0x31e61  5      
  nop                                                                  #  125   0x31e66  1      
  nop                                                                  #  126   0x31e67  1      
.L_31fe0:                                                              #        0x31e68  0      
  movl $0x10030ce0, %edi                                               #  127   0x31e68  5      
  nop                                                                  #  128   0x31e6d  1      
  nop                                                                  #  129   0x31e6e  1      
  callq .__cxa_guard_acquire                                           #  130   0x31e6f  5      
  testl %eax, %eax                                                     #  131   0x31e74  2      
  jne .L_320e0                                                         #  132   0x31e76  6      
  nop                                                                  #  133   0x31e7c  1      
  nop                                                                  #  134   0x31e7d  1      
.L_32020:                                                              #        0x31e7e  0      
  movl 0xfffee64(%rip), %eax                                           #  135   0x31e7e  6      
  jmpq .L_31d40                                                        #  136   0x31e84  5      
  nop                                                                  #  137   0x31e89  1      
  nop                                                                  #  138   0x31e8a  1      
.L_32040:                                                              #        0x31e8b  0      
  movl $0x10030d00, %edi                                               #  139   0x31e8b  5      
  nop                                                                  #  140   0x31e90  1      
  nop                                                                  #  141   0x31e91  1      
  callq .__cxa_guard_acquire                                           #  142   0x31e92  5      
  testl %eax, %eax                                                     #  143   0x31e97  2      
  je .L_31e60                                                          #  144   0x31e99  6      
  nop                                                                  #  145   0x31e9f  1      
  nop                                                                  #  146   0x31ea0  1      
  callq ._ZN2pp6Module3GetEv                                           #  147   0x31ea1  5      
  movl %eax, %edi                                                      #  148   0x31ea6  2      
  movl $0x10020644, %esi                                               #  149   0x31ea8  5      
  nop                                                                  #  150   0x31ead  1      
  nop                                                                  #  151   0x31eae  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  152   0x31eaf  5      
  movl $0x10030d00, %edi                                               #  153   0x31eb4  5      
  movl %eax, 0xfffee49(%rip)                                           #  154   0x31eb9  6      
  nop                                                                  #  155   0x31ebf  1      
  nop                                                                  #  156   0x31ec0  1      
  callq .__cxa_guard_release                                           #  157   0x31ec1  5      
  jmpq .L_31e60                                                        #  158   0x31ec6  5      
  nop                                                                  #  159   0x31ecb  1      
  nop                                                                  #  160   0x31ecc  1      
.L_320e0:                                                              #        0x31ecd  0      
  nop                                                                  #  161   0x31ecd  1      
  nop                                                                  #  162   0x31ece  1      
  callq ._ZN2pp6Module3GetEv                                           #  163   0x31ecf  5      
  movl %eax, %edi                                                      #  164   0x31ed4  2      
  movl $0x10020654, %esi                                               #  165   0x31ed6  5      
  nop                                                                  #  166   0x31edb  1      
  nop                                                                  #  167   0x31edc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  168   0x31edd  5      
  movl $0x10030ce0, %edi                                               #  169   0x31ee2  5      
  movl %eax, 0xfffedfb(%rip)                                           #  170   0x31ee7  6      
  nop                                                                  #  171   0x31eed  1      
  nop                                                                  #  172   0x31eee  1      
  callq .__cxa_guard_release                                           #  173   0x31eef  5      
  jmpq .L_32020                                                        #  174   0x31ef4  5      
  nop                                                                  #  175   0x31ef9  1      
  nop                                                                  #  176   0x31efa  1      
.L_32160:                                                              #        0x31efb  0      
  nop                                                                  #  177   0x31efb  1      
  nop                                                                  #  178   0x31efc  1      
  callq ._ZN2pp6Module3GetEv                                           #  179   0x31efd  5      
  movl %eax, %edi                                                      #  180   0x31f02  2      
  movl $0x10020664, %esi                                               #  181   0x31f04  5      
  nop                                                                  #  182   0x31f09  1      
  nop                                                                  #  183   0x31f0a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  184   0x31f0b  5      
  movl $0x10030cf0, %edi                                               #  185   0x31f10  5      
  movl %eax, 0xfffeddd(%rip)                                           #  186   0x31f15  6      
  nop                                                                  #  187   0x31f1b  1      
  nop                                                                  #  188   0x31f1c  1      
  callq .__cxa_guard_release                                           #  189   0x31f1d  5      
  jmpq .L_31e20                                                        #  190   0x31f22  5      
  nop                                                                  #  191   0x31f27  1      
  nop                                                                  #  192   0x31f28  1      
  movl $0x10030d00, %edi                                               #  193   0x31f29  5      
  movl %eax, %r12d                                                     #  194   0x31f2e  3      
  nop                                                                  #  195   0x31f31  1      
  nop                                                                  #  196   0x31f32  1      
  callq .__cxa_guard_abort                                             #  197   0x31f33  5      
.L_32200:                                                              #        0x31f38  0      
  movl %ebx, %edi                                                      #  198   0x31f38  2      
  nop                                                                  #  199   0x31f3a  1      
  nop                                                                  #  200   0x31f3b  1      
  callq ._ZN2pp8ResourceD2Ev                                           #  201   0x31f3c  5      
  movl %r12d, %edi                                                     #  202   0x31f41  3      
  nop                                                                  #  203   0x31f44  1      
  nop                                                                  #  204   0x31f45  1      
  callq ._Unwind_Resume                                                #  205   0x31f46  5      
.L_32240:                                                              #        0x31f4b  0      
  movl $0x10030cf0, %edi                                               #  206   0x31f4b  5      
  movl %eax, %r12d                                                     #  207   0x31f50  3      
  nop                                                                  #  208   0x31f53  1      
  nop                                                                  #  209   0x31f54  1      
  callq .__cxa_guard_abort                                             #  210   0x31f55  5      
  jmpq .L_32200                                                        #  211   0x31f5a  5      
  nop                                                                  #  212   0x31f5f  1      
  nop                                                                  #  213   0x31f60  1      
.L_32280:                                                              #        0x31f61  0      
  movl $0x10030ce0, %edi                                               #  214   0x31f61  5      
  movl %eax, %r12d                                                     #  215   0x31f66  3      
  nop                                                                  #  216   0x31f69  1      
  nop                                                                  #  217   0x31f6a  1      
  callq .__cxa_guard_abort                                             #  218   0x31f6b  5      
  jmpq .L_32200                                                        #  219   0x31f70  5      
  nop                                                                  #  220   0x31f75  1      
  nop                                                                  #  221   0x31f76  1      
  jmpq .L_32240                                                        #  222   0x31f77  5      
  nop                                                                  #  223   0x31f7c  1      
  nop                                                                  #  224   0x31f7d  1      
  movl %eax, %r12d                                                     #  225   0x31f7e  3      
  jmpq .L_32200                                                        #  226   0x31f81  5      
  nop                                                                  #  227   0x31f86  1      
  nop                                                                  #  228   0x31f87  1      
  jmpq .L_32280                                                        #  229   0x31f88  5      
  nop                                                                  #  230   0x31f8d  1      
  nop                                                                  #  231   0x31f8e  1      
  nop                                                                  #  232   0x31f8f  1      
                                                                                                
.size _ZN2pp7FileRefC1ERKNS_10FileSystemEPKc, .-_ZN2pp7FileRefC1ERKNS_10FileSystemEPKc

