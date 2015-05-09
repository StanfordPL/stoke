  .text
  .globl _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E
  .type _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, @function

#! file-offset 0x23720
#! rip-offset  0x23720
#! capacity    288 bytes

# Text                                                                                                           #  Line  RIP      Bytes  
._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E:         #        0x23720  0      
  pushq %r14                                                                                                     #  1     0x23720  3      
  pushq %r13                                                                                                     #  2     0x23723  3      
  movl %edi, %r13d                                                                                               #  3     0x23726  3      
  pushq %r12                                                                                                     #  4     0x23729  3      
  pushq %rbx                                                                                                     #  5     0x2372c  2      
  movl %esi, %ebx                                                                                                #  6     0x2372e  2      
  subl $0x28, %esp                                                                                               #  7     0x23730  3      
  addq %r15, %rsp                                                                                                #  8     0x23733  3      
  testq %rbx, %rbx                                                                                               #  9     0x23736  3      
  je .L_237e0                                                                                                    #  10    0x23739  6      
  leal 0x1f(%rsp), %eax                                                                                          #  11    0x2373f  4      
  nop                                                                                                            #  12    0x23743  1      
  movl $0x10031da0, %r14d                                                                                        #  13    0x23744  6      
  movq %rax, 0x8(%rsp)                                                                                           #  14    0x2374a  5      
  nop                                                                                                            #  15    0x2374f  1      
  nop                                                                                                            #  16    0x23750  1      
.L_23760:                                                                                                        #        0x23751  0      
  movl %ebx, %ebx                                                                                                #  17    0x23751  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                    #  18    0x23753  5      
  movl %r13d, %edi                                                                                               #  19    0x23758  3      
  xchgw %ax, %ax                                                                                                 #  20    0x2375b  3      
  nop                                                                                                            #  21    0x2375e  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E  #  22    0x2375f  5      
  movl %ebx, %ebx                                                                                                #  23    0x23764  2      
  movl 0x10(%r15,%rbx,1), %edi                                                                                   #  24    0x23766  5      
  movl %ebx, %ebx                                                                                                #  25    0x2376b  2      
  movl 0x8(%r15,%rbx,1), %r12d                                                                                   #  26    0x2376d  5      
  subl $0xc, %edi                                                                                                #  27    0x23772  3      
  cmpl %edi, %r14d                                                                                               #  28    0x23775  3      
  jne .L_23800                                                                                                   #  29    0x23778  6      
  nop                                                                                                            #  30    0x2377e  1      
.L_237a0:                                                                                                        #        0x2377f  0      
  movl %ebx, %edi                                                                                                #  31    0x2377f  2      
  movq %r12, %rbx                                                                                                #  32    0x23781  3      
  nop                                                                                                            #  33    0x23784  1      
  nop                                                                                                            #  34    0x23785  1      
  callq ._ZdlPv                                                                                                  #  35    0x23786  5      
  testq %r12, %r12                                                                                               #  36    0x2378b  3      
  jne .L_23760                                                                                                   #  37    0x2378e  6      
  nop                                                                                                            #  38    0x23794  1      
  nop                                                                                                            #  39    0x23795  1      
.L_237e0:                                                                                                        #        0x23796  0      
  addl $0x28, %esp                                                                                               #  40    0x23796  3      
  addq %r15, %rsp                                                                                                #  41    0x23799  3      
  popq %rbx                                                                                                      #  42    0x2379c  2      
  popq %r12                                                                                                      #  43    0x2379e  3      
  popq %r13                                                                                                      #  44    0x237a1  3      
  popq %r14                                                                                                      #  45    0x237a4  3      
  popq %r11                                                                                                      #  46    0x237a7  3      
  andl $0xffffffe0, %r11d                                                                                        #  47    0x237aa  7      
  addq %r15, %r11                                                                                                #  48    0x237b1  3      
  jmpq %r11                                                                                                      #  49    0x237b4  3      
  nop                                                                                                            #  50    0x237b7  1      
.L_23800:                                                                                                        #        0x237b8  0      
  movl %edi, %edi                                                                                                #  51    0x237b8  2      
  movl 0x8(%r15,%rdi,1), %eax                                                                                    #  52    0x237ba  5      
  leal -0x1(%rax), %edx                                                                                          #  53    0x237bf  3      
  testl %eax, %eax                                                                                               #  54    0x237c2  2      
  movl %edi, %edi                                                                                                #  55    0x237c4  2      
  movl %edx, 0x8(%r15,%rdi,1)                                                                                    #  56    0x237c6  5      
  jg .L_237a0                                                                                                    #  57    0x237cb  6      
  movl 0x8(%rsp), %esi                                                                                           #  58    0x237d1  4      
  xchgw %ax, %ax                                                                                                 #  59    0x237d5  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE                                                                          #  60    0x237d8  5      
  jmpq .L_237a0                                                                                                  #  61    0x237dd  5      
  nop                                                                                                            #  62    0x237e2  1      
  nop                                                                                                            #  63    0x237e3  1      
  nop                                                                                                            #  64    0x237e4  1      
  nop                                                                                                            #  65    0x237e5  1      
  nop                                                                                                            #  66    0x237e6  1      
  nop                                                                                                            #  67    0x237e7  1      
  nop                                                                                                            #  68    0x237e8  1      
  nop                                                                                                            #  69    0x237e9  1      
  nop                                                                                                            #  70    0x237ea  1      
  nop                                                                                                            #  71    0x237eb  1      
  nop                                                                                                            #  72    0x237ec  1      
  nop                                                                                                            #  73    0x237ed  1      
  nop                                                                                                            #  74    0x237ee  1      
  nop                                                                                                            #  75    0x237ef  1      
  nop                                                                                                            #  76    0x237f0  1      
  nop                                                                                                            #  77    0x237f1  1      
  nop                                                                                                            #  78    0x237f2  1      
  nop                                                                                                            #  79    0x237f3  1      
  nop                                                                                                            #  80    0x237f4  1      
  nop                                                                                                            #  81    0x237f5  1      
  nop                                                                                                            #  82    0x237f6  1      
  nop                                                                                                            #  83    0x237f7  1      
  nop                                                                                                            #  84    0x237f8  1      
  nop                                                                                                            #  85    0x237f9  1      
  nop                                                                                                            #  86    0x237fa  1      
  nop                                                                                                            #  87    0x237fb  1      
  nop                                                                                                            #  88    0x237fc  1      
                                                                                                                                          
.size _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, .-_ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E

