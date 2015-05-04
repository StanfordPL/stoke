  .text
  .globl _ZN2pp22InputEvent_HandleEventEii
  .type _ZN2pp22InputEvent_HandleEventEii, @function

#! file-offset 0x24b40
#! rip-offset  0x24b40
#! capacity    448 bytes

# Text                               #  Line  RIP      Bytes  
._ZN2pp22InputEvent_HandleEventEii:  #        0x24b40  0      
  pushq %r14                         #  1     0x24b40  3      
  movl %esi, %r14d                   #  2     0x24b43  3      
  pushq %r13                         #  3     0x24b46  3      
  pushq %r12                         #  4     0x24b49  3      
  pushq %rbx                         #  5     0x24b4c  2      
  movl %edi, %ebx                    #  6     0x24b4e  2      
  subl $0x18, %esp                   #  7     0x24b50  3      
  addq %r15, %rsp                    #  8     0x24b53  3      
  nop                                #  9     0x24b56  1      
  callq ._ZN2pp6Module3GetEv         #  10    0x24b57  5      
  movl %eax, %eax                    #  11    0x24b5c  2      
  testq %rax, %rax                   #  12    0x24b5e  3      
  je .L_24ca0                        #  13    0x24b61  6      
  leal 0x8(%rax), %esi               #  14    0x24b67  3      
  movl %eax, %eax                    #  15    0x24b6a  2      
  movl 0xc(%r15,%rax,1), %eax        #  16    0x24b6c  5      
  movq %rsi, %rcx                    #  17    0x24b71  3      
  testq %rax, %rax                   #  18    0x24b74  3      
  nop                                #  19    0x24b77  1      
  jne .L_24be0                       #  20    0x24b78  6      
  jmpq .L_24c00                      #  21    0x24b7e  5      
  nop                                #  22    0x24b83  1      
  nop                                #  23    0x24b84  1      
.L_24ba0:                            #        0x24b85  0      
  movl %eax, %eax                    #  24    0x24b85  2      
  movl 0x8(%r15,%rax,1), %edx        #  25    0x24b87  5      
  movq %rax, %rcx                    #  26    0x24b8c  3      
  testq %rdx, %rdx                   #  27    0x24b8f  3      
  je .L_24c00                        #  28    0x24b92  6      
  xchgw %ax, %ax                     #  29    0x24b98  3      
  nop                                #  30    0x24b9b  1      
.L_24bc0:                            #        0x24b9c  0      
  movq %rdx, %rax                    #  31    0x24b9c  3      
  nop                                #  32    0x24b9f  1      
  nop                                #  33    0x24ba0  1      
.L_24be0:                            #        0x24ba1  0      
  movl %eax, %eax                    #  34    0x24ba1  2      
  cmpl 0x10(%r15,%rax,1), %ebx       #  35    0x24ba3  5      
  jle .L_24ba0                       #  36    0x24ba8  6      
  movl %eax, %eax                    #  37    0x24bae  2      
  movl 0xc(%r15,%rax,1), %edx        #  38    0x24bb0  5      
  testq %rdx, %rdx                   #  39    0x24bb5  3      
  jne .L_24bc0                       #  40    0x24bb8  6      
  nop                                #  41    0x24bbe  1      
.L_24c00:                            #        0x24bbf  0      
  cmpl %ecx, %esi                    #  42    0x24bbf  2      
  je .L_24ca0                        #  43    0x24bc1  6      
  movl %ecx, %ecx                    #  44    0x24bc7  2      
  cmpl 0x10(%r15,%rcx,1), %ebx       #  45    0x24bc9  5      
  jl .L_24ca0                        #  46    0x24bce  6      
  movl %ecx, %ecx                    #  47    0x24bd4  2      
  movl 0x14(%r15,%rcx,1), %r12d      #  48    0x24bd6  5      
  testq %r12, %r12                   #  49    0x24bdb  3      
  nop                                #  50    0x24bde  1      
  je .L_24ca0                        #  51    0x24bdf  6      
  movl %r12d, %r12d                  #  52    0x24be5  3      
  movl (%r15,%r12,1), %eax           #  53    0x24be8  4      
  movl %r14d, %esi                   #  54    0x24bec  3      
  movl %esp, %edi                    #  55    0x24bef  2      
  movl %esp, %ebx                    #  56    0x24bf1  2      
  movl %eax, %eax                    #  57    0x24bf3  2      
  movl 0x18(%r15,%rax,1), %r13d      #  58    0x24bf5  5      
  nop                                #  59    0x24bfa  1      
  callq ._ZN2pp10InputEventC1Ei      #  60    0x24bfb  5      
  movl %esp, %esi                    #  61    0x24c00  2      
  movl %r12d, %edi                   #  62    0x24c02  3      
  xchgw %ax, %ax                     #  63    0x24c05  3      
  nop                                #  64    0x24c08  1      
  andl $0xffffffe0, %r13d            #  65    0x24c09  7      
  addq %r15, %r13                    #  66    0x24c10  3      
  callq %r13                         #  67    0x24c13  3      
  movl %esp, %edi                    #  68    0x24c16  2      
  movzbl %al, %r12d                  #  69    0x24c18  4      
  nop                                #  70    0x24c1c  1      
  nop                                #  71    0x24c1d  1      
  callq ._ZN2pp10InputEventD1Ev      #  72    0x24c1e  5      
.L_24c80:                            #        0x24c23  0      
  addl $0x18, %esp                   #  73    0x24c23  3      
  addq %r15, %rsp                    #  74    0x24c26  3      
  movl %r12d, %eax                   #  75    0x24c29  3      
  popq %rbx                          #  76    0x24c2c  2      
  popq %r12                          #  77    0x24c2e  3      
  popq %r13                          #  78    0x24c31  3      
  popq %r14                          #  79    0x24c34  3      
  popq %r11                          #  80    0x24c37  3      
  andl $0xffffffe0, %r11d            #  81    0x24c3a  7      
  addq %r15, %r11                    #  82    0x24c41  3      
  jmpq %r11                          #  83    0x24c44  3      
  nop                                #  84    0x24c47  1      
.L_24ca0:                            #        0x24c48  0      
  xorl %r12d, %r12d                  #  85    0x24c48  3      
  jmpq .L_24c80                      #  86    0x24c4b  5      
  nop                                #  87    0x24c50  1      
  nop                                #  88    0x24c51  1      
  movl %eax, %r12d                   #  89    0x24c52  3      
  movl %ebx, %edi                    #  90    0x24c55  2      
  nop                                #  91    0x24c57  1      
  nop                                #  92    0x24c58  1      
  callq ._ZN2pp10InputEventD1Ev      #  93    0x24c59  5      
  movl %r12d, %edi                   #  94    0x24c5e  3      
  nop                                #  95    0x24c61  1      
  nop                                #  96    0x24c62  1      
  callq ._Unwind_Resume              #  97    0x24c63  5      
                                                              
.size _ZN2pp22InputEvent_HandleEventEii, .-_ZN2pp22InputEvent_HandleEventEii

