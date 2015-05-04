  .text
  .globl _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
  .type _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base, @function

#! file-offset 0x42ce0
#! rip-offset  0x42ce0
#! capacity    320 bytes

# Text                                             #  Line  RIP      Bytes  
._ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base:  #        0x42ce0  0      
  movl %edi, %edi                                  #  1     0x42ce0  2      
  movl %edi, %edi                                  #  2     0x42ce2  2      
  movl (%r15,%rdi,1), %eax                         #  3     0x42ce4  4      
  testl %eax, %eax                                 #  4     0x42ce8  2      
  jne .L_42d20                                     #  5     0x42cea  6      
  movl %edi, %edi                                  #  6     0x42cf0  2      
  movl 0x4(%r15,%rdi,1), %eax                      #  7     0x42cf2  5      
  movl %eax, %eax                                  #  8     0x42cf7  2      
  movl 0x4(%r15,%rax,1), %eax                      #  9     0x42cf9  5      
  cmpl %edi, %eax                                  #  10    0x42cfe  2      
  nop                                              #  11    0x42d00  1      
  je .L_42da0                                      #  12    0x42d01  6      
  nop                                              #  13    0x42d07  1      
  nop                                              #  14    0x42d08  1      
.L_42d20:                                          #        0x42d09  0      
  movl %edi, %edi                                  #  15    0x42d09  2      
  movl 0x8(%r15,%rdi,1), %eax                      #  16    0x42d0b  5      
  testq %rax, %rax                                 #  17    0x42d10  3      
  jne .L_42d60                                     #  18    0x42d13  6      
  jmpq .L_42dc0                                    #  19    0x42d19  5      
  nop                                              #  20    0x42d1e  1      
.L_42d40:                                          #        0x42d1f  0      
  movq %rdx, %rax                                  #  21    0x42d1f  3      
  nop                                              #  22    0x42d22  1      
  nop                                              #  23    0x42d23  1      
.L_42d60:                                          #        0x42d24  0      
  movl %eax, %eax                                  #  24    0x42d24  2      
  movl 0xc(%r15,%rax,1), %edx                      #  25    0x42d26  5      
  testq %rdx, %rdx                                 #  26    0x42d2b  3      
  jne .L_42d40                                     #  27    0x42d2e  6      
  nop                                              #  28    0x42d34  1      
  nop                                              #  29    0x42d35  1      
.L_42d80:                                          #        0x42d36  0      
  popq %r11                                        #  30    0x42d36  3      
  andl $0xffffffe0, %r11d                          #  31    0x42d39  7      
  addq %r15, %r11                                  #  32    0x42d40  3      
  jmpq %r11                                        #  33    0x42d43  3      
  nop                                              #  34    0x42d46  1      
  nop                                              #  35    0x42d47  1      
.L_42da0:                                          #        0x42d48  0      
  movl %eax, %eax                                  #  36    0x42d48  2      
  movl 0xc(%r15,%rax,1), %eax                      #  37    0x42d4a  5      
  popq %r11                                        #  38    0x42d4f  3      
  andl $0xffffffe0, %r11d                          #  39    0x42d52  7      
  addq %r15, %r11                                  #  40    0x42d59  3      
  jmpq %r11                                        #  41    0x42d5c  3      
  nop                                              #  42    0x42d5f  1      
.L_42dc0:                                          #        0x42d60  0      
  movl %edi, %edi                                  #  43    0x42d60  2      
  movl 0x4(%r15,%rdi,1), %edx                      #  44    0x42d62  5      
  movl %edx, %edx                                  #  45    0x42d67  2      
  cmpl %edi, 0x8(%r15,%rdx,1)                      #  46    0x42d69  5      
  movq %rdx, %rax                                  #  47    0x42d6e  3      
  je .L_42e00                                      #  48    0x42d71  6      
  jmpq .L_42d80                                    #  49    0x42d77  5      
  nop                                              #  50    0x42d7c  1      
.L_42de0:                                          #        0x42d7d  0      
  movq %rax, %rdx                                  #  51    0x42d7d  3      
  nop                                              #  52    0x42d80  1      
  nop                                              #  53    0x42d81  1      
.L_42e00:                                          #        0x42d82  0      
  movl %edx, %edx                                  #  54    0x42d82  2      
  movl 0x4(%r15,%rdx,1), %eax                      #  55    0x42d84  5      
  movl %eax, %eax                                  #  56    0x42d89  2      
  cmpl %edx, 0x8(%r15,%rax,1)                      #  57    0x42d8b  5      
  je .L_42de0                                      #  58    0x42d90  6      
  popq %r11                                        #  59    0x42d96  3      
  andl $0xffffffe0, %r11d                          #  60    0x42d99  7      
  addq %r15, %r11                                  #  61    0x42da0  3      
  jmpq %r11                                        #  62    0x42da3  3      
  nop                                              #  63    0x42da6  1      
  nop                                              #  64    0x42da7  1      
  nop                                              #  65    0x42da8  1      
  nop                                              #  66    0x42da9  1      
                                                                            
.size _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base, .-_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base

