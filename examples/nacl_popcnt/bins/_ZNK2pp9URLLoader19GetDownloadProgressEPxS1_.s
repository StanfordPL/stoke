  .text
  .globl _ZNK2pp9URLLoader19GetDownloadProgressEPxS1_
  .type _ZNK2pp9URLLoader19GetDownloadProgressEPxS1_, @function

#! file-offset 0x27d00
#! rip-offset  0x27d00
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp9URLLoader19GetDownloadProgressEPxS1_:   #        0x27d00  0      
  movq %rbx, -0x18(%rsp)                         #  1     0x27d00  5      
  movq %r12, -0x10(%rsp)                         #  2     0x27d05  5      
  movl %edi, %ebx                                #  3     0x27d0a  2      
  movq %r13, -0x8(%rsp)                          #  4     0x27d0c  5      
  subl $0x18, %esp                               #  5     0x27d11  3      
  addq %r15, %rsp                                #  6     0x27d14  3      
  cmpb $0x0, 0x10008f42(%rip)                    #  7     0x27d17  7      
  xchgw %ax, %ax                                 #  8     0x27d1e  3      
  movl %esi, %r13d                               #  9     0x27d21  3      
  movl %edx, %r12d                               #  10    0x27d24  3      
  je .L_27d80                                    #  11    0x27d27  6      
  nop                                            #  12    0x27d2d  1      
  nop                                            #  13    0x27d2e  1      
.L_27d40:                                        #        0x27d2f  0      
  movl 0x10008f33(%rip), %edx                    #  14    0x27d2f  6      
  xorl %eax, %eax                                #  15    0x27d35  2      
  testq %rdx, %rdx                               #  16    0x27d37  3      
  jne .L_27e20                                   #  17    0x27d3a  6      
  nop                                            #  18    0x27d40  1      
.L_27d60:                                        #        0x27d41  0      
  movq (%rsp), %rbx                              #  19    0x27d41  4      
  movq 0x8(%rsp), %r12                           #  20    0x27d45  5      
  movq 0x10(%rsp), %r13                          #  21    0x27d4a  5      
  addl $0x18, %esp                               #  22    0x27d4f  3      
  addq %r15, %rsp                                #  23    0x27d52  3      
  popq %r11                                      #  24    0x27d55  3      
  andl $0xffffffe0, %r11d                        #  25    0x27d58  7      
  addq %r15, %r11                                #  26    0x27d5f  3      
  jmpq %r11                                      #  27    0x27d62  3      
.L_27d80:                                        #        0x27d65  0      
  movl $0x10030c60, %edi                         #  28    0x27d65  5      
  nop                                            #  29    0x27d6a  1      
  nop                                            #  30    0x27d6b  1      
  callq .__cxa_guard_acquire                     #  31    0x27d6c  5      
  testl %eax, %eax                               #  32    0x27d71  2      
  je .L_27d40                                    #  33    0x27d73  6      
  nop                                            #  34    0x27d79  1      
  nop                                            #  35    0x27d7a  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x27d7b  5      
  movl %eax, %edi                                #  37    0x27d80  2      
  movl $0x10020478, %esi                         #  38    0x27d82  5      
  nop                                            #  39    0x27d87  1      
  nop                                            #  40    0x27d88  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x27d89  5      
  movl $0x10030c60, %edi                         #  42    0x27d8e  5      
  movl %eax, 0x10008ecf(%rip)                    #  43    0x27d93  6      
  nop                                            #  44    0x27d99  1      
  nop                                            #  45    0x27d9a  1      
  callq .__cxa_guard_release                     #  46    0x27d9b  5      
  movl 0x10008ec2(%rip), %edx                    #  47    0x27da0  6      
  xorl %eax, %eax                                #  48    0x27da6  2      
  testq %rdx, %rdx                               #  49    0x27da8  3      
  je .L_27d60                                    #  50    0x27dab  6      
  nop                                            #  51    0x27db1  1      
.L_27e20:                                        #        0x27db2  0      
  cmpb $0x0, 0x10008ea7(%rip)                    #  52    0x27db2  7      
  je .L_27e80                                    #  53    0x27db9  6      
  nop                                            #  54    0x27dbf  1      
  nop                                            #  55    0x27dc0  1      
.L_27e40:                                        #        0x27dc1  0      
  movl %edx, %edx                                #  56    0x27dc1  2      
  movl 0x14(%r15,%rdx,1), %eax                   #  57    0x27dc3  5      
  movl %ebx, %ebx                                #  58    0x27dc8  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  59    0x27dca  5      
  movl %r12d, %edx                               #  60    0x27dcf  3      
  movl %r13d, %esi                               #  61    0x27dd2  3      
  nop                                            #  62    0x27dd5  1      
  andl $0xffffffe0, %eax                         #  63    0x27dd6  5      
  addq %r15, %rax                                #  64    0x27ddb  3      
  callq %rax                                     #  65    0x27dde  2      
  testl %eax, %eax                               #  66    0x27de0  2      
  setne %al                                      #  67    0x27de2  3      
  jmpq .L_27d60                                  #  68    0x27de5  5      
  nop                                            #  69    0x27dea  1      
  nop                                            #  70    0x27deb  1      
.L_27e80:                                        #        0x27dec  0      
  movl $0x10030c60, %edi                         #  71    0x27dec  5      
  nop                                            #  72    0x27df1  1      
  nop                                            #  73    0x27df2  1      
  callq .__cxa_guard_acquire                     #  74    0x27df3  5      
  testl %eax, %eax                               #  75    0x27df8  2      
  jne .L_27ee0                                   #  76    0x27dfa  6      
  nop                                            #  77    0x27e00  1      
  nop                                            #  78    0x27e01  1      
.L_27ec0:                                        #        0x27e02  0      
  movl 0x10008e60(%rip), %edx                    #  79    0x27e02  6      
  jmpq .L_27e40                                  #  80    0x27e08  5      
  nop                                            #  81    0x27e0d  1      
  nop                                            #  82    0x27e0e  1      
.L_27ee0:                                        #        0x27e0f  0      
  nop                                            #  83    0x27e0f  1      
  nop                                            #  84    0x27e10  1      
  callq ._ZN2pp6Module3GetEv                     #  85    0x27e11  5      
  movl %eax, %edi                                #  86    0x27e16  2      
  movl $0x10020478, %esi                         #  87    0x27e18  5      
  nop                                            #  88    0x27e1d  1      
  nop                                            #  89    0x27e1e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  90    0x27e1f  5      
  movl $0x10030c60, %edi                         #  91    0x27e24  5      
  movl %eax, 0x10008e39(%rip)                    #  92    0x27e29  6      
  nop                                            #  93    0x27e2f  1      
  nop                                            #  94    0x27e30  1      
  callq .__cxa_guard_release                     #  95    0x27e31  5      
  jmpq .L_27ec0                                  #  96    0x27e36  5      
  nop                                            #  97    0x27e3b  1      
  nop                                            #  98    0x27e3c  1      
.L_27f60:                                        #        0x27e3d  0      
  movl %eax, %ebx                                #  99    0x27e3d  2      
  movl $0x10030c60, %edi                         #  100   0x27e3f  5      
  nop                                            #  101   0x27e44  1      
  nop                                            #  102   0x27e45  1      
  callq .__cxa_guard_abort                       #  103   0x27e46  5      
  movl %ebx, %edi                                #  104   0x27e4b  2      
  nop                                            #  105   0x27e4d  1      
  nop                                            #  106   0x27e4e  1      
  callq ._Unwind_Resume                          #  107   0x27e4f  5      
  jmpq .L_27f60                                  #  108   0x27e54  5      
  nop                                            #  109   0x27e59  1      
  nop                                            #  110   0x27e5a  1      
                                                                          
.size _ZNK2pp9URLLoader19GetDownloadProgressEPxS1_, .-_ZNK2pp9URLLoader19GetDownloadProgressEPxS1_

