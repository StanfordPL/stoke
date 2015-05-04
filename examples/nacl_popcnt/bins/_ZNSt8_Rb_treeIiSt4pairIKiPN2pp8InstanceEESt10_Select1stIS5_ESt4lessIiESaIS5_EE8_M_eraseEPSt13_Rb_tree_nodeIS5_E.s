  .text
  .globl _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
  .type _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, @function

#! file-offset 0x25a00
#! rip-offset  0x25a00
#! capacity    160 bytes

# Text                                                                                                                     #  Line  RIP      Bytes  
._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E:         #        0x25a00  0      
  pushq %r13                                                                                                               #  1     0x25a00  3      
  pushq %r12                                                                                                               #  2     0x25a03  3      
  movl %edi, %r12d                                                                                                         #  3     0x25a06  3      
  pushq %rbx                                                                                                               #  4     0x25a09  2      
  movl %esi, %ebx                                                                                                          #  5     0x25a0b  2      
  testq %rbx, %rbx                                                                                                         #  6     0x25a0d  3      
  je .L_25a80                                                                                                              #  7     0x25a10  6      
  xchgw %ax, %ax                                                                                                           #  8     0x25a16  3      
  nop                                                                                                                      #  9     0x25a19  1      
.L_25a20:                                                                                                                  #        0x25a1a  0      
  movl %ebx, %ebx                                                                                                          #  10    0x25a1a  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  11    0x25a1c  5      
  movl %r12d, %edi                                                                                                         #  12    0x25a21  3      
  xchgw %ax, %ax                                                                                                           #  13    0x25a24  3      
  nop                                                                                                                      #  14    0x25a27  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  15    0x25a28  5      
  movl %ebx, %ebx                                                                                                          #  16    0x25a2d  2      
  movl 0x8(%r15,%rbx,1), %r13d                                                                                             #  17    0x25a2f  5      
  movl %ebx, %edi                                                                                                          #  18    0x25a34  2      
  nop                                                                                                                      #  19    0x25a36  1      
  nop                                                                                                                      #  20    0x25a37  1      
  callq ._ZdlPv                                                                                                            #  21    0x25a38  5      
  testq %r13, %r13                                                                                                         #  22    0x25a3d  3      
  movq %r13, %rbx                                                                                                          #  23    0x25a40  3      
  jne .L_25a20                                                                                                             #  24    0x25a43  6      
  nop                                                                                                                      #  25    0x25a49  1      
  nop                                                                                                                      #  26    0x25a4a  1      
.L_25a80:                                                                                                                  #        0x25a4b  0      
  popq %rbx                                                                                                                #  27    0x25a4b  2      
  popq %r12                                                                                                                #  28    0x25a4d  3      
  popq %r13                                                                                                                #  29    0x25a50  3      
  popq %r11                                                                                                                #  30    0x25a53  3      
  andl $0xffffffe0, %r11d                                                                                                  #  31    0x25a56  7      
  addq %r15, %r11                                                                                                          #  32    0x25a5d  3      
  jmpq %r11                                                                                                                #  33    0x25a60  3      
  nop                                                                                                                      #  34    0x25a63  1      
  nop                                                                                                                      #  35    0x25a64  1      
  nop                                                                                                                      #  36    0x25a65  1      
  nop                                                                                                                      #  37    0x25a66  1      
  nop                                                                                                                      #  38    0x25a67  1      
  nop                                                                                                                      #  39    0x25a68  1      
  nop                                                                                                                      #  40    0x25a69  1      
  nop                                                                                                                      #  41    0x25a6a  1      
  nop                                                                                                                      #  42    0x25a6b  1      
  nop                                                                                                                      #  43    0x25a6c  1      
  nop                                                                                                                      #  44    0x25a6d  1      
  nop                                                                                                                      #  45    0x25a6e  1      
  nop                                                                                                                      #  46    0x25a6f  1      
  nop                                                                                                                      #  47    0x25a70  1      
  nop                                                                                                                      #  48    0x25a71  1      
                                                                                                                                                    
.size _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, .-_ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E

