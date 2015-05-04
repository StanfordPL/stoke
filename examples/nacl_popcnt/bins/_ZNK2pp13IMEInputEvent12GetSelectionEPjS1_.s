  .text
  .globl _ZNK2pp13IMEInputEvent12GetSelectionEPjS1_
  .type _ZNK2pp13IMEInputEvent12GetSelectionEPjS1_, @function

#! file-offset 0x3e260
#! rip-offset  0x3e260
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent12GetSelectionEPjS1_:     #        0x3e260  0      
  movq %rbx, -0x18(%rsp)                         #  1     0x3e260  5      
  movq %r12, -0x10(%rsp)                         #  2     0x3e265  5      
  movl %edi, %ebx                                #  3     0x3e26a  2      
  movq %r13, -0x8(%rsp)                          #  4     0x3e26c  5      
  subl $0x18, %esp                               #  5     0x3e271  3      
  addq %r15, %rsp                                #  6     0x3e274  3      
  cmpb $0x0, 0xfff2a92(%rip)                     #  7     0x3e277  7      
  xchgw %ax, %ax                                 #  8     0x3e27e  3      
  movl %esi, %r13d                               #  9     0x3e281  3      
  movl %edx, %r12d                               #  10    0x3e284  3      
  je .L_3e2e0                                    #  11    0x3e287  6      
  nop                                            #  12    0x3e28d  1      
  nop                                            #  13    0x3e28e  1      
.L_3e2a0:                                        #        0x3e28f  0      
  movl 0xfff2a83(%rip), %eax                     #  14    0x3e28f  6      
  testq %rax, %rax                               #  15    0x3e295  3      
  jne .L_3e380                                   #  16    0x3e298  6      
  xchgw %ax, %ax                                 #  17    0x3e29e  3      
  nop                                            #  18    0x3e2a1  1      
.L_3e2c0:                                        #        0x3e2a2  0      
  movq (%rsp), %rbx                              #  19    0x3e2a2  4      
  movq 0x8(%rsp), %r12                           #  20    0x3e2a6  5      
  movq 0x10(%rsp), %r13                          #  21    0x3e2ab  5      
  addl $0x18, %esp                               #  22    0x3e2b0  3      
  addq %r15, %rsp                                #  23    0x3e2b3  3      
  popq %r11                                      #  24    0x3e2b6  3      
  andl $0xffffffe0, %r11d                        #  25    0x3e2b9  7      
  addq %r15, %r11                                #  26    0x3e2c0  3      
  jmpq %r11                                      #  27    0x3e2c3  3      
.L_3e2e0:                                        #        0x3e2c6  0      
  movl $0x10030d10, %edi                         #  28    0x3e2c6  5      
  nop                                            #  29    0x3e2cb  1      
  nop                                            #  30    0x3e2cc  1      
  callq .__cxa_guard_acquire                     #  31    0x3e2cd  5      
  testl %eax, %eax                               #  32    0x3e2d2  2      
  je .L_3e2a0                                    #  33    0x3e2d4  6      
  nop                                            #  34    0x3e2da  1      
  nop                                            #  35    0x3e2db  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x3e2dc  5      
  movl %eax, %edi                                #  37    0x3e2e1  2      
  movl $0x10020674, %esi                         #  38    0x3e2e3  5      
  nop                                            #  39    0x3e2e8  1      
  nop                                            #  40    0x3e2e9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x3e2ea  5      
  movl $0x10030d10, %edi                         #  42    0x3e2ef  5      
  movl %eax, 0xfff2a1e(%rip)                     #  43    0x3e2f4  6      
  nop                                            #  44    0x3e2fa  1      
  nop                                            #  45    0x3e2fb  1      
  callq .__cxa_guard_release                     #  46    0x3e2fc  5      
  movl 0xfff2a11(%rip), %eax                     #  47    0x3e301  6      
  testq %rax, %rax                               #  48    0x3e307  3      
  je .L_3e2c0                                    #  49    0x3e30a  6      
  xchgw %ax, %ax                                 #  50    0x3e310  3      
  nop                                            #  51    0x3e313  1      
.L_3e380:                                        #        0x3e314  0      
  cmpb $0x0, 0xfff29f5(%rip)                     #  52    0x3e314  7      
  je .L_3e3e0                                    #  53    0x3e31b  6      
  nop                                            #  54    0x3e321  1      
  nop                                            #  55    0x3e322  1      
.L_3e3a0:                                        #        0x3e323  0      
  movl %eax, %eax                                #  56    0x3e323  2      
  movl 0x18(%r15,%rax,1), %eax                   #  57    0x3e325  5      
  movl %ebx, %ebx                                #  58    0x3e32a  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  59    0x3e32c  5      
  movl %r12d, %edx                               #  60    0x3e331  3      
  movl %r13d, %esi                               #  61    0x3e334  3      
  movq (%rsp), %rbx                              #  62    0x3e337  4      
  movq 0x8(%rsp), %r12                           #  63    0x3e33b  5      
  nop                                            #  64    0x3e340  1      
  movq 0x10(%rsp), %r13                          #  65    0x3e341  5      
  addl $0x18, %esp                               #  66    0x3e346  3      
  addq %r15, %rsp                                #  67    0x3e349  3      
  andl $0xffffffe0, %eax                         #  68    0x3e34c  5      
  addq %r15, %rax                                #  69    0x3e351  3      
  jmpq %rax                                      #  70    0x3e354  2      
  nop                                            #  71    0x3e356  1      
.L_3e3e0:                                        #        0x3e357  0      
  movl $0x10030d10, %edi                         #  72    0x3e357  5      
  nop                                            #  73    0x3e35c  1      
  nop                                            #  74    0x3e35d  1      
  callq .__cxa_guard_acquire                     #  75    0x3e35e  5      
  testl %eax, %eax                               #  76    0x3e363  2      
  jne .L_3e440                                   #  77    0x3e365  6      
  nop                                            #  78    0x3e36b  1      
  nop                                            #  79    0x3e36c  1      
.L_3e420:                                        #        0x3e36d  0      
  movl 0xfff29a5(%rip), %eax                     #  80    0x3e36d  6      
  jmpq .L_3e3a0                                  #  81    0x3e373  5      
  nop                                            #  82    0x3e378  1      
  nop                                            #  83    0x3e379  1      
.L_3e440:                                        #        0x3e37a  0      
  nop                                            #  84    0x3e37a  1      
  nop                                            #  85    0x3e37b  1      
  callq ._ZN2pp6Module3GetEv                     #  86    0x3e37c  5      
  movl %eax, %edi                                #  87    0x3e381  2      
  movl $0x10020674, %esi                         #  88    0x3e383  5      
  nop                                            #  89    0x3e388  1      
  nop                                            #  90    0x3e389  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  91    0x3e38a  5      
  movl $0x10030d10, %edi                         #  92    0x3e38f  5      
  movl %eax, 0xfff297e(%rip)                     #  93    0x3e394  6      
  nop                                            #  94    0x3e39a  1      
  nop                                            #  95    0x3e39b  1      
  callq .__cxa_guard_release                     #  96    0x3e39c  5      
  jmpq .L_3e420                                  #  97    0x3e3a1  5      
  nop                                            #  98    0x3e3a6  1      
  nop                                            #  99    0x3e3a7  1      
.L_3e4c0:                                        #        0x3e3a8  0      
  movl %eax, %ebx                                #  100   0x3e3a8  2      
  movl $0x10030d10, %edi                         #  101   0x3e3aa  5      
  nop                                            #  102   0x3e3af  1      
  nop                                            #  103   0x3e3b0  1      
  callq .__cxa_guard_abort                       #  104   0x3e3b1  5      
  movl %ebx, %edi                                #  105   0x3e3b6  2      
  nop                                            #  106   0x3e3b8  1      
  nop                                            #  107   0x3e3b9  1      
  callq ._Unwind_Resume                          #  108   0x3e3ba  5      
  jmpq .L_3e4c0                                  #  109   0x3e3bf  5      
  nop                                            #  110   0x3e3c4  1      
  nop                                            #  111   0x3e3c5  1      
                                                                          
.size _ZNK2pp13IMEInputEvent12GetSelectionEPjS1_, .-_ZNK2pp13IMEInputEvent12GetSelectionEPjS1_

