  .text
  .globl _ZN2pp22InputEvent_HandleEventEii
  .type _ZN2pp22InputEvent_HandleEventEii, @function

#! file-offset 0x24aa0
#! rip-offset  0x24aa0
#! capacity    448 bytes

# Text                               #  Line  RIP      Bytes  
._ZN2pp22InputEvent_HandleEventEii:  #        0x24aa0  0      
  pushq %r14                         #  1     0x24aa0  3      
  movl %esi, %r14d                   #  2     0x24aa3  3      
  pushq %r13                         #  3     0x24aa6  3      
  pushq %r12                         #  4     0x24aa9  3      
  pushq %rbx                         #  5     0x24aac  2      
  movl %edi, %ebx                    #  6     0x24aae  2      
  subl $0x18, %esp                   #  7     0x24ab0  3      
  addq %r15, %rsp                    #  8     0x24ab3  3      
  nop                                #  9     0x24ab6  1      
  callq ._ZN2pp6Module3GetEv         #  10    0x24ab7  5      
  movl %eax, %eax                    #  11    0x24abc  2      
  testq %rax, %rax                   #  12    0x24abe  3      
  je .L_24c00                        #  13    0x24ac1  6      
  leal 0x8(%rax), %esi               #  14    0x24ac7  3      
  movl %eax, %eax                    #  15    0x24aca  2      
  movl 0xc(%r15,%rax,1), %eax        #  16    0x24acc  5      
  movq %rsi, %rcx                    #  17    0x24ad1  3      
  testq %rax, %rax                   #  18    0x24ad4  3      
  nop                                #  19    0x24ad7  1      
  jne .L_24b40                       #  20    0x24ad8  6      
  jmpq .L_24b60                      #  21    0x24ade  5      
  nop                                #  22    0x24ae3  1      
  nop                                #  23    0x24ae4  1      
.L_24b00:                            #        0x24ae5  0      
  movl %eax, %eax                    #  24    0x24ae5  2      
  movl 0x8(%r15,%rax,1), %edx        #  25    0x24ae7  5      
  movq %rax, %rcx                    #  26    0x24aec  3      
  testq %rdx, %rdx                   #  27    0x24aef  3      
  je .L_24b60                        #  28    0x24af2  6      
  xchgw %ax, %ax                     #  29    0x24af8  3      
  nop                                #  30    0x24afb  1      
.L_24b20:                            #        0x24afc  0      
  movq %rdx, %rax                    #  31    0x24afc  3      
  nop                                #  32    0x24aff  1      
  nop                                #  33    0x24b00  1      
.L_24b40:                            #        0x24b01  0      
  movl %eax, %eax                    #  34    0x24b01  2      
  cmpl 0x10(%r15,%rax,1), %ebx       #  35    0x24b03  5      
  jle .L_24b00                       #  36    0x24b08  6      
  movl %eax, %eax                    #  37    0x24b0e  2      
  movl 0xc(%r15,%rax,1), %edx        #  38    0x24b10  5      
  testq %rdx, %rdx                   #  39    0x24b15  3      
  jne .L_24b20                       #  40    0x24b18  6      
  nop                                #  41    0x24b1e  1      
.L_24b60:                            #        0x24b1f  0      
  cmpl %ecx, %esi                    #  42    0x24b1f  2      
  je .L_24c00                        #  43    0x24b21  6      
  movl %ecx, %ecx                    #  44    0x24b27  2      
  cmpl 0x10(%r15,%rcx,1), %ebx       #  45    0x24b29  5      
  jl .L_24c00                        #  46    0x24b2e  6      
  movl %ecx, %ecx                    #  47    0x24b34  2      
  movl 0x14(%r15,%rcx,1), %r12d      #  48    0x24b36  5      
  testq %r12, %r12                   #  49    0x24b3b  3      
  nop                                #  50    0x24b3e  1      
  je .L_24c00                        #  51    0x24b3f  6      
  movl %r12d, %r12d                  #  52    0x24b45  3      
  movl (%r15,%r12,1), %eax           #  53    0x24b48  4      
  movl %r14d, %esi                   #  54    0x24b4c  3      
  movl %esp, %edi                    #  55    0x24b4f  2      
  movl %esp, %ebx                    #  56    0x24b51  2      
  movl %eax, %eax                    #  57    0x24b53  2      
  movl 0x18(%r15,%rax,1), %r13d      #  58    0x24b55  5      
  nop                                #  59    0x24b5a  1      
  callq ._ZN2pp10InputEventC1Ei      #  60    0x24b5b  5      
  movl %esp, %esi                    #  61    0x24b60  2      
  movl %r12d, %edi                   #  62    0x24b62  3      
  xchgw %ax, %ax                     #  63    0x24b65  3      
  nop                                #  64    0x24b68  1      
  andl $0xffffffe0, %r13d            #  65    0x24b69  7      
  addq %r15, %r13                    #  66    0x24b70  3      
  callq %r13                         #  67    0x24b73  3      
  movl %esp, %edi                    #  68    0x24b76  2      
  movzbl %al, %r12d                  #  69    0x24b78  4      
  nop                                #  70    0x24b7c  1      
  nop                                #  71    0x24b7d  1      
  callq ._ZN2pp10InputEventD1Ev      #  72    0x24b7e  5      
.L_24be0:                            #        0x24b83  0      
  addl $0x18, %esp                   #  73    0x24b83  3      
  addq %r15, %rsp                    #  74    0x24b86  3      
  movl %r12d, %eax                   #  75    0x24b89  3      
  popq %rbx                          #  76    0x24b8c  2      
  popq %r12                          #  77    0x24b8e  3      
  popq %r13                          #  78    0x24b91  3      
  popq %r14                          #  79    0x24b94  3      
  popq %r11                          #  80    0x24b97  3      
  andl $0xffffffe0, %r11d            #  81    0x24b9a  7      
  addq %r15, %r11                    #  82    0x24ba1  3      
  jmpq %r11                          #  83    0x24ba4  3      
  nop                                #  84    0x24ba7  1      
.L_24c00:                            #        0x24ba8  0      
  xorl %r12d, %r12d                  #  85    0x24ba8  3      
  jmpq .L_24be0                      #  86    0x24bab  5      
  nop                                #  87    0x24bb0  1      
  nop                                #  88    0x24bb1  1      
  movl %eax, %r12d                   #  89    0x24bb2  3      
  movl %ebx, %edi                    #  90    0x24bb5  2      
  nop                                #  91    0x24bb7  1      
  nop                                #  92    0x24bb8  1      
  callq ._ZN2pp10InputEventD1Ev      #  93    0x24bb9  5      
  movl %r12d, %edi                   #  94    0x24bbe  3      
  nop                                #  95    0x24bc1  1      
  nop                                #  96    0x24bc2  1      
  callq ._Unwind_Resume              #  97    0x24bc3  5      
                                                              
.size _ZN2pp22InputEvent_HandleEventEii, .-_ZN2pp22InputEvent_HandleEventEii

