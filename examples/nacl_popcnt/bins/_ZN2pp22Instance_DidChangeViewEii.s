  .text
  .globl _ZN2pp22Instance_DidChangeViewEii
  .type _ZN2pp22Instance_DidChangeViewEii, @function

#! file-offset 0x24e40
#! rip-offset  0x24e40
#! capacity    416 bytes

# Text                               #  Line  RIP      Bytes  
._ZN2pp22Instance_DidChangeViewEii:  #        0x24e40  0      
  pushq %r14                         #  1     0x24e40  3      
  movl %esi, %r14d                   #  2     0x24e43  3      
  pushq %r13                         #  3     0x24e46  3      
  pushq %r12                         #  4     0x24e49  3      
  pushq %rbx                         #  5     0x24e4c  2      
  movl %edi, %ebx                    #  6     0x24e4e  2      
  subl $0x18, %esp                   #  7     0x24e50  3      
  addq %r15, %rsp                    #  8     0x24e53  3      
  nop                                #  9     0x24e56  1      
  callq ._ZN2pp6Module3GetEv         #  10    0x24e57  5      
  movl %eax, %eax                    #  11    0x24e5c  2      
  testq %rax, %rax                   #  12    0x24e5e  3      
  je .L_24f80                        #  13    0x24e61  6      
  leal 0x8(%rax), %esi               #  14    0x24e67  3      
  movl %eax, %eax                    #  15    0x24e6a  2      
  movl 0xc(%r15,%rax,1), %eax        #  16    0x24e6c  5      
  movq %rsi, %rcx                    #  17    0x24e71  3      
  testq %rax, %rax                   #  18    0x24e74  3      
  nop                                #  19    0x24e77  1      
  jne .L_24ee0                       #  20    0x24e78  6      
  jmpq .L_24f00                      #  21    0x24e7e  5      
  nop                                #  22    0x24e83  1      
  nop                                #  23    0x24e84  1      
.L_24ea0:                            #        0x24e85  0      
  movl %eax, %eax                    #  24    0x24e85  2      
  movl 0x8(%r15,%rax,1), %edx        #  25    0x24e87  5      
  movq %rax, %rcx                    #  26    0x24e8c  3      
  testq %rdx, %rdx                   #  27    0x24e8f  3      
  je .L_24f00                        #  28    0x24e92  6      
  xchgw %ax, %ax                     #  29    0x24e98  3      
  nop                                #  30    0x24e9b  1      
.L_24ec0:                            #        0x24e9c  0      
  movq %rdx, %rax                    #  31    0x24e9c  3      
  nop                                #  32    0x24e9f  1      
  nop                                #  33    0x24ea0  1      
.L_24ee0:                            #        0x24ea1  0      
  movl %eax, %eax                    #  34    0x24ea1  2      
  cmpl 0x10(%r15,%rax,1), %ebx       #  35    0x24ea3  5      
  jle .L_24ea0                       #  36    0x24ea8  6      
  movl %eax, %eax                    #  37    0x24eae  2      
  movl 0xc(%r15,%rax,1), %edx        #  38    0x24eb0  5      
  testq %rdx, %rdx                   #  39    0x24eb5  3      
  jne .L_24ec0                       #  40    0x24eb8  6      
  nop                                #  41    0x24ebe  1      
.L_24f00:                            #        0x24ebf  0      
  cmpl %ecx, %esi                    #  42    0x24ebf  2      
  je .L_24f80                        #  43    0x24ec1  6      
  movl %ecx, %ecx                    #  44    0x24ec7  2      
  cmpl 0x10(%r15,%rcx,1), %ebx       #  45    0x24ec9  5      
  jl .L_24f80                        #  46    0x24ece  6      
  movl %ecx, %ecx                    #  47    0x24ed4  2      
  movl 0x14(%r15,%rcx,1), %r12d      #  48    0x24ed6  5      
  testq %r12, %r12                   #  49    0x24edb  3      
  je .L_24f80                        #  50    0x24ede  6      
  movl %r12d, %r12d                  #  51    0x24ee4  3      
  movl (%r15,%r12,1), %eax           #  52    0x24ee7  4      
  movl %r14d, %esi                   #  53    0x24eeb  3      
  movl %esp, %edi                    #  54    0x24eee  2      
  movl %esp, %ebx                    #  55    0x24ef0  2      
  movl %eax, %eax                    #  56    0x24ef2  2      
  movl 0xc(%r15,%rax,1), %r13d       #  57    0x24ef4  5      
  nop                                #  58    0x24ef9  1      
  callq ._ZN2pp4ViewC1Ei             #  59    0x24efa  5      
  movl %esp, %esi                    #  60    0x24eff  2      
  movl %r12d, %edi                   #  61    0x24f01  3      
  xchgw %ax, %ax                     #  62    0x24f04  3      
  nop                                #  63    0x24f07  1      
  andl $0xffffffe0, %r13d            #  64    0x24f08  7      
  addq %r15, %r13                    #  65    0x24f0f  3      
  callq %r13                         #  66    0x24f12  3      
  movl %esp, %edi                    #  67    0x24f15  2      
  movl $0x10020428, (%rsp)           #  68    0x24f17  7      
  nop                                #  69    0x24f1e  1      
  nop                                #  70    0x24f1f  1      
  callq ._ZN2pp8ResourceD2Ev         #  71    0x24f20  5      
.L_24f80:                            #        0x24f25  0      
  addl $0x18, %esp                   #  72    0x24f25  3      
  addq %r15, %rsp                    #  73    0x24f28  3      
  popq %rbx                          #  74    0x24f2b  2      
  popq %r12                          #  75    0x24f2d  3      
  popq %r13                          #  76    0x24f30  3      
  popq %r14                          #  77    0x24f33  3      
  popq %r11                          #  78    0x24f36  3      
  andl $0xffffffe0, %r11d            #  79    0x24f39  7      
  addq %r15, %r11                    #  80    0x24f40  3      
  jmpq %r11                          #  81    0x24f43  3      
  nop                                #  82    0x24f46  1      
  movl %eax, %r12d                   #  83    0x24f47  3      
  movl %ebx, %edi                    #  84    0x24f4a  2      
  nop                                #  85    0x24f4c  1      
  nop                                #  86    0x24f4d  1      
  callq ._ZN2pp4ViewD1Ev             #  87    0x24f4e  5      
  movl %r12d, %edi                   #  88    0x24f53  3      
  nop                                #  89    0x24f56  1      
  nop                                #  90    0x24f57  1      
  callq ._Unwind_Resume              #  91    0x24f58  5      
                                                              
.size _ZN2pp22Instance_DidChangeViewEii, .-_ZN2pp22Instance_DidChangeViewEii

