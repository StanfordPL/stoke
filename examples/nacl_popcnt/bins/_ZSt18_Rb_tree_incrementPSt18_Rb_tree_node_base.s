  .text
  .globl _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
  .type _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base, @function

#! file-offset 0x42b00
#! rip-offset  0x42b00
#! capacity    160 bytes

# Text                                             #  Line  RIP      Bytes  
._ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base:  #        0x42b00  0      
  movl %edi, %eax                                  #  1     0x42b00  2      
  movl %eax, %eax                                  #  2     0x42b02  2      
  movl 0xc(%r15,%rax,1), %edx                      #  3     0x42b04  5      
  testq %rdx, %rdx                                 #  4     0x42b09  3      
  je .L_42b40                                      #  5     0x42b0c  6      
  nop                                              #  6     0x42b12  1      
  nop                                              #  7     0x42b13  1      
.L_42b20:                                          #        0x42b14  0      
  movq %rdx, %rax                                  #  8     0x42b14  3      
  movl %edx, %edx                                  #  9     0x42b17  2      
  movl 0x8(%r15,%rdx,1), %edx                      #  10    0x42b19  5      
  testq %rdx, %rdx                                 #  11    0x42b1e  3      
  jne .L_42b20                                     #  12    0x42b21  6      
  popq %r11                                        #  13    0x42b27  3      
  andl $0xffffffe0, %r11d                          #  14    0x42b2a  7      
  addq %r15, %r11                                  #  15    0x42b31  3      
  jmpq %r11                                        #  16    0x42b34  3      
  nop                                              #  17    0x42b37  1      
.L_42b40:                                          #        0x42b38  0      
  movl %eax, %eax                                  #  18    0x42b38  2      
  movl 0x4(%r15,%rax,1), %edx                      #  19    0x42b3a  5      
  xorl %ecx, %ecx                                  #  20    0x42b3f  2      
  movl %edx, %edx                                  #  21    0x42b41  2      
  cmpl %eax, 0xc(%r15,%rdx,1)                      #  22    0x42b43  5      
  jne .L_42b80                                     #  23    0x42b48  6      
  nop                                              #  24    0x42b4e  1      
.L_42b60:                                          #        0x42b4f  0      
  movq %rdx, %rax                                  #  25    0x42b4f  3      
  movl %edx, %edx                                  #  26    0x42b52  2      
  movl 0x4(%r15,%rdx,1), %edx                      #  27    0x42b54  5      
  movl %edx, %edx                                  #  28    0x42b59  2      
  cmpl %eax, 0xc(%r15,%rdx,1)                      #  29    0x42b5b  5      
  je .L_42b60                                      #  30    0x42b60  6      
  movl %eax, %eax                                  #  31    0x42b66  2      
  movl 0xc(%r15,%rax,1), %ecx                      #  32    0x42b68  5      
  nop                                              #  33    0x42b6d  1      
.L_42b80:                                          #        0x42b6e  0      
  cmpl %ecx, %edx                                  #  34    0x42b6e  2      
  cmovneq %rdx, %rax                               #  35    0x42b70  4      
  popq %r11                                        #  36    0x42b74  3      
  andl $0xffffffe0, %r11d                          #  37    0x42b77  7      
  addq %r15, %r11                                  #  38    0x42b7e  3      
  jmpq %r11                                        #  39    0x42b81  3      
  nop                                              #  40    0x42b84  1      
  nop                                              #  41    0x42b85  1      
  nop                                              #  42    0x42b86  1      
  nop                                              #  43    0x42b87  1      
  nop                                              #  44    0x42b88  1      
  nop                                              #  45    0x42b89  1      
  nop                                              #  46    0x42b8a  1      
  nop                                              #  47    0x42b8b  1      
  nop                                              #  48    0x42b8c  1      
  nop                                              #  49    0x42b8d  1      
  nop                                              #  50    0x42b8e  1      
  nop                                              #  51    0x42b8f  1      
  nop                                              #  52    0x42b90  1      
  nop                                              #  53    0x42b91  1      
                                                                            
.size _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base, .-_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base

