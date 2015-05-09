  .text
  .globl _ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_
  .type _ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_, @function

#! file-offset 0x441a0
#! rip-offset  0x441a0
#! capacity    128 bytes

# Text                                                   #  Line  RIP      Bytes  
._ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_:  #        0x441a0  0      
  movl %edi, %edi                                        #  1     0x441a0  2      
  xorl %eax, %eax                                        #  2     0x441a2  2      
  movl %esi, %esi                                        #  3     0x441a4  2      
  testq %rdi, %rdi                                       #  4     0x441a6  3      
  jne .L_441e0                                           #  5     0x441a9  6      
  jmpq .L_44200                                          #  6     0x441af  5      
  nop                                                    #  7     0x441b4  1      
  nop                                                    #  8     0x441b5  1      
.L_441c0:                                                #        0x441b6  0      
  movl %edi, %edi                                        #  9     0x441b6  2      
  movl 0x4(%r15,%rdi,1), %edi                            #  10    0x441b8  5      
  nop                                                    #  11    0x441bd  1      
  nop                                                    #  12    0x441be  1      
.L_441e0:                                                #        0x441bf  0      
  xorl %edx, %edx                                        #  13    0x441bf  2      
  movl %edi, %edi                                        #  14    0x441c1  2      
  cmpl $0x1, (%r15,%rdi,1)                               #  15    0x441c3  5      
  sete %dl                                               #  16    0x441c8  3      
  addl %edx, %eax                                        #  17    0x441cb  2      
  cmpl %esi, %edi                                        #  18    0x441cd  2      
  jne .L_441c0                                           #  19    0x441cf  6      
  nop                                                    #  20    0x441d5  1      
.L_44200:                                                #        0x441d6  0      
  popq %r11                                              #  21    0x441d6  3      
  andl $0xffffffe0, %r11d                                #  22    0x441d9  7      
  addq %r15, %r11                                        #  23    0x441e0  3      
  jmpq %r11                                              #  24    0x441e3  3      
  nop                                                    #  25    0x441e6  1      
  nop                                                    #  26    0x441e7  1      
  nop                                                    #  27    0x441e8  1      
  nop                                                    #  28    0x441e9  1      
  nop                                                    #  29    0x441ea  1      
  nop                                                    #  30    0x441eb  1      
  nop                                                    #  31    0x441ec  1      
  nop                                                    #  32    0x441ed  1      
  nop                                                    #  33    0x441ee  1      
  nop                                                    #  34    0x441ef  1      
  nop                                                    #  35    0x441f0  1      
  nop                                                    #  36    0x441f1  1      
  nop                                                    #  37    0x441f2  1      
  nop                                                    #  38    0x441f3  1      
  nop                                                    #  39    0x441f4  1      
  nop                                                    #  40    0x441f5  1      
  nop                                                    #  41    0x441f6  1      
  nop                                                    #  42    0x441f7  1      
  nop                                                    #  43    0x441f8  1      
  nop                                                    #  44    0x441f9  1      
                                                                                  
.size _ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_, .-_ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_

