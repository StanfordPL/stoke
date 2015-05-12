  .text
  .globl _ZN2pp27Instance_HandleDocumentLoadEii
  .type _ZN2pp27Instance_HandleDocumentLoadEii, @function

#! file-offset 0x24c80
#! rip-offset  0x24c80
#! capacity    448 bytes

# Text                                    #  Line  RIP      Bytes  
._ZN2pp27Instance_HandleDocumentLoadEii:  #        0x24c80  0      
  pushq %r14                              #  1     0x24c80  3      
  movl %esi, %r14d                        #  2     0x24c83  3      
  pushq %r13                              #  3     0x24c86  3      
  pushq %r12                              #  4     0x24c89  3      
  pushq %rbx                              #  5     0x24c8c  2      
  movl %edi, %ebx                         #  6     0x24c8e  2      
  subl $0x18, %esp                        #  7     0x24c90  3      
  addq %r15, %rsp                         #  8     0x24c93  3      
  nop                                     #  9     0x24c96  1      
  callq ._ZN2pp6Module3GetEv              #  10    0x24c97  5      
  movl %eax, %eax                         #  11    0x24c9c  2      
  testq %rax, %rax                        #  12    0x24c9e  3      
  je .L_24de0                             #  13    0x24ca1  6      
  leal 0x8(%rax), %esi                    #  14    0x24ca7  3      
  movl %eax, %eax                         #  15    0x24caa  2      
  movl 0xc(%r15,%rax,1), %eax             #  16    0x24cac  5      
  movq %rsi, %rcx                         #  17    0x24cb1  3      
  testq %rax, %rax                        #  18    0x24cb4  3      
  nop                                     #  19    0x24cb7  1      
  jne .L_24d20                            #  20    0x24cb8  6      
  jmpq .L_24d40                           #  21    0x24cbe  5      
  nop                                     #  22    0x24cc3  1      
  nop                                     #  23    0x24cc4  1      
.L_24ce0:                                 #        0x24cc5  0      
  movl %eax, %eax                         #  24    0x24cc5  2      
  movl 0x8(%r15,%rax,1), %edx             #  25    0x24cc7  5      
  movq %rax, %rcx                         #  26    0x24ccc  3      
  testq %rdx, %rdx                        #  27    0x24ccf  3      
  je .L_24d40                             #  28    0x24cd2  6      
  xchgw %ax, %ax                          #  29    0x24cd8  3      
  nop                                     #  30    0x24cdb  1      
.L_24d00:                                 #        0x24cdc  0      
  movq %rdx, %rax                         #  31    0x24cdc  3      
  nop                                     #  32    0x24cdf  1      
  nop                                     #  33    0x24ce0  1      
.L_24d20:                                 #        0x24ce1  0      
  movl %eax, %eax                         #  34    0x24ce1  2      
  cmpl 0x10(%r15,%rax,1), %ebx            #  35    0x24ce3  5      
  jle .L_24ce0                            #  36    0x24ce8  6      
  movl %eax, %eax                         #  37    0x24cee  2      
  movl 0xc(%r15,%rax,1), %edx             #  38    0x24cf0  5      
  testq %rdx, %rdx                        #  39    0x24cf5  3      
  jne .L_24d00                            #  40    0x24cf8  6      
  nop                                     #  41    0x24cfe  1      
.L_24d40:                                 #        0x24cff  0      
  cmpl %ecx, %esi                         #  42    0x24cff  2      
  je .L_24de0                             #  43    0x24d01  6      
  movl %ecx, %ecx                         #  44    0x24d07  2      
  cmpl 0x10(%r15,%rcx,1), %ebx            #  45    0x24d09  5      
  jl .L_24de0                             #  46    0x24d0e  6      
  movl %ecx, %ecx                         #  47    0x24d14  2      
  movl 0x14(%r15,%rcx,1), %r12d           #  48    0x24d16  5      
  testq %r12, %r12                        #  49    0x24d1b  3      
  nop                                     #  50    0x24d1e  1      
  je .L_24de0                             #  51    0x24d1f  6      
  movl %r12d, %r12d                       #  52    0x24d25  3      
  movl (%r15,%r12,1), %eax                #  53    0x24d28  4      
  movl %r14d, %esi                        #  54    0x24d2c  3      
  movl %esp, %edi                         #  55    0x24d2f  2      
  movl %esp, %ebx                         #  56    0x24d31  2      
  movl %eax, %eax                         #  57    0x24d33  2      
  movl 0x1c(%r15,%rax,1), %r13d           #  58    0x24d35  5      
  nop                                     #  59    0x24d3a  1      
  callq ._ZN2pp9URLLoaderC1Ei             #  60    0x24d3b  5      
  movl %esp, %esi                         #  61    0x24d40  2      
  movl %r12d, %edi                        #  62    0x24d42  3      
  xchgw %ax, %ax                          #  63    0x24d45  3      
  nop                                     #  64    0x24d48  1      
  andl $0xffffffe0, %r13d                 #  65    0x24d49  7      
  addq %r15, %r13                         #  66    0x24d50  3      
  callq %r13                              #  67    0x24d53  3      
  movl %esp, %edi                         #  68    0x24d56  2      
  movzbl %al, %r12d                       #  69    0x24d58  4      
  movl $0x100203f8, (%rsp)                #  70    0x24d5c  7      
  nop                                     #  71    0x24d63  1      
  callq ._ZN2pp8ResourceD2Ev              #  72    0x24d64  5      
.L_24dc0:                                 #        0x24d69  0      
  addl $0x18, %esp                        #  73    0x24d69  3      
  addq %r15, %rsp                         #  74    0x24d6c  3      
  movl %r12d, %eax                        #  75    0x24d6f  3      
  popq %rbx                               #  76    0x24d72  2      
  popq %r12                               #  77    0x24d74  3      
  popq %r13                               #  78    0x24d77  3      
  popq %r14                               #  79    0x24d7a  3      
  popq %r11                               #  80    0x24d7d  3      
  andl $0xffffffe0, %r11d                 #  81    0x24d80  7      
  addq %r15, %r11                         #  82    0x24d87  3      
  jmpq %r11                               #  83    0x24d8a  3      
  nop                                     #  84    0x24d8d  1      
.L_24de0:                                 #        0x24d8e  0      
  xorl %r12d, %r12d                       #  85    0x24d8e  3      
  jmpq .L_24dc0                           #  86    0x24d91  5      
  nop                                     #  87    0x24d96  1      
  nop                                     #  88    0x24d97  1      
  movl %eax, %r12d                        #  89    0x24d98  3      
  movl %ebx, %edi                         #  90    0x24d9b  2      
  nop                                     #  91    0x24d9d  1      
  nop                                     #  92    0x24d9e  1      
  callq ._ZN2pp9URLLoaderD1Ev             #  93    0x24d9f  5      
  movl %r12d, %edi                        #  94    0x24da4  3      
  nop                                     #  95    0x24da7  1      
  nop                                     #  96    0x24da8  1      
  callq ._Unwind_Resume                   #  97    0x24da9  5      
                                                                   
.size _ZN2pp27Instance_HandleDocumentLoadEii, .-_ZN2pp27Instance_HandleDocumentLoadEii

