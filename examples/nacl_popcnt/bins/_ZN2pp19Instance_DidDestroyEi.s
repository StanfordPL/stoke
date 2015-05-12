  .text
  .globl _ZN2pp19Instance_DidDestroyEi
  .type _ZN2pp19Instance_DidDestroyEi, @function

#! file-offset 0x24960
#! rip-offset  0x24960
#! capacity    352 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp19Instance_DidDestroyEi:                                        #        0x24960  0      
  pushq %r12                                                           #  1     0x24960  3      
  movl %edi, %r12d                                                     #  2     0x24963  3      
  pushq %rbx                                                           #  3     0x24966  2      
  subl $0x8, %esp                                                      #  4     0x24968  3      
  addq %r15, %rsp                                                      #  5     0x2496b  3      
  nop                                                                  #  6     0x2496e  1      
  callq ._ZN2pp6Module3GetEv                                           #  7     0x2496f  5      
  movl %eax, %ebx                                                      #  8     0x24974  2      
  testq %rbx, %rbx                                                     #  9     0x24976  3      
  je .L_24aa0                                                          #  10    0x24979  6      
  movl %ebx, %ebx                                                      #  11    0x2497f  2      
  movl 0xc(%r15,%rbx,1), %eax                                          #  12    0x24981  5      
  leal 0x8(%rbx), %esi                                                 #  13    0x24986  3      
  movq %rsi, %rdi                                                      #  14    0x24989  3      
  testq %rax, %rax                                                     #  15    0x2498c  3      
  nop                                                                  #  16    0x2498f  1      
  jne .L_24a00                                                         #  17    0x24990  6      
  jmpq .L_24a20                                                        #  18    0x24996  5      
  nop                                                                  #  19    0x2499b  1      
  nop                                                                  #  20    0x2499c  1      
.L_249c0:                                                              #        0x2499d  0      
  movl %eax, %eax                                                      #  21    0x2499d  2      
  movl 0x8(%r15,%rax,1), %edx                                          #  22    0x2499f  5      
  movq %rax, %rdi                                                      #  23    0x249a4  3      
  testq %rdx, %rdx                                                     #  24    0x249a7  3      
  je .L_24a20                                                          #  25    0x249aa  6      
  xchgw %ax, %ax                                                       #  26    0x249b0  3      
  nop                                                                  #  27    0x249b3  1      
.L_249e0:                                                              #        0x249b4  0      
  movq %rdx, %rax                                                      #  28    0x249b4  3      
  nop                                                                  #  29    0x249b7  1      
  nop                                                                  #  30    0x249b8  1      
.L_24a00:                                                              #        0x249b9  0      
  movl %eax, %eax                                                      #  31    0x249b9  2      
  cmpl 0x10(%r15,%rax,1), %r12d                                        #  32    0x249bb  5      
  jle .L_249c0                                                         #  33    0x249c0  6      
  movl %eax, %eax                                                      #  34    0x249c6  2      
  movl 0xc(%r15,%rax,1), %edx                                          #  35    0x249c8  5      
  testq %rdx, %rdx                                                     #  36    0x249cd  3      
  jne .L_249e0                                                         #  37    0x249d0  6      
  nop                                                                  #  38    0x249d6  1      
.L_24a20:                                                              #        0x249d7  0      
  cmpl %edi, %esi                                                      #  39    0x249d7  2      
  je .L_24aa0                                                          #  40    0x249d9  6      
  movl %edi, %edi                                                      #  41    0x249df  2      
  cmpl 0x10(%r15,%rdi,1), %r12d                                        #  42    0x249e1  5      
  jl .L_24aa0                                                          #  43    0x249e6  6      
  movl %edi, %edi                                                      #  44    0x249ec  2      
  movl 0x14(%r15,%rdi,1), %r12d                                        #  45    0x249ee  5      
  nop                                                                  #  46    0x249f3  1      
  callq ._ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_  #  47    0x249f4  5      
  movl %eax, %edi                                                      #  48    0x249f9  2      
  nop                                                                  #  49    0x249fb  1      
  nop                                                                  #  50    0x249fc  1      
  callq ._ZdlPv                                                        #  51    0x249fd  5      
  movl %ebx, %ebx                                                      #  52    0x24a02  2      
  subl $0x1, 0x18(%r15,%rbx,1)                                         #  53    0x24a04  6      
  testq %r12, %r12                                                     #  54    0x24a0a  3      
  je .L_24aa0                                                          #  55    0x24a0d  6      
  movl %r12d, %r12d                                                    #  56    0x24a13  3      
  movl (%r15,%r12,1), %eax                                             #  57    0x24a16  4      
  movl %r12d, %edi                                                     #  58    0x24a1a  3      
  movl %eax, %eax                                                      #  59    0x24a1d  2      
  movl 0x4(%r15,%rax,1), %eax                                          #  60    0x24a1f  5      
  xchgw %ax, %ax                                                       #  61    0x24a24  3      
  addl $0x8, %esp                                                      #  62    0x24a27  3      
  addq %r15, %rsp                                                      #  63    0x24a2a  3      
  popq %rbx                                                            #  64    0x24a2d  2      
  popq %r12                                                            #  65    0x24a2f  3      
  andl $0xffffffe0, %eax                                               #  66    0x24a32  5      
  addq %r15, %rax                                                      #  67    0x24a37  3      
  jmpq %rax                                                            #  68    0x24a3a  2      
  nop                                                                  #  69    0x24a3c  1      
.L_24aa0:                                                              #        0x24a3d  0      
  addl $0x8, %esp                                                      #  70    0x24a3d  3      
  addq %r15, %rsp                                                      #  71    0x24a40  3      
  popq %rbx                                                            #  72    0x24a43  2      
  popq %r12                                                            #  73    0x24a45  3      
  popq %r11                                                            #  74    0x24a48  3      
  andl $0xffffffe0, %r11d                                              #  75    0x24a4b  7      
  addq %r15, %r11                                                      #  76    0x24a52  3      
  jmpq %r11                                                            #  77    0x24a55  3      
  nop                                                                  #  78    0x24a58  1      
                                                                                                
.size _ZN2pp19Instance_DidDestroyEi, .-_ZN2pp19Instance_DidDestroyEi

