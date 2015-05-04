  .text
  .globl _ZNK2pp4View11GetCSSScaleEv
  .type _ZNK2pp4View11GetCSSScaleEv, @function

#! file-offset 0x2e700
#! rip-offset  0x2e700
#! capacity    1120 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View11GetCSSScaleEv:                    #        0x2e700  0      
  cmpb $0x0, 0x100025a9(%rip)                    #  1     0x2e700  7      
  pushq %rbx                                     #  2     0x2e707  2      
  movl %edi, %ebx                                #  3     0x2e709  2      
  je .L_2e8a0                                    #  4     0x2e70b  6      
  nop                                            #  5     0x2e711  1      
  nop                                            #  6     0x2e712  1      
.L_2e720:                                        #        0x2e713  0      
  movl 0x1000259f(%rip), %eax                    #  7     0x2e713  6      
  testq %rax, %rax                               #  8     0x2e719  3      
  jne .L_2e840                                   #  9     0x2e71c  6      
  cmpb $0x0, 0x10002597(%rip)                    #  10    0x2e722  7      
  je .L_2e7a0                                    #  11    0x2e729  6      
  nop                                            #  12    0x2e72f  1      
.L_2e740:                                        #        0x2e730  0      
  movl 0x10002592(%rip), %eax                    #  13    0x2e730  6      
  testq %rax, %rax                               #  14    0x2e736  3      
  jne .L_2e760                                   #  15    0x2e739  6      
  popq %rbx                                      #  16    0x2e73f  2      
  popq %r11                                      #  17    0x2e741  3      
  movss 0xfff1ef4(%rip), %xmm0                   #  18    0x2e744  8      
  andl $0xffffffe0, %r11d                        #  19    0x2e74c  7      
  addq %r15, %r11                                #  20    0x2e753  3      
  jmpq %r11                                      #  21    0x2e756  3      
.L_2e760:                                        #        0x2e759  0      
  cmpb $0x0, 0x10002560(%rip)                    #  22    0x2e759  7      
  je .L_2e940                                    #  23    0x2e760  6      
  nop                                            #  24    0x2e766  1      
  nop                                            #  25    0x2e767  1      
.L_2e780:                                        #        0x2e768  0      
  movl %ebx, %ebx                                #  26    0x2e768  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  27    0x2e76a  5      
  movl %eax, %eax                                #  28    0x2e76f  2      
  movl 0x1c(%r15,%rax,1), %eax                   #  29    0x2e771  5      
  popq %rbx                                      #  30    0x2e776  2      
  andl $0xffffffe0, %eax                         #  31    0x2e778  5      
  addq %r15, %rax                                #  32    0x2e77d  3      
  jmpq %rax                                      #  33    0x2e780  2      
  nop                                            #  34    0x2e782  1      
.L_2e7a0:                                        #        0x2e783  0      
  movl $0x10030cc0, %edi                         #  35    0x2e783  5      
  nop                                            #  36    0x2e788  1      
  nop                                            #  37    0x2e789  1      
  callq .__cxa_guard_acquire                     #  38    0x2e78a  5      
  testl %eax, %eax                               #  39    0x2e78f  2      
  je .L_2e740                                    #  40    0x2e791  6      
  nop                                            #  41    0x2e797  1      
  nop                                            #  42    0x2e798  1      
  callq ._ZN2pp6Module3GetEv                     #  43    0x2e799  5      
  movl %eax, %edi                                #  44    0x2e79e  2      
  movl $0x10020632, %esi                         #  45    0x2e7a0  5      
  nop                                            #  46    0x2e7a5  1      
  nop                                            #  47    0x2e7a6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  48    0x2e7a7  5      
  movl $0x10030cc0, %edi                         #  49    0x2e7ac  5      
  movl %eax, 0x10002511(%rip)                    #  50    0x2e7b1  6      
  nop                                            #  51    0x2e7b7  1      
  nop                                            #  52    0x2e7b8  1      
  callq .__cxa_guard_release                     #  53    0x2e7b9  5      
  jmpq .L_2e740                                  #  54    0x2e7be  5      
  nop                                            #  55    0x2e7c3  1      
  nop                                            #  56    0x2e7c4  1      
.L_2e840:                                        #        0x2e7c5  0      
  cmpb $0x0, 0x100024e4(%rip)                    #  57    0x2e7c5  7      
  jne .L_2e780                                   #  58    0x2e7cc  6      
  movl $0x10030cb0, %edi                         #  59    0x2e7d2  5      
  nop                                            #  60    0x2e7d7  1      
  callq .__cxa_guard_acquire                     #  61    0x2e7d8  5      
  testl %eax, %eax                               #  62    0x2e7dd  2      
  jne .L_2e9a0                                   #  63    0x2e7df  6      
  nop                                            #  64    0x2e7e5  1      
  nop                                            #  65    0x2e7e6  1      
.L_2e880:                                        #        0x2e7e7  0      
  movl 0x100024cb(%rip), %eax                    #  66    0x2e7e7  6      
  movl %ebx, %ebx                                #  67    0x2e7ed  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  68    0x2e7ef  5      
  popq %rbx                                      #  69    0x2e7f4  2      
  movl %eax, %eax                                #  70    0x2e7f6  2      
  movl 0x1c(%r15,%rax,1), %eax                   #  71    0x2e7f8  5      
  andl $0xffffffe0, %eax                         #  72    0x2e7fd  5      
  addq %r15, %rax                                #  73    0x2e802  3      
  jmpq %rax                                      #  74    0x2e805  2      
  nop                                            #  75    0x2e807  1      
.L_2e8a0:                                        #        0x2e808  0      
  movl $0x10030cb0, %edi                         #  76    0x2e808  5      
  nop                                            #  77    0x2e80d  1      
  nop                                            #  78    0x2e80e  1      
  callq .__cxa_guard_acquire                     #  79    0x2e80f  5      
  testl %eax, %eax                               #  80    0x2e814  2      
  je .L_2e720                                    #  81    0x2e816  6      
  nop                                            #  82    0x2e81c  1      
  nop                                            #  83    0x2e81d  1      
  callq ._ZN2pp6Module3GetEv                     #  84    0x2e81e  5      
  movl %eax, %edi                                #  85    0x2e823  2      
  movl $0x10020625, %esi                         #  86    0x2e825  5      
  nop                                            #  87    0x2e82a  1      
  nop                                            #  88    0x2e82b  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  89    0x2e82c  5      
  movl $0x10030cb0, %edi                         #  90    0x2e831  5      
  movl %eax, 0x1000247c(%rip)                    #  91    0x2e836  6      
  nop                                            #  92    0x2e83c  1      
  nop                                            #  93    0x2e83d  1      
  callq .__cxa_guard_release                     #  94    0x2e83e  5      
  jmpq .L_2e720                                  #  95    0x2e843  5      
  nop                                            #  96    0x2e848  1      
  nop                                            #  97    0x2e849  1      
.L_2e940:                                        #        0x2e84a  0      
  movl $0x10030cc0, %edi                         #  98    0x2e84a  5      
  nop                                            #  99    0x2e84f  1      
  nop                                            #  100   0x2e850  1      
  callq .__cxa_guard_acquire                     #  101   0x2e851  5      
  testl %eax, %eax                               #  102   0x2e856  2      
  jne .L_2ea20                                   #  103   0x2e858  6      
  nop                                            #  104   0x2e85e  1      
  nop                                            #  105   0x2e85f  1      
.L_2e980:                                        #        0x2e860  0      
  movl 0x10002462(%rip), %eax                    #  106   0x2e860  6      
  jmpq .L_2e780                                  #  107   0x2e866  5      
  nop                                            #  108   0x2e86b  1      
  nop                                            #  109   0x2e86c  1      
.L_2e9a0:                                        #        0x2e86d  0      
  nop                                            #  110   0x2e86d  1      
  nop                                            #  111   0x2e86e  1      
  callq ._ZN2pp6Module3GetEv                     #  112   0x2e86f  5      
  movl %eax, %edi                                #  113   0x2e874  2      
  movl $0x10020625, %esi                         #  114   0x2e876  5      
  nop                                            #  115   0x2e87b  1      
  nop                                            #  116   0x2e87c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  117   0x2e87d  5      
  movl $0x10030cb0, %edi                         #  118   0x2e882  5      
  movl %eax, 0x1000242b(%rip)                    #  119   0x2e887  6      
  nop                                            #  120   0x2e88d  1      
  nop                                            #  121   0x2e88e  1      
  callq .__cxa_guard_release                     #  122   0x2e88f  5      
  jmpq .L_2e880                                  #  123   0x2e894  5      
  nop                                            #  124   0x2e899  1      
  nop                                            #  125   0x2e89a  1      
.L_2ea20:                                        #        0x2e89b  0      
  nop                                            #  126   0x2e89b  1      
  nop                                            #  127   0x2e89c  1      
  callq ._ZN2pp6Module3GetEv                     #  128   0x2e89d  5      
  movl %eax, %edi                                #  129   0x2e8a2  2      
  movl $0x10020632, %esi                         #  130   0x2e8a4  5      
  nop                                            #  131   0x2e8a9  1      
  nop                                            #  132   0x2e8aa  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  133   0x2e8ab  5      
  movl $0x10030cc0, %edi                         #  134   0x2e8b0  5      
  movl %eax, 0x1000240d(%rip)                    #  135   0x2e8b5  6      
  nop                                            #  136   0x2e8bb  1      
  nop                                            #  137   0x2e8bc  1      
  callq .__cxa_guard_release                     #  138   0x2e8bd  5      
  jmpq .L_2e980                                  #  139   0x2e8c2  5      
  nop                                            #  140   0x2e8c7  1      
  nop                                            #  141   0x2e8c8  1      
.L_2eaa0:                                        #        0x2e8c9  0      
  movl %eax, %ebx                                #  142   0x2e8c9  2      
  movl $0x10030cc0, %edi                         #  143   0x2e8cb  5      
  nop                                            #  144   0x2e8d0  1      
  nop                                            #  145   0x2e8d1  1      
  callq .__cxa_guard_abort                       #  146   0x2e8d2  5      
  movl %ebx, %edi                                #  147   0x2e8d7  2      
  nop                                            #  148   0x2e8d9  1      
  nop                                            #  149   0x2e8da  1      
  callq ._Unwind_Resume                          #  150   0x2e8db  5      
  jmpq .L_2eaa0                                  #  151   0x2e8e0  5      
  nop                                            #  152   0x2e8e5  1      
  nop                                            #  153   0x2e8e6  1      
.L_2eb00:                                        #        0x2e8e7  0      
  movl %eax, %ebx                                #  154   0x2e8e7  2      
  movl $0x10030cb0, %edi                         #  155   0x2e8e9  5      
  nop                                            #  156   0x2e8ee  1      
  nop                                            #  157   0x2e8ef  1      
  callq .__cxa_guard_abort                       #  158   0x2e8f0  5      
  movl %ebx, %edi                                #  159   0x2e8f5  2      
  nop                                            #  160   0x2e8f7  1      
  nop                                            #  161   0x2e8f8  1      
  callq ._Unwind_Resume                          #  162   0x2e8f9  5      
  jmpq .L_2eb00                                  #  163   0x2e8fe  5      
  nop                                            #  164   0x2e903  1      
  nop                                            #  165   0x2e904  1      
                                                                          
.size _ZNK2pp4View11GetCSSScaleEv, .-_ZNK2pp4View11GetCSSScaleEv

