  .text
  .globl _ZN2pp22Instance_DidChangeViewEii
  .type _ZN2pp22Instance_DidChangeViewEii, @function

#! file-offset 0x24ec0
#! rip-offset  0x24ec0
#! capacity    416 bytes

# Text                               #  Line  RIP      Bytes  
._ZN2pp22Instance_DidChangeViewEii:  #        0x24ec0  0      
  pushq %r14                         #  1     0x24ec0  3      
  movl %esi, %r14d                   #  2     0x24ec3  3      
  pushq %r13                         #  3     0x24ec6  3      
  pushq %r12                         #  4     0x24ec9  3      
  pushq %rbx                         #  5     0x24ecc  2      
  movl %edi, %ebx                    #  6     0x24ece  2      
  subl $0x18, %esp                   #  7     0x24ed0  3      
  addq %r15, %rsp                    #  8     0x24ed3  3      
  nop                                #  9     0x24ed6  1      
  callq ._ZN2pp6Module3GetEv         #  10    0x24ed7  5      
  movl %eax, %eax                    #  11    0x24edc  2      
  testq %rax, %rax                   #  12    0x24ede  3      
  je .L_25000                        #  13    0x24ee1  6      
  leal 0x8(%rax), %esi               #  14    0x24ee7  3      
  movl %eax, %eax                    #  15    0x24eea  2      
  movl 0xc(%r15,%rax,1), %eax        #  16    0x24eec  5      
  movq %rsi, %rcx                    #  17    0x24ef1  3      
  testq %rax, %rax                   #  18    0x24ef4  3      
  nop                                #  19    0x24ef7  1      
  jne .L_24f60                       #  20    0x24ef8  6      
  jmpq .L_24f80                      #  21    0x24efe  5      
  nop                                #  22    0x24f03  1      
  nop                                #  23    0x24f04  1      
.L_24f20:                            #        0x24f05  0      
  movl %eax, %eax                    #  24    0x24f05  2      
  movl 0x8(%r15,%rax,1), %edx        #  25    0x24f07  5      
  movq %rax, %rcx                    #  26    0x24f0c  3      
  testq %rdx, %rdx                   #  27    0x24f0f  3      
  je .L_24f80                        #  28    0x24f12  6      
  xchgw %ax, %ax                     #  29    0x24f18  3      
  nop                                #  30    0x24f1b  1      
.L_24f40:                            #        0x24f1c  0      
  movq %rdx, %rax                    #  31    0x24f1c  3      
  nop                                #  32    0x24f1f  1      
  nop                                #  33    0x24f20  1      
.L_24f60:                            #        0x24f21  0      
  movl %eax, %eax                    #  34    0x24f21  2      
  cmpl 0x10(%r15,%rax,1), %ebx       #  35    0x24f23  5      
  jle .L_24f20                       #  36    0x24f28  6      
  movl %eax, %eax                    #  37    0x24f2e  2      
  movl 0xc(%r15,%rax,1), %edx        #  38    0x24f30  5      
  testq %rdx, %rdx                   #  39    0x24f35  3      
  jne .L_24f40                       #  40    0x24f38  6      
  nop                                #  41    0x24f3e  1      
.L_24f80:                            #        0x24f3f  0      
  cmpl %ecx, %esi                    #  42    0x24f3f  2      
  je .L_25000                        #  43    0x24f41  6      
  movl %ecx, %ecx                    #  44    0x24f47  2      
  cmpl 0x10(%r15,%rcx,1), %ebx       #  45    0x24f49  5      
  jl .L_25000                        #  46    0x24f4e  6      
  movl %ecx, %ecx                    #  47    0x24f54  2      
  movl 0x14(%r15,%rcx,1), %r12d      #  48    0x24f56  5      
  testq %r12, %r12                   #  49    0x24f5b  3      
  je .L_25000                        #  50    0x24f5e  6      
  movl %r12d, %r12d                  #  51    0x24f64  3      
  movl (%r15,%r12,1), %eax           #  52    0x24f67  4      
  movl %r14d, %esi                   #  53    0x24f6b  3      
  movl %esp, %edi                    #  54    0x24f6e  2      
  movl %esp, %ebx                    #  55    0x24f70  2      
  movl %eax, %eax                    #  56    0x24f72  2      
  movl 0xc(%r15,%rax,1), %r13d       #  57    0x24f74  5      
  nop                                #  58    0x24f79  1      
  callq ._ZN2pp4ViewC1Ei             #  59    0x24f7a  5      
  movl %esp, %esi                    #  60    0x24f7f  2      
  movl %r12d, %edi                   #  61    0x24f81  3      
  xchgw %ax, %ax                     #  62    0x24f84  3      
  nop                                #  63    0x24f87  1      
  andl $0xffffffe0, %r13d            #  64    0x24f88  7      
  addq %r15, %r13                    #  65    0x24f8f  3      
  callq %r13                         #  66    0x24f92  3      
  movl %esp, %edi                    #  67    0x24f95  2      
  movl $0x10020428, (%rsp)           #  68    0x24f97  7      
  nop                                #  69    0x24f9e  1      
  nop                                #  70    0x24f9f  1      
  callq ._ZN2pp8ResourceD2Ev         #  71    0x24fa0  5      
.L_25000:                            #        0x24fa5  0      
  addl $0x18, %esp                   #  72    0x24fa5  3      
  addq %r15, %rsp                    #  73    0x24fa8  3      
  popq %rbx                          #  74    0x24fab  2      
  popq %r12                          #  75    0x24fad  3      
  popq %r13                          #  76    0x24fb0  3      
  popq %r14                          #  77    0x24fb3  3      
  popq %r11                          #  78    0x24fb6  3      
  andl $0xffffffe0, %r11d            #  79    0x24fb9  7      
  addq %r15, %r11                    #  80    0x24fc0  3      
  jmpq %r11                          #  81    0x24fc3  3      
  nop                                #  82    0x24fc6  1      
  movl %eax, %r12d                   #  83    0x24fc7  3      
  movl %ebx, %edi                    #  84    0x24fca  2      
  nop                                #  85    0x24fcc  1      
  nop                                #  86    0x24fcd  1      
  callq ._ZN2pp4ViewD1Ev             #  87    0x24fce  5      
  movl %r12d, %edi                   #  88    0x24fd3  3      
  nop                                #  89    0x24fd6  1      
  nop                                #  90    0x24fd7  1      
  callq ._Unwind_Resume              #  91    0x24fd8  5      
                                                              
.size _ZN2pp22Instance_DidChangeViewEii, .-_ZN2pp22Instance_DidChangeViewEii

