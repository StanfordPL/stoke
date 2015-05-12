  .text
  .globl _ZNK2pp9URLLoader19GetDownloadProgressEPxS1_
  .type _ZNK2pp9URLLoader19GetDownloadProgressEPxS1_, @function

#! file-offset 0x27d20
#! rip-offset  0x27d20
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp9URLLoader19GetDownloadProgressEPxS1_:   #        0x27d20  0      
  movq %rbx, -0x18(%rsp)                         #  1     0x27d20  5      
  movq %r12, -0x10(%rsp)                         #  2     0x27d25  5      
  movl %edi, %ebx                                #  3     0x27d2a  2      
  movq %r13, -0x8(%rsp)                          #  4     0x27d2c  5      
  subl $0x18, %esp                               #  5     0x27d31  3      
  addq %r15, %rsp                                #  6     0x27d34  3      
  cmpb $0x0, 0x10008f22(%rip)                    #  7     0x27d37  7      
  xchgw %ax, %ax                                 #  8     0x27d3e  3      
  movl %esi, %r13d                               #  9     0x27d41  3      
  movl %edx, %r12d                               #  10    0x27d44  3      
  je .L_27da0                                    #  11    0x27d47  6      
  nop                                            #  12    0x27d4d  1      
  nop                                            #  13    0x27d4e  1      
.L_27d60:                                        #        0x27d4f  0      
  movl 0x10008f13(%rip), %edx                    #  14    0x27d4f  6      
  xorl %eax, %eax                                #  15    0x27d55  2      
  testq %rdx, %rdx                               #  16    0x27d57  3      
  jne .L_27e40                                   #  17    0x27d5a  6      
  nop                                            #  18    0x27d60  1      
.L_27d80:                                        #        0x27d61  0      
  movq (%rsp), %rbx                              #  19    0x27d61  4      
  movq 0x8(%rsp), %r12                           #  20    0x27d65  5      
  movq 0x10(%rsp), %r13                          #  21    0x27d6a  5      
  addl $0x18, %esp                               #  22    0x27d6f  3      
  addq %r15, %rsp                                #  23    0x27d72  3      
  popq %r11                                      #  24    0x27d75  3      
  andl $0xffffffe0, %r11d                        #  25    0x27d78  7      
  addq %r15, %r11                                #  26    0x27d7f  3      
  jmpq %r11                                      #  27    0x27d82  3      
.L_27da0:                                        #        0x27d85  0      
  movl $0x10030c60, %edi                         #  28    0x27d85  5      
  nop                                            #  29    0x27d8a  1      
  nop                                            #  30    0x27d8b  1      
  callq .__cxa_guard_acquire                     #  31    0x27d8c  5      
  testl %eax, %eax                               #  32    0x27d91  2      
  je .L_27d60                                    #  33    0x27d93  6      
  nop                                            #  34    0x27d99  1      
  nop                                            #  35    0x27d9a  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x27d9b  5      
  movl %eax, %edi                                #  37    0x27da0  2      
  movl $0x10020478, %esi                         #  38    0x27da2  5      
  nop                                            #  39    0x27da7  1      
  nop                                            #  40    0x27da8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x27da9  5      
  movl $0x10030c60, %edi                         #  42    0x27dae  5      
  movl %eax, 0x10008eaf(%rip)                    #  43    0x27db3  6      
  nop                                            #  44    0x27db9  1      
  nop                                            #  45    0x27dba  1      
  callq .__cxa_guard_release                     #  46    0x27dbb  5      
  movl 0x10008ea2(%rip), %edx                    #  47    0x27dc0  6      
  xorl %eax, %eax                                #  48    0x27dc6  2      
  testq %rdx, %rdx                               #  49    0x27dc8  3      
  je .L_27d80                                    #  50    0x27dcb  6      
  nop                                            #  51    0x27dd1  1      
.L_27e40:                                        #        0x27dd2  0      
  cmpb $0x0, 0x10008e87(%rip)                    #  52    0x27dd2  7      
  je .L_27ea0                                    #  53    0x27dd9  6      
  nop                                            #  54    0x27ddf  1      
  nop                                            #  55    0x27de0  1      
.L_27e60:                                        #        0x27de1  0      
  movl %edx, %edx                                #  56    0x27de1  2      
  movl 0x14(%r15,%rdx,1), %eax                   #  57    0x27de3  5      
  movl %ebx, %ebx                                #  58    0x27de8  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  59    0x27dea  5      
  movl %r12d, %edx                               #  60    0x27def  3      
  movl %r13d, %esi                               #  61    0x27df2  3      
  nop                                            #  62    0x27df5  1      
  andl $0xffffffe0, %eax                         #  63    0x27df6  5      
  addq %r15, %rax                                #  64    0x27dfb  3      
  callq %rax                                     #  65    0x27dfe  2      
  testl %eax, %eax                               #  66    0x27e00  2      
  setne %al                                      #  67    0x27e02  3      
  jmpq .L_27d80                                  #  68    0x27e05  5      
  nop                                            #  69    0x27e0a  1      
  nop                                            #  70    0x27e0b  1      
.L_27ea0:                                        #        0x27e0c  0      
  movl $0x10030c60, %edi                         #  71    0x27e0c  5      
  nop                                            #  72    0x27e11  1      
  nop                                            #  73    0x27e12  1      
  callq .__cxa_guard_acquire                     #  74    0x27e13  5      
  testl %eax, %eax                               #  75    0x27e18  2      
  jne .L_27f00                                   #  76    0x27e1a  6      
  nop                                            #  77    0x27e20  1      
  nop                                            #  78    0x27e21  1      
.L_27ee0:                                        #        0x27e22  0      
  movl 0x10008e40(%rip), %edx                    #  79    0x27e22  6      
  jmpq .L_27e60                                  #  80    0x27e28  5      
  nop                                            #  81    0x27e2d  1      
  nop                                            #  82    0x27e2e  1      
.L_27f00:                                        #        0x27e2f  0      
  nop                                            #  83    0x27e2f  1      
  nop                                            #  84    0x27e30  1      
  callq ._ZN2pp6Module3GetEv                     #  85    0x27e31  5      
  movl %eax, %edi                                #  86    0x27e36  2      
  movl $0x10020478, %esi                         #  87    0x27e38  5      
  nop                                            #  88    0x27e3d  1      
  nop                                            #  89    0x27e3e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  90    0x27e3f  5      
  movl $0x10030c60, %edi                         #  91    0x27e44  5      
  movl %eax, 0x10008e19(%rip)                    #  92    0x27e49  6      
  nop                                            #  93    0x27e4f  1      
  nop                                            #  94    0x27e50  1      
  callq .__cxa_guard_release                     #  95    0x27e51  5      
  jmpq .L_27ee0                                  #  96    0x27e56  5      
  nop                                            #  97    0x27e5b  1      
  nop                                            #  98    0x27e5c  1      
.L_27f80:                                        #        0x27e5d  0      
  movl %eax, %ebx                                #  99    0x27e5d  2      
  movl $0x10030c60, %edi                         #  100   0x27e5f  5      
  nop                                            #  101   0x27e64  1      
  nop                                            #  102   0x27e65  1      
  callq .__cxa_guard_abort                       #  103   0x27e66  5      
  movl %ebx, %edi                                #  104   0x27e6b  2      
  nop                                            #  105   0x27e6d  1      
  nop                                            #  106   0x27e6e  1      
  callq ._Unwind_Resume                          #  107   0x27e6f  5      
  jmpq .L_27f80                                  #  108   0x27e74  5      
  nop                                            #  109   0x27e79  1      
  nop                                            #  110   0x27e7a  1      
                                                                          
.size _ZNK2pp9URLLoader19GetDownloadProgressEPxS1_, .-_ZNK2pp9URLLoader19GetDownloadProgressEPxS1_

