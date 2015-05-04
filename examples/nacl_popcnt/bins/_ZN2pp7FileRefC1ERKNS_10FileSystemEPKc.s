  .text
  .globl _ZN2pp7FileRefC1ERKNS_10FileSystemEPKc
  .type _ZN2pp7FileRefC1ERKNS_10FileSystemEPKc, @function

#! file-offset 0x31d60
#! rip-offset  0x31d60
#! capacity    1632 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp7FileRefC1ERKNS_10FileSystemEPKc:                               #        0x31d60  0      
  movq %rbx, -0x18(%rsp)                                               #  1     0x31d60  5      
  movl %edi, %ebx                                                      #  2     0x31d65  2      
  movq %r12, -0x10(%rsp)                                               #  3     0x31d67  5      
  movq %r13, -0x8(%rsp)                                                #  4     0x31d6c  5      
  movl %ebx, %edi                                                      #  5     0x31d71  2      
  subl $0x18, %esp                                                     #  6     0x31d73  3      
  addq %r15, %rsp                                                      #  7     0x31d76  3      
  movl %esi, %r12d                                                     #  8     0x31d79  3      
  movl %edx, %r13d                                                     #  9     0x31d7c  3      
  nop                                                                  #  10    0x31d7f  1      
  nop                                                                  #  11    0x31d80  1      
  nop                                                                  #  12    0x31d81  1      
  callq ._ZN2pp8ResourceC2Ev                                           #  13    0x31d82  5      
  movl %ebx, %ebx                                                      #  14    0x31d87  2      
  movl $0x100204e8, (%r15,%rbx,1)                                      #  15    0x31d89  8      
  cmpb $0x0, 0xfffef48(%rip)                                           #  16    0x31d91  7      
  je .L_31f40                                                          #  17    0x31d98  6      
  nop                                                                  #  18    0x31d9e  1      
.L_31dc0:                                                              #        0x31d9f  0      
  movl 0xfffef43(%rip), %eax                                           #  19    0x31d9f  6      
  testq %rax, %rax                                                     #  20    0x31da5  3      
  je .L_31e40                                                          #  21    0x31da8  6      
  cmpb $0x0, 0xfffef2b(%rip)                                           #  22    0x31dae  7      
  je .L_32080                                                          #  23    0x31db5  6      
  nop                                                                  #  24    0x31dbb  1      
.L_31de0:                                                              #        0x31dbc  0      
  movl %eax, %eax                                                      #  25    0x31dbc  2      
  movl (%r15,%rax,1), %eax                                             #  26    0x31dbe  4      
  movl %r12d, %r12d                                                    #  27    0x31dc2  3      
  movl 0x4(%r15,%r12,1), %edi                                          #  28    0x31dc5  5      
  movl %r13d, %esi                                                     #  29    0x31dca  3      
  nop                                                                  #  30    0x31dcd  1      
  andl $0xffffffe0, %eax                                               #  31    0x31dce  5      
  addq %r15, %rax                                                      #  32    0x31dd3  3      
  callq %rax                                                           #  33    0x31dd6  2      
  movl %eax, %esi                                                      #  34    0x31dd8  2      
  movl %ebx, %edi                                                      #  35    0x31dda  2      
  nop                                                                  #  36    0x31ddc  1      
  nop                                                                  #  37    0x31ddd  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                     #  38    0x31dde  5      
.L_31e20:                                                              #        0x31de3  0      
  movq (%rsp), %rbx                                                    #  39    0x31de3  4      
  movq 0x8(%rsp), %r12                                                 #  40    0x31de7  5      
  movq 0x10(%rsp), %r13                                                #  41    0x31dec  5      
  addl $0x18, %esp                                                     #  42    0x31df1  3      
  addq %r15, %rsp                                                      #  43    0x31df4  3      
  popq %r11                                                            #  44    0x31df7  3      
  andl $0xffffffe0, %r11d                                              #  45    0x31dfa  7      
  addq %r15, %r11                                                      #  46    0x31e01  3      
  jmpq %r11                                                            #  47    0x31e04  3      
.L_31e40:                                                              #        0x31e07  0      
  cmpb $0x0, 0xfffeee2(%rip)                                           #  48    0x31e07  7      
  je .L_31fe0                                                          #  49    0x31e0e  6      
  nop                                                                  #  50    0x31e14  1      
  nop                                                                  #  51    0x31e15  1      
.L_31e60:                                                              #        0x31e16  0      
  movl 0xfffeedc(%rip), %eax                                           #  52    0x31e16  6      
  testq %rax, %rax                                                     #  53    0x31e1c  3      
  je .L_31ee0                                                          #  54    0x31e1f  6      
  cmpb $0x0, 0xfffeec4(%rip)                                           #  55    0x31e25  7      
  jne .L_31de0                                                         #  56    0x31e2c  6      
  movl $0x10030cf0, %edi                                               #  57    0x31e32  5      
  nop                                                                  #  58    0x31e37  1      
  nop                                                                  #  59    0x31e38  1      
  nop                                                                  #  60    0x31e39  1      
  callq .__cxa_guard_acquire                                           #  61    0x31e3a  5      
  testl %eax, %eax                                                     #  62    0x31e3f  2      
  jne .L_32200                                                         #  63    0x31e41  6      
  nop                                                                  #  64    0x31e47  1      
  nop                                                                  #  65    0x31e48  1      
.L_31ec0:                                                              #        0x31e49  0      
  movl 0xfffeea9(%rip), %eax                                           #  66    0x31e49  6      
  jmpq .L_31de0                                                        #  67    0x31e4f  5      
  nop                                                                  #  68    0x31e54  1      
  nop                                                                  #  69    0x31e55  1      
.L_31ee0:                                                              #        0x31e56  0      
  cmpb $0x0, 0xfffeea3(%rip)                                           #  70    0x31e56  7      
  je .L_320e0                                                          #  71    0x31e5d  6      
  nop                                                                  #  72    0x31e63  1      
  nop                                                                  #  73    0x31e64  1      
.L_31f00:                                                              #        0x31e65  0      
  movl 0xfffee9c(%rip), %r8d                                           #  74    0x31e65  7      
  testl %r8d, %r8d                                                     #  75    0x31e6c  3      
  je .L_31e20                                                          #  76    0x31e6f  6      
  nop                                                                  #  77    0x31e75  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v  #  78    0x31e76  5      
  movl %eax, %eax                                                      #  79    0x31e7b  2      
  jmpq .L_31de0                                                        #  80    0x31e7d  5      
  nop                                                                  #  81    0x31e82  1      
  nop                                                                  #  82    0x31e83  1      
.L_31f40:                                                              #        0x31e84  0      
  movl $0x10030ce0, %edi                                               #  83    0x31e84  5      
  nop                                                                  #  84    0x31e89  1      
  nop                                                                  #  85    0x31e8a  1      
  callq .__cxa_guard_acquire                                           #  86    0x31e8b  5      
  testl %eax, %eax                                                     #  87    0x31e90  2      
  je .L_31dc0                                                          #  88    0x31e92  6      
  nop                                                                  #  89    0x31e98  1      
  nop                                                                  #  90    0x31e99  1      
  callq ._ZN2pp6Module3GetEv                                           #  91    0x31e9a  5      
  movl %eax, %edi                                                      #  92    0x31e9f  2      
  movl $0x10020654, %esi                                               #  93    0x31ea1  5      
  nop                                                                  #  94    0x31ea6  1      
  nop                                                                  #  95    0x31ea7  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  96    0x31ea8  5      
  movl $0x10030ce0, %edi                                               #  97    0x31ead  5      
  movl %eax, 0xfffee30(%rip)                                           #  98    0x31eb2  6      
  nop                                                                  #  99    0x31eb8  1      
  nop                                                                  #  100   0x31eb9  1      
  callq .__cxa_guard_release                                           #  101   0x31eba  5      
  jmpq .L_31dc0                                                        #  102   0x31ebf  5      
  nop                                                                  #  103   0x31ec4  1      
  nop                                                                  #  104   0x31ec5  1      
.L_31fe0:                                                              #        0x31ec6  0      
  movl $0x10030cf0, %edi                                               #  105   0x31ec6  5      
  nop                                                                  #  106   0x31ecb  1      
  nop                                                                  #  107   0x31ecc  1      
  callq .__cxa_guard_acquire                                           #  108   0x31ecd  5      
  testl %eax, %eax                                                     #  109   0x31ed2  2      
  je .L_31e60                                                          #  110   0x31ed4  6      
  nop                                                                  #  111   0x31eda  1      
  nop                                                                  #  112   0x31edb  1      
  callq ._ZN2pp6Module3GetEv                                           #  113   0x31edc  5      
  movl %eax, %edi                                                      #  114   0x31ee1  2      
  movl $0x10020664, %esi                                               #  115   0x31ee3  5      
  nop                                                                  #  116   0x31ee8  1      
  nop                                                                  #  117   0x31ee9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  118   0x31eea  5      
  movl $0x10030cf0, %edi                                               #  119   0x31eef  5      
  movl %eax, 0xfffedfe(%rip)                                           #  120   0x31ef4  6      
  nop                                                                  #  121   0x31efa  1      
  nop                                                                  #  122   0x31efb  1      
  callq .__cxa_guard_release                                           #  123   0x31efc  5      
  jmpq .L_31e60                                                        #  124   0x31f01  5      
  nop                                                                  #  125   0x31f06  1      
  nop                                                                  #  126   0x31f07  1      
.L_32080:                                                              #        0x31f08  0      
  movl $0x10030ce0, %edi                                               #  127   0x31f08  5      
  nop                                                                  #  128   0x31f0d  1      
  nop                                                                  #  129   0x31f0e  1      
  callq .__cxa_guard_acquire                                           #  130   0x31f0f  5      
  testl %eax, %eax                                                     #  131   0x31f14  2      
  jne .L_32180                                                         #  132   0x31f16  6      
  nop                                                                  #  133   0x31f1c  1      
  nop                                                                  #  134   0x31f1d  1      
.L_320c0:                                                              #        0x31f1e  0      
  movl 0xfffedc4(%rip), %eax                                           #  135   0x31f1e  6      
  jmpq .L_31de0                                                        #  136   0x31f24  5      
  nop                                                                  #  137   0x31f29  1      
  nop                                                                  #  138   0x31f2a  1      
.L_320e0:                                                              #        0x31f2b  0      
  movl $0x10030d00, %edi                                               #  139   0x31f2b  5      
  nop                                                                  #  140   0x31f30  1      
  nop                                                                  #  141   0x31f31  1      
  callq .__cxa_guard_acquire                                           #  142   0x31f32  5      
  testl %eax, %eax                                                     #  143   0x31f37  2      
  je .L_31f00                                                          #  144   0x31f39  6      
  nop                                                                  #  145   0x31f3f  1      
  nop                                                                  #  146   0x31f40  1      
  callq ._ZN2pp6Module3GetEv                                           #  147   0x31f41  5      
  movl %eax, %edi                                                      #  148   0x31f46  2      
  movl $0x10020644, %esi                                               #  149   0x31f48  5      
  nop                                                                  #  150   0x31f4d  1      
  nop                                                                  #  151   0x31f4e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  152   0x31f4f  5      
  movl $0x10030d00, %edi                                               #  153   0x31f54  5      
  movl %eax, 0xfffeda9(%rip)                                           #  154   0x31f59  6      
  nop                                                                  #  155   0x31f5f  1      
  nop                                                                  #  156   0x31f60  1      
  callq .__cxa_guard_release                                           #  157   0x31f61  5      
  jmpq .L_31f00                                                        #  158   0x31f66  5      
  nop                                                                  #  159   0x31f6b  1      
  nop                                                                  #  160   0x31f6c  1      
.L_32180:                                                              #        0x31f6d  0      
  nop                                                                  #  161   0x31f6d  1      
  nop                                                                  #  162   0x31f6e  1      
  callq ._ZN2pp6Module3GetEv                                           #  163   0x31f6f  5      
  movl %eax, %edi                                                      #  164   0x31f74  2      
  movl $0x10020654, %esi                                               #  165   0x31f76  5      
  nop                                                                  #  166   0x31f7b  1      
  nop                                                                  #  167   0x31f7c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  168   0x31f7d  5      
  movl $0x10030ce0, %edi                                               #  169   0x31f82  5      
  movl %eax, 0xfffed5b(%rip)                                           #  170   0x31f87  6      
  nop                                                                  #  171   0x31f8d  1      
  nop                                                                  #  172   0x31f8e  1      
  callq .__cxa_guard_release                                           #  173   0x31f8f  5      
  jmpq .L_320c0                                                        #  174   0x31f94  5      
  nop                                                                  #  175   0x31f99  1      
  nop                                                                  #  176   0x31f9a  1      
.L_32200:                                                              #        0x31f9b  0      
  nop                                                                  #  177   0x31f9b  1      
  nop                                                                  #  178   0x31f9c  1      
  callq ._ZN2pp6Module3GetEv                                           #  179   0x31f9d  5      
  movl %eax, %edi                                                      #  180   0x31fa2  2      
  movl $0x10020664, %esi                                               #  181   0x31fa4  5      
  nop                                                                  #  182   0x31fa9  1      
  nop                                                                  #  183   0x31faa  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  184   0x31fab  5      
  movl $0x10030cf0, %edi                                               #  185   0x31fb0  5      
  movl %eax, 0xfffed3d(%rip)                                           #  186   0x31fb5  6      
  nop                                                                  #  187   0x31fbb  1      
  nop                                                                  #  188   0x31fbc  1      
  callq .__cxa_guard_release                                           #  189   0x31fbd  5      
  jmpq .L_31ec0                                                        #  190   0x31fc2  5      
  nop                                                                  #  191   0x31fc7  1      
  nop                                                                  #  192   0x31fc8  1      
  movl $0x10030d00, %edi                                               #  193   0x31fc9  5      
  movl %eax, %r12d                                                     #  194   0x31fce  3      
  nop                                                                  #  195   0x31fd1  1      
  nop                                                                  #  196   0x31fd2  1      
  callq .__cxa_guard_abort                                             #  197   0x31fd3  5      
.L_322a0:                                                              #        0x31fd8  0      
  movl %ebx, %edi                                                      #  198   0x31fd8  2      
  nop                                                                  #  199   0x31fda  1      
  nop                                                                  #  200   0x31fdb  1      
  callq ._ZN2pp8ResourceD2Ev                                           #  201   0x31fdc  5      
  movl %r12d, %edi                                                     #  202   0x31fe1  3      
  nop                                                                  #  203   0x31fe4  1      
  nop                                                                  #  204   0x31fe5  1      
  callq ._Unwind_Resume                                                #  205   0x31fe6  5      
.L_322e0:                                                              #        0x31feb  0      
  movl $0x10030cf0, %edi                                               #  206   0x31feb  5      
  movl %eax, %r12d                                                     #  207   0x31ff0  3      
  nop                                                                  #  208   0x31ff3  1      
  nop                                                                  #  209   0x31ff4  1      
  callq .__cxa_guard_abort                                             #  210   0x31ff5  5      
  jmpq .L_322a0                                                        #  211   0x31ffa  5      
  nop                                                                  #  212   0x31fff  1      
  nop                                                                  #  213   0x32000  1      
.L_32320:                                                              #        0x32001  0      
  movl $0x10030ce0, %edi                                               #  214   0x32001  5      
  movl %eax, %r12d                                                     #  215   0x32006  3      
  nop                                                                  #  216   0x32009  1      
  nop                                                                  #  217   0x3200a  1      
  callq .__cxa_guard_abort                                             #  218   0x3200b  5      
  jmpq .L_322a0                                                        #  219   0x32010  5      
  nop                                                                  #  220   0x32015  1      
  nop                                                                  #  221   0x32016  1      
  jmpq .L_322e0                                                        #  222   0x32017  5      
  nop                                                                  #  223   0x3201c  1      
  nop                                                                  #  224   0x3201d  1      
  movl %eax, %r12d                                                     #  225   0x3201e  3      
  jmpq .L_322a0                                                        #  226   0x32021  5      
  nop                                                                  #  227   0x32026  1      
  nop                                                                  #  228   0x32027  1      
  jmpq .L_32320                                                        #  229   0x32028  5      
  nop                                                                  #  230   0x3202d  1      
  nop                                                                  #  231   0x3202e  1      
  nop                                                                  #  232   0x3202f  1      
                                                                                                
.size _ZN2pp7FileRefC1ERKNS_10FileSystemEPKc, .-_ZN2pp7FileRefC1ERKNS_10FileSystemEPKc

