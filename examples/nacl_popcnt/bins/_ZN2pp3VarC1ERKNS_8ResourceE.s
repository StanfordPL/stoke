  .text
  .globl _ZN2pp3VarC1ERKNS_8ResourceE
  .type _ZN2pp3VarC1ERKNS_8ResourceE, @function

#! file-offset 0x2b020
#! rip-offset  0x2b020
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp3VarC1ERKNS_8ResourceE:                   #        0x2b020  0      
  movq %rbx, -0x10(%rsp)                         #  1     0x2b020  5      
  movl %edi, %ebx                                #  2     0x2b025  2      
  movq %r12, -0x8(%rsp)                          #  3     0x2b027  5      
  subl $0x18, %esp                               #  4     0x2b02c  3      
  addq %r15, %rsp                                #  5     0x2b02f  3      
  movl %ebx, %ebx                                #  6     0x2b032  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  7     0x2b034  8      
  nop                                            #  8     0x2b03c  1      
  cmpb $0x0, 0x10005c3c(%rip)                    #  9     0x2b03d  7      
  movl %esi, %r12d                               #  10    0x2b044  3      
  je .L_2b0a0                                    #  11    0x2b047  6      
  nop                                            #  12    0x2b04d  1      
  nop                                            #  13    0x2b04e  1      
.L_2b060:                                        #        0x2b04f  0      
  movl 0x10005c33(%rip), %eax                    #  14    0x2b04f  6      
  testq %rax, %rax                               #  15    0x2b055  3      
  jne .L_2b140                                   #  16    0x2b058  6      
  xchgw %ax, %ax                                 #  17    0x2b05e  3      
  nop                                            #  18    0x2b061  1      
.L_2b080:                                        #        0x2b062  0      
  movq 0x8(%rsp), %rbx                           #  19    0x2b062  5      
  movq 0x10(%rsp), %r12                          #  20    0x2b067  5      
  addl $0x18, %esp                               #  21    0x2b06c  3      
  addq %r15, %rsp                                #  22    0x2b06f  3      
  popq %r11                                      #  23    0x2b072  3      
  andl $0xffffffe0, %r11d                        #  24    0x2b075  7      
  addq %r15, %r11                                #  25    0x2b07c  3      
  jmpq %r11                                      #  26    0x2b07f  3      
  nop                                            #  27    0x2b082  1      
.L_2b0a0:                                        #        0x2b083  0      
  movl $0x10030c80, %edi                         #  28    0x2b083  5      
  nop                                            #  29    0x2b088  1      
  nop                                            #  30    0x2b089  1      
  callq .__cxa_guard_acquire                     #  31    0x2b08a  5      
  testl %eax, %eax                               #  32    0x2b08f  2      
  je .L_2b060                                    #  33    0x2b091  6      
  nop                                            #  34    0x2b097  1      
  nop                                            #  35    0x2b098  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x2b099  5      
  movl %eax, %edi                                #  37    0x2b09e  2      
  movl $0x10020516, %esi                         #  38    0x2b0a0  5      
  nop                                            #  39    0x2b0a5  1      
  nop                                            #  40    0x2b0a6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x2b0a7  5      
  movl $0x10030c80, %edi                         #  42    0x2b0ac  5      
  movl %eax, 0x10005bd1(%rip)                    #  43    0x2b0b1  6      
  nop                                            #  44    0x2b0b7  1      
  nop                                            #  45    0x2b0b8  1      
  callq .__cxa_guard_release                     #  46    0x2b0b9  5      
  movl 0x10005bc4(%rip), %eax                    #  47    0x2b0be  6      
  testq %rax, %rax                               #  48    0x2b0c4  3      
  je .L_2b080                                    #  49    0x2b0c7  6      
  xchgw %ax, %ax                                 #  50    0x2b0cd  3      
  nop                                            #  51    0x2b0d0  1      
.L_2b140:                                        #        0x2b0d1  0      
  cmpb $0x0, 0x10005ba8(%rip)                    #  52    0x2b0d1  7      
  je .L_2b1a0                                    #  53    0x2b0d8  6      
  nop                                            #  54    0x2b0de  1      
  nop                                            #  55    0x2b0df  1      
.L_2b160:                                        #        0x2b0e0  0      
  movl %eax, %eax                                #  56    0x2b0e0  2      
  movl 0x14(%r15,%rax,1), %eax                   #  57    0x2b0e2  5      
  movl %r12d, %r12d                              #  58    0x2b0e7  3      
  movl 0x4(%r15,%r12,1), %edi                    #  59    0x2b0ea  5      
  nop                                            #  60    0x2b0ef  1      
  andl $0xffffffe0, %eax                         #  61    0x2b0f0  5      
  addq %r15, %rax                                #  62    0x2b0f5  3      
  callq %rax                                     #  63    0x2b0f8  2      
  movl %ebx, %ebx                                #  64    0x2b0fa  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  65    0x2b0fc  6      
  movl %ebx, %ebx                                #  66    0x2b102  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  67    0x2b104  5      
  movl %ebx, %ebx                                #  68    0x2b109  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  69    0x2b10b  5      
  jmpq .L_2b080                                  #  70    0x2b110  5      
  nop                                            #  71    0x2b115  1      
.L_2b1a0:                                        #        0x2b116  0      
  movl $0x10030c80, %edi                         #  72    0x2b116  5      
  nop                                            #  73    0x2b11b  1      
  nop                                            #  74    0x2b11c  1      
  callq .__cxa_guard_acquire                     #  75    0x2b11d  5      
  testl %eax, %eax                               #  76    0x2b122  2      
  jne .L_2b200                                   #  77    0x2b124  6      
  nop                                            #  78    0x2b12a  1      
  nop                                            #  79    0x2b12b  1      
.L_2b1e0:                                        #        0x2b12c  0      
  movl 0x10005b56(%rip), %eax                    #  80    0x2b12c  6      
  jmpq .L_2b160                                  #  81    0x2b132  5      
  nop                                            #  82    0x2b137  1      
  nop                                            #  83    0x2b138  1      
.L_2b200:                                        #        0x2b139  0      
  nop                                            #  84    0x2b139  1      
  nop                                            #  85    0x2b13a  1      
  callq ._ZN2pp6Module3GetEv                     #  86    0x2b13b  5      
  movl %eax, %edi                                #  87    0x2b140  2      
  movl $0x10020516, %esi                         #  88    0x2b142  5      
  nop                                            #  89    0x2b147  1      
  nop                                            #  90    0x2b148  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  91    0x2b149  5      
  movl $0x10030c80, %edi                         #  92    0x2b14e  5      
  movl %eax, 0x10005b2f(%rip)                    #  93    0x2b153  6      
  nop                                            #  94    0x2b159  1      
  nop                                            #  95    0x2b15a  1      
  callq .__cxa_guard_release                     #  96    0x2b15b  5      
  jmpq .L_2b1e0                                  #  97    0x2b160  5      
  nop                                            #  98    0x2b165  1      
  nop                                            #  99    0x2b166  1      
.L_2b280:                                        #        0x2b167  0      
  movl %eax, %ebx                                #  100   0x2b167  2      
  movl $0x10030c80, %edi                         #  101   0x2b169  5      
  nop                                            #  102   0x2b16e  1      
  nop                                            #  103   0x2b16f  1      
  callq .__cxa_guard_abort                       #  104   0x2b170  5      
  movl %ebx, %edi                                #  105   0x2b175  2      
  nop                                            #  106   0x2b177  1      
  nop                                            #  107   0x2b178  1      
  callq ._Unwind_Resume                          #  108   0x2b179  5      
  jmpq .L_2b280                                  #  109   0x2b17e  5      
  nop                                            #  110   0x2b183  1      
  nop                                            #  111   0x2b184  1      
                                                                          
.size _ZN2pp3VarC1ERKNS_8ResourceE, .-_ZN2pp3VarC1ERKNS_8ResourceE

