  .text
  .globl _ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
  .type _ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E, @function

#! file-offset 0x26020
#! rip-offset  0x26020
#! capacity    288 bytes

# Text                                                                                                            #  Line  RIP      Bytes  
._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E:         #        0x26020  0      
  pushq %r14                                                                                                      #  1     0x26020  3      
  pushq %r13                                                                                                      #  2     0x26023  3      
  movl %edi, %r13d                                                                                                #  3     0x26026  3      
  pushq %r12                                                                                                      #  4     0x26029  3      
  pushq %rbx                                                                                                      #  5     0x2602c  2      
  movl %esi, %ebx                                                                                                 #  6     0x2602e  2      
  subl $0x28, %esp                                                                                                #  7     0x26030  3      
  addq %r15, %rsp                                                                                                 #  8     0x26033  3      
  testq %rbx, %rbx                                                                                                #  9     0x26036  3      
  je .L_260e0                                                                                                     #  10    0x26039  6      
  leal 0x1f(%rsp), %eax                                                                                           #  11    0x2603f  4      
  nop                                                                                                             #  12    0x26043  1      
  movl $0x10031da0, %r14d                                                                                         #  13    0x26044  6      
  movq %rax, 0x8(%rsp)                                                                                            #  14    0x2604a  5      
  nop                                                                                                             #  15    0x2604f  1      
  nop                                                                                                             #  16    0x26050  1      
.L_26060:                                                                                                         #        0x26051  0      
  movl %ebx, %ebx                                                                                                 #  17    0x26051  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                     #  18    0x26053  5      
  movl %r13d, %edi                                                                                                #  19    0x26058  3      
  xchgw %ax, %ax                                                                                                  #  20    0x2605b  3      
  nop                                                                                                             #  21    0x2605e  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E  #  22    0x2605f  5      
  movl %ebx, %ebx                                                                                                 #  23    0x26064  2      
  movl 0x10(%r15,%rbx,1), %edi                                                                                    #  24    0x26066  5      
  movl %ebx, %ebx                                                                                                 #  25    0x2606b  2      
  movl 0x8(%r15,%rbx,1), %r12d                                                                                    #  26    0x2606d  5      
  subl $0xc, %edi                                                                                                 #  27    0x26072  3      
  cmpl %edi, %r14d                                                                                                #  28    0x26075  3      
  jne .L_26100                                                                                                    #  29    0x26078  6      
  nop                                                                                                             #  30    0x2607e  1      
.L_260a0:                                                                                                         #        0x2607f  0      
  movl %ebx, %edi                                                                                                 #  31    0x2607f  2      
  movq %r12, %rbx                                                                                                 #  32    0x26081  3      
  nop                                                                                                             #  33    0x26084  1      
  nop                                                                                                             #  34    0x26085  1      
  callq ._ZdlPv                                                                                                   #  35    0x26086  5      
  testq %r12, %r12                                                                                                #  36    0x2608b  3      
  jne .L_26060                                                                                                    #  37    0x2608e  6      
  nop                                                                                                             #  38    0x26094  1      
  nop                                                                                                             #  39    0x26095  1      
.L_260e0:                                                                                                         #        0x26096  0      
  addl $0x28, %esp                                                                                                #  40    0x26096  3      
  addq %r15, %rsp                                                                                                 #  41    0x26099  3      
  popq %rbx                                                                                                       #  42    0x2609c  2      
  popq %r12                                                                                                       #  43    0x2609e  3      
  popq %r13                                                                                                       #  44    0x260a1  3      
  popq %r14                                                                                                       #  45    0x260a4  3      
  popq %r11                                                                                                       #  46    0x260a7  3      
  andl $0xffffffe0, %r11d                                                                                         #  47    0x260aa  7      
  addq %r15, %r11                                                                                                 #  48    0x260b1  3      
  jmpq %r11                                                                                                       #  49    0x260b4  3      
  nop                                                                                                             #  50    0x260b7  1      
.L_26100:                                                                                                         #        0x260b8  0      
  movl %edi, %edi                                                                                                 #  51    0x260b8  2      
  movl 0x8(%r15,%rdi,1), %eax                                                                                     #  52    0x260ba  5      
  leal -0x1(%rax), %edx                                                                                           #  53    0x260bf  3      
  testl %eax, %eax                                                                                                #  54    0x260c2  2      
  movl %edi, %edi                                                                                                 #  55    0x260c4  2      
  movl %edx, 0x8(%r15,%rdi,1)                                                                                     #  56    0x260c6  5      
  jg .L_260a0                                                                                                     #  57    0x260cb  6      
  movl 0x8(%rsp), %esi                                                                                            #  58    0x260d1  4      
  xchgw %ax, %ax                                                                                                  #  59    0x260d5  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE                                                                           #  60    0x260d8  5      
  jmpq .L_260a0                                                                                                   #  61    0x260dd  5      
  nop                                                                                                             #  62    0x260e2  1      
  nop                                                                                                             #  63    0x260e3  1      
  nop                                                                                                             #  64    0x260e4  1      
  nop                                                                                                             #  65    0x260e5  1      
  nop                                                                                                             #  66    0x260e6  1      
  nop                                                                                                             #  67    0x260e7  1      
  nop                                                                                                             #  68    0x260e8  1      
  nop                                                                                                             #  69    0x260e9  1      
  nop                                                                                                             #  70    0x260ea  1      
  nop                                                                                                             #  71    0x260eb  1      
  nop                                                                                                             #  72    0x260ec  1      
  nop                                                                                                             #  73    0x260ed  1      
  nop                                                                                                             #  74    0x260ee  1      
  nop                                                                                                             #  75    0x260ef  1      
  nop                                                                                                             #  76    0x260f0  1      
  nop                                                                                                             #  77    0x260f1  1      
  nop                                                                                                             #  78    0x260f2  1      
  nop                                                                                                             #  79    0x260f3  1      
  nop                                                                                                             #  80    0x260f4  1      
  nop                                                                                                             #  81    0x260f5  1      
  nop                                                                                                             #  82    0x260f6  1      
  nop                                                                                                             #  83    0x260f7  1      
  nop                                                                                                             #  84    0x260f8  1      
  nop                                                                                                             #  85    0x260f9  1      
  nop                                                                                                             #  86    0x260fa  1      
  nop                                                                                                             #  87    0x260fb  1      
  nop                                                                                                             #  88    0x260fc  1      
                                                                                                                                           
.size _ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E, .-_ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E

