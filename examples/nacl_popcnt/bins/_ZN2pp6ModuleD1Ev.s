  .text
  .globl _ZN2pp6ModuleD1Ev
  .type _ZN2pp6ModuleD1Ev, @function

#! file-offset 0x25740
#! rip-offset  0x25740
#! capacity    288 bytes

# Text                                                                                                                     #  Line  RIP      Bytes  
._ZN2pp6ModuleD1Ev:                                                                                                        #        0x25740  0      
  movq %rbx, -0x10(%rsp)                                                                                                   #  1     0x25740  5      
  movl %edi, %ebx                                                                                                          #  2     0x25745  2      
  movq %r12, -0x8(%rsp)                                                                                                    #  3     0x25747  5      
  subl $0x18, %esp                                                                                                         #  4     0x2574c  3      
  addq %r15, %rsp                                                                                                          #  5     0x2574f  3      
  movl %ebx, %ebx                                                                                                          #  6     0x25752  2      
  movl 0x24(%r15,%rbx,1), %edi                                                                                             #  7     0x25754  5      
  nop                                                                                                                      #  8     0x25759  1      
  movl %ebx, %ebx                                                                                                          #  9     0x2575a  2      
  movl $0x100203b8, (%r15,%rbx,1)                                                                                          #  10    0x2575c  8      
  xchgw %ax, %ax                                                                                                           #  11    0x25764  3      
  nop                                                                                                                      #  12    0x25767  1      
  callq ._ZdlPv                                                                                                            #  13    0x25768  5      
  movl %ebx, %ebx                                                                                                          #  14    0x2576d  2      
  movl 0x30(%r15,%rbx,1), %esi                                                                                             #  15    0x2576f  5      
  leal 0x28(%rbx), %edi                                                                                                    #  16    0x25774  3      
  movl %ebx, %ebx                                                                                                          #  17    0x25777  2      
  movl $0x0, 0x24(%r15,%rbx,1)                                                                                             #  18    0x25779  9      
  nop                                                                                                                      #  19    0x25782  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E           #  20    0x25783  5      
  movl %ebx, %ebx                                                                                                          #  21    0x25788  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  22    0x2578a  5      
  leal 0x4(%rbx), %edi                                                                                                     #  23    0x2578f  3      
  xchgw %ax, %ax                                                                                                           #  24    0x25792  3      
  nop                                                                                                                      #  25    0x25795  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  26    0x25796  5      
  movq 0x8(%rsp), %rbx                                                                                                     #  27    0x2579b  5      
  movq 0x10(%rsp), %r12                                                                                                    #  28    0x257a0  5      
  addl $0x18, %esp                                                                                                         #  29    0x257a5  3      
  addq %r15, %rsp                                                                                                          #  30    0x257a8  3      
  popq %r11                                                                                                                #  31    0x257ab  3      
  andl $0xffffffe0, %r11d                                                                                                  #  32    0x257ae  7      
  addq %r15, %r11                                                                                                          #  33    0x257b5  3      
  jmpq %r11                                                                                                                #  34    0x257b8  3      
  nop                                                                                                                      #  35    0x257bb  1      
  movl %ebx, %ebx                                                                                                          #  36    0x257bc  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  37    0x257be  5      
  leal 0x4(%rbx), %edi                                                                                                     #  38    0x257c3  3      
  movl %eax, %r12d                                                                                                         #  39    0x257c6  3      
  nop                                                                                                                      #  40    0x257c9  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  41    0x257ca  5      
  movl %r12d, %edi                                                                                                         #  42    0x257cf  3      
  nop                                                                                                                      #  43    0x257d2  1      
  nop                                                                                                                      #  44    0x257d3  1      
  callq ._Unwind_Resume                                                                                                    #  45    0x257d4  5      
.L_25820:                                                                                                                  #        0x257d9  0      
  movl %eax, %edi                                                                                                          #  46    0x257d9  2      
  nop                                                                                                                      #  47    0x257db  1      
  nop                                                                                                                      #  48    0x257dc  1      
  callq ._Unwind_Resume                                                                                                    #  49    0x257dd  5      
  jmpq .L_25820                                                                                                            #  50    0x257e2  5      
  nop                                                                                                                      #  51    0x257e7  1      
  nop                                                                                                                      #  52    0x257e8  1      
                                                                                                                                                    
.size _ZN2pp6ModuleD1Ev, .-_ZN2pp6ModuleD1Ev

