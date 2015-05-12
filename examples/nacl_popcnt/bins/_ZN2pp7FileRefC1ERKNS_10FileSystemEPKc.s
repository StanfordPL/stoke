  .text
  .globl _ZN2pp7FileRefC1ERKNS_10FileSystemEPKc
  .type _ZN2pp7FileRefC1ERKNS_10FileSystemEPKc, @function

#! file-offset 0x31ce0
#! rip-offset  0x31ce0
#! capacity    1632 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp7FileRefC1ERKNS_10FileSystemEPKc:                               #        0x31ce0  0      
  movq %rbx, -0x18(%rsp)                                               #  1     0x31ce0  5      
  movl %edi, %ebx                                                      #  2     0x31ce5  2      
  movq %r12, -0x10(%rsp)                                               #  3     0x31ce7  5      
  movq %r13, -0x8(%rsp)                                                #  4     0x31cec  5      
  movl %ebx, %edi                                                      #  5     0x31cf1  2      
  subl $0x18, %esp                                                     #  6     0x31cf3  3      
  addq %r15, %rsp                                                      #  7     0x31cf6  3      
  movl %esi, %r12d                                                     #  8     0x31cf9  3      
  movl %edx, %r13d                                                     #  9     0x31cfc  3      
  nop                                                                  #  10    0x31cff  1      
  nop                                                                  #  11    0x31d00  1      
  nop                                                                  #  12    0x31d01  1      
  callq ._ZN2pp8ResourceC2Ev                                           #  13    0x31d02  5      
  movl %ebx, %ebx                                                      #  14    0x31d07  2      
  movl $0x100204e8, (%r15,%rbx,1)                                      #  15    0x31d09  8      
  cmpb $0x0, 0xfffefc8(%rip)                                           #  16    0x31d11  7      
  je .L_31ec0                                                          #  17    0x31d18  6      
  nop                                                                  #  18    0x31d1e  1      
.L_31d40:                                                              #        0x31d1f  0      
  movl 0xfffefc3(%rip), %eax                                           #  19    0x31d1f  6      
  testq %rax, %rax                                                     #  20    0x31d25  3      
  je .L_31dc0                                                          #  21    0x31d28  6      
  cmpb $0x0, 0xfffefab(%rip)                                           #  22    0x31d2e  7      
  je .L_32000                                                          #  23    0x31d35  6      
  nop                                                                  #  24    0x31d3b  1      
.L_31d60:                                                              #        0x31d3c  0      
  movl %eax, %eax                                                      #  25    0x31d3c  2      
  movl (%r15,%rax,1), %eax                                             #  26    0x31d3e  4      
  movl %r12d, %r12d                                                    #  27    0x31d42  3      
  movl 0x4(%r15,%r12,1), %edi                                          #  28    0x31d45  5      
  movl %r13d, %esi                                                     #  29    0x31d4a  3      
  nop                                                                  #  30    0x31d4d  1      
  andl $0xffffffe0, %eax                                               #  31    0x31d4e  5      
  addq %r15, %rax                                                      #  32    0x31d53  3      
  callq %rax                                                           #  33    0x31d56  2      
  movl %eax, %esi                                                      #  34    0x31d58  2      
  movl %ebx, %edi                                                      #  35    0x31d5a  2      
  nop                                                                  #  36    0x31d5c  1      
  nop                                                                  #  37    0x31d5d  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                     #  38    0x31d5e  5      
.L_31da0:                                                              #        0x31d63  0      
  movq (%rsp), %rbx                                                    #  39    0x31d63  4      
  movq 0x8(%rsp), %r12                                                 #  40    0x31d67  5      
  movq 0x10(%rsp), %r13                                                #  41    0x31d6c  5      
  addl $0x18, %esp                                                     #  42    0x31d71  3      
  addq %r15, %rsp                                                      #  43    0x31d74  3      
  popq %r11                                                            #  44    0x31d77  3      
  andl $0xffffffe0, %r11d                                              #  45    0x31d7a  7      
  addq %r15, %r11                                                      #  46    0x31d81  3      
  jmpq %r11                                                            #  47    0x31d84  3      
.L_31dc0:                                                              #        0x31d87  0      
  cmpb $0x0, 0xfffef62(%rip)                                           #  48    0x31d87  7      
  je .L_31f60                                                          #  49    0x31d8e  6      
  nop                                                                  #  50    0x31d94  1      
  nop                                                                  #  51    0x31d95  1      
.L_31de0:                                                              #        0x31d96  0      
  movl 0xfffef5c(%rip), %eax                                           #  52    0x31d96  6      
  testq %rax, %rax                                                     #  53    0x31d9c  3      
  je .L_31e60                                                          #  54    0x31d9f  6      
  cmpb $0x0, 0xfffef44(%rip)                                           #  55    0x31da5  7      
  jne .L_31d60                                                         #  56    0x31dac  6      
  movl $0x10030cf0, %edi                                               #  57    0x31db2  5      
  nop                                                                  #  58    0x31db7  1      
  nop                                                                  #  59    0x31db8  1      
  nop                                                                  #  60    0x31db9  1      
  callq .__cxa_guard_acquire                                           #  61    0x31dba  5      
  testl %eax, %eax                                                     #  62    0x31dbf  2      
  jne .L_32180                                                         #  63    0x31dc1  6      
  nop                                                                  #  64    0x31dc7  1      
  nop                                                                  #  65    0x31dc8  1      
.L_31e40:                                                              #        0x31dc9  0      
  movl 0xfffef29(%rip), %eax                                           #  66    0x31dc9  6      
  jmpq .L_31d60                                                        #  67    0x31dcf  5      
  nop                                                                  #  68    0x31dd4  1      
  nop                                                                  #  69    0x31dd5  1      
.L_31e60:                                                              #        0x31dd6  0      
  cmpb $0x0, 0xfffef23(%rip)                                           #  70    0x31dd6  7      
  je .L_32060                                                          #  71    0x31ddd  6      
  nop                                                                  #  72    0x31de3  1      
  nop                                                                  #  73    0x31de4  1      
.L_31e80:                                                              #        0x31de5  0      
  movl 0xfffef1c(%rip), %r8d                                           #  74    0x31de5  7      
  testl %r8d, %r8d                                                     #  75    0x31dec  3      
  je .L_31da0                                                          #  76    0x31def  6      
  nop                                                                  #  77    0x31df5  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v  #  78    0x31df6  5      
  movl %eax, %eax                                                      #  79    0x31dfb  2      
  jmpq .L_31d60                                                        #  80    0x31dfd  5      
  nop                                                                  #  81    0x31e02  1      
  nop                                                                  #  82    0x31e03  1      
.L_31ec0:                                                              #        0x31e04  0      
  movl $0x10030ce0, %edi                                               #  83    0x31e04  5      
  nop                                                                  #  84    0x31e09  1      
  nop                                                                  #  85    0x31e0a  1      
  callq .__cxa_guard_acquire                                           #  86    0x31e0b  5      
  testl %eax, %eax                                                     #  87    0x31e10  2      
  je .L_31d40                                                          #  88    0x31e12  6      
  nop                                                                  #  89    0x31e18  1      
  nop                                                                  #  90    0x31e19  1      
  callq ._ZN2pp6Module3GetEv                                           #  91    0x31e1a  5      
  movl %eax, %edi                                                      #  92    0x31e1f  2      
  movl $0x10020654, %esi                                               #  93    0x31e21  5      
  nop                                                                  #  94    0x31e26  1      
  nop                                                                  #  95    0x31e27  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  96    0x31e28  5      
  movl $0x10030ce0, %edi                                               #  97    0x31e2d  5      
  movl %eax, 0xfffeeb0(%rip)                                           #  98    0x31e32  6      
  nop                                                                  #  99    0x31e38  1      
  nop                                                                  #  100   0x31e39  1      
  callq .__cxa_guard_release                                           #  101   0x31e3a  5      
  jmpq .L_31d40                                                        #  102   0x31e3f  5      
  nop                                                                  #  103   0x31e44  1      
  nop                                                                  #  104   0x31e45  1      
.L_31f60:                                                              #        0x31e46  0      
  movl $0x10030cf0, %edi                                               #  105   0x31e46  5      
  nop                                                                  #  106   0x31e4b  1      
  nop                                                                  #  107   0x31e4c  1      
  callq .__cxa_guard_acquire                                           #  108   0x31e4d  5      
  testl %eax, %eax                                                     #  109   0x31e52  2      
  je .L_31de0                                                          #  110   0x31e54  6      
  nop                                                                  #  111   0x31e5a  1      
  nop                                                                  #  112   0x31e5b  1      
  callq ._ZN2pp6Module3GetEv                                           #  113   0x31e5c  5      
  movl %eax, %edi                                                      #  114   0x31e61  2      
  movl $0x10020664, %esi                                               #  115   0x31e63  5      
  nop                                                                  #  116   0x31e68  1      
  nop                                                                  #  117   0x31e69  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  118   0x31e6a  5      
  movl $0x10030cf0, %edi                                               #  119   0x31e6f  5      
  movl %eax, 0xfffee7e(%rip)                                           #  120   0x31e74  6      
  nop                                                                  #  121   0x31e7a  1      
  nop                                                                  #  122   0x31e7b  1      
  callq .__cxa_guard_release                                           #  123   0x31e7c  5      
  jmpq .L_31de0                                                        #  124   0x31e81  5      
  nop                                                                  #  125   0x31e86  1      
  nop                                                                  #  126   0x31e87  1      
.L_32000:                                                              #        0x31e88  0      
  movl $0x10030ce0, %edi                                               #  127   0x31e88  5      
  nop                                                                  #  128   0x31e8d  1      
  nop                                                                  #  129   0x31e8e  1      
  callq .__cxa_guard_acquire                                           #  130   0x31e8f  5      
  testl %eax, %eax                                                     #  131   0x31e94  2      
  jne .L_32100                                                         #  132   0x31e96  6      
  nop                                                                  #  133   0x31e9c  1      
  nop                                                                  #  134   0x31e9d  1      
.L_32040:                                                              #        0x31e9e  0      
  movl 0xfffee44(%rip), %eax                                           #  135   0x31e9e  6      
  jmpq .L_31d60                                                        #  136   0x31ea4  5      
  nop                                                                  #  137   0x31ea9  1      
  nop                                                                  #  138   0x31eaa  1      
.L_32060:                                                              #        0x31eab  0      
  movl $0x10030d00, %edi                                               #  139   0x31eab  5      
  nop                                                                  #  140   0x31eb0  1      
  nop                                                                  #  141   0x31eb1  1      
  callq .__cxa_guard_acquire                                           #  142   0x31eb2  5      
  testl %eax, %eax                                                     #  143   0x31eb7  2      
  je .L_31e80                                                          #  144   0x31eb9  6      
  nop                                                                  #  145   0x31ebf  1      
  nop                                                                  #  146   0x31ec0  1      
  callq ._ZN2pp6Module3GetEv                                           #  147   0x31ec1  5      
  movl %eax, %edi                                                      #  148   0x31ec6  2      
  movl $0x10020644, %esi                                               #  149   0x31ec8  5      
  nop                                                                  #  150   0x31ecd  1      
  nop                                                                  #  151   0x31ece  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  152   0x31ecf  5      
  movl $0x10030d00, %edi                                               #  153   0x31ed4  5      
  movl %eax, 0xfffee29(%rip)                                           #  154   0x31ed9  6      
  nop                                                                  #  155   0x31edf  1      
  nop                                                                  #  156   0x31ee0  1      
  callq .__cxa_guard_release                                           #  157   0x31ee1  5      
  jmpq .L_31e80                                                        #  158   0x31ee6  5      
  nop                                                                  #  159   0x31eeb  1      
  nop                                                                  #  160   0x31eec  1      
.L_32100:                                                              #        0x31eed  0      
  nop                                                                  #  161   0x31eed  1      
  nop                                                                  #  162   0x31eee  1      
  callq ._ZN2pp6Module3GetEv                                           #  163   0x31eef  5      
  movl %eax, %edi                                                      #  164   0x31ef4  2      
  movl $0x10020654, %esi                                               #  165   0x31ef6  5      
  nop                                                                  #  166   0x31efb  1      
  nop                                                                  #  167   0x31efc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  168   0x31efd  5      
  movl $0x10030ce0, %edi                                               #  169   0x31f02  5      
  movl %eax, 0xfffeddb(%rip)                                           #  170   0x31f07  6      
  nop                                                                  #  171   0x31f0d  1      
  nop                                                                  #  172   0x31f0e  1      
  callq .__cxa_guard_release                                           #  173   0x31f0f  5      
  jmpq .L_32040                                                        #  174   0x31f14  5      
  nop                                                                  #  175   0x31f19  1      
  nop                                                                  #  176   0x31f1a  1      
.L_32180:                                                              #        0x31f1b  0      
  nop                                                                  #  177   0x31f1b  1      
  nop                                                                  #  178   0x31f1c  1      
  callq ._ZN2pp6Module3GetEv                                           #  179   0x31f1d  5      
  movl %eax, %edi                                                      #  180   0x31f22  2      
  movl $0x10020664, %esi                                               #  181   0x31f24  5      
  nop                                                                  #  182   0x31f29  1      
  nop                                                                  #  183   0x31f2a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  184   0x31f2b  5      
  movl $0x10030cf0, %edi                                               #  185   0x31f30  5      
  movl %eax, 0xfffedbd(%rip)                                           #  186   0x31f35  6      
  nop                                                                  #  187   0x31f3b  1      
  nop                                                                  #  188   0x31f3c  1      
  callq .__cxa_guard_release                                           #  189   0x31f3d  5      
  jmpq .L_31e40                                                        #  190   0x31f42  5      
  nop                                                                  #  191   0x31f47  1      
  nop                                                                  #  192   0x31f48  1      
  movl $0x10030d00, %edi                                               #  193   0x31f49  5      
  movl %eax, %r12d                                                     #  194   0x31f4e  3      
  nop                                                                  #  195   0x31f51  1      
  nop                                                                  #  196   0x31f52  1      
  callq .__cxa_guard_abort                                             #  197   0x31f53  5      
.L_32220:                                                              #        0x31f58  0      
  movl %ebx, %edi                                                      #  198   0x31f58  2      
  nop                                                                  #  199   0x31f5a  1      
  nop                                                                  #  200   0x31f5b  1      
  callq ._ZN2pp8ResourceD2Ev                                           #  201   0x31f5c  5      
  movl %r12d, %edi                                                     #  202   0x31f61  3      
  nop                                                                  #  203   0x31f64  1      
  nop                                                                  #  204   0x31f65  1      
  callq ._Unwind_Resume                                                #  205   0x31f66  5      
.L_32260:                                                              #        0x31f6b  0      
  movl $0x10030cf0, %edi                                               #  206   0x31f6b  5      
  movl %eax, %r12d                                                     #  207   0x31f70  3      
  nop                                                                  #  208   0x31f73  1      
  nop                                                                  #  209   0x31f74  1      
  callq .__cxa_guard_abort                                             #  210   0x31f75  5      
  jmpq .L_32220                                                        #  211   0x31f7a  5      
  nop                                                                  #  212   0x31f7f  1      
  nop                                                                  #  213   0x31f80  1      
.L_322a0:                                                              #        0x31f81  0      
  movl $0x10030ce0, %edi                                               #  214   0x31f81  5      
  movl %eax, %r12d                                                     #  215   0x31f86  3      
  nop                                                                  #  216   0x31f89  1      
  nop                                                                  #  217   0x31f8a  1      
  callq .__cxa_guard_abort                                             #  218   0x31f8b  5      
  jmpq .L_32220                                                        #  219   0x31f90  5      
  nop                                                                  #  220   0x31f95  1      
  nop                                                                  #  221   0x31f96  1      
  jmpq .L_32260                                                        #  222   0x31f97  5      
  nop                                                                  #  223   0x31f9c  1      
  nop                                                                  #  224   0x31f9d  1      
  movl %eax, %r12d                                                     #  225   0x31f9e  3      
  jmpq .L_32220                                                        #  226   0x31fa1  5      
  nop                                                                  #  227   0x31fa6  1      
  nop                                                                  #  228   0x31fa7  1      
  jmpq .L_322a0                                                        #  229   0x31fa8  5      
  nop                                                                  #  230   0x31fad  1      
  nop                                                                  #  231   0x31fae  1      
  nop                                                                  #  232   0x31faf  1      
                                                                                                
.size _ZN2pp7FileRefC1ERKNS_10FileSystemEPKc, .-_ZN2pp7FileRefC1ERKNS_10FileSystemEPKc

