  .text
  .globl _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
  .type _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, @function

#! file-offset 0x25980
#! rip-offset  0x25980
#! capacity    160 bytes

# Text                                                                                                                     #  Line  RIP      Bytes  
._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E:         #        0x25980  0      
  pushq %r13                                                                                                               #  1     0x25980  3      
  pushq %r12                                                                                                               #  2     0x25983  3      
  movl %edi, %r12d                                                                                                         #  3     0x25986  3      
  pushq %rbx                                                                                                               #  4     0x25989  2      
  movl %esi, %ebx                                                                                                          #  5     0x2598b  2      
  testq %rbx, %rbx                                                                                                         #  6     0x2598d  3      
  je .L_25a00                                                                                                              #  7     0x25990  6      
  xchgw %ax, %ax                                                                                                           #  8     0x25996  3      
  nop                                                                                                                      #  9     0x25999  1      
.L_259a0:                                                                                                                  #        0x2599a  0      
  movl %ebx, %ebx                                                                                                          #  10    0x2599a  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  11    0x2599c  5      
  movl %r12d, %edi                                                                                                         #  12    0x259a1  3      
  xchgw %ax, %ax                                                                                                           #  13    0x259a4  3      
  nop                                                                                                                      #  14    0x259a7  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  15    0x259a8  5      
  movl %ebx, %ebx                                                                                                          #  16    0x259ad  2      
  movl 0x8(%r15,%rbx,1), %r13d                                                                                             #  17    0x259af  5      
  movl %ebx, %edi                                                                                                          #  18    0x259b4  2      
  nop                                                                                                                      #  19    0x259b6  1      
  nop                                                                                                                      #  20    0x259b7  1      
  callq ._ZdlPv                                                                                                            #  21    0x259b8  5      
  testq %r13, %r13                                                                                                         #  22    0x259bd  3      
  movq %r13, %rbx                                                                                                          #  23    0x259c0  3      
  jne .L_259a0                                                                                                             #  24    0x259c3  6      
  nop                                                                                                                      #  25    0x259c9  1      
  nop                                                                                                                      #  26    0x259ca  1      
.L_25a00:                                                                                                                  #        0x259cb  0      
  popq %rbx                                                                                                                #  27    0x259cb  2      
  popq %r12                                                                                                                #  28    0x259cd  3      
  popq %r13                                                                                                                #  29    0x259d0  3      
  popq %r11                                                                                                                #  30    0x259d3  3      
  andl $0xffffffe0, %r11d                                                                                                  #  31    0x259d6  7      
  addq %r15, %r11                                                                                                          #  32    0x259dd  3      
  jmpq %r11                                                                                                                #  33    0x259e0  3      
  nop                                                                                                                      #  34    0x259e3  1      
  nop                                                                                                                      #  35    0x259e4  1      
  nop                                                                                                                      #  36    0x259e5  1      
  nop                                                                                                                      #  37    0x259e6  1      
  nop                                                                                                                      #  38    0x259e7  1      
  nop                                                                                                                      #  39    0x259e8  1      
  nop                                                                                                                      #  40    0x259e9  1      
  nop                                                                                                                      #  41    0x259ea  1      
  nop                                                                                                                      #  42    0x259eb  1      
  nop                                                                                                                      #  43    0x259ec  1      
  nop                                                                                                                      #  44    0x259ed  1      
  nop                                                                                                                      #  45    0x259ee  1      
  nop                                                                                                                      #  46    0x259ef  1      
  nop                                                                                                                      #  47    0x259f0  1      
  nop                                                                                                                      #  48    0x259f1  1      
                                                                                                                                                    
.size _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, .-_ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E

