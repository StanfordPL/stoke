  .text
  .globl _ZN2pp6ModuleD1Ev
  .type _ZN2pp6ModuleD1Ev, @function

#! file-offset 0x25720
#! rip-offset  0x25720
#! capacity    288 bytes

# Text                                                                                                                     #  Line  RIP      Bytes  
._ZN2pp6ModuleD1Ev:                                                                                                        #        0x25720  0      
  movq %rbx, -0x10(%rsp)                                                                                                   #  1     0x25720  5      
  movl %edi, %ebx                                                                                                          #  2     0x25725  2      
  movq %r12, -0x8(%rsp)                                                                                                    #  3     0x25727  5      
  subl $0x18, %esp                                                                                                         #  4     0x2572c  3      
  addq %r15, %rsp                                                                                                          #  5     0x2572f  3      
  movl %ebx, %ebx                                                                                                          #  6     0x25732  2      
  movl 0x24(%r15,%rbx,1), %edi                                                                                             #  7     0x25734  5      
  nop                                                                                                                      #  8     0x25739  1      
  movl %ebx, %ebx                                                                                                          #  9     0x2573a  2      
  movl $0x100203b8, (%r15,%rbx,1)                                                                                          #  10    0x2573c  8      
  xchgw %ax, %ax                                                                                                           #  11    0x25744  3      
  nop                                                                                                                      #  12    0x25747  1      
  callq ._ZdlPv                                                                                                            #  13    0x25748  5      
  movl %ebx, %ebx                                                                                                          #  14    0x2574d  2      
  movl 0x30(%r15,%rbx,1), %esi                                                                                             #  15    0x2574f  5      
  leal 0x28(%rbx), %edi                                                                                                    #  16    0x25754  3      
  movl %ebx, %ebx                                                                                                          #  17    0x25757  2      
  movl $0x0, 0x24(%r15,%rbx,1)                                                                                             #  18    0x25759  9      
  nop                                                                                                                      #  19    0x25762  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E           #  20    0x25763  5      
  movl %ebx, %ebx                                                                                                          #  21    0x25768  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  22    0x2576a  5      
  leal 0x4(%rbx), %edi                                                                                                     #  23    0x2576f  3      
  xchgw %ax, %ax                                                                                                           #  24    0x25772  3      
  nop                                                                                                                      #  25    0x25775  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  26    0x25776  5      
  movq 0x8(%rsp), %rbx                                                                                                     #  27    0x2577b  5      
  movq 0x10(%rsp), %r12                                                                                                    #  28    0x25780  5      
  addl $0x18, %esp                                                                                                         #  29    0x25785  3      
  addq %r15, %rsp                                                                                                          #  30    0x25788  3      
  popq %r11                                                                                                                #  31    0x2578b  3      
  andl $0xffffffe0, %r11d                                                                                                  #  32    0x2578e  7      
  addq %r15, %r11                                                                                                          #  33    0x25795  3      
  jmpq %r11                                                                                                                #  34    0x25798  3      
  nop                                                                                                                      #  35    0x2579b  1      
  movl %ebx, %ebx                                                                                                          #  36    0x2579c  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  37    0x2579e  5      
  leal 0x4(%rbx), %edi                                                                                                     #  38    0x257a3  3      
  movl %eax, %r12d                                                                                                         #  39    0x257a6  3      
  nop                                                                                                                      #  40    0x257a9  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  41    0x257aa  5      
  movl %r12d, %edi                                                                                                         #  42    0x257af  3      
  nop                                                                                                                      #  43    0x257b2  1      
  nop                                                                                                                      #  44    0x257b3  1      
  callq ._Unwind_Resume                                                                                                    #  45    0x257b4  5      
.L_25800:                                                                                                                  #        0x257b9  0      
  movl %eax, %edi                                                                                                          #  46    0x257b9  2      
  nop                                                                                                                      #  47    0x257bb  1      
  nop                                                                                                                      #  48    0x257bc  1      
  callq ._Unwind_Resume                                                                                                    #  49    0x257bd  5      
  jmpq .L_25800                                                                                                            #  50    0x257c2  5      
  nop                                                                                                                      #  51    0x257c7  1      
  nop                                                                                                                      #  52    0x257c8  1      
                                                                                                                                                    
.size _ZN2pp6ModuleD1Ev, .-_ZN2pp6ModuleD1Ev

