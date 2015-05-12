  .text
  .globl _ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
  .type _ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E, @function

#! file-offset 0x26040
#! rip-offset  0x26040
#! capacity    288 bytes

# Text                                                                                                            #  Line  RIP      Bytes  
._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E:         #        0x26040  0      
  pushq %r14                                                                                                      #  1     0x26040  3      
  pushq %r13                                                                                                      #  2     0x26043  3      
  movl %edi, %r13d                                                                                                #  3     0x26046  3      
  pushq %r12                                                                                                      #  4     0x26049  3      
  pushq %rbx                                                                                                      #  5     0x2604c  2      
  movl %esi, %ebx                                                                                                 #  6     0x2604e  2      
  subl $0x28, %esp                                                                                                #  7     0x26050  3      
  addq %r15, %rsp                                                                                                 #  8     0x26053  3      
  testq %rbx, %rbx                                                                                                #  9     0x26056  3      
  je .L_26100                                                                                                     #  10    0x26059  6      
  leal 0x1f(%rsp), %eax                                                                                           #  11    0x2605f  4      
  nop                                                                                                             #  12    0x26063  1      
  movl $0x10031da0, %r14d                                                                                         #  13    0x26064  6      
  movq %rax, 0x8(%rsp)                                                                                            #  14    0x2606a  5      
  nop                                                                                                             #  15    0x2606f  1      
  nop                                                                                                             #  16    0x26070  1      
.L_26080:                                                                                                         #        0x26071  0      
  movl %ebx, %ebx                                                                                                 #  17    0x26071  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                     #  18    0x26073  5      
  movl %r13d, %edi                                                                                                #  19    0x26078  3      
  xchgw %ax, %ax                                                                                                  #  20    0x2607b  3      
  nop                                                                                                             #  21    0x2607e  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E  #  22    0x2607f  5      
  movl %ebx, %ebx                                                                                                 #  23    0x26084  2      
  movl 0x10(%r15,%rbx,1), %edi                                                                                    #  24    0x26086  5      
  movl %ebx, %ebx                                                                                                 #  25    0x2608b  2      
  movl 0x8(%r15,%rbx,1), %r12d                                                                                    #  26    0x2608d  5      
  subl $0xc, %edi                                                                                                 #  27    0x26092  3      
  cmpl %edi, %r14d                                                                                                #  28    0x26095  3      
  jne .L_26120                                                                                                    #  29    0x26098  6      
  nop                                                                                                             #  30    0x2609e  1      
.L_260c0:                                                                                                         #        0x2609f  0      
  movl %ebx, %edi                                                                                                 #  31    0x2609f  2      
  movq %r12, %rbx                                                                                                 #  32    0x260a1  3      
  nop                                                                                                             #  33    0x260a4  1      
  nop                                                                                                             #  34    0x260a5  1      
  callq ._ZdlPv                                                                                                   #  35    0x260a6  5      
  testq %r12, %r12                                                                                                #  36    0x260ab  3      
  jne .L_26080                                                                                                    #  37    0x260ae  6      
  nop                                                                                                             #  38    0x260b4  1      
  nop                                                                                                             #  39    0x260b5  1      
.L_26100:                                                                                                         #        0x260b6  0      
  addl $0x28, %esp                                                                                                #  40    0x260b6  3      
  addq %r15, %rsp                                                                                                 #  41    0x260b9  3      
  popq %rbx                                                                                                       #  42    0x260bc  2      
  popq %r12                                                                                                       #  43    0x260be  3      
  popq %r13                                                                                                       #  44    0x260c1  3      
  popq %r14                                                                                                       #  45    0x260c4  3      
  popq %r11                                                                                                       #  46    0x260c7  3      
  andl $0xffffffe0, %r11d                                                                                         #  47    0x260ca  7      
  addq %r15, %r11                                                                                                 #  48    0x260d1  3      
  jmpq %r11                                                                                                       #  49    0x260d4  3      
  nop                                                                                                             #  50    0x260d7  1      
.L_26120:                                                                                                         #        0x260d8  0      
  movl %edi, %edi                                                                                                 #  51    0x260d8  2      
  movl 0x8(%r15,%rdi,1), %eax                                                                                     #  52    0x260da  5      
  leal -0x1(%rax), %edx                                                                                           #  53    0x260df  3      
  testl %eax, %eax                                                                                                #  54    0x260e2  2      
  movl %edi, %edi                                                                                                 #  55    0x260e4  2      
  movl %edx, 0x8(%r15,%rdi,1)                                                                                     #  56    0x260e6  5      
  jg .L_260c0                                                                                                     #  57    0x260eb  6      
  movl 0x8(%rsp), %esi                                                                                            #  58    0x260f1  4      
  xchgw %ax, %ax                                                                                                  #  59    0x260f5  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE                                                                           #  60    0x260f8  5      
  jmpq .L_260c0                                                                                                   #  61    0x260fd  5      
  nop                                                                                                             #  62    0x26102  1      
  nop                                                                                                             #  63    0x26103  1      
  nop                                                                                                             #  64    0x26104  1      
  nop                                                                                                             #  65    0x26105  1      
  nop                                                                                                             #  66    0x26106  1      
  nop                                                                                                             #  67    0x26107  1      
  nop                                                                                                             #  68    0x26108  1      
  nop                                                                                                             #  69    0x26109  1      
  nop                                                                                                             #  70    0x2610a  1      
  nop                                                                                                             #  71    0x2610b  1      
  nop                                                                                                             #  72    0x2610c  1      
  nop                                                                                                             #  73    0x2610d  1      
  nop                                                                                                             #  74    0x2610e  1      
  nop                                                                                                             #  75    0x2610f  1      
  nop                                                                                                             #  76    0x26110  1      
  nop                                                                                                             #  77    0x26111  1      
  nop                                                                                                             #  78    0x26112  1      
  nop                                                                                                             #  79    0x26113  1      
  nop                                                                                                             #  80    0x26114  1      
  nop                                                                                                             #  81    0x26115  1      
  nop                                                                                                             #  82    0x26116  1      
  nop                                                                                                             #  83    0x26117  1      
  nop                                                                                                             #  84    0x26118  1      
  nop                                                                                                             #  85    0x26119  1      
  nop                                                                                                             #  86    0x2611a  1      
  nop                                                                                                             #  87    0x2611b  1      
  nop                                                                                                             #  88    0x2611c  1      
                                                                                                                                           
.size _ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E, .-_ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E

