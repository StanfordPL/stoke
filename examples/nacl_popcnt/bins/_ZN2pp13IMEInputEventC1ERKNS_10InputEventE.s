  .text
  .globl _ZN2pp13IMEInputEventC1ERKNS_10InputEventE
  .type _ZN2pp13IMEInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x3dc60
#! rip-offset  0x3dc60
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp13IMEInputEventC1ERKNS_10InputEventE:        #        0x3dc60  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x3dc60  5      
  movl %edi, %ebx                                   #  2     0x3dc65  2      
  movq %r12, -0x10(%rsp)                            #  3     0x3dc67  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3dc6c  5      
  movl %ebx, %edi                                   #  5     0x3dc71  2      
  subl $0x18, %esp                                  #  6     0x3dc73  3      
  addq %r15, %rsp                                   #  7     0x3dc76  3      
  movl %esi, %r12d                                  #  8     0x3dc79  3      
  nop                                               #  9     0x3dc7c  1      
  nop                                               #  10    0x3dc7d  1      
  nop                                               #  11    0x3dc7e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3dc7f  5      
  movl %ebx, %ebx                                   #  13    0x3dc84  2      
  movl $0x10020748, (%r15,%rbx,1)                   #  14    0x3dc86  8      
  cmpb $0x0, 0xfff307b(%rip)                        #  15    0x3dc8e  7      
  je .L_3dd00                                       #  16    0x3dc95  6      
  nop                                               #  17    0x3dc9b  1      
.L_3dcc0:                                           #        0x3dc9c  0      
  movl 0xfff3076(%rip), %eax                        #  18    0x3dc9c  6      
  testq %rax, %rax                                  #  19    0x3dca2  3      
  jne .L_3dda0                                      #  20    0x3dca5  6      
  xchgw %ax, %ax                                    #  21    0x3dcab  3      
  nop                                               #  22    0x3dcae  1      
.L_3dce0:                                           #        0x3dcaf  0      
  movq (%rsp), %rbx                                 #  23    0x3dcaf  4      
  movq 0x8(%rsp), %r12                              #  24    0x3dcb3  5      
  movq 0x10(%rsp), %r13                             #  25    0x3dcb8  5      
  addl $0x18, %esp                                  #  26    0x3dcbd  3      
  addq %r15, %rsp                                   #  27    0x3dcc0  3      
  popq %r11                                         #  28    0x3dcc3  3      
  andl $0xffffffe0, %r11d                           #  29    0x3dcc6  7      
  addq %r15, %r11                                   #  30    0x3dccd  3      
  jmpq %r11                                         #  31    0x3dcd0  3      
.L_3dd00:                                           #        0x3dcd3  0      
  movl $0x10030d10, %edi                            #  32    0x3dcd3  5      
  nop                                               #  33    0x3dcd8  1      
  nop                                               #  34    0x3dcd9  1      
  callq .__cxa_guard_acquire                        #  35    0x3dcda  5      
  testl %eax, %eax                                  #  36    0x3dcdf  2      
  je .L_3dcc0                                       #  37    0x3dce1  6      
  nop                                               #  38    0x3dce7  1      
  nop                                               #  39    0x3dce8  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x3dce9  5      
  movl %eax, %edi                                   #  41    0x3dcee  2      
  movl $0x10020674, %esi                            #  42    0x3dcf0  5      
  nop                                               #  43    0x3dcf5  1      
  nop                                               #  44    0x3dcf6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x3dcf7  5      
  movl $0x10030d10, %edi                            #  46    0x3dcfc  5      
  movl %eax, 0xfff3011(%rip)                        #  47    0x3dd01  6      
  nop                                               #  48    0x3dd07  1      
  nop                                               #  49    0x3dd08  1      
  callq .__cxa_guard_release                        #  50    0x3dd09  5      
  movl 0xfff3004(%rip), %eax                        #  51    0x3dd0e  6      
  testq %rax, %rax                                  #  52    0x3dd14  3      
  je .L_3dce0                                       #  53    0x3dd17  6      
  xchgw %ax, %ax                                    #  54    0x3dd1d  3      
  nop                                               #  55    0x3dd20  1      
.L_3dda0:                                           #        0x3dd21  0      
  cmpb $0x0, 0xfff2fe8(%rip)                        #  56    0x3dd21  7      
  je .L_3de60                                       #  57    0x3dd28  6      
  nop                                               #  58    0x3dd2e  1      
  nop                                               #  59    0x3dd2f  1      
.L_3ddc0:                                           #        0x3dd30  0      
  movl %eax, %eax                                   #  60    0x3dd30  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x3dd32  5      
  movl %r12d, %r12d                                 #  62    0x3dd37  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3dd3a  5      
  nop                                               #  64    0x3dd3f  1      
  andl $0xffffffe0, %eax                            #  65    0x3dd40  5      
  addq %r15, %rax                                   #  66    0x3dd45  3      
  callq %rax                                        #  67    0x3dd48  2      
  testl %eax, %eax                                  #  68    0x3dd4a  2      
  je .L_3dce0                                       #  69    0x3dd4c  6      
  movl %r12d, %r12d                                 #  70    0x3dd52  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x3dd55  5      
  nop                                               #  72    0x3dd5a  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3dd5b  5      
  movl %eax, %eax                                   #  74    0x3dd60  2      
  movl %r13d, %edi                                  #  75    0x3dd62  3      
  movl %eax, %eax                                   #  76    0x3dd65  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x3dd67  5      
  movl %eax, %eax                                   #  78    0x3dd6c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3dd6e  4      
  movl %eax, %eax                                   #  80    0x3dd72  2      
  movl (%r15,%rax,1), %eax                          #  81    0x3dd74  4      
  andl $0xffffffe0, %eax                            #  82    0x3dd78  5      
  addq %r15, %rax                                   #  83    0x3dd7d  3      
  callq %rax                                        #  84    0x3dd80  2      
  movl %r12d, %r12d                                 #  85    0x3dd82  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x3dd85  5      
  movl %ebx, %edi                                   #  87    0x3dd8a  2      
  xchgw %ax, %ax                                    #  88    0x3dd8c  3      
  nop                                               #  89    0x3dd8f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x3dd90  5      
  jmpq .L_3dce0                                     #  91    0x3dd95  5      
  nop                                               #  92    0x3dd9a  1      
  nop                                               #  93    0x3dd9b  1      
.L_3de60:                                           #        0x3dd9c  0      
  movl $0x10030d10, %edi                            #  94    0x3dd9c  5      
  nop                                               #  95    0x3dda1  1      
  nop                                               #  96    0x3dda2  1      
  callq .__cxa_guard_acquire                        #  97    0x3dda3  5      
  testl %eax, %eax                                  #  98    0x3dda8  2      
  jne .L_3dec0                                      #  99    0x3ddaa  6      
  nop                                               #  100   0x3ddb0  1      
  nop                                               #  101   0x3ddb1  1      
.L_3dea0:                                           #        0x3ddb2  0      
  movl 0xfff2f60(%rip), %eax                        #  102   0x3ddb2  6      
  jmpq .L_3ddc0                                     #  103   0x3ddb8  5      
  nop                                               #  104   0x3ddbd  1      
  nop                                               #  105   0x3ddbe  1      
.L_3dec0:                                           #        0x3ddbf  0      
  nop                                               #  106   0x3ddbf  1      
  nop                                               #  107   0x3ddc0  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3ddc1  5      
  movl %eax, %edi                                   #  109   0x3ddc6  2      
  movl $0x10020674, %esi                            #  110   0x3ddc8  5      
  nop                                               #  111   0x3ddcd  1      
  nop                                               #  112   0x3ddce  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3ddcf  5      
  movl $0x10030d10, %edi                            #  114   0x3ddd4  5      
  movl %eax, 0xfff2f39(%rip)                        #  115   0x3ddd9  6      
  nop                                               #  116   0x3dddf  1      
  nop                                               #  117   0x3dde0  1      
  callq .__cxa_guard_release                        #  118   0x3dde1  5      
  jmpq .L_3dea0                                     #  119   0x3dde6  5      
  nop                                               #  120   0x3ddeb  1      
  nop                                               #  121   0x3ddec  1      
.L_3df40:                                           #        0x3dded  0      
  movl $0x10030d10, %edi                            #  122   0x3dded  5      
  movl %eax, %r12d                                  #  123   0x3ddf2  3      
  nop                                               #  124   0x3ddf5  1      
  nop                                               #  125   0x3ddf6  1      
  callq .__cxa_guard_abort                          #  126   0x3ddf7  5      
.L_3df60:                                           #        0x3ddfc  0      
  movl %ebx, %edi                                   #  127   0x3ddfc  2      
  nop                                               #  128   0x3ddfe  1      
  nop                                               #  129   0x3ddff  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x3de00  5      
  movl %r12d, %edi                                  #  131   0x3de05  3      
  nop                                               #  132   0x3de08  1      
  nop                                               #  133   0x3de09  1      
  callq ._Unwind_Resume                             #  134   0x3de0a  5      
  movl %eax, %r12d                                  #  135   0x3de0f  3      
  jmpq .L_3df60                                     #  136   0x3de12  5      
  nop                                               #  137   0x3de17  1      
  nop                                               #  138   0x3de18  1      
  jmpq .L_3df40                                     #  139   0x3de19  5      
  nop                                               #  140   0x3de1e  1      
  nop                                               #  141   0x3de1f  1      
  nop                                               #  142   0x3de20  1      
                                                                             
.size _ZN2pp13IMEInputEventC1ERKNS_10InputEventE, .-_ZN2pp13IMEInputEventC1ERKNS_10InputEventE

