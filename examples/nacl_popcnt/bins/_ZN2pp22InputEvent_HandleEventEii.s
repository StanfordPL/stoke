  .text
  .globl _ZN2pp22InputEvent_HandleEventEii
  .type _ZN2pp22InputEvent_HandleEventEii, @function

#! file-offset 0x24ac0
#! rip-offset  0x24ac0
#! capacity    448 bytes

# Text                               #  Line  RIP      Bytes  
._ZN2pp22InputEvent_HandleEventEii:  #        0x24ac0  0      
  pushq %r14                         #  1     0x24ac0  3      
  movl %esi, %r14d                   #  2     0x24ac3  3      
  pushq %r13                         #  3     0x24ac6  3      
  pushq %r12                         #  4     0x24ac9  3      
  pushq %rbx                         #  5     0x24acc  2      
  movl %edi, %ebx                    #  6     0x24ace  2      
  subl $0x18, %esp                   #  7     0x24ad0  3      
  addq %r15, %rsp                    #  8     0x24ad3  3      
  nop                                #  9     0x24ad6  1      
  callq ._ZN2pp6Module3GetEv         #  10    0x24ad7  5      
  movl %eax, %eax                    #  11    0x24adc  2      
  testq %rax, %rax                   #  12    0x24ade  3      
  je .L_24c20                        #  13    0x24ae1  6      
  leal 0x8(%rax), %esi               #  14    0x24ae7  3      
  movl %eax, %eax                    #  15    0x24aea  2      
  movl 0xc(%r15,%rax,1), %eax        #  16    0x24aec  5      
  movq %rsi, %rcx                    #  17    0x24af1  3      
  testq %rax, %rax                   #  18    0x24af4  3      
  nop                                #  19    0x24af7  1      
  jne .L_24b60                       #  20    0x24af8  6      
  jmpq .L_24b80                      #  21    0x24afe  5      
  nop                                #  22    0x24b03  1      
  nop                                #  23    0x24b04  1      
.L_24b20:                            #        0x24b05  0      
  movl %eax, %eax                    #  24    0x24b05  2      
  movl 0x8(%r15,%rax,1), %edx        #  25    0x24b07  5      
  movq %rax, %rcx                    #  26    0x24b0c  3      
  testq %rdx, %rdx                   #  27    0x24b0f  3      
  je .L_24b80                        #  28    0x24b12  6      
  xchgw %ax, %ax                     #  29    0x24b18  3      
  nop                                #  30    0x24b1b  1      
.L_24b40:                            #        0x24b1c  0      
  movq %rdx, %rax                    #  31    0x24b1c  3      
  nop                                #  32    0x24b1f  1      
  nop                                #  33    0x24b20  1      
.L_24b60:                            #        0x24b21  0      
  movl %eax, %eax                    #  34    0x24b21  2      
  cmpl 0x10(%r15,%rax,1), %ebx       #  35    0x24b23  5      
  jle .L_24b20                       #  36    0x24b28  6      
  movl %eax, %eax                    #  37    0x24b2e  2      
  movl 0xc(%r15,%rax,1), %edx        #  38    0x24b30  5      
  testq %rdx, %rdx                   #  39    0x24b35  3      
  jne .L_24b40                       #  40    0x24b38  6      
  nop                                #  41    0x24b3e  1      
.L_24b80:                            #        0x24b3f  0      
  cmpl %ecx, %esi                    #  42    0x24b3f  2      
  je .L_24c20                        #  43    0x24b41  6      
  movl %ecx, %ecx                    #  44    0x24b47  2      
  cmpl 0x10(%r15,%rcx,1), %ebx       #  45    0x24b49  5      
  jl .L_24c20                        #  46    0x24b4e  6      
  movl %ecx, %ecx                    #  47    0x24b54  2      
  movl 0x14(%r15,%rcx,1), %r12d      #  48    0x24b56  5      
  testq %r12, %r12                   #  49    0x24b5b  3      
  nop                                #  50    0x24b5e  1      
  je .L_24c20                        #  51    0x24b5f  6      
  movl %r12d, %r12d                  #  52    0x24b65  3      
  movl (%r15,%r12,1), %eax           #  53    0x24b68  4      
  movl %r14d, %esi                   #  54    0x24b6c  3      
  movl %esp, %edi                    #  55    0x24b6f  2      
  movl %esp, %ebx                    #  56    0x24b71  2      
  movl %eax, %eax                    #  57    0x24b73  2      
  movl 0x18(%r15,%rax,1), %r13d      #  58    0x24b75  5      
  nop                                #  59    0x24b7a  1      
  callq ._ZN2pp10InputEventC1Ei      #  60    0x24b7b  5      
  movl %esp, %esi                    #  61    0x24b80  2      
  movl %r12d, %edi                   #  62    0x24b82  3      
  xchgw %ax, %ax                     #  63    0x24b85  3      
  nop                                #  64    0x24b88  1      
  andl $0xffffffe0, %r13d            #  65    0x24b89  7      
  addq %r15, %r13                    #  66    0x24b90  3      
  callq %r13                         #  67    0x24b93  3      
  movl %esp, %edi                    #  68    0x24b96  2      
  movzbl %al, %r12d                  #  69    0x24b98  4      
  nop                                #  70    0x24b9c  1      
  nop                                #  71    0x24b9d  1      
  callq ._ZN2pp10InputEventD1Ev      #  72    0x24b9e  5      
.L_24c00:                            #        0x24ba3  0      
  addl $0x18, %esp                   #  73    0x24ba3  3      
  addq %r15, %rsp                    #  74    0x24ba6  3      
  movl %r12d, %eax                   #  75    0x24ba9  3      
  popq %rbx                          #  76    0x24bac  2      
  popq %r12                          #  77    0x24bae  3      
  popq %r13                          #  78    0x24bb1  3      
  popq %r14                          #  79    0x24bb4  3      
  popq %r11                          #  80    0x24bb7  3      
  andl $0xffffffe0, %r11d            #  81    0x24bba  7      
  addq %r15, %r11                    #  82    0x24bc1  3      
  jmpq %r11                          #  83    0x24bc4  3      
  nop                                #  84    0x24bc7  1      
.L_24c20:                            #        0x24bc8  0      
  xorl %r12d, %r12d                  #  85    0x24bc8  3      
  jmpq .L_24c00                      #  86    0x24bcb  5      
  nop                                #  87    0x24bd0  1      
  nop                                #  88    0x24bd1  1      
  movl %eax, %r12d                   #  89    0x24bd2  3      
  movl %ebx, %edi                    #  90    0x24bd5  2      
  nop                                #  91    0x24bd7  1      
  nop                                #  92    0x24bd8  1      
  callq ._ZN2pp10InputEventD1Ev      #  93    0x24bd9  5      
  movl %r12d, %edi                   #  94    0x24bde  3      
  nop                                #  95    0x24be1  1      
  nop                                #  96    0x24be2  1      
  callq ._Unwind_Resume              #  97    0x24be3  5      
                                                              
.size _ZN2pp22InputEvent_HandleEventEii, .-_ZN2pp22InputEvent_HandleEventEii

