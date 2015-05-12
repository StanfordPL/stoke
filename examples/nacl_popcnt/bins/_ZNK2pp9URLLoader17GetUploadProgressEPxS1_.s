  .text
  .globl _ZNK2pp9URLLoader17GetUploadProgressEPxS1_
  .type _ZNK2pp9URLLoader17GetUploadProgressEPxS1_, @function

#! file-offset 0x28b40
#! rip-offset  0x28b40
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp9URLLoader17GetUploadProgressEPxS1_:     #        0x28b40  0      
  movq %rbx, -0x18(%rsp)                         #  1     0x28b40  5      
  movq %r12, -0x10(%rsp)                         #  2     0x28b45  5      
  movl %edi, %ebx                                #  3     0x28b4a  2      
  movq %r13, -0x8(%rsp)                          #  4     0x28b4c  5      
  subl $0x18, %esp                               #  5     0x28b51  3      
  addq %r15, %rsp                                #  6     0x28b54  3      
  cmpb $0x0, 0x10008102(%rip)                    #  7     0x28b57  7      
  xchgw %ax, %ax                                 #  8     0x28b5e  3      
  movl %esi, %r13d                               #  9     0x28b61  3      
  movl %edx, %r12d                               #  10    0x28b64  3      
  je .L_28bc0                                    #  11    0x28b67  6      
  nop                                            #  12    0x28b6d  1      
  nop                                            #  13    0x28b6e  1      
.L_28b80:                                        #        0x28b6f  0      
  movl 0x100080f3(%rip), %edx                    #  14    0x28b6f  6      
  xorl %eax, %eax                                #  15    0x28b75  2      
  testq %rdx, %rdx                               #  16    0x28b77  3      
  jne .L_28c60                                   #  17    0x28b7a  6      
  nop                                            #  18    0x28b80  1      
.L_28ba0:                                        #        0x28b81  0      
  movq (%rsp), %rbx                              #  19    0x28b81  4      
  movq 0x8(%rsp), %r12                           #  20    0x28b85  5      
  movq 0x10(%rsp), %r13                          #  21    0x28b8a  5      
  addl $0x18, %esp                               #  22    0x28b8f  3      
  addq %r15, %rsp                                #  23    0x28b92  3      
  popq %r11                                      #  24    0x28b95  3      
  andl $0xffffffe0, %r11d                        #  25    0x28b98  7      
  addq %r15, %r11                                #  26    0x28b9f  3      
  jmpq %r11                                      #  27    0x28ba2  3      
.L_28bc0:                                        #        0x28ba5  0      
  movl $0x10030c60, %edi                         #  28    0x28ba5  5      
  nop                                            #  29    0x28baa  1      
  nop                                            #  30    0x28bab  1      
  callq .__cxa_guard_acquire                     #  31    0x28bac  5      
  testl %eax, %eax                               #  32    0x28bb1  2      
  je .L_28b80                                    #  33    0x28bb3  6      
  nop                                            #  34    0x28bb9  1      
  nop                                            #  35    0x28bba  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x28bbb  5      
  movl %eax, %edi                                #  37    0x28bc0  2      
  movl $0x10020478, %esi                         #  38    0x28bc2  5      
  nop                                            #  39    0x28bc7  1      
  nop                                            #  40    0x28bc8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x28bc9  5      
  movl $0x10030c60, %edi                         #  42    0x28bce  5      
  movl %eax, 0x1000808f(%rip)                    #  43    0x28bd3  6      
  nop                                            #  44    0x28bd9  1      
  nop                                            #  45    0x28bda  1      
  callq .__cxa_guard_release                     #  46    0x28bdb  5      
  movl 0x10008082(%rip), %edx                    #  47    0x28be0  6      
  xorl %eax, %eax                                #  48    0x28be6  2      
  testq %rdx, %rdx                               #  49    0x28be8  3      
  je .L_28ba0                                    #  50    0x28beb  6      
  nop                                            #  51    0x28bf1  1      
.L_28c60:                                        #        0x28bf2  0      
  cmpb $0x0, 0x10008067(%rip)                    #  52    0x28bf2  7      
  je .L_28cc0                                    #  53    0x28bf9  6      
  nop                                            #  54    0x28bff  1      
  nop                                            #  55    0x28c00  1      
.L_28c80:                                        #        0x28c01  0      
  movl %edx, %edx                                #  56    0x28c01  2      
  movl 0x10(%r15,%rdx,1), %eax                   #  57    0x28c03  5      
  movl %ebx, %ebx                                #  58    0x28c08  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  59    0x28c0a  5      
  movl %r12d, %edx                               #  60    0x28c0f  3      
  movl %r13d, %esi                               #  61    0x28c12  3      
  nop                                            #  62    0x28c15  1      
  andl $0xffffffe0, %eax                         #  63    0x28c16  5      
  addq %r15, %rax                                #  64    0x28c1b  3      
  callq %rax                                     #  65    0x28c1e  2      
  testl %eax, %eax                               #  66    0x28c20  2      
  setne %al                                      #  67    0x28c22  3      
  jmpq .L_28ba0                                  #  68    0x28c25  5      
  nop                                            #  69    0x28c2a  1      
  nop                                            #  70    0x28c2b  1      
.L_28cc0:                                        #        0x28c2c  0      
  movl $0x10030c60, %edi                         #  71    0x28c2c  5      
  nop                                            #  72    0x28c31  1      
  nop                                            #  73    0x28c32  1      
  callq .__cxa_guard_acquire                     #  74    0x28c33  5      
  testl %eax, %eax                               #  75    0x28c38  2      
  jne .L_28d20                                   #  76    0x28c3a  6      
  nop                                            #  77    0x28c40  1      
  nop                                            #  78    0x28c41  1      
.L_28d00:                                        #        0x28c42  0      
  movl 0x10008020(%rip), %edx                    #  79    0x28c42  6      
  jmpq .L_28c80                                  #  80    0x28c48  5      
  nop                                            #  81    0x28c4d  1      
  nop                                            #  82    0x28c4e  1      
.L_28d20:                                        #        0x28c4f  0      
  nop                                            #  83    0x28c4f  1      
  nop                                            #  84    0x28c50  1      
  callq ._ZN2pp6Module3GetEv                     #  85    0x28c51  5      
  movl %eax, %edi                                #  86    0x28c56  2      
  movl $0x10020478, %esi                         #  87    0x28c58  5      
  nop                                            #  88    0x28c5d  1      
  nop                                            #  89    0x28c5e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  90    0x28c5f  5      
  movl $0x10030c60, %edi                         #  91    0x28c64  5      
  movl %eax, 0x10007ff9(%rip)                    #  92    0x28c69  6      
  nop                                            #  93    0x28c6f  1      
  nop                                            #  94    0x28c70  1      
  callq .__cxa_guard_release                     #  95    0x28c71  5      
  jmpq .L_28d00                                  #  96    0x28c76  5      
  nop                                            #  97    0x28c7b  1      
  nop                                            #  98    0x28c7c  1      
.L_28da0:                                        #        0x28c7d  0      
  movl %eax, %ebx                                #  99    0x28c7d  2      
  movl $0x10030c60, %edi                         #  100   0x28c7f  5      
  nop                                            #  101   0x28c84  1      
  nop                                            #  102   0x28c85  1      
  callq .__cxa_guard_abort                       #  103   0x28c86  5      
  movl %ebx, %edi                                #  104   0x28c8b  2      
  nop                                            #  105   0x28c8d  1      
  nop                                            #  106   0x28c8e  1      
  callq ._Unwind_Resume                          #  107   0x28c8f  5      
  jmpq .L_28da0                                  #  108   0x28c94  5      
  nop                                            #  109   0x28c99  1      
  nop                                            #  110   0x28c9a  1      
                                                                          
.size _ZNK2pp9URLLoader17GetUploadProgressEPxS1_, .-_ZNK2pp9URLLoader17GetUploadProgressEPxS1_

