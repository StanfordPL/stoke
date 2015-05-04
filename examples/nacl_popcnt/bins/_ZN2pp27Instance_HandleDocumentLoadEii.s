  .text
  .globl _ZN2pp27Instance_HandleDocumentLoadEii
  .type _ZN2pp27Instance_HandleDocumentLoadEii, @function

#! file-offset 0x24d00
#! rip-offset  0x24d00
#! capacity    448 bytes

# Text                                    #  Line  RIP      Bytes  
._ZN2pp27Instance_HandleDocumentLoadEii:  #        0x24d00  0      
  pushq %r14                              #  1     0x24d00  3      
  movl %esi, %r14d                        #  2     0x24d03  3      
  pushq %r13                              #  3     0x24d06  3      
  pushq %r12                              #  4     0x24d09  3      
  pushq %rbx                              #  5     0x24d0c  2      
  movl %edi, %ebx                         #  6     0x24d0e  2      
  subl $0x18, %esp                        #  7     0x24d10  3      
  addq %r15, %rsp                         #  8     0x24d13  3      
  nop                                     #  9     0x24d16  1      
  callq ._ZN2pp6Module3GetEv              #  10    0x24d17  5      
  movl %eax, %eax                         #  11    0x24d1c  2      
  testq %rax, %rax                        #  12    0x24d1e  3      
  je .L_24e60                             #  13    0x24d21  6      
  leal 0x8(%rax), %esi                    #  14    0x24d27  3      
  movl %eax, %eax                         #  15    0x24d2a  2      
  movl 0xc(%r15,%rax,1), %eax             #  16    0x24d2c  5      
  movq %rsi, %rcx                         #  17    0x24d31  3      
  testq %rax, %rax                        #  18    0x24d34  3      
  nop                                     #  19    0x24d37  1      
  jne .L_24da0                            #  20    0x24d38  6      
  jmpq .L_24dc0                           #  21    0x24d3e  5      
  nop                                     #  22    0x24d43  1      
  nop                                     #  23    0x24d44  1      
.L_24d60:                                 #        0x24d45  0      
  movl %eax, %eax                         #  24    0x24d45  2      
  movl 0x8(%r15,%rax,1), %edx             #  25    0x24d47  5      
  movq %rax, %rcx                         #  26    0x24d4c  3      
  testq %rdx, %rdx                        #  27    0x24d4f  3      
  je .L_24dc0                             #  28    0x24d52  6      
  xchgw %ax, %ax                          #  29    0x24d58  3      
  nop                                     #  30    0x24d5b  1      
.L_24d80:                                 #        0x24d5c  0      
  movq %rdx, %rax                         #  31    0x24d5c  3      
  nop                                     #  32    0x24d5f  1      
  nop                                     #  33    0x24d60  1      
.L_24da0:                                 #        0x24d61  0      
  movl %eax, %eax                         #  34    0x24d61  2      
  cmpl 0x10(%r15,%rax,1), %ebx            #  35    0x24d63  5      
  jle .L_24d60                            #  36    0x24d68  6      
  movl %eax, %eax                         #  37    0x24d6e  2      
  movl 0xc(%r15,%rax,1), %edx             #  38    0x24d70  5      
  testq %rdx, %rdx                        #  39    0x24d75  3      
  jne .L_24d80                            #  40    0x24d78  6      
  nop                                     #  41    0x24d7e  1      
.L_24dc0:                                 #        0x24d7f  0      
  cmpl %ecx, %esi                         #  42    0x24d7f  2      
  je .L_24e60                             #  43    0x24d81  6      
  movl %ecx, %ecx                         #  44    0x24d87  2      
  cmpl 0x10(%r15,%rcx,1), %ebx            #  45    0x24d89  5      
  jl .L_24e60                             #  46    0x24d8e  6      
  movl %ecx, %ecx                         #  47    0x24d94  2      
  movl 0x14(%r15,%rcx,1), %r12d           #  48    0x24d96  5      
  testq %r12, %r12                        #  49    0x24d9b  3      
  nop                                     #  50    0x24d9e  1      
  je .L_24e60                             #  51    0x24d9f  6      
  movl %r12d, %r12d                       #  52    0x24da5  3      
  movl (%r15,%r12,1), %eax                #  53    0x24da8  4      
  movl %r14d, %esi                        #  54    0x24dac  3      
  movl %esp, %edi                         #  55    0x24daf  2      
  movl %esp, %ebx                         #  56    0x24db1  2      
  movl %eax, %eax                         #  57    0x24db3  2      
  movl 0x1c(%r15,%rax,1), %r13d           #  58    0x24db5  5      
  nop                                     #  59    0x24dba  1      
  callq ._ZN2pp9URLLoaderC1Ei             #  60    0x24dbb  5      
  movl %esp, %esi                         #  61    0x24dc0  2      
  movl %r12d, %edi                        #  62    0x24dc2  3      
  xchgw %ax, %ax                          #  63    0x24dc5  3      
  nop                                     #  64    0x24dc8  1      
  andl $0xffffffe0, %r13d                 #  65    0x24dc9  7      
  addq %r15, %r13                         #  66    0x24dd0  3      
  callq %r13                              #  67    0x24dd3  3      
  movl %esp, %edi                         #  68    0x24dd6  2      
  movzbl %al, %r12d                       #  69    0x24dd8  4      
  movl $0x100203f8, (%rsp)                #  70    0x24ddc  7      
  nop                                     #  71    0x24de3  1      
  callq ._ZN2pp8ResourceD2Ev              #  72    0x24de4  5      
.L_24e40:                                 #        0x24de9  0      
  addl $0x18, %esp                        #  73    0x24de9  3      
  addq %r15, %rsp                         #  74    0x24dec  3      
  movl %r12d, %eax                        #  75    0x24def  3      
  popq %rbx                               #  76    0x24df2  2      
  popq %r12                               #  77    0x24df4  3      
  popq %r13                               #  78    0x24df7  3      
  popq %r14                               #  79    0x24dfa  3      
  popq %r11                               #  80    0x24dfd  3      
  andl $0xffffffe0, %r11d                 #  81    0x24e00  7      
  addq %r15, %r11                         #  82    0x24e07  3      
  jmpq %r11                               #  83    0x24e0a  3      
  nop                                     #  84    0x24e0d  1      
.L_24e60:                                 #        0x24e0e  0      
  xorl %r12d, %r12d                       #  85    0x24e0e  3      
  jmpq .L_24e40                           #  86    0x24e11  5      
  nop                                     #  87    0x24e16  1      
  nop                                     #  88    0x24e17  1      
  movl %eax, %r12d                        #  89    0x24e18  3      
  movl %ebx, %edi                         #  90    0x24e1b  2      
  nop                                     #  91    0x24e1d  1      
  nop                                     #  92    0x24e1e  1      
  callq ._ZN2pp9URLLoaderD1Ev             #  93    0x24e1f  5      
  movl %r12d, %edi                        #  94    0x24e24  3      
  nop                                     #  95    0x24e27  1      
  nop                                     #  96    0x24e28  1      
  callq ._Unwind_Resume                   #  97    0x24e29  5      
                                                                   
.size _ZN2pp27Instance_HandleDocumentLoadEii, .-_ZN2pp27Instance_HandleDocumentLoadEii

