  .text
  .globl _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
  .type _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base, @function

#! file-offset 0x42ae0
#! rip-offset  0x42ae0
#! capacity    160 bytes

# Text                                             #  Line  RIP      Bytes  
._ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base:  #        0x42ae0  0      
  movl %edi, %eax                                  #  1     0x42ae0  2      
  movl %eax, %eax                                  #  2     0x42ae2  2      
  movl 0xc(%r15,%rax,1), %edx                      #  3     0x42ae4  5      
  testq %rdx, %rdx                                 #  4     0x42ae9  3      
  je .L_42b20                                      #  5     0x42aec  6      
  nop                                              #  6     0x42af2  1      
  nop                                              #  7     0x42af3  1      
.L_42b00:                                          #        0x42af4  0      
  movq %rdx, %rax                                  #  8     0x42af4  3      
  movl %edx, %edx                                  #  9     0x42af7  2      
  movl 0x8(%r15,%rdx,1), %edx                      #  10    0x42af9  5      
  testq %rdx, %rdx                                 #  11    0x42afe  3      
  jne .L_42b00                                     #  12    0x42b01  6      
  popq %r11                                        #  13    0x42b07  3      
  andl $0xffffffe0, %r11d                          #  14    0x42b0a  7      
  addq %r15, %r11                                  #  15    0x42b11  3      
  jmpq %r11                                        #  16    0x42b14  3      
  nop                                              #  17    0x42b17  1      
.L_42b20:                                          #        0x42b18  0      
  movl %eax, %eax                                  #  18    0x42b18  2      
  movl 0x4(%r15,%rax,1), %edx                      #  19    0x42b1a  5      
  xorl %ecx, %ecx                                  #  20    0x42b1f  2      
  movl %edx, %edx                                  #  21    0x42b21  2      
  cmpl %eax, 0xc(%r15,%rdx,1)                      #  22    0x42b23  5      
  jne .L_42b60                                     #  23    0x42b28  6      
  nop                                              #  24    0x42b2e  1      
.L_42b40:                                          #        0x42b2f  0      
  movq %rdx, %rax                                  #  25    0x42b2f  3      
  movl %edx, %edx                                  #  26    0x42b32  2      
  movl 0x4(%r15,%rdx,1), %edx                      #  27    0x42b34  5      
  movl %edx, %edx                                  #  28    0x42b39  2      
  cmpl %eax, 0xc(%r15,%rdx,1)                      #  29    0x42b3b  5      
  je .L_42b40                                      #  30    0x42b40  6      
  movl %eax, %eax                                  #  31    0x42b46  2      
  movl 0xc(%r15,%rax,1), %ecx                      #  32    0x42b48  5      
  nop                                              #  33    0x42b4d  1      
.L_42b60:                                          #        0x42b4e  0      
  cmpl %ecx, %edx                                  #  34    0x42b4e  2      
  cmovneq %rdx, %rax                               #  35    0x42b50  4      
  popq %r11                                        #  36    0x42b54  3      
  andl $0xffffffe0, %r11d                          #  37    0x42b57  7      
  addq %r15, %r11                                  #  38    0x42b5e  3      
  jmpq %r11                                        #  39    0x42b61  3      
  nop                                              #  40    0x42b64  1      
  nop                                              #  41    0x42b65  1      
  nop                                              #  42    0x42b66  1      
  nop                                              #  43    0x42b67  1      
  nop                                              #  44    0x42b68  1      
  nop                                              #  45    0x42b69  1      
  nop                                              #  46    0x42b6a  1      
  nop                                              #  47    0x42b6b  1      
  nop                                              #  48    0x42b6c  1      
  nop                                              #  49    0x42b6d  1      
  nop                                              #  50    0x42b6e  1      
  nop                                              #  51    0x42b6f  1      
  nop                                              #  52    0x42b70  1      
  nop                                              #  53    0x42b71  1      
                                                                            
.size _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base, .-_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base

