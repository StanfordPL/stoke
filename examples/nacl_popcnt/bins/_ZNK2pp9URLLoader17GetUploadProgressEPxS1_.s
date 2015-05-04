  .text
  .globl _ZNK2pp9URLLoader17GetUploadProgressEPxS1_
  .type _ZNK2pp9URLLoader17GetUploadProgressEPxS1_, @function

#! file-offset 0x28bc0
#! rip-offset  0x28bc0
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp9URLLoader17GetUploadProgressEPxS1_:     #        0x28bc0  0      
  movq %rbx, -0x18(%rsp)                         #  1     0x28bc0  5      
  movq %r12, -0x10(%rsp)                         #  2     0x28bc5  5      
  movl %edi, %ebx                                #  3     0x28bca  2      
  movq %r13, -0x8(%rsp)                          #  4     0x28bcc  5      
  subl $0x18, %esp                               #  5     0x28bd1  3      
  addq %r15, %rsp                                #  6     0x28bd4  3      
  cmpb $0x0, 0x10008082(%rip)                    #  7     0x28bd7  7      
  xchgw %ax, %ax                                 #  8     0x28bde  3      
  movl %esi, %r13d                               #  9     0x28be1  3      
  movl %edx, %r12d                               #  10    0x28be4  3      
  je .L_28c40                                    #  11    0x28be7  6      
  nop                                            #  12    0x28bed  1      
  nop                                            #  13    0x28bee  1      
.L_28c00:                                        #        0x28bef  0      
  movl 0x10008073(%rip), %edx                    #  14    0x28bef  6      
  xorl %eax, %eax                                #  15    0x28bf5  2      
  testq %rdx, %rdx                               #  16    0x28bf7  3      
  jne .L_28ce0                                   #  17    0x28bfa  6      
  nop                                            #  18    0x28c00  1      
.L_28c20:                                        #        0x28c01  0      
  movq (%rsp), %rbx                              #  19    0x28c01  4      
  movq 0x8(%rsp), %r12                           #  20    0x28c05  5      
  movq 0x10(%rsp), %r13                          #  21    0x28c0a  5      
  addl $0x18, %esp                               #  22    0x28c0f  3      
  addq %r15, %rsp                                #  23    0x28c12  3      
  popq %r11                                      #  24    0x28c15  3      
  andl $0xffffffe0, %r11d                        #  25    0x28c18  7      
  addq %r15, %r11                                #  26    0x28c1f  3      
  jmpq %r11                                      #  27    0x28c22  3      
.L_28c40:                                        #        0x28c25  0      
  movl $0x10030c60, %edi                         #  28    0x28c25  5      
  nop                                            #  29    0x28c2a  1      
  nop                                            #  30    0x28c2b  1      
  callq .__cxa_guard_acquire                     #  31    0x28c2c  5      
  testl %eax, %eax                               #  32    0x28c31  2      
  je .L_28c00                                    #  33    0x28c33  6      
  nop                                            #  34    0x28c39  1      
  nop                                            #  35    0x28c3a  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x28c3b  5      
  movl %eax, %edi                                #  37    0x28c40  2      
  movl $0x10020478, %esi                         #  38    0x28c42  5      
  nop                                            #  39    0x28c47  1      
  nop                                            #  40    0x28c48  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x28c49  5      
  movl $0x10030c60, %edi                         #  42    0x28c4e  5      
  movl %eax, 0x1000800f(%rip)                    #  43    0x28c53  6      
  nop                                            #  44    0x28c59  1      
  nop                                            #  45    0x28c5a  1      
  callq .__cxa_guard_release                     #  46    0x28c5b  5      
  movl 0x10008002(%rip), %edx                    #  47    0x28c60  6      
  xorl %eax, %eax                                #  48    0x28c66  2      
  testq %rdx, %rdx                               #  49    0x28c68  3      
  je .L_28c20                                    #  50    0x28c6b  6      
  nop                                            #  51    0x28c71  1      
.L_28ce0:                                        #        0x28c72  0      
  cmpb $0x0, 0x10007fe7(%rip)                    #  52    0x28c72  7      
  je .L_28d40                                    #  53    0x28c79  6      
  nop                                            #  54    0x28c7f  1      
  nop                                            #  55    0x28c80  1      
.L_28d00:                                        #        0x28c81  0      
  movl %edx, %edx                                #  56    0x28c81  2      
  movl 0x10(%r15,%rdx,1), %eax                   #  57    0x28c83  5      
  movl %ebx, %ebx                                #  58    0x28c88  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  59    0x28c8a  5      
  movl %r12d, %edx                               #  60    0x28c8f  3      
  movl %r13d, %esi                               #  61    0x28c92  3      
  nop                                            #  62    0x28c95  1      
  andl $0xffffffe0, %eax                         #  63    0x28c96  5      
  addq %r15, %rax                                #  64    0x28c9b  3      
  callq %rax                                     #  65    0x28c9e  2      
  testl %eax, %eax                               #  66    0x28ca0  2      
  setne %al                                      #  67    0x28ca2  3      
  jmpq .L_28c20                                  #  68    0x28ca5  5      
  nop                                            #  69    0x28caa  1      
  nop                                            #  70    0x28cab  1      
.L_28d40:                                        #        0x28cac  0      
  movl $0x10030c60, %edi                         #  71    0x28cac  5      
  nop                                            #  72    0x28cb1  1      
  nop                                            #  73    0x28cb2  1      
  callq .__cxa_guard_acquire                     #  74    0x28cb3  5      
  testl %eax, %eax                               #  75    0x28cb8  2      
  jne .L_28da0                                   #  76    0x28cba  6      
  nop                                            #  77    0x28cc0  1      
  nop                                            #  78    0x28cc1  1      
.L_28d80:                                        #        0x28cc2  0      
  movl 0x10007fa0(%rip), %edx                    #  79    0x28cc2  6      
  jmpq .L_28d00                                  #  80    0x28cc8  5      
  nop                                            #  81    0x28ccd  1      
  nop                                            #  82    0x28cce  1      
.L_28da0:                                        #        0x28ccf  0      
  nop                                            #  83    0x28ccf  1      
  nop                                            #  84    0x28cd0  1      
  callq ._ZN2pp6Module3GetEv                     #  85    0x28cd1  5      
  movl %eax, %edi                                #  86    0x28cd6  2      
  movl $0x10020478, %esi                         #  87    0x28cd8  5      
  nop                                            #  88    0x28cdd  1      
  nop                                            #  89    0x28cde  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  90    0x28cdf  5      
  movl $0x10030c60, %edi                         #  91    0x28ce4  5      
  movl %eax, 0x10007f79(%rip)                    #  92    0x28ce9  6      
  nop                                            #  93    0x28cef  1      
  nop                                            #  94    0x28cf0  1      
  callq .__cxa_guard_release                     #  95    0x28cf1  5      
  jmpq .L_28d80                                  #  96    0x28cf6  5      
  nop                                            #  97    0x28cfb  1      
  nop                                            #  98    0x28cfc  1      
.L_28e20:                                        #        0x28cfd  0      
  movl %eax, %ebx                                #  99    0x28cfd  2      
  movl $0x10030c60, %edi                         #  100   0x28cff  5      
  nop                                            #  101   0x28d04  1      
  nop                                            #  102   0x28d05  1      
  callq .__cxa_guard_abort                       #  103   0x28d06  5      
  movl %ebx, %edi                                #  104   0x28d0b  2      
  nop                                            #  105   0x28d0d  1      
  nop                                            #  106   0x28d0e  1      
  callq ._Unwind_Resume                          #  107   0x28d0f  5      
  jmpq .L_28e20                                  #  108   0x28d14  5      
  nop                                            #  109   0x28d19  1      
  nop                                            #  110   0x28d1a  1      
                                                                          
.size _ZNK2pp9URLLoader17GetUploadProgressEPxS1_, .-_ZNK2pp9URLLoader17GetUploadProgressEPxS1_

