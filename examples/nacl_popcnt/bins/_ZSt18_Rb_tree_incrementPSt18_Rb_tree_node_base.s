  .text
  .globl _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
  .type _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base, @function

#! file-offset 0x42b80
#! rip-offset  0x42b80
#! capacity    160 bytes

# Text                                             #  Line  RIP      Bytes  
._ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base:  #        0x42b80  0      
  movl %edi, %eax                                  #  1     0x42b80  2      
  movl %eax, %eax                                  #  2     0x42b82  2      
  movl 0xc(%r15,%rax,1), %edx                      #  3     0x42b84  5      
  testq %rdx, %rdx                                 #  4     0x42b89  3      
  je .L_42bc0                                      #  5     0x42b8c  6      
  nop                                              #  6     0x42b92  1      
  nop                                              #  7     0x42b93  1      
.L_42ba0:                                          #        0x42b94  0      
  movq %rdx, %rax                                  #  8     0x42b94  3      
  movl %edx, %edx                                  #  9     0x42b97  2      
  movl 0x8(%r15,%rdx,1), %edx                      #  10    0x42b99  5      
  testq %rdx, %rdx                                 #  11    0x42b9e  3      
  jne .L_42ba0                                     #  12    0x42ba1  6      
  popq %r11                                        #  13    0x42ba7  3      
  andl $0xffffffe0, %r11d                          #  14    0x42baa  7      
  addq %r15, %r11                                  #  15    0x42bb1  3      
  jmpq %r11                                        #  16    0x42bb4  3      
  nop                                              #  17    0x42bb7  1      
.L_42bc0:                                          #        0x42bb8  0      
  movl %eax, %eax                                  #  18    0x42bb8  2      
  movl 0x4(%r15,%rax,1), %edx                      #  19    0x42bba  5      
  xorl %ecx, %ecx                                  #  20    0x42bbf  2      
  movl %edx, %edx                                  #  21    0x42bc1  2      
  cmpl %eax, 0xc(%r15,%rdx,1)                      #  22    0x42bc3  5      
  jne .L_42c00                                     #  23    0x42bc8  6      
  nop                                              #  24    0x42bce  1      
.L_42be0:                                          #        0x42bcf  0      
  movq %rdx, %rax                                  #  25    0x42bcf  3      
  movl %edx, %edx                                  #  26    0x42bd2  2      
  movl 0x4(%r15,%rdx,1), %edx                      #  27    0x42bd4  5      
  movl %edx, %edx                                  #  28    0x42bd9  2      
  cmpl %eax, 0xc(%r15,%rdx,1)                      #  29    0x42bdb  5      
  je .L_42be0                                      #  30    0x42be0  6      
  movl %eax, %eax                                  #  31    0x42be6  2      
  movl 0xc(%r15,%rax,1), %ecx                      #  32    0x42be8  5      
  nop                                              #  33    0x42bed  1      
.L_42c00:                                          #        0x42bee  0      
  cmpl %ecx, %edx                                  #  34    0x42bee  2      
  cmovneq %rdx, %rax                               #  35    0x42bf0  4      
  popq %r11                                        #  36    0x42bf4  3      
  andl $0xffffffe0, %r11d                          #  37    0x42bf7  7      
  addq %r15, %r11                                  #  38    0x42bfe  3      
  jmpq %r11                                        #  39    0x42c01  3      
  nop                                              #  40    0x42c04  1      
  nop                                              #  41    0x42c05  1      
  nop                                              #  42    0x42c06  1      
  nop                                              #  43    0x42c07  1      
  nop                                              #  44    0x42c08  1      
  nop                                              #  45    0x42c09  1      
  nop                                              #  46    0x42c0a  1      
  nop                                              #  47    0x42c0b  1      
  nop                                              #  48    0x42c0c  1      
  nop                                              #  49    0x42c0d  1      
  nop                                              #  50    0x42c0e  1      
  nop                                              #  51    0x42c0f  1      
  nop                                              #  52    0x42c10  1      
  nop                                              #  53    0x42c11  1      
                                                                            
.size _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base, .-_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base

