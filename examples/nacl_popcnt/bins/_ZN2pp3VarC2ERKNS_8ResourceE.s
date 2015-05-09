  .text
  .globl _ZN2pp3VarC2ERKNS_8ResourceE
  .type _ZN2pp3VarC2ERKNS_8ResourceE, @function

#! file-offset 0x2b2e0
#! rip-offset  0x2b2e0
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp3VarC2ERKNS_8ResourceE:                   #        0x2b2e0  0      
  movq %rbx, -0x10(%rsp)                         #  1     0x2b2e0  5      
  movl %edi, %ebx                                #  2     0x2b2e5  2      
  movq %r12, -0x8(%rsp)                          #  3     0x2b2e7  5      
  subl $0x18, %esp                               #  4     0x2b2ec  3      
  addq %r15, %rsp                                #  5     0x2b2ef  3      
  movl %ebx, %ebx                                #  6     0x2b2f2  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  7     0x2b2f4  8      
  nop                                            #  8     0x2b2fc  1      
  cmpb $0x0, 0x1000597c(%rip)                    #  9     0x2b2fd  7      
  movl %esi, %r12d                               #  10    0x2b304  3      
  je .L_2b360                                    #  11    0x2b307  6      
  nop                                            #  12    0x2b30d  1      
  nop                                            #  13    0x2b30e  1      
.L_2b320:                                        #        0x2b30f  0      
  movl 0x10005973(%rip), %eax                    #  14    0x2b30f  6      
  testq %rax, %rax                               #  15    0x2b315  3      
  jne .L_2b400                                   #  16    0x2b318  6      
  xchgw %ax, %ax                                 #  17    0x2b31e  3      
  nop                                            #  18    0x2b321  1      
.L_2b340:                                        #        0x2b322  0      
  movq 0x8(%rsp), %rbx                           #  19    0x2b322  5      
  movq 0x10(%rsp), %r12                          #  20    0x2b327  5      
  addl $0x18, %esp                               #  21    0x2b32c  3      
  addq %r15, %rsp                                #  22    0x2b32f  3      
  popq %r11                                      #  23    0x2b332  3      
  andl $0xffffffe0, %r11d                        #  24    0x2b335  7      
  addq %r15, %r11                                #  25    0x2b33c  3      
  jmpq %r11                                      #  26    0x2b33f  3      
  nop                                            #  27    0x2b342  1      
.L_2b360:                                        #        0x2b343  0      
  movl $0x10030c80, %edi                         #  28    0x2b343  5      
  nop                                            #  29    0x2b348  1      
  nop                                            #  30    0x2b349  1      
  callq .__cxa_guard_acquire                     #  31    0x2b34a  5      
  testl %eax, %eax                               #  32    0x2b34f  2      
  je .L_2b320                                    #  33    0x2b351  6      
  nop                                            #  34    0x2b357  1      
  nop                                            #  35    0x2b358  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x2b359  5      
  movl %eax, %edi                                #  37    0x2b35e  2      
  movl $0x10020516, %esi                         #  38    0x2b360  5      
  nop                                            #  39    0x2b365  1      
  nop                                            #  40    0x2b366  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x2b367  5      
  movl $0x10030c80, %edi                         #  42    0x2b36c  5      
  movl %eax, 0x10005911(%rip)                    #  43    0x2b371  6      
  nop                                            #  44    0x2b377  1      
  nop                                            #  45    0x2b378  1      
  callq .__cxa_guard_release                     #  46    0x2b379  5      
  movl 0x10005904(%rip), %eax                    #  47    0x2b37e  6      
  testq %rax, %rax                               #  48    0x2b384  3      
  je .L_2b340                                    #  49    0x2b387  6      
  xchgw %ax, %ax                                 #  50    0x2b38d  3      
  nop                                            #  51    0x2b390  1      
.L_2b400:                                        #        0x2b391  0      
  cmpb $0x0, 0x100058e8(%rip)                    #  52    0x2b391  7      
  je .L_2b460                                    #  53    0x2b398  6      
  nop                                            #  54    0x2b39e  1      
  nop                                            #  55    0x2b39f  1      
.L_2b420:                                        #        0x2b3a0  0      
  movl %eax, %eax                                #  56    0x2b3a0  2      
  movl 0x14(%r15,%rax,1), %eax                   #  57    0x2b3a2  5      
  movl %r12d, %r12d                              #  58    0x2b3a7  3      
  movl 0x4(%r15,%r12,1), %edi                    #  59    0x2b3aa  5      
  nop                                            #  60    0x2b3af  1      
  andl $0xffffffe0, %eax                         #  61    0x2b3b0  5      
  addq %r15, %rax                                #  62    0x2b3b5  3      
  callq %rax                                     #  63    0x2b3b8  2      
  movl %ebx, %ebx                                #  64    0x2b3ba  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  65    0x2b3bc  6      
  movl %ebx, %ebx                                #  66    0x2b3c2  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  67    0x2b3c4  5      
  movl %ebx, %ebx                                #  68    0x2b3c9  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  69    0x2b3cb  5      
  jmpq .L_2b340                                  #  70    0x2b3d0  5      
  nop                                            #  71    0x2b3d5  1      
.L_2b460:                                        #        0x2b3d6  0      
  movl $0x10030c80, %edi                         #  72    0x2b3d6  5      
  nop                                            #  73    0x2b3db  1      
  nop                                            #  74    0x2b3dc  1      
  callq .__cxa_guard_acquire                     #  75    0x2b3dd  5      
  testl %eax, %eax                               #  76    0x2b3e2  2      
  jne .L_2b4c0                                   #  77    0x2b3e4  6      
  nop                                            #  78    0x2b3ea  1      
  nop                                            #  79    0x2b3eb  1      
.L_2b4a0:                                        #        0x2b3ec  0      
  movl 0x10005896(%rip), %eax                    #  80    0x2b3ec  6      
  jmpq .L_2b420                                  #  81    0x2b3f2  5      
  nop                                            #  82    0x2b3f7  1      
  nop                                            #  83    0x2b3f8  1      
.L_2b4c0:                                        #        0x2b3f9  0      
  nop                                            #  84    0x2b3f9  1      
  nop                                            #  85    0x2b3fa  1      
  callq ._ZN2pp6Module3GetEv                     #  86    0x2b3fb  5      
  movl %eax, %edi                                #  87    0x2b400  2      
  movl $0x10020516, %esi                         #  88    0x2b402  5      
  nop                                            #  89    0x2b407  1      
  nop                                            #  90    0x2b408  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  91    0x2b409  5      
  movl $0x10030c80, %edi                         #  92    0x2b40e  5      
  movl %eax, 0x1000586f(%rip)                    #  93    0x2b413  6      
  nop                                            #  94    0x2b419  1      
  nop                                            #  95    0x2b41a  1      
  callq .__cxa_guard_release                     #  96    0x2b41b  5      
  jmpq .L_2b4a0                                  #  97    0x2b420  5      
  nop                                            #  98    0x2b425  1      
  nop                                            #  99    0x2b426  1      
.L_2b540:                                        #        0x2b427  0      
  movl %eax, %ebx                                #  100   0x2b427  2      
  movl $0x10030c80, %edi                         #  101   0x2b429  5      
  nop                                            #  102   0x2b42e  1      
  nop                                            #  103   0x2b42f  1      
  callq .__cxa_guard_abort                       #  104   0x2b430  5      
  movl %ebx, %edi                                #  105   0x2b435  2      
  nop                                            #  106   0x2b437  1      
  nop                                            #  107   0x2b438  1      
  callq ._Unwind_Resume                          #  108   0x2b439  5      
  jmpq .L_2b540                                  #  109   0x2b43e  5      
  nop                                            #  110   0x2b443  1      
  nop                                            #  111   0x2b444  1      
                                                                          
.size _ZN2pp3VarC2ERKNS_8ResourceE, .-_ZN2pp3VarC2ERKNS_8ResourceE

