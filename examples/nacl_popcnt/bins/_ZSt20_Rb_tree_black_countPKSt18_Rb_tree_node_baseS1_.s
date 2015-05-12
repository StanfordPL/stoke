  .text
  .globl _ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_
  .type _ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_, @function

#! file-offset 0x441c0
#! rip-offset  0x441c0
#! capacity    128 bytes

# Text                                                   #  Line  RIP      Bytes  
._ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_:  #        0x441c0  0      
  movl %edi, %edi                                        #  1     0x441c0  2      
  xorl %eax, %eax                                        #  2     0x441c2  2      
  movl %esi, %esi                                        #  3     0x441c4  2      
  testq %rdi, %rdi                                       #  4     0x441c6  3      
  jne .L_44200                                           #  5     0x441c9  6      
  jmpq .L_44220                                          #  6     0x441cf  5      
  nop                                                    #  7     0x441d4  1      
  nop                                                    #  8     0x441d5  1      
.L_441e0:                                                #        0x441d6  0      
  movl %edi, %edi                                        #  9     0x441d6  2      
  movl 0x4(%r15,%rdi,1), %edi                            #  10    0x441d8  5      
  nop                                                    #  11    0x441dd  1      
  nop                                                    #  12    0x441de  1      
.L_44200:                                                #        0x441df  0      
  xorl %edx, %edx                                        #  13    0x441df  2      
  movl %edi, %edi                                        #  14    0x441e1  2      
  cmpl $0x1, (%r15,%rdi,1)                               #  15    0x441e3  5      
  sete %dl                                               #  16    0x441e8  3      
  addl %edx, %eax                                        #  17    0x441eb  2      
  cmpl %esi, %edi                                        #  18    0x441ed  2      
  jne .L_441e0                                           #  19    0x441ef  6      
  nop                                                    #  20    0x441f5  1      
.L_44220:                                                #        0x441f6  0      
  popq %r11                                              #  21    0x441f6  3      
  andl $0xffffffe0, %r11d                                #  22    0x441f9  7      
  addq %r15, %r11                                        #  23    0x44200  3      
  jmpq %r11                                              #  24    0x44203  3      
  nop                                                    #  25    0x44206  1      
  nop                                                    #  26    0x44207  1      
  nop                                                    #  27    0x44208  1      
  nop                                                    #  28    0x44209  1      
  nop                                                    #  29    0x4420a  1      
  nop                                                    #  30    0x4420b  1      
  nop                                                    #  31    0x4420c  1      
  nop                                                    #  32    0x4420d  1      
  nop                                                    #  33    0x4420e  1      
  nop                                                    #  34    0x4420f  1      
  nop                                                    #  35    0x44210  1      
  nop                                                    #  36    0x44211  1      
  nop                                                    #  37    0x44212  1      
  nop                                                    #  38    0x44213  1      
  nop                                                    #  39    0x44214  1      
  nop                                                    #  40    0x44215  1      
  nop                                                    #  41    0x44216  1      
  nop                                                    #  42    0x44217  1      
  nop                                                    #  43    0x44218  1      
  nop                                                    #  44    0x44219  1      
                                                                                  
.size _ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_, .-_ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_

