  .text
  .globl _ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_
  .type _ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_, @function

#! file-offset 0x44240
#! rip-offset  0x44240
#! capacity    128 bytes

# Text                                                   #  Line  RIP      Bytes  
._ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_:  #        0x44240  0      
  movl %edi, %edi                                        #  1     0x44240  2      
  xorl %eax, %eax                                        #  2     0x44242  2      
  movl %esi, %esi                                        #  3     0x44244  2      
  testq %rdi, %rdi                                       #  4     0x44246  3      
  jne .L_44280                                           #  5     0x44249  6      
  jmpq .L_442a0                                          #  6     0x4424f  5      
  nop                                                    #  7     0x44254  1      
  nop                                                    #  8     0x44255  1      
.L_44260:                                                #        0x44256  0      
  movl %edi, %edi                                        #  9     0x44256  2      
  movl 0x4(%r15,%rdi,1), %edi                            #  10    0x44258  5      
  nop                                                    #  11    0x4425d  1      
  nop                                                    #  12    0x4425e  1      
.L_44280:                                                #        0x4425f  0      
  xorl %edx, %edx                                        #  13    0x4425f  2      
  movl %edi, %edi                                        #  14    0x44261  2      
  cmpl $0x1, (%r15,%rdi,1)                               #  15    0x44263  5      
  sete %dl                                               #  16    0x44268  3      
  addl %edx, %eax                                        #  17    0x4426b  2      
  cmpl %esi, %edi                                        #  18    0x4426d  2      
  jne .L_44260                                           #  19    0x4426f  6      
  nop                                                    #  20    0x44275  1      
.L_442a0:                                                #        0x44276  0      
  popq %r11                                              #  21    0x44276  3      
  andl $0xffffffe0, %r11d                                #  22    0x44279  7      
  addq %r15, %r11                                        #  23    0x44280  3      
  jmpq %r11                                              #  24    0x44283  3      
  nop                                                    #  25    0x44286  1      
  nop                                                    #  26    0x44287  1      
  nop                                                    #  27    0x44288  1      
  nop                                                    #  28    0x44289  1      
  nop                                                    #  29    0x4428a  1      
  nop                                                    #  30    0x4428b  1      
  nop                                                    #  31    0x4428c  1      
  nop                                                    #  32    0x4428d  1      
  nop                                                    #  33    0x4428e  1      
  nop                                                    #  34    0x4428f  1      
  nop                                                    #  35    0x44290  1      
  nop                                                    #  36    0x44291  1      
  nop                                                    #  37    0x44292  1      
  nop                                                    #  38    0x44293  1      
  nop                                                    #  39    0x44294  1      
  nop                                                    #  40    0x44295  1      
  nop                                                    #  41    0x44296  1      
  nop                                                    #  42    0x44297  1      
  nop                                                    #  43    0x44298  1      
  nop                                                    #  44    0x44299  1      
                                                                                  
.size _ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_, .-_ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_

