  .text
  .globl _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E
  .type _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, @function

#! file-offset 0x23740
#! rip-offset  0x23740
#! capacity    288 bytes

# Text                                                                                                           #  Line  RIP      Bytes  
._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E:         #        0x23740  0      
  pushq %r14                                                                                                     #  1     0x23740  3      
  pushq %r13                                                                                                     #  2     0x23743  3      
  movl %edi, %r13d                                                                                               #  3     0x23746  3      
  pushq %r12                                                                                                     #  4     0x23749  3      
  pushq %rbx                                                                                                     #  5     0x2374c  2      
  movl %esi, %ebx                                                                                                #  6     0x2374e  2      
  subl $0x28, %esp                                                                                               #  7     0x23750  3      
  addq %r15, %rsp                                                                                                #  8     0x23753  3      
  testq %rbx, %rbx                                                                                               #  9     0x23756  3      
  je .L_23800                                                                                                    #  10    0x23759  6      
  leal 0x1f(%rsp), %eax                                                                                          #  11    0x2375f  4      
  nop                                                                                                            #  12    0x23763  1      
  movl $0x10031da0, %r14d                                                                                        #  13    0x23764  6      
  movq %rax, 0x8(%rsp)                                                                                           #  14    0x2376a  5      
  nop                                                                                                            #  15    0x2376f  1      
  nop                                                                                                            #  16    0x23770  1      
.L_23780:                                                                                                        #        0x23771  0      
  movl %ebx, %ebx                                                                                                #  17    0x23771  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                    #  18    0x23773  5      
  movl %r13d, %edi                                                                                               #  19    0x23778  3      
  xchgw %ax, %ax                                                                                                 #  20    0x2377b  3      
  nop                                                                                                            #  21    0x2377e  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E  #  22    0x2377f  5      
  movl %ebx, %ebx                                                                                                #  23    0x23784  2      
  movl 0x10(%r15,%rbx,1), %edi                                                                                   #  24    0x23786  5      
  movl %ebx, %ebx                                                                                                #  25    0x2378b  2      
  movl 0x8(%r15,%rbx,1), %r12d                                                                                   #  26    0x2378d  5      
  subl $0xc, %edi                                                                                                #  27    0x23792  3      
  cmpl %edi, %r14d                                                                                               #  28    0x23795  3      
  jne .L_23820                                                                                                   #  29    0x23798  6      
  nop                                                                                                            #  30    0x2379e  1      
.L_237c0:                                                                                                        #        0x2379f  0      
  movl %ebx, %edi                                                                                                #  31    0x2379f  2      
  movq %r12, %rbx                                                                                                #  32    0x237a1  3      
  nop                                                                                                            #  33    0x237a4  1      
  nop                                                                                                            #  34    0x237a5  1      
  callq ._ZdlPv                                                                                                  #  35    0x237a6  5      
  testq %r12, %r12                                                                                               #  36    0x237ab  3      
  jne .L_23780                                                                                                   #  37    0x237ae  6      
  nop                                                                                                            #  38    0x237b4  1      
  nop                                                                                                            #  39    0x237b5  1      
.L_23800:                                                                                                        #        0x237b6  0      
  addl $0x28, %esp                                                                                               #  40    0x237b6  3      
  addq %r15, %rsp                                                                                                #  41    0x237b9  3      
  popq %rbx                                                                                                      #  42    0x237bc  2      
  popq %r12                                                                                                      #  43    0x237be  3      
  popq %r13                                                                                                      #  44    0x237c1  3      
  popq %r14                                                                                                      #  45    0x237c4  3      
  popq %r11                                                                                                      #  46    0x237c7  3      
  andl $0xffffffe0, %r11d                                                                                        #  47    0x237ca  7      
  addq %r15, %r11                                                                                                #  48    0x237d1  3      
  jmpq %r11                                                                                                      #  49    0x237d4  3      
  nop                                                                                                            #  50    0x237d7  1      
.L_23820:                                                                                                        #        0x237d8  0      
  movl %edi, %edi                                                                                                #  51    0x237d8  2      
  movl 0x8(%r15,%rdi,1), %eax                                                                                    #  52    0x237da  5      
  leal -0x1(%rax), %edx                                                                                          #  53    0x237df  3      
  testl %eax, %eax                                                                                               #  54    0x237e2  2      
  movl %edi, %edi                                                                                                #  55    0x237e4  2      
  movl %edx, 0x8(%r15,%rdi,1)                                                                                    #  56    0x237e6  5      
  jg .L_237c0                                                                                                    #  57    0x237eb  6      
  movl 0x8(%rsp), %esi                                                                                           #  58    0x237f1  4      
  xchgw %ax, %ax                                                                                                 #  59    0x237f5  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE                                                                          #  60    0x237f8  5      
  jmpq .L_237c0                                                                                                  #  61    0x237fd  5      
  nop                                                                                                            #  62    0x23802  1      
  nop                                                                                                            #  63    0x23803  1      
  nop                                                                                                            #  64    0x23804  1      
  nop                                                                                                            #  65    0x23805  1      
  nop                                                                                                            #  66    0x23806  1      
  nop                                                                                                            #  67    0x23807  1      
  nop                                                                                                            #  68    0x23808  1      
  nop                                                                                                            #  69    0x23809  1      
  nop                                                                                                            #  70    0x2380a  1      
  nop                                                                                                            #  71    0x2380b  1      
  nop                                                                                                            #  72    0x2380c  1      
  nop                                                                                                            #  73    0x2380d  1      
  nop                                                                                                            #  74    0x2380e  1      
  nop                                                                                                            #  75    0x2380f  1      
  nop                                                                                                            #  76    0x23810  1      
  nop                                                                                                            #  77    0x23811  1      
  nop                                                                                                            #  78    0x23812  1      
  nop                                                                                                            #  79    0x23813  1      
  nop                                                                                                            #  80    0x23814  1      
  nop                                                                                                            #  81    0x23815  1      
  nop                                                                                                            #  82    0x23816  1      
  nop                                                                                                            #  83    0x23817  1      
  nop                                                                                                            #  84    0x23818  1      
  nop                                                                                                            #  85    0x23819  1      
  nop                                                                                                            #  86    0x2381a  1      
  nop                                                                                                            #  87    0x2381b  1      
  nop                                                                                                            #  88    0x2381c  1      
                                                                                                                                          
.size _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, .-_ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E

