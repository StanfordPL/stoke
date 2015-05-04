  .text
  .globl _ZNK2pp9URLLoader19GetDownloadProgressEPxS1_
  .type _ZNK2pp9URLLoader19GetDownloadProgressEPxS1_, @function

#! file-offset 0x27da0
#! rip-offset  0x27da0
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp9URLLoader19GetDownloadProgressEPxS1_:   #        0x27da0  0      
  movq %rbx, -0x18(%rsp)                         #  1     0x27da0  5      
  movq %r12, -0x10(%rsp)                         #  2     0x27da5  5      
  movl %edi, %ebx                                #  3     0x27daa  2      
  movq %r13, -0x8(%rsp)                          #  4     0x27dac  5      
  subl $0x18, %esp                               #  5     0x27db1  3      
  addq %r15, %rsp                                #  6     0x27db4  3      
  cmpb $0x0, 0x10008ea2(%rip)                    #  7     0x27db7  7      
  xchgw %ax, %ax                                 #  8     0x27dbe  3      
  movl %esi, %r13d                               #  9     0x27dc1  3      
  movl %edx, %r12d                               #  10    0x27dc4  3      
  je .L_27e20                                    #  11    0x27dc7  6      
  nop                                            #  12    0x27dcd  1      
  nop                                            #  13    0x27dce  1      
.L_27de0:                                        #        0x27dcf  0      
  movl 0x10008e93(%rip), %edx                    #  14    0x27dcf  6      
  xorl %eax, %eax                                #  15    0x27dd5  2      
  testq %rdx, %rdx                               #  16    0x27dd7  3      
  jne .L_27ec0                                   #  17    0x27dda  6      
  nop                                            #  18    0x27de0  1      
.L_27e00:                                        #        0x27de1  0      
  movq (%rsp), %rbx                              #  19    0x27de1  4      
  movq 0x8(%rsp), %r12                           #  20    0x27de5  5      
  movq 0x10(%rsp), %r13                          #  21    0x27dea  5      
  addl $0x18, %esp                               #  22    0x27def  3      
  addq %r15, %rsp                                #  23    0x27df2  3      
  popq %r11                                      #  24    0x27df5  3      
  andl $0xffffffe0, %r11d                        #  25    0x27df8  7      
  addq %r15, %r11                                #  26    0x27dff  3      
  jmpq %r11                                      #  27    0x27e02  3      
.L_27e20:                                        #        0x27e05  0      
  movl $0x10030c60, %edi                         #  28    0x27e05  5      
  nop                                            #  29    0x27e0a  1      
  nop                                            #  30    0x27e0b  1      
  callq .__cxa_guard_acquire                     #  31    0x27e0c  5      
  testl %eax, %eax                               #  32    0x27e11  2      
  je .L_27de0                                    #  33    0x27e13  6      
  nop                                            #  34    0x27e19  1      
  nop                                            #  35    0x27e1a  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x27e1b  5      
  movl %eax, %edi                                #  37    0x27e20  2      
  movl $0x10020478, %esi                         #  38    0x27e22  5      
  nop                                            #  39    0x27e27  1      
  nop                                            #  40    0x27e28  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x27e29  5      
  movl $0x10030c60, %edi                         #  42    0x27e2e  5      
  movl %eax, 0x10008e2f(%rip)                    #  43    0x27e33  6      
  nop                                            #  44    0x27e39  1      
  nop                                            #  45    0x27e3a  1      
  callq .__cxa_guard_release                     #  46    0x27e3b  5      
  movl 0x10008e22(%rip), %edx                    #  47    0x27e40  6      
  xorl %eax, %eax                                #  48    0x27e46  2      
  testq %rdx, %rdx                               #  49    0x27e48  3      
  je .L_27e00                                    #  50    0x27e4b  6      
  nop                                            #  51    0x27e51  1      
.L_27ec0:                                        #        0x27e52  0      
  cmpb $0x0, 0x10008e07(%rip)                    #  52    0x27e52  7      
  je .L_27f20                                    #  53    0x27e59  6      
  nop                                            #  54    0x27e5f  1      
  nop                                            #  55    0x27e60  1      
.L_27ee0:                                        #        0x27e61  0      
  movl %edx, %edx                                #  56    0x27e61  2      
  movl 0x14(%r15,%rdx,1), %eax                   #  57    0x27e63  5      
  movl %ebx, %ebx                                #  58    0x27e68  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  59    0x27e6a  5      
  movl %r12d, %edx                               #  60    0x27e6f  3      
  movl %r13d, %esi                               #  61    0x27e72  3      
  nop                                            #  62    0x27e75  1      
  andl $0xffffffe0, %eax                         #  63    0x27e76  5      
  addq %r15, %rax                                #  64    0x27e7b  3      
  callq %rax                                     #  65    0x27e7e  2      
  testl %eax, %eax                               #  66    0x27e80  2      
  setne %al                                      #  67    0x27e82  3      
  jmpq .L_27e00                                  #  68    0x27e85  5      
  nop                                            #  69    0x27e8a  1      
  nop                                            #  70    0x27e8b  1      
.L_27f20:                                        #        0x27e8c  0      
  movl $0x10030c60, %edi                         #  71    0x27e8c  5      
  nop                                            #  72    0x27e91  1      
  nop                                            #  73    0x27e92  1      
  callq .__cxa_guard_acquire                     #  74    0x27e93  5      
  testl %eax, %eax                               #  75    0x27e98  2      
  jne .L_27f80                                   #  76    0x27e9a  6      
  nop                                            #  77    0x27ea0  1      
  nop                                            #  78    0x27ea1  1      
.L_27f60:                                        #        0x27ea2  0      
  movl 0x10008dc0(%rip), %edx                    #  79    0x27ea2  6      
  jmpq .L_27ee0                                  #  80    0x27ea8  5      
  nop                                            #  81    0x27ead  1      
  nop                                            #  82    0x27eae  1      
.L_27f80:                                        #        0x27eaf  0      
  nop                                            #  83    0x27eaf  1      
  nop                                            #  84    0x27eb0  1      
  callq ._ZN2pp6Module3GetEv                     #  85    0x27eb1  5      
  movl %eax, %edi                                #  86    0x27eb6  2      
  movl $0x10020478, %esi                         #  87    0x27eb8  5      
  nop                                            #  88    0x27ebd  1      
  nop                                            #  89    0x27ebe  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  90    0x27ebf  5      
  movl $0x10030c60, %edi                         #  91    0x27ec4  5      
  movl %eax, 0x10008d99(%rip)                    #  92    0x27ec9  6      
  nop                                            #  93    0x27ecf  1      
  nop                                            #  94    0x27ed0  1      
  callq .__cxa_guard_release                     #  95    0x27ed1  5      
  jmpq .L_27f60                                  #  96    0x27ed6  5      
  nop                                            #  97    0x27edb  1      
  nop                                            #  98    0x27edc  1      
.L_28000:                                        #        0x27edd  0      
  movl %eax, %ebx                                #  99    0x27edd  2      
  movl $0x10030c60, %edi                         #  100   0x27edf  5      
  nop                                            #  101   0x27ee4  1      
  nop                                            #  102   0x27ee5  1      
  callq .__cxa_guard_abort                       #  103   0x27ee6  5      
  movl %ebx, %edi                                #  104   0x27eeb  2      
  nop                                            #  105   0x27eed  1      
  nop                                            #  106   0x27eee  1      
  callq ._Unwind_Resume                          #  107   0x27eef  5      
  jmpq .L_28000                                  #  108   0x27ef4  5      
  nop                                            #  109   0x27ef9  1      
  nop                                            #  110   0x27efa  1      
                                                                          
.size _ZNK2pp9URLLoader19GetDownloadProgressEPxS1_, .-_ZNK2pp9URLLoader19GetDownloadProgressEPxS1_

