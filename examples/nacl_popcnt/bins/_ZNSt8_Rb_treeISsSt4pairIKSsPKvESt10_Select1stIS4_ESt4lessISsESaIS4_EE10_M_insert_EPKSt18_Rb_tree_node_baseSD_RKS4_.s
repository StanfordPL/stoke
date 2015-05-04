  .text
  .globl _ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPKSt18_Rb_tree_node_baseSD_RKS4_
  .type _ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPKSt18_Rb_tree_node_baseSD_RKS4_, @function

#! file-offset 0x261e0
#! rip-offset  0x261e0
#! capacity    576 bytes

# Text                                                                                                                 #  Line  RIP      Bytes  
._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPKSt18_Rb_tree_node_baseSD_RKS4_:  #        0x261e0  0      
  movq %rbx, -0x20(%rsp)                                                                                               #  1     0x261e0  5      
  movq %r13, -0x10(%rsp)                                                                                               #  2     0x261e5  5      
  movl %edi, %ebx                                                                                                      #  3     0x261ea  2      
  movq %r14, -0x8(%rsp)                                                                                                #  4     0x261ec  5      
  movq %r12, -0x18(%rsp)                                                                                               #  5     0x261f1  5      
  subl $0x38, %esp                                                                                                     #  6     0x261f6  3      
  addq %r15, %rsp                                                                                                      #  7     0x261f9  3      
  testl %esi, %esi                                                                                                     #  8     0x261fc  2      
  xchgw %ax, %ax                                                                                                       #  9     0x261fe  3      
  movl %edx, %r14d                                                                                                     #  10    0x26201  3      
  movl %ecx, %r13d                                                                                                     #  11    0x26204  3      
  je .L_26300                                                                                                          #  12    0x26207  6      
  nop                                                                                                                  #  13    0x2620d  1      
  nop                                                                                                                  #  14    0x2620e  1      
.L_26220:                                                                                                              #        0x2620f  0      
  movb $0x1, (%rsp)                                                                                                    #  15    0x2620f  4      
  nop                                                                                                                  #  16    0x26213  1      
  nop                                                                                                                  #  17    0x26214  1      
.L_26240:                                                                                                              #        0x26215  0      
  movl $0x18, %edi                                                                                                     #  18    0x26215  5      
  nop                                                                                                                  #  19    0x2621a  1      
  nop                                                                                                                  #  20    0x2621b  1      
  callq ._Znwj                                                                                                         #  21    0x2621c  5      
  movl %eax, %r12d                                                                                                     #  22    0x26221  3      
  movl %r12d, %edi                                                                                                     #  23    0x26224  3      
  addl $0x10, %edi                                                                                                     #  24    0x26227  3      
  je .L_262a0                                                                                                          #  25    0x2622a  6      
  movl %r13d, %esi                                                                                                     #  26    0x26230  3      
  nop                                                                                                                  #  27    0x26233  1      
  callq ._ZNSsC1ERKSs                                                                                                  #  28    0x26234  5      
  movl %r13d, %r13d                                                                                                    #  29    0x26239  3      
  movl 0x4(%r15,%r13,1), %eax                                                                                          #  30    0x2623c  5      
  movl %r12d, %r12d                                                                                                    #  31    0x26241  3      
  movl %eax, 0x14(%r15,%r12,1)                                                                                         #  32    0x26244  5      
  nop                                                                                                                  #  33    0x26249  1      
  nop                                                                                                                  #  34    0x2624a  1      
.L_262a0:                                                                                                              #        0x2624b  0      
  movzbl (%rsp), %edi                                                                                                  #  35    0x2624b  4      
  leal 0x4(%rbx), %ecx                                                                                                 #  36    0x2624f  3      
  movl %r14d, %edx                                                                                                     #  37    0x26252  3      
  movl %r12d, %esi                                                                                                     #  38    0x26255  3      
  nop                                                                                                                  #  39    0x26258  1      
  callq ._ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_                                             #  40    0x26259  5      
  movl %ebx, %ebx                                                                                                      #  41    0x2625e  2      
  addl $0x1, 0x14(%r15,%rbx,1)                                                                                         #  42    0x26260  6      
  movl %r12d, %eax                                                                                                     #  43    0x26266  3      
  movq 0x18(%rsp), %rbx                                                                                                #  44    0x26269  5      
  movq 0x20(%rsp), %r12                                                                                                #  45    0x2626e  5      
  movq 0x28(%rsp), %r13                                                                                                #  46    0x26273  5      
  movq 0x30(%rsp), %r14                                                                                                #  47    0x26278  5      
  nop                                                                                                                  #  48    0x2627d  1      
  addl $0x38, %esp                                                                                                     #  49    0x2627e  3      
  addq %r15, %rsp                                                                                                      #  50    0x26281  3      
  popq %r11                                                                                                            #  51    0x26284  3      
  andl $0xffffffe0, %r11d                                                                                              #  52    0x26287  7      
  addq %r15, %r11                                                                                                      #  53    0x2628e  3      
  jmpq %r11                                                                                                            #  54    0x26291  3      
  nop                                                                                                                  #  55    0x26294  1      
.L_26300:                                                                                                              #        0x26295  0      
  leal 0x4(%rbx), %eax                                                                                                 #  56    0x26295  3      
  cmpl %r14d, %eax                                                                                                     #  57    0x26298  3      
  je .L_26220                                                                                                          #  58    0x2629b  6      
  movl %r13d, %r13d                                                                                                    #  59    0x262a1  3      
  movl (%r15,%r13,1), %esi                                                                                             #  60    0x262a4  4      
  movl %r14d, %r14d                                                                                                    #  61    0x262a8  3      
  movl 0x10(%r15,%r14,1), %edi                                                                                         #  62    0x262ab  5      
  leal -0xc(%rsi), %eax                                                                                                #  63    0x262b0  3      
  xchgw %ax, %ax                                                                                                       #  64    0x262b3  3      
  movl %eax, %eax                                                                                                      #  65    0x262b6  2      
  movl (%r15,%rax,1), %edx                                                                                             #  66    0x262b8  4      
  leal -0xc(%rdi), %eax                                                                                                #  67    0x262bc  3      
  movl %eax, %eax                                                                                                      #  68    0x262bf  2      
  movl (%r15,%rax,1), %eax                                                                                             #  69    0x262c1  4      
  movl %edx, %ecx                                                                                                      #  70    0x262c5  2      
  cmpl %edx, %eax                                                                                                      #  71    0x262c7  2      
  cmovbel %eax, %ecx                                                                                                   #  72    0x262c9  3      
  movl %ecx, %ecx                                                                                                      #  73    0x262cc  2      
  cmpq %rcx, %rcx                                                                                                      #  74    0x262ce  3      
  nop                                                                                                                  #  75    0x262d1  1      
  movl %esi, %esi                                                                                                      #  76    0x262d2  2      
  leaq (%r15,%rsi,1), %rsi                                                                                             #  77    0x262d4  4      
  movl %edi, %edi                                                                                                      #  78    0x262d8  2      
  leaq (%r15,%rdi,1), %rdi                                                                                             #  79    0x262da  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                    #  80    0x262de  3      
  movl %esi, %esi                                                                                                      #  81    0x262e1  2      
  movl %edi, %edi                                                                                                      #  82    0x262e3  2      
  seta %cl                                                                                                             #  83    0x262e5  3      
  setb %sil                                                                                                            #  84    0x262e8  4      
  subl %eax, %edx                                                                                                      #  85    0x262ec  2      
  subb %sil, %cl                                                                                                       #  86    0x262ee  3      
  xchgw %ax, %ax                                                                                                       #  87    0x262f1  3      
  movsbl %cl, %ecx                                                                                                     #  88    0x262f4  3      
  testl %ecx, %ecx                                                                                                     #  89    0x262f7  2      
  cmovel %edx, %ecx                                                                                                    #  90    0x262f9  3      
  shrl $0x1f, %ecx                                                                                                     #  91    0x262fc  3      
  movb %cl, (%rsp)                                                                                                     #  92    0x262ff  3      
  jmpq .L_26240                                                                                                        #  93    0x26302  5      
  nop                                                                                                                  #  94    0x26307  1      
  movl %eax, %edi                                                                                                      #  95    0x26308  2      
  nop                                                                                                                  #  96    0x2630a  1      
  nop                                                                                                                  #  97    0x2630b  1      
  callq .__cxa_begin_catch                                                                                             #  98    0x2630c  5      
  movl %r12d, %edi                                                                                                     #  99    0x26311  3      
  nop                                                                                                                  #  100   0x26314  1      
  nop                                                                                                                  #  101   0x26315  1      
  callq ._ZdlPv                                                                                                        #  102   0x26316  5      
  nop                                                                                                                  #  103   0x2631b  1      
  nop                                                                                                                  #  104   0x2631c  1      
  callq .__cxa_rethrow                                                                                                 #  105   0x2631d  5      
  movl %eax, %ebx                                                                                                      #  106   0x26322  2      
  nop                                                                                                                  #  107   0x26324  1      
  nop                                                                                                                  #  108   0x26325  1      
  callq .__cxa_end_catch                                                                                               #  109   0x26326  5      
  movl %ebx, %edi                                                                                                      #  110   0x2632b  2      
  nop                                                                                                                  #  111   0x2632d  1      
  nop                                                                                                                  #  112   0x2632e  1      
  callq ._Unwind_Resume                                                                                                #  113   0x2632f  5      
                                                                                                                                                
.size _ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPKSt18_Rb_tree_node_baseSD_RKS4_, .-_ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPKSt18_Rb_tree_node_baseSD_RKS4_

