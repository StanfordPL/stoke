  .text
  .globl _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
  .type _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base, @function

#! file-offset 0x42c40
#! rip-offset  0x42c40
#! capacity    320 bytes

# Text                                             #  Line  RIP      Bytes  
._ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base:  #        0x42c40  0      
  movl %edi, %edi                                  #  1     0x42c40  2      
  movl %edi, %edi                                  #  2     0x42c42  2      
  movl (%r15,%rdi,1), %eax                         #  3     0x42c44  4      
  testl %eax, %eax                                 #  4     0x42c48  2      
  jne .L_42c80                                     #  5     0x42c4a  6      
  movl %edi, %edi                                  #  6     0x42c50  2      
  movl 0x4(%r15,%rdi,1), %eax                      #  7     0x42c52  5      
  movl %eax, %eax                                  #  8     0x42c57  2      
  movl 0x4(%r15,%rax,1), %eax                      #  9     0x42c59  5      
  cmpl %edi, %eax                                  #  10    0x42c5e  2      
  nop                                              #  11    0x42c60  1      
  je .L_42d00                                      #  12    0x42c61  6      
  nop                                              #  13    0x42c67  1      
  nop                                              #  14    0x42c68  1      
.L_42c80:                                          #        0x42c69  0      
  movl %edi, %edi                                  #  15    0x42c69  2      
  movl 0x8(%r15,%rdi,1), %eax                      #  16    0x42c6b  5      
  testq %rax, %rax                                 #  17    0x42c70  3      
  jne .L_42cc0                                     #  18    0x42c73  6      
  jmpq .L_42d20                                    #  19    0x42c79  5      
  nop                                              #  20    0x42c7e  1      
.L_42ca0:                                          #        0x42c7f  0      
  movq %rdx, %rax                                  #  21    0x42c7f  3      
  nop                                              #  22    0x42c82  1      
  nop                                              #  23    0x42c83  1      
.L_42cc0:                                          #        0x42c84  0      
  movl %eax, %eax                                  #  24    0x42c84  2      
  movl 0xc(%r15,%rax,1), %edx                      #  25    0x42c86  5      
  testq %rdx, %rdx                                 #  26    0x42c8b  3      
  jne .L_42ca0                                     #  27    0x42c8e  6      
  nop                                              #  28    0x42c94  1      
  nop                                              #  29    0x42c95  1      
.L_42ce0:                                          #        0x42c96  0      
  popq %r11                                        #  30    0x42c96  3      
  andl $0xffffffe0, %r11d                          #  31    0x42c99  7      
  addq %r15, %r11                                  #  32    0x42ca0  3      
  jmpq %r11                                        #  33    0x42ca3  3      
  nop                                              #  34    0x42ca6  1      
  nop                                              #  35    0x42ca7  1      
.L_42d00:                                          #        0x42ca8  0      
  movl %eax, %eax                                  #  36    0x42ca8  2      
  movl 0xc(%r15,%rax,1), %eax                      #  37    0x42caa  5      
  popq %r11                                        #  38    0x42caf  3      
  andl $0xffffffe0, %r11d                          #  39    0x42cb2  7      
  addq %r15, %r11                                  #  40    0x42cb9  3      
  jmpq %r11                                        #  41    0x42cbc  3      
  nop                                              #  42    0x42cbf  1      
.L_42d20:                                          #        0x42cc0  0      
  movl %edi, %edi                                  #  43    0x42cc0  2      
  movl 0x4(%r15,%rdi,1), %edx                      #  44    0x42cc2  5      
  movl %edx, %edx                                  #  45    0x42cc7  2      
  cmpl %edi, 0x8(%r15,%rdx,1)                      #  46    0x42cc9  5      
  movq %rdx, %rax                                  #  47    0x42cce  3      
  je .L_42d60                                      #  48    0x42cd1  6      
  jmpq .L_42ce0                                    #  49    0x42cd7  5      
  nop                                              #  50    0x42cdc  1      
.L_42d40:                                          #        0x42cdd  0      
  movq %rax, %rdx                                  #  51    0x42cdd  3      
  nop                                              #  52    0x42ce0  1      
  nop                                              #  53    0x42ce1  1      
.L_42d60:                                          #        0x42ce2  0      
  movl %edx, %edx                                  #  54    0x42ce2  2      
  movl 0x4(%r15,%rdx,1), %eax                      #  55    0x42ce4  5      
  movl %eax, %eax                                  #  56    0x42ce9  2      
  cmpl %edx, 0x8(%r15,%rax,1)                      #  57    0x42ceb  5      
  je .L_42d40                                      #  58    0x42cf0  6      
  popq %r11                                        #  59    0x42cf6  3      
  andl $0xffffffe0, %r11d                          #  60    0x42cf9  7      
  addq %r15, %r11                                  #  61    0x42d00  3      
  jmpq %r11                                        #  62    0x42d03  3      
  nop                                              #  63    0x42d06  1      
  nop                                              #  64    0x42d07  1      
  nop                                              #  65    0x42d08  1      
  nop                                              #  66    0x42d09  1      
                                                                            
.size _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base, .-_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base

