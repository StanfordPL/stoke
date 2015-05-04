  .text
  .globl _ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
  .type _ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E, @function

#! file-offset 0x260c0
#! rip-offset  0x260c0
#! capacity    288 bytes

# Text                                                                                                            #  Line  RIP      Bytes  
._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E:         #        0x260c0  0      
  pushq %r14                                                                                                      #  1     0x260c0  3      
  pushq %r13                                                                                                      #  2     0x260c3  3      
  movl %edi, %r13d                                                                                                #  3     0x260c6  3      
  pushq %r12                                                                                                      #  4     0x260c9  3      
  pushq %rbx                                                                                                      #  5     0x260cc  2      
  movl %esi, %ebx                                                                                                 #  6     0x260ce  2      
  subl $0x28, %esp                                                                                                #  7     0x260d0  3      
  addq %r15, %rsp                                                                                                 #  8     0x260d3  3      
  testq %rbx, %rbx                                                                                                #  9     0x260d6  3      
  je .L_26180                                                                                                     #  10    0x260d9  6      
  leal 0x1f(%rsp), %eax                                                                                           #  11    0x260df  4      
  nop                                                                                                             #  12    0x260e3  1      
  movl $0x10031da0, %r14d                                                                                         #  13    0x260e4  6      
  movq %rax, 0x8(%rsp)                                                                                            #  14    0x260ea  5      
  nop                                                                                                             #  15    0x260ef  1      
  nop                                                                                                             #  16    0x260f0  1      
.L_26100:                                                                                                         #        0x260f1  0      
  movl %ebx, %ebx                                                                                                 #  17    0x260f1  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                     #  18    0x260f3  5      
  movl %r13d, %edi                                                                                                #  19    0x260f8  3      
  xchgw %ax, %ax                                                                                                  #  20    0x260fb  3      
  nop                                                                                                             #  21    0x260fe  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E  #  22    0x260ff  5      
  movl %ebx, %ebx                                                                                                 #  23    0x26104  2      
  movl 0x10(%r15,%rbx,1), %edi                                                                                    #  24    0x26106  5      
  movl %ebx, %ebx                                                                                                 #  25    0x2610b  2      
  movl 0x8(%r15,%rbx,1), %r12d                                                                                    #  26    0x2610d  5      
  subl $0xc, %edi                                                                                                 #  27    0x26112  3      
  cmpl %edi, %r14d                                                                                                #  28    0x26115  3      
  jne .L_261a0                                                                                                    #  29    0x26118  6      
  nop                                                                                                             #  30    0x2611e  1      
.L_26140:                                                                                                         #        0x2611f  0      
  movl %ebx, %edi                                                                                                 #  31    0x2611f  2      
  movq %r12, %rbx                                                                                                 #  32    0x26121  3      
  nop                                                                                                             #  33    0x26124  1      
  nop                                                                                                             #  34    0x26125  1      
  callq ._ZdlPv                                                                                                   #  35    0x26126  5      
  testq %r12, %r12                                                                                                #  36    0x2612b  3      
  jne .L_26100                                                                                                    #  37    0x2612e  6      
  nop                                                                                                             #  38    0x26134  1      
  nop                                                                                                             #  39    0x26135  1      
.L_26180:                                                                                                         #        0x26136  0      
  addl $0x28, %esp                                                                                                #  40    0x26136  3      
  addq %r15, %rsp                                                                                                 #  41    0x26139  3      
  popq %rbx                                                                                                       #  42    0x2613c  2      
  popq %r12                                                                                                       #  43    0x2613e  3      
  popq %r13                                                                                                       #  44    0x26141  3      
  popq %r14                                                                                                       #  45    0x26144  3      
  popq %r11                                                                                                       #  46    0x26147  3      
  andl $0xffffffe0, %r11d                                                                                         #  47    0x2614a  7      
  addq %r15, %r11                                                                                                 #  48    0x26151  3      
  jmpq %r11                                                                                                       #  49    0x26154  3      
  nop                                                                                                             #  50    0x26157  1      
.L_261a0:                                                                                                         #        0x26158  0      
  movl %edi, %edi                                                                                                 #  51    0x26158  2      
  movl 0x8(%r15,%rdi,1), %eax                                                                                     #  52    0x2615a  5      
  leal -0x1(%rax), %edx                                                                                           #  53    0x2615f  3      
  testl %eax, %eax                                                                                                #  54    0x26162  2      
  movl %edi, %edi                                                                                                 #  55    0x26164  2      
  movl %edx, 0x8(%r15,%rdi,1)                                                                                     #  56    0x26166  5      
  jg .L_26140                                                                                                     #  57    0x2616b  6      
  movl 0x8(%rsp), %esi                                                                                            #  58    0x26171  4      
  xchgw %ax, %ax                                                                                                  #  59    0x26175  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE                                                                           #  60    0x26178  5      
  jmpq .L_26140                                                                                                   #  61    0x2617d  5      
  nop                                                                                                             #  62    0x26182  1      
  nop                                                                                                             #  63    0x26183  1      
  nop                                                                                                             #  64    0x26184  1      
  nop                                                                                                             #  65    0x26185  1      
  nop                                                                                                             #  66    0x26186  1      
  nop                                                                                                             #  67    0x26187  1      
  nop                                                                                                             #  68    0x26188  1      
  nop                                                                                                             #  69    0x26189  1      
  nop                                                                                                             #  70    0x2618a  1      
  nop                                                                                                             #  71    0x2618b  1      
  nop                                                                                                             #  72    0x2618c  1      
  nop                                                                                                             #  73    0x2618d  1      
  nop                                                                                                             #  74    0x2618e  1      
  nop                                                                                                             #  75    0x2618f  1      
  nop                                                                                                             #  76    0x26190  1      
  nop                                                                                                             #  77    0x26191  1      
  nop                                                                                                             #  78    0x26192  1      
  nop                                                                                                             #  79    0x26193  1      
  nop                                                                                                             #  80    0x26194  1      
  nop                                                                                                             #  81    0x26195  1      
  nop                                                                                                             #  82    0x26196  1      
  nop                                                                                                             #  83    0x26197  1      
  nop                                                                                                             #  84    0x26198  1      
  nop                                                                                                             #  85    0x26199  1      
  nop                                                                                                             #  86    0x2619a  1      
  nop                                                                                                             #  87    0x2619b  1      
  nop                                                                                                             #  88    0x2619c  1      
                                                                                                                                           
.size _ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E, .-_ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E

