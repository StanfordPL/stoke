  .text
  .globl _ZNK2pp9URLLoader17GetUploadProgressEPxS1_
  .type _ZNK2pp9URLLoader17GetUploadProgressEPxS1_, @function

#! file-offset 0x28b20
#! rip-offset  0x28b20
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp9URLLoader17GetUploadProgressEPxS1_:     #        0x28b20  0      
  movq %rbx, -0x18(%rsp)                         #  1     0x28b20  5      
  movq %r12, -0x10(%rsp)                         #  2     0x28b25  5      
  movl %edi, %ebx                                #  3     0x28b2a  2      
  movq %r13, -0x8(%rsp)                          #  4     0x28b2c  5      
  subl $0x18, %esp                               #  5     0x28b31  3      
  addq %r15, %rsp                                #  6     0x28b34  3      
  cmpb $0x0, 0x10008122(%rip)                    #  7     0x28b37  7      
  xchgw %ax, %ax                                 #  8     0x28b3e  3      
  movl %esi, %r13d                               #  9     0x28b41  3      
  movl %edx, %r12d                               #  10    0x28b44  3      
  je .L_28ba0                                    #  11    0x28b47  6      
  nop                                            #  12    0x28b4d  1      
  nop                                            #  13    0x28b4e  1      
.L_28b60:                                        #        0x28b4f  0      
  movl 0x10008113(%rip), %edx                    #  14    0x28b4f  6      
  xorl %eax, %eax                                #  15    0x28b55  2      
  testq %rdx, %rdx                               #  16    0x28b57  3      
  jne .L_28c40                                   #  17    0x28b5a  6      
  nop                                            #  18    0x28b60  1      
.L_28b80:                                        #        0x28b61  0      
  movq (%rsp), %rbx                              #  19    0x28b61  4      
  movq 0x8(%rsp), %r12                           #  20    0x28b65  5      
  movq 0x10(%rsp), %r13                          #  21    0x28b6a  5      
  addl $0x18, %esp                               #  22    0x28b6f  3      
  addq %r15, %rsp                                #  23    0x28b72  3      
  popq %r11                                      #  24    0x28b75  3      
  andl $0xffffffe0, %r11d                        #  25    0x28b78  7      
  addq %r15, %r11                                #  26    0x28b7f  3      
  jmpq %r11                                      #  27    0x28b82  3      
.L_28ba0:                                        #        0x28b85  0      
  movl $0x10030c60, %edi                         #  28    0x28b85  5      
  nop                                            #  29    0x28b8a  1      
  nop                                            #  30    0x28b8b  1      
  callq .__cxa_guard_acquire                     #  31    0x28b8c  5      
  testl %eax, %eax                               #  32    0x28b91  2      
  je .L_28b60                                    #  33    0x28b93  6      
  nop                                            #  34    0x28b99  1      
  nop                                            #  35    0x28b9a  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x28b9b  5      
  movl %eax, %edi                                #  37    0x28ba0  2      
  movl $0x10020478, %esi                         #  38    0x28ba2  5      
  nop                                            #  39    0x28ba7  1      
  nop                                            #  40    0x28ba8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x28ba9  5      
  movl $0x10030c60, %edi                         #  42    0x28bae  5      
  movl %eax, 0x100080af(%rip)                    #  43    0x28bb3  6      
  nop                                            #  44    0x28bb9  1      
  nop                                            #  45    0x28bba  1      
  callq .__cxa_guard_release                     #  46    0x28bbb  5      
  movl 0x100080a2(%rip), %edx                    #  47    0x28bc0  6      
  xorl %eax, %eax                                #  48    0x28bc6  2      
  testq %rdx, %rdx                               #  49    0x28bc8  3      
  je .L_28b80                                    #  50    0x28bcb  6      
  nop                                            #  51    0x28bd1  1      
.L_28c40:                                        #        0x28bd2  0      
  cmpb $0x0, 0x10008087(%rip)                    #  52    0x28bd2  7      
  je .L_28ca0                                    #  53    0x28bd9  6      
  nop                                            #  54    0x28bdf  1      
  nop                                            #  55    0x28be0  1      
.L_28c60:                                        #        0x28be1  0      
  movl %edx, %edx                                #  56    0x28be1  2      
  movl 0x10(%r15,%rdx,1), %eax                   #  57    0x28be3  5      
  movl %ebx, %ebx                                #  58    0x28be8  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  59    0x28bea  5      
  movl %r12d, %edx                               #  60    0x28bef  3      
  movl %r13d, %esi                               #  61    0x28bf2  3      
  nop                                            #  62    0x28bf5  1      
  andl $0xffffffe0, %eax                         #  63    0x28bf6  5      
  addq %r15, %rax                                #  64    0x28bfb  3      
  callq %rax                                     #  65    0x28bfe  2      
  testl %eax, %eax                               #  66    0x28c00  2      
  setne %al                                      #  67    0x28c02  3      
  jmpq .L_28b80                                  #  68    0x28c05  5      
  nop                                            #  69    0x28c0a  1      
  nop                                            #  70    0x28c0b  1      
.L_28ca0:                                        #        0x28c0c  0      
  movl $0x10030c60, %edi                         #  71    0x28c0c  5      
  nop                                            #  72    0x28c11  1      
  nop                                            #  73    0x28c12  1      
  callq .__cxa_guard_acquire                     #  74    0x28c13  5      
  testl %eax, %eax                               #  75    0x28c18  2      
  jne .L_28d00                                   #  76    0x28c1a  6      
  nop                                            #  77    0x28c20  1      
  nop                                            #  78    0x28c21  1      
.L_28ce0:                                        #        0x28c22  0      
  movl 0x10008040(%rip), %edx                    #  79    0x28c22  6      
  jmpq .L_28c60                                  #  80    0x28c28  5      
  nop                                            #  81    0x28c2d  1      
  nop                                            #  82    0x28c2e  1      
.L_28d00:                                        #        0x28c2f  0      
  nop                                            #  83    0x28c2f  1      
  nop                                            #  84    0x28c30  1      
  callq ._ZN2pp6Module3GetEv                     #  85    0x28c31  5      
  movl %eax, %edi                                #  86    0x28c36  2      
  movl $0x10020478, %esi                         #  87    0x28c38  5      
  nop                                            #  88    0x28c3d  1      
  nop                                            #  89    0x28c3e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  90    0x28c3f  5      
  movl $0x10030c60, %edi                         #  91    0x28c44  5      
  movl %eax, 0x10008019(%rip)                    #  92    0x28c49  6      
  nop                                            #  93    0x28c4f  1      
  nop                                            #  94    0x28c50  1      
  callq .__cxa_guard_release                     #  95    0x28c51  5      
  jmpq .L_28ce0                                  #  96    0x28c56  5      
  nop                                            #  97    0x28c5b  1      
  nop                                            #  98    0x28c5c  1      
.L_28d80:                                        #        0x28c5d  0      
  movl %eax, %ebx                                #  99    0x28c5d  2      
  movl $0x10030c60, %edi                         #  100   0x28c5f  5      
  nop                                            #  101   0x28c64  1      
  nop                                            #  102   0x28c65  1      
  callq .__cxa_guard_abort                       #  103   0x28c66  5      
  movl %ebx, %edi                                #  104   0x28c6b  2      
  nop                                            #  105   0x28c6d  1      
  nop                                            #  106   0x28c6e  1      
  callq ._Unwind_Resume                          #  107   0x28c6f  5      
  jmpq .L_28d80                                  #  108   0x28c74  5      
  nop                                            #  109   0x28c79  1      
  nop                                            #  110   0x28c7a  1      
                                                                          
.size _ZNK2pp9URLLoader17GetUploadProgressEPxS1_, .-_ZNK2pp9URLLoader17GetUploadProgressEPxS1_

