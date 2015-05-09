  .text
  .globl _ZN2pp27Instance_HandleDocumentLoadEii
  .type _ZN2pp27Instance_HandleDocumentLoadEii, @function

#! file-offset 0x24c60
#! rip-offset  0x24c60
#! capacity    448 bytes

# Text                                    #  Line  RIP      Bytes  
._ZN2pp27Instance_HandleDocumentLoadEii:  #        0x24c60  0      
  pushq %r14                              #  1     0x24c60  3      
  movl %esi, %r14d                        #  2     0x24c63  3      
  pushq %r13                              #  3     0x24c66  3      
  pushq %r12                              #  4     0x24c69  3      
  pushq %rbx                              #  5     0x24c6c  2      
  movl %edi, %ebx                         #  6     0x24c6e  2      
  subl $0x18, %esp                        #  7     0x24c70  3      
  addq %r15, %rsp                         #  8     0x24c73  3      
  nop                                     #  9     0x24c76  1      
  callq ._ZN2pp6Module3GetEv              #  10    0x24c77  5      
  movl %eax, %eax                         #  11    0x24c7c  2      
  testq %rax, %rax                        #  12    0x24c7e  3      
  je .L_24dc0                             #  13    0x24c81  6      
  leal 0x8(%rax), %esi                    #  14    0x24c87  3      
  movl %eax, %eax                         #  15    0x24c8a  2      
  movl 0xc(%r15,%rax,1), %eax             #  16    0x24c8c  5      
  movq %rsi, %rcx                         #  17    0x24c91  3      
  testq %rax, %rax                        #  18    0x24c94  3      
  nop                                     #  19    0x24c97  1      
  jne .L_24d00                            #  20    0x24c98  6      
  jmpq .L_24d20                           #  21    0x24c9e  5      
  nop                                     #  22    0x24ca3  1      
  nop                                     #  23    0x24ca4  1      
.L_24cc0:                                 #        0x24ca5  0      
  movl %eax, %eax                         #  24    0x24ca5  2      
  movl 0x8(%r15,%rax,1), %edx             #  25    0x24ca7  5      
  movq %rax, %rcx                         #  26    0x24cac  3      
  testq %rdx, %rdx                        #  27    0x24caf  3      
  je .L_24d20                             #  28    0x24cb2  6      
  xchgw %ax, %ax                          #  29    0x24cb8  3      
  nop                                     #  30    0x24cbb  1      
.L_24ce0:                                 #        0x24cbc  0      
  movq %rdx, %rax                         #  31    0x24cbc  3      
  nop                                     #  32    0x24cbf  1      
  nop                                     #  33    0x24cc0  1      
.L_24d00:                                 #        0x24cc1  0      
  movl %eax, %eax                         #  34    0x24cc1  2      
  cmpl 0x10(%r15,%rax,1), %ebx            #  35    0x24cc3  5      
  jle .L_24cc0                            #  36    0x24cc8  6      
  movl %eax, %eax                         #  37    0x24cce  2      
  movl 0xc(%r15,%rax,1), %edx             #  38    0x24cd0  5      
  testq %rdx, %rdx                        #  39    0x24cd5  3      
  jne .L_24ce0                            #  40    0x24cd8  6      
  nop                                     #  41    0x24cde  1      
.L_24d20:                                 #        0x24cdf  0      
  cmpl %ecx, %esi                         #  42    0x24cdf  2      
  je .L_24dc0                             #  43    0x24ce1  6      
  movl %ecx, %ecx                         #  44    0x24ce7  2      
  cmpl 0x10(%r15,%rcx,1), %ebx            #  45    0x24ce9  5      
  jl .L_24dc0                             #  46    0x24cee  6      
  movl %ecx, %ecx                         #  47    0x24cf4  2      
  movl 0x14(%r15,%rcx,1), %r12d           #  48    0x24cf6  5      
  testq %r12, %r12                        #  49    0x24cfb  3      
  nop                                     #  50    0x24cfe  1      
  je .L_24dc0                             #  51    0x24cff  6      
  movl %r12d, %r12d                       #  52    0x24d05  3      
  movl (%r15,%r12,1), %eax                #  53    0x24d08  4      
  movl %r14d, %esi                        #  54    0x24d0c  3      
  movl %esp, %edi                         #  55    0x24d0f  2      
  movl %esp, %ebx                         #  56    0x24d11  2      
  movl %eax, %eax                         #  57    0x24d13  2      
  movl 0x1c(%r15,%rax,1), %r13d           #  58    0x24d15  5      
  nop                                     #  59    0x24d1a  1      
  callq ._ZN2pp9URLLoaderC1Ei             #  60    0x24d1b  5      
  movl %esp, %esi                         #  61    0x24d20  2      
  movl %r12d, %edi                        #  62    0x24d22  3      
  xchgw %ax, %ax                          #  63    0x24d25  3      
  nop                                     #  64    0x24d28  1      
  andl $0xffffffe0, %r13d                 #  65    0x24d29  7      
  addq %r15, %r13                         #  66    0x24d30  3      
  callq %r13                              #  67    0x24d33  3      
  movl %esp, %edi                         #  68    0x24d36  2      
  movzbl %al, %r12d                       #  69    0x24d38  4      
  movl $0x100203f8, (%rsp)                #  70    0x24d3c  7      
  nop                                     #  71    0x24d43  1      
  callq ._ZN2pp8ResourceD2Ev              #  72    0x24d44  5      
.L_24da0:                                 #        0x24d49  0      
  addl $0x18, %esp                        #  73    0x24d49  3      
  addq %r15, %rsp                         #  74    0x24d4c  3      
  movl %r12d, %eax                        #  75    0x24d4f  3      
  popq %rbx                               #  76    0x24d52  2      
  popq %r12                               #  77    0x24d54  3      
  popq %r13                               #  78    0x24d57  3      
  popq %r14                               #  79    0x24d5a  3      
  popq %r11                               #  80    0x24d5d  3      
  andl $0xffffffe0, %r11d                 #  81    0x24d60  7      
  addq %r15, %r11                         #  82    0x24d67  3      
  jmpq %r11                               #  83    0x24d6a  3      
  nop                                     #  84    0x24d6d  1      
.L_24dc0:                                 #        0x24d6e  0      
  xorl %r12d, %r12d                       #  85    0x24d6e  3      
  jmpq .L_24da0                           #  86    0x24d71  5      
  nop                                     #  87    0x24d76  1      
  nop                                     #  88    0x24d77  1      
  movl %eax, %r12d                        #  89    0x24d78  3      
  movl %ebx, %edi                         #  90    0x24d7b  2      
  nop                                     #  91    0x24d7d  1      
  nop                                     #  92    0x24d7e  1      
  callq ._ZN2pp9URLLoaderD1Ev             #  93    0x24d7f  5      
  movl %r12d, %edi                        #  94    0x24d84  3      
  nop                                     #  95    0x24d87  1      
  nop                                     #  96    0x24d88  1      
  callq ._Unwind_Resume                   #  97    0x24d89  5      
                                                                   
.size _ZN2pp27Instance_HandleDocumentLoadEii, .-_ZN2pp27Instance_HandleDocumentLoadEii

