  .text
  .globl _ZNK2pp13IMEInputEvent12GetSelectionEPjS1_
  .type _ZNK2pp13IMEInputEvent12GetSelectionEPjS1_, @function

#! file-offset 0x3e1c0
#! rip-offset  0x3e1c0
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent12GetSelectionEPjS1_:     #        0x3e1c0  0      
  movq %rbx, -0x18(%rsp)                         #  1     0x3e1c0  5      
  movq %r12, -0x10(%rsp)                         #  2     0x3e1c5  5      
  movl %edi, %ebx                                #  3     0x3e1ca  2      
  movq %r13, -0x8(%rsp)                          #  4     0x3e1cc  5      
  subl $0x18, %esp                               #  5     0x3e1d1  3      
  addq %r15, %rsp                                #  6     0x3e1d4  3      
  cmpb $0x0, 0xfff2b32(%rip)                     #  7     0x3e1d7  7      
  xchgw %ax, %ax                                 #  8     0x3e1de  3      
  movl %esi, %r13d                               #  9     0x3e1e1  3      
  movl %edx, %r12d                               #  10    0x3e1e4  3      
  je .L_3e240                                    #  11    0x3e1e7  6      
  nop                                            #  12    0x3e1ed  1      
  nop                                            #  13    0x3e1ee  1      
.L_3e200:                                        #        0x3e1ef  0      
  movl 0xfff2b23(%rip), %eax                     #  14    0x3e1ef  6      
  testq %rax, %rax                               #  15    0x3e1f5  3      
  jne .L_3e2e0                                   #  16    0x3e1f8  6      
  xchgw %ax, %ax                                 #  17    0x3e1fe  3      
  nop                                            #  18    0x3e201  1      
.L_3e220:                                        #        0x3e202  0      
  movq (%rsp), %rbx                              #  19    0x3e202  4      
  movq 0x8(%rsp), %r12                           #  20    0x3e206  5      
  movq 0x10(%rsp), %r13                          #  21    0x3e20b  5      
  addl $0x18, %esp                               #  22    0x3e210  3      
  addq %r15, %rsp                                #  23    0x3e213  3      
  popq %r11                                      #  24    0x3e216  3      
  andl $0xffffffe0, %r11d                        #  25    0x3e219  7      
  addq %r15, %r11                                #  26    0x3e220  3      
  jmpq %r11                                      #  27    0x3e223  3      
.L_3e240:                                        #        0x3e226  0      
  movl $0x10030d10, %edi                         #  28    0x3e226  5      
  nop                                            #  29    0x3e22b  1      
  nop                                            #  30    0x3e22c  1      
  callq .__cxa_guard_acquire                     #  31    0x3e22d  5      
  testl %eax, %eax                               #  32    0x3e232  2      
  je .L_3e200                                    #  33    0x3e234  6      
  nop                                            #  34    0x3e23a  1      
  nop                                            #  35    0x3e23b  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x3e23c  5      
  movl %eax, %edi                                #  37    0x3e241  2      
  movl $0x10020674, %esi                         #  38    0x3e243  5      
  nop                                            #  39    0x3e248  1      
  nop                                            #  40    0x3e249  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x3e24a  5      
  movl $0x10030d10, %edi                         #  42    0x3e24f  5      
  movl %eax, 0xfff2abe(%rip)                     #  43    0x3e254  6      
  nop                                            #  44    0x3e25a  1      
  nop                                            #  45    0x3e25b  1      
  callq .__cxa_guard_release                     #  46    0x3e25c  5      
  movl 0xfff2ab1(%rip), %eax                     #  47    0x3e261  6      
  testq %rax, %rax                               #  48    0x3e267  3      
  je .L_3e220                                    #  49    0x3e26a  6      
  xchgw %ax, %ax                                 #  50    0x3e270  3      
  nop                                            #  51    0x3e273  1      
.L_3e2e0:                                        #        0x3e274  0      
  cmpb $0x0, 0xfff2a95(%rip)                     #  52    0x3e274  7      
  je .L_3e340                                    #  53    0x3e27b  6      
  nop                                            #  54    0x3e281  1      
  nop                                            #  55    0x3e282  1      
.L_3e300:                                        #        0x3e283  0      
  movl %eax, %eax                                #  56    0x3e283  2      
  movl 0x18(%r15,%rax,1), %eax                   #  57    0x3e285  5      
  movl %ebx, %ebx                                #  58    0x3e28a  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  59    0x3e28c  5      
  movl %r12d, %edx                               #  60    0x3e291  3      
  movl %r13d, %esi                               #  61    0x3e294  3      
  movq (%rsp), %rbx                              #  62    0x3e297  4      
  movq 0x8(%rsp), %r12                           #  63    0x3e29b  5      
  nop                                            #  64    0x3e2a0  1      
  movq 0x10(%rsp), %r13                          #  65    0x3e2a1  5      
  addl $0x18, %esp                               #  66    0x3e2a6  3      
  addq %r15, %rsp                                #  67    0x3e2a9  3      
  andl $0xffffffe0, %eax                         #  68    0x3e2ac  5      
  addq %r15, %rax                                #  69    0x3e2b1  3      
  jmpq %rax                                      #  70    0x3e2b4  2      
  nop                                            #  71    0x3e2b6  1      
.L_3e340:                                        #        0x3e2b7  0      
  movl $0x10030d10, %edi                         #  72    0x3e2b7  5      
  nop                                            #  73    0x3e2bc  1      
  nop                                            #  74    0x3e2bd  1      
  callq .__cxa_guard_acquire                     #  75    0x3e2be  5      
  testl %eax, %eax                               #  76    0x3e2c3  2      
  jne .L_3e3a0                                   #  77    0x3e2c5  6      
  nop                                            #  78    0x3e2cb  1      
  nop                                            #  79    0x3e2cc  1      
.L_3e380:                                        #        0x3e2cd  0      
  movl 0xfff2a45(%rip), %eax                     #  80    0x3e2cd  6      
  jmpq .L_3e300                                  #  81    0x3e2d3  5      
  nop                                            #  82    0x3e2d8  1      
  nop                                            #  83    0x3e2d9  1      
.L_3e3a0:                                        #        0x3e2da  0      
  nop                                            #  84    0x3e2da  1      
  nop                                            #  85    0x3e2db  1      
  callq ._ZN2pp6Module3GetEv                     #  86    0x3e2dc  5      
  movl %eax, %edi                                #  87    0x3e2e1  2      
  movl $0x10020674, %esi                         #  88    0x3e2e3  5      
  nop                                            #  89    0x3e2e8  1      
  nop                                            #  90    0x3e2e9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  91    0x3e2ea  5      
  movl $0x10030d10, %edi                         #  92    0x3e2ef  5      
  movl %eax, 0xfff2a1e(%rip)                     #  93    0x3e2f4  6      
  nop                                            #  94    0x3e2fa  1      
  nop                                            #  95    0x3e2fb  1      
  callq .__cxa_guard_release                     #  96    0x3e2fc  5      
  jmpq .L_3e380                                  #  97    0x3e301  5      
  nop                                            #  98    0x3e306  1      
  nop                                            #  99    0x3e307  1      
.L_3e420:                                        #        0x3e308  0      
  movl %eax, %ebx                                #  100   0x3e308  2      
  movl $0x10030d10, %edi                         #  101   0x3e30a  5      
  nop                                            #  102   0x3e30f  1      
  nop                                            #  103   0x3e310  1      
  callq .__cxa_guard_abort                       #  104   0x3e311  5      
  movl %ebx, %edi                                #  105   0x3e316  2      
  nop                                            #  106   0x3e318  1      
  nop                                            #  107   0x3e319  1      
  callq ._Unwind_Resume                          #  108   0x3e31a  5      
  jmpq .L_3e420                                  #  109   0x3e31f  5      
  nop                                            #  110   0x3e324  1      
  nop                                            #  111   0x3e325  1      
                                                                          
.size _ZNK2pp13IMEInputEvent12GetSelectionEPjS1_, .-_ZNK2pp13IMEInputEvent12GetSelectionEPjS1_

