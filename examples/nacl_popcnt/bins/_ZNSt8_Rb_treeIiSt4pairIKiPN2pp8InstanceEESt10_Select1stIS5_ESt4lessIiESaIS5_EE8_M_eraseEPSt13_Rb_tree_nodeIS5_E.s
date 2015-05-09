  .text
  .globl _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
  .type _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, @function

#! file-offset 0x25960
#! rip-offset  0x25960
#! capacity    160 bytes

# Text                                                                                                                     #  Line  RIP      Bytes  
._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E:         #        0x25960  0      
  pushq %r13                                                                                                               #  1     0x25960  3      
  pushq %r12                                                                                                               #  2     0x25963  3      
  movl %edi, %r12d                                                                                                         #  3     0x25966  3      
  pushq %rbx                                                                                                               #  4     0x25969  2      
  movl %esi, %ebx                                                                                                          #  5     0x2596b  2      
  testq %rbx, %rbx                                                                                                         #  6     0x2596d  3      
  je .L_259e0                                                                                                              #  7     0x25970  6      
  xchgw %ax, %ax                                                                                                           #  8     0x25976  3      
  nop                                                                                                                      #  9     0x25979  1      
.L_25980:                                                                                                                  #        0x2597a  0      
  movl %ebx, %ebx                                                                                                          #  10    0x2597a  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  11    0x2597c  5      
  movl %r12d, %edi                                                                                                         #  12    0x25981  3      
  xchgw %ax, %ax                                                                                                           #  13    0x25984  3      
  nop                                                                                                                      #  14    0x25987  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  15    0x25988  5      
  movl %ebx, %ebx                                                                                                          #  16    0x2598d  2      
  movl 0x8(%r15,%rbx,1), %r13d                                                                                             #  17    0x2598f  5      
  movl %ebx, %edi                                                                                                          #  18    0x25994  2      
  nop                                                                                                                      #  19    0x25996  1      
  nop                                                                                                                      #  20    0x25997  1      
  callq ._ZdlPv                                                                                                            #  21    0x25998  5      
  testq %r13, %r13                                                                                                         #  22    0x2599d  3      
  movq %r13, %rbx                                                                                                          #  23    0x259a0  3      
  jne .L_25980                                                                                                             #  24    0x259a3  6      
  nop                                                                                                                      #  25    0x259a9  1      
  nop                                                                                                                      #  26    0x259aa  1      
.L_259e0:                                                                                                                  #        0x259ab  0      
  popq %rbx                                                                                                                #  27    0x259ab  2      
  popq %r12                                                                                                                #  28    0x259ad  3      
  popq %r13                                                                                                                #  29    0x259b0  3      
  popq %r11                                                                                                                #  30    0x259b3  3      
  andl $0xffffffe0, %r11d                                                                                                  #  31    0x259b6  7      
  addq %r15, %r11                                                                                                          #  32    0x259bd  3      
  jmpq %r11                                                                                                                #  33    0x259c0  3      
  nop                                                                                                                      #  34    0x259c3  1      
  nop                                                                                                                      #  35    0x259c4  1      
  nop                                                                                                                      #  36    0x259c5  1      
  nop                                                                                                                      #  37    0x259c6  1      
  nop                                                                                                                      #  38    0x259c7  1      
  nop                                                                                                                      #  39    0x259c8  1      
  nop                                                                                                                      #  40    0x259c9  1      
  nop                                                                                                                      #  41    0x259ca  1      
  nop                                                                                                                      #  42    0x259cb  1      
  nop                                                                                                                      #  43    0x259cc  1      
  nop                                                                                                                      #  44    0x259cd  1      
  nop                                                                                                                      #  45    0x259ce  1      
  nop                                                                                                                      #  46    0x259cf  1      
  nop                                                                                                                      #  47    0x259d0  1      
  nop                                                                                                                      #  48    0x259d1  1      
                                                                                                                                                    
.size _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, .-_ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E

