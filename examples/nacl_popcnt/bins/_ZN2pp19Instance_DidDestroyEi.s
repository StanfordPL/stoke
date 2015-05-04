  .text
  .globl _ZN2pp19Instance_DidDestroyEi
  .type _ZN2pp19Instance_DidDestroyEi, @function

#! file-offset 0x249e0
#! rip-offset  0x249e0
#! capacity    352 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp19Instance_DidDestroyEi:                                        #        0x249e0  0      
  pushq %r12                                                           #  1     0x249e0  3      
  movl %edi, %r12d                                                     #  2     0x249e3  3      
  pushq %rbx                                                           #  3     0x249e6  2      
  subl $0x8, %esp                                                      #  4     0x249e8  3      
  addq %r15, %rsp                                                      #  5     0x249eb  3      
  nop                                                                  #  6     0x249ee  1      
  callq ._ZN2pp6Module3GetEv                                           #  7     0x249ef  5      
  movl %eax, %ebx                                                      #  8     0x249f4  2      
  testq %rbx, %rbx                                                     #  9     0x249f6  3      
  je .L_24b20                                                          #  10    0x249f9  6      
  movl %ebx, %ebx                                                      #  11    0x249ff  2      
  movl 0xc(%r15,%rbx,1), %eax                                          #  12    0x24a01  5      
  leal 0x8(%rbx), %esi                                                 #  13    0x24a06  3      
  movq %rsi, %rdi                                                      #  14    0x24a09  3      
  testq %rax, %rax                                                     #  15    0x24a0c  3      
  nop                                                                  #  16    0x24a0f  1      
  jne .L_24a80                                                         #  17    0x24a10  6      
  jmpq .L_24aa0                                                        #  18    0x24a16  5      
  nop                                                                  #  19    0x24a1b  1      
  nop                                                                  #  20    0x24a1c  1      
.L_24a40:                                                              #        0x24a1d  0      
  movl %eax, %eax                                                      #  21    0x24a1d  2      
  movl 0x8(%r15,%rax,1), %edx                                          #  22    0x24a1f  5      
  movq %rax, %rdi                                                      #  23    0x24a24  3      
  testq %rdx, %rdx                                                     #  24    0x24a27  3      
  je .L_24aa0                                                          #  25    0x24a2a  6      
  xchgw %ax, %ax                                                       #  26    0x24a30  3      
  nop                                                                  #  27    0x24a33  1      
.L_24a60:                                                              #        0x24a34  0      
  movq %rdx, %rax                                                      #  28    0x24a34  3      
  nop                                                                  #  29    0x24a37  1      
  nop                                                                  #  30    0x24a38  1      
.L_24a80:                                                              #        0x24a39  0      
  movl %eax, %eax                                                      #  31    0x24a39  2      
  cmpl 0x10(%r15,%rax,1), %r12d                                        #  32    0x24a3b  5      
  jle .L_24a40                                                         #  33    0x24a40  6      
  movl %eax, %eax                                                      #  34    0x24a46  2      
  movl 0xc(%r15,%rax,1), %edx                                          #  35    0x24a48  5      
  testq %rdx, %rdx                                                     #  36    0x24a4d  3      
  jne .L_24a60                                                         #  37    0x24a50  6      
  nop                                                                  #  38    0x24a56  1      
.L_24aa0:                                                              #        0x24a57  0      
  cmpl %edi, %esi                                                      #  39    0x24a57  2      
  je .L_24b20                                                          #  40    0x24a59  6      
  movl %edi, %edi                                                      #  41    0x24a5f  2      
  cmpl 0x10(%r15,%rdi,1), %r12d                                        #  42    0x24a61  5      
  jl .L_24b20                                                          #  43    0x24a66  6      
  movl %edi, %edi                                                      #  44    0x24a6c  2      
  movl 0x14(%r15,%rdi,1), %r12d                                        #  45    0x24a6e  5      
  nop                                                                  #  46    0x24a73  1      
  callq ._ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_  #  47    0x24a74  5      
  movl %eax, %edi                                                      #  48    0x24a79  2      
  nop                                                                  #  49    0x24a7b  1      
  nop                                                                  #  50    0x24a7c  1      
  callq ._ZdlPv                                                        #  51    0x24a7d  5      
  movl %ebx, %ebx                                                      #  52    0x24a82  2      
  subl $0x1, 0x18(%r15,%rbx,1)                                         #  53    0x24a84  6      
  testq %r12, %r12                                                     #  54    0x24a8a  3      
  je .L_24b20                                                          #  55    0x24a8d  6      
  movl %r12d, %r12d                                                    #  56    0x24a93  3      
  movl (%r15,%r12,1), %eax                                             #  57    0x24a96  4      
  movl %r12d, %edi                                                     #  58    0x24a9a  3      
  movl %eax, %eax                                                      #  59    0x24a9d  2      
  movl 0x4(%r15,%rax,1), %eax                                          #  60    0x24a9f  5      
  xchgw %ax, %ax                                                       #  61    0x24aa4  3      
  addl $0x8, %esp                                                      #  62    0x24aa7  3      
  addq %r15, %rsp                                                      #  63    0x24aaa  3      
  popq %rbx                                                            #  64    0x24aad  2      
  popq %r12                                                            #  65    0x24aaf  3      
  andl $0xffffffe0, %eax                                               #  66    0x24ab2  5      
  addq %r15, %rax                                                      #  67    0x24ab7  3      
  jmpq %rax                                                            #  68    0x24aba  2      
  nop                                                                  #  69    0x24abc  1      
.L_24b20:                                                              #        0x24abd  0      
  addl $0x8, %esp                                                      #  70    0x24abd  3      
  addq %r15, %rsp                                                      #  71    0x24ac0  3      
  popq %rbx                                                            #  72    0x24ac3  2      
  popq %r12                                                            #  73    0x24ac5  3      
  popq %r11                                                            #  74    0x24ac8  3      
  andl $0xffffffe0, %r11d                                              #  75    0x24acb  7      
  addq %r15, %r11                                                      #  76    0x24ad2  3      
  jmpq %r11                                                            #  77    0x24ad5  3      
  nop                                                                  #  78    0x24ad8  1      
                                                                                                
.size _ZN2pp19Instance_DidDestroyEi, .-_ZN2pp19Instance_DidDestroyEi

