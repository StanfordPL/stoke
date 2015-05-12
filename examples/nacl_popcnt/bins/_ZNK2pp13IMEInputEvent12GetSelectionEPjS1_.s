  .text
  .globl _ZNK2pp13IMEInputEvent12GetSelectionEPjS1_
  .type _ZNK2pp13IMEInputEvent12GetSelectionEPjS1_, @function

#! file-offset 0x3e1e0
#! rip-offset  0x3e1e0
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent12GetSelectionEPjS1_:     #        0x3e1e0  0      
  movq %rbx, -0x18(%rsp)                         #  1     0x3e1e0  5      
  movq %r12, -0x10(%rsp)                         #  2     0x3e1e5  5      
  movl %edi, %ebx                                #  3     0x3e1ea  2      
  movq %r13, -0x8(%rsp)                          #  4     0x3e1ec  5      
  subl $0x18, %esp                               #  5     0x3e1f1  3      
  addq %r15, %rsp                                #  6     0x3e1f4  3      
  cmpb $0x0, 0xfff2b12(%rip)                     #  7     0x3e1f7  7      
  xchgw %ax, %ax                                 #  8     0x3e1fe  3      
  movl %esi, %r13d                               #  9     0x3e201  3      
  movl %edx, %r12d                               #  10    0x3e204  3      
  je .L_3e260                                    #  11    0x3e207  6      
  nop                                            #  12    0x3e20d  1      
  nop                                            #  13    0x3e20e  1      
.L_3e220:                                        #        0x3e20f  0      
  movl 0xfff2b03(%rip), %eax                     #  14    0x3e20f  6      
  testq %rax, %rax                               #  15    0x3e215  3      
  jne .L_3e300                                   #  16    0x3e218  6      
  xchgw %ax, %ax                                 #  17    0x3e21e  3      
  nop                                            #  18    0x3e221  1      
.L_3e240:                                        #        0x3e222  0      
  movq (%rsp), %rbx                              #  19    0x3e222  4      
  movq 0x8(%rsp), %r12                           #  20    0x3e226  5      
  movq 0x10(%rsp), %r13                          #  21    0x3e22b  5      
  addl $0x18, %esp                               #  22    0x3e230  3      
  addq %r15, %rsp                                #  23    0x3e233  3      
  popq %r11                                      #  24    0x3e236  3      
  andl $0xffffffe0, %r11d                        #  25    0x3e239  7      
  addq %r15, %r11                                #  26    0x3e240  3      
  jmpq %r11                                      #  27    0x3e243  3      
.L_3e260:                                        #        0x3e246  0      
  movl $0x10030d10, %edi                         #  28    0x3e246  5      
  nop                                            #  29    0x3e24b  1      
  nop                                            #  30    0x3e24c  1      
  callq .__cxa_guard_acquire                     #  31    0x3e24d  5      
  testl %eax, %eax                               #  32    0x3e252  2      
  je .L_3e220                                    #  33    0x3e254  6      
  nop                                            #  34    0x3e25a  1      
  nop                                            #  35    0x3e25b  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x3e25c  5      
  movl %eax, %edi                                #  37    0x3e261  2      
  movl $0x10020674, %esi                         #  38    0x3e263  5      
  nop                                            #  39    0x3e268  1      
  nop                                            #  40    0x3e269  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x3e26a  5      
  movl $0x10030d10, %edi                         #  42    0x3e26f  5      
  movl %eax, 0xfff2a9e(%rip)                     #  43    0x3e274  6      
  nop                                            #  44    0x3e27a  1      
  nop                                            #  45    0x3e27b  1      
  callq .__cxa_guard_release                     #  46    0x3e27c  5      
  movl 0xfff2a91(%rip), %eax                     #  47    0x3e281  6      
  testq %rax, %rax                               #  48    0x3e287  3      
  je .L_3e240                                    #  49    0x3e28a  6      
  xchgw %ax, %ax                                 #  50    0x3e290  3      
  nop                                            #  51    0x3e293  1      
.L_3e300:                                        #        0x3e294  0      
  cmpb $0x0, 0xfff2a75(%rip)                     #  52    0x3e294  7      
  je .L_3e360                                    #  53    0x3e29b  6      
  nop                                            #  54    0x3e2a1  1      
  nop                                            #  55    0x3e2a2  1      
.L_3e320:                                        #        0x3e2a3  0      
  movl %eax, %eax                                #  56    0x3e2a3  2      
  movl 0x18(%r15,%rax,1), %eax                   #  57    0x3e2a5  5      
  movl %ebx, %ebx                                #  58    0x3e2aa  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  59    0x3e2ac  5      
  movl %r12d, %edx                               #  60    0x3e2b1  3      
  movl %r13d, %esi                               #  61    0x3e2b4  3      
  movq (%rsp), %rbx                              #  62    0x3e2b7  4      
  movq 0x8(%rsp), %r12                           #  63    0x3e2bb  5      
  nop                                            #  64    0x3e2c0  1      
  movq 0x10(%rsp), %r13                          #  65    0x3e2c1  5      
  addl $0x18, %esp                               #  66    0x3e2c6  3      
  addq %r15, %rsp                                #  67    0x3e2c9  3      
  andl $0xffffffe0, %eax                         #  68    0x3e2cc  5      
  addq %r15, %rax                                #  69    0x3e2d1  3      
  jmpq %rax                                      #  70    0x3e2d4  2      
  nop                                            #  71    0x3e2d6  1      
.L_3e360:                                        #        0x3e2d7  0      
  movl $0x10030d10, %edi                         #  72    0x3e2d7  5      
  nop                                            #  73    0x3e2dc  1      
  nop                                            #  74    0x3e2dd  1      
  callq .__cxa_guard_acquire                     #  75    0x3e2de  5      
  testl %eax, %eax                               #  76    0x3e2e3  2      
  jne .L_3e3c0                                   #  77    0x3e2e5  6      
  nop                                            #  78    0x3e2eb  1      
  nop                                            #  79    0x3e2ec  1      
.L_3e3a0:                                        #        0x3e2ed  0      
  movl 0xfff2a25(%rip), %eax                     #  80    0x3e2ed  6      
  jmpq .L_3e320                                  #  81    0x3e2f3  5      
  nop                                            #  82    0x3e2f8  1      
  nop                                            #  83    0x3e2f9  1      
.L_3e3c0:                                        #        0x3e2fa  0      
  nop                                            #  84    0x3e2fa  1      
  nop                                            #  85    0x3e2fb  1      
  callq ._ZN2pp6Module3GetEv                     #  86    0x3e2fc  5      
  movl %eax, %edi                                #  87    0x3e301  2      
  movl $0x10020674, %esi                         #  88    0x3e303  5      
  nop                                            #  89    0x3e308  1      
  nop                                            #  90    0x3e309  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  91    0x3e30a  5      
  movl $0x10030d10, %edi                         #  92    0x3e30f  5      
  movl %eax, 0xfff29fe(%rip)                     #  93    0x3e314  6      
  nop                                            #  94    0x3e31a  1      
  nop                                            #  95    0x3e31b  1      
  callq .__cxa_guard_release                     #  96    0x3e31c  5      
  jmpq .L_3e3a0                                  #  97    0x3e321  5      
  nop                                            #  98    0x3e326  1      
  nop                                            #  99    0x3e327  1      
.L_3e440:                                        #        0x3e328  0      
  movl %eax, %ebx                                #  100   0x3e328  2      
  movl $0x10030d10, %edi                         #  101   0x3e32a  5      
  nop                                            #  102   0x3e32f  1      
  nop                                            #  103   0x3e330  1      
  callq .__cxa_guard_abort                       #  104   0x3e331  5      
  movl %ebx, %edi                                #  105   0x3e336  2      
  nop                                            #  106   0x3e338  1      
  nop                                            #  107   0x3e339  1      
  callq ._Unwind_Resume                          #  108   0x3e33a  5      
  jmpq .L_3e440                                  #  109   0x3e33f  5      
  nop                                            #  110   0x3e344  1      
  nop                                            #  111   0x3e345  1      
                                                                          
.size _ZNK2pp13IMEInputEvent12GetSelectionEPjS1_, .-_ZNK2pp13IMEInputEvent12GetSelectionEPjS1_

