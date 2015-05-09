  .text
  .globl _ZN2pp19Instance_DidDestroyEi
  .type _ZN2pp19Instance_DidDestroyEi, @function

#! file-offset 0x24940
#! rip-offset  0x24940
#! capacity    352 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp19Instance_DidDestroyEi:                                        #        0x24940  0      
  pushq %r12                                                           #  1     0x24940  3      
  movl %edi, %r12d                                                     #  2     0x24943  3      
  pushq %rbx                                                           #  3     0x24946  2      
  subl $0x8, %esp                                                      #  4     0x24948  3      
  addq %r15, %rsp                                                      #  5     0x2494b  3      
  nop                                                                  #  6     0x2494e  1      
  callq ._ZN2pp6Module3GetEv                                           #  7     0x2494f  5      
  movl %eax, %ebx                                                      #  8     0x24954  2      
  testq %rbx, %rbx                                                     #  9     0x24956  3      
  je .L_24a80                                                          #  10    0x24959  6      
  movl %ebx, %ebx                                                      #  11    0x2495f  2      
  movl 0xc(%r15,%rbx,1), %eax                                          #  12    0x24961  5      
  leal 0x8(%rbx), %esi                                                 #  13    0x24966  3      
  movq %rsi, %rdi                                                      #  14    0x24969  3      
  testq %rax, %rax                                                     #  15    0x2496c  3      
  nop                                                                  #  16    0x2496f  1      
  jne .L_249e0                                                         #  17    0x24970  6      
  jmpq .L_24a00                                                        #  18    0x24976  5      
  nop                                                                  #  19    0x2497b  1      
  nop                                                                  #  20    0x2497c  1      
.L_249a0:                                                              #        0x2497d  0      
  movl %eax, %eax                                                      #  21    0x2497d  2      
  movl 0x8(%r15,%rax,1), %edx                                          #  22    0x2497f  5      
  movq %rax, %rdi                                                      #  23    0x24984  3      
  testq %rdx, %rdx                                                     #  24    0x24987  3      
  je .L_24a00                                                          #  25    0x2498a  6      
  xchgw %ax, %ax                                                       #  26    0x24990  3      
  nop                                                                  #  27    0x24993  1      
.L_249c0:                                                              #        0x24994  0      
  movq %rdx, %rax                                                      #  28    0x24994  3      
  nop                                                                  #  29    0x24997  1      
  nop                                                                  #  30    0x24998  1      
.L_249e0:                                                              #        0x24999  0      
  movl %eax, %eax                                                      #  31    0x24999  2      
  cmpl 0x10(%r15,%rax,1), %r12d                                        #  32    0x2499b  5      
  jle .L_249a0                                                         #  33    0x249a0  6      
  movl %eax, %eax                                                      #  34    0x249a6  2      
  movl 0xc(%r15,%rax,1), %edx                                          #  35    0x249a8  5      
  testq %rdx, %rdx                                                     #  36    0x249ad  3      
  jne .L_249c0                                                         #  37    0x249b0  6      
  nop                                                                  #  38    0x249b6  1      
.L_24a00:                                                              #        0x249b7  0      
  cmpl %edi, %esi                                                      #  39    0x249b7  2      
  je .L_24a80                                                          #  40    0x249b9  6      
  movl %edi, %edi                                                      #  41    0x249bf  2      
  cmpl 0x10(%r15,%rdi,1), %r12d                                        #  42    0x249c1  5      
  jl .L_24a80                                                          #  43    0x249c6  6      
  movl %edi, %edi                                                      #  44    0x249cc  2      
  movl 0x14(%r15,%rdi,1), %r12d                                        #  45    0x249ce  5      
  nop                                                                  #  46    0x249d3  1      
  callq ._ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_  #  47    0x249d4  5      
  movl %eax, %edi                                                      #  48    0x249d9  2      
  nop                                                                  #  49    0x249db  1      
  nop                                                                  #  50    0x249dc  1      
  callq ._ZdlPv                                                        #  51    0x249dd  5      
  movl %ebx, %ebx                                                      #  52    0x249e2  2      
  subl $0x1, 0x18(%r15,%rbx,1)                                         #  53    0x249e4  6      
  testq %r12, %r12                                                     #  54    0x249ea  3      
  je .L_24a80                                                          #  55    0x249ed  6      
  movl %r12d, %r12d                                                    #  56    0x249f3  3      
  movl (%r15,%r12,1), %eax                                             #  57    0x249f6  4      
  movl %r12d, %edi                                                     #  58    0x249fa  3      
  movl %eax, %eax                                                      #  59    0x249fd  2      
  movl 0x4(%r15,%rax,1), %eax                                          #  60    0x249ff  5      
  xchgw %ax, %ax                                                       #  61    0x24a04  3      
  addl $0x8, %esp                                                      #  62    0x24a07  3      
  addq %r15, %rsp                                                      #  63    0x24a0a  3      
  popq %rbx                                                            #  64    0x24a0d  2      
  popq %r12                                                            #  65    0x24a0f  3      
  andl $0xffffffe0, %eax                                               #  66    0x24a12  5      
  addq %r15, %rax                                                      #  67    0x24a17  3      
  jmpq %rax                                                            #  68    0x24a1a  2      
  nop                                                                  #  69    0x24a1c  1      
.L_24a80:                                                              #        0x24a1d  0      
  addl $0x8, %esp                                                      #  70    0x24a1d  3      
  addq %r15, %rsp                                                      #  71    0x24a20  3      
  popq %rbx                                                            #  72    0x24a23  2      
  popq %r12                                                            #  73    0x24a25  3      
  popq %r11                                                            #  74    0x24a28  3      
  andl $0xffffffe0, %r11d                                              #  75    0x24a2b  7      
  addq %r15, %r11                                                      #  76    0x24a32  3      
  jmpq %r11                                                            #  77    0x24a35  3      
  nop                                                                  #  78    0x24a38  1      
                                                                                                
.size _ZN2pp19Instance_DidDestroyEi, .-_ZN2pp19Instance_DidDestroyEi

