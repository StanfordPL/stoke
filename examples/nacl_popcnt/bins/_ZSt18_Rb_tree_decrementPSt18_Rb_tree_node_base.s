  .text
  .globl _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
  .type _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base, @function

#! file-offset 0x42c60
#! rip-offset  0x42c60
#! capacity    320 bytes

# Text                                             #  Line  RIP      Bytes  
._ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base:  #        0x42c60  0      
  movl %edi, %edi                                  #  1     0x42c60  2      
  movl %edi, %edi                                  #  2     0x42c62  2      
  movl (%r15,%rdi,1), %eax                         #  3     0x42c64  4      
  testl %eax, %eax                                 #  4     0x42c68  2      
  jne .L_42ca0                                     #  5     0x42c6a  6      
  movl %edi, %edi                                  #  6     0x42c70  2      
  movl 0x4(%r15,%rdi,1), %eax                      #  7     0x42c72  5      
  movl %eax, %eax                                  #  8     0x42c77  2      
  movl 0x4(%r15,%rax,1), %eax                      #  9     0x42c79  5      
  cmpl %edi, %eax                                  #  10    0x42c7e  2      
  nop                                              #  11    0x42c80  1      
  je .L_42d20                                      #  12    0x42c81  6      
  nop                                              #  13    0x42c87  1      
  nop                                              #  14    0x42c88  1      
.L_42ca0:                                          #        0x42c89  0      
  movl %edi, %edi                                  #  15    0x42c89  2      
  movl 0x8(%r15,%rdi,1), %eax                      #  16    0x42c8b  5      
  testq %rax, %rax                                 #  17    0x42c90  3      
  jne .L_42ce0                                     #  18    0x42c93  6      
  jmpq .L_42d40                                    #  19    0x42c99  5      
  nop                                              #  20    0x42c9e  1      
.L_42cc0:                                          #        0x42c9f  0      
  movq %rdx, %rax                                  #  21    0x42c9f  3      
  nop                                              #  22    0x42ca2  1      
  nop                                              #  23    0x42ca3  1      
.L_42ce0:                                          #        0x42ca4  0      
  movl %eax, %eax                                  #  24    0x42ca4  2      
  movl 0xc(%r15,%rax,1), %edx                      #  25    0x42ca6  5      
  testq %rdx, %rdx                                 #  26    0x42cab  3      
  jne .L_42cc0                                     #  27    0x42cae  6      
  nop                                              #  28    0x42cb4  1      
  nop                                              #  29    0x42cb5  1      
.L_42d00:                                          #        0x42cb6  0      
  popq %r11                                        #  30    0x42cb6  3      
  andl $0xffffffe0, %r11d                          #  31    0x42cb9  7      
  addq %r15, %r11                                  #  32    0x42cc0  3      
  jmpq %r11                                        #  33    0x42cc3  3      
  nop                                              #  34    0x42cc6  1      
  nop                                              #  35    0x42cc7  1      
.L_42d20:                                          #        0x42cc8  0      
  movl %eax, %eax                                  #  36    0x42cc8  2      
  movl 0xc(%r15,%rax,1), %eax                      #  37    0x42cca  5      
  popq %r11                                        #  38    0x42ccf  3      
  andl $0xffffffe0, %r11d                          #  39    0x42cd2  7      
  addq %r15, %r11                                  #  40    0x42cd9  3      
  jmpq %r11                                        #  41    0x42cdc  3      
  nop                                              #  42    0x42cdf  1      
.L_42d40:                                          #        0x42ce0  0      
  movl %edi, %edi                                  #  43    0x42ce0  2      
  movl 0x4(%r15,%rdi,1), %edx                      #  44    0x42ce2  5      
  movl %edx, %edx                                  #  45    0x42ce7  2      
  cmpl %edi, 0x8(%r15,%rdx,1)                      #  46    0x42ce9  5      
  movq %rdx, %rax                                  #  47    0x42cee  3      
  je .L_42d80                                      #  48    0x42cf1  6      
  jmpq .L_42d00                                    #  49    0x42cf7  5      
  nop                                              #  50    0x42cfc  1      
.L_42d60:                                          #        0x42cfd  0      
  movq %rax, %rdx                                  #  51    0x42cfd  3      
  nop                                              #  52    0x42d00  1      
  nop                                              #  53    0x42d01  1      
.L_42d80:                                          #        0x42d02  0      
  movl %edx, %edx                                  #  54    0x42d02  2      
  movl 0x4(%r15,%rdx,1), %eax                      #  55    0x42d04  5      
  movl %eax, %eax                                  #  56    0x42d09  2      
  cmpl %edx, 0x8(%r15,%rax,1)                      #  57    0x42d0b  5      
  je .L_42d60                                      #  58    0x42d10  6      
  popq %r11                                        #  59    0x42d16  3      
  andl $0xffffffe0, %r11d                          #  60    0x42d19  7      
  addq %r15, %r11                                  #  61    0x42d20  3      
  jmpq %r11                                        #  62    0x42d23  3      
  nop                                              #  63    0x42d26  1      
  nop                                              #  64    0x42d27  1      
  nop                                              #  65    0x42d28  1      
  nop                                              #  66    0x42d29  1      
                                                                            
.size _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base, .-_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base

