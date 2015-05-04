  .text
  .globl _ZN2pp6ModuleD1Ev
  .type _ZN2pp6ModuleD1Ev, @function

#! file-offset 0x257c0
#! rip-offset  0x257c0
#! capacity    288 bytes

# Text                                                                                                                     #  Line  RIP      Bytes  
._ZN2pp6ModuleD1Ev:                                                                                                        #        0x257c0  0      
  movq %rbx, -0x10(%rsp)                                                                                                   #  1     0x257c0  5      
  movl %edi, %ebx                                                                                                          #  2     0x257c5  2      
  movq %r12, -0x8(%rsp)                                                                                                    #  3     0x257c7  5      
  subl $0x18, %esp                                                                                                         #  4     0x257cc  3      
  addq %r15, %rsp                                                                                                          #  5     0x257cf  3      
  movl %ebx, %ebx                                                                                                          #  6     0x257d2  2      
  movl 0x24(%r15,%rbx,1), %edi                                                                                             #  7     0x257d4  5      
  nop                                                                                                                      #  8     0x257d9  1      
  movl %ebx, %ebx                                                                                                          #  9     0x257da  2      
  movl $0x100203b8, (%r15,%rbx,1)                                                                                          #  10    0x257dc  8      
  xchgw %ax, %ax                                                                                                           #  11    0x257e4  3      
  nop                                                                                                                      #  12    0x257e7  1      
  callq ._ZdlPv                                                                                                            #  13    0x257e8  5      
  movl %ebx, %ebx                                                                                                          #  14    0x257ed  2      
  movl 0x30(%r15,%rbx,1), %esi                                                                                             #  15    0x257ef  5      
  leal 0x28(%rbx), %edi                                                                                                    #  16    0x257f4  3      
  movl %ebx, %ebx                                                                                                          #  17    0x257f7  2      
  movl $0x0, 0x24(%r15,%rbx,1)                                                                                             #  18    0x257f9  9      
  nop                                                                                                                      #  19    0x25802  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E           #  20    0x25803  5      
  movl %ebx, %ebx                                                                                                          #  21    0x25808  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  22    0x2580a  5      
  leal 0x4(%rbx), %edi                                                                                                     #  23    0x2580f  3      
  xchgw %ax, %ax                                                                                                           #  24    0x25812  3      
  nop                                                                                                                      #  25    0x25815  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  26    0x25816  5      
  movq 0x8(%rsp), %rbx                                                                                                     #  27    0x2581b  5      
  movq 0x10(%rsp), %r12                                                                                                    #  28    0x25820  5      
  addl $0x18, %esp                                                                                                         #  29    0x25825  3      
  addq %r15, %rsp                                                                                                          #  30    0x25828  3      
  popq %r11                                                                                                                #  31    0x2582b  3      
  andl $0xffffffe0, %r11d                                                                                                  #  32    0x2582e  7      
  addq %r15, %r11                                                                                                          #  33    0x25835  3      
  jmpq %r11                                                                                                                #  34    0x25838  3      
  nop                                                                                                                      #  35    0x2583b  1      
  movl %ebx, %ebx                                                                                                          #  36    0x2583c  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  37    0x2583e  5      
  leal 0x4(%rbx), %edi                                                                                                     #  38    0x25843  3      
  movl %eax, %r12d                                                                                                         #  39    0x25846  3      
  nop                                                                                                                      #  40    0x25849  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  41    0x2584a  5      
  movl %r12d, %edi                                                                                                         #  42    0x2584f  3      
  nop                                                                                                                      #  43    0x25852  1      
  nop                                                                                                                      #  44    0x25853  1      
  callq ._Unwind_Resume                                                                                                    #  45    0x25854  5      
.L_258a0:                                                                                                                  #        0x25859  0      
  movl %eax, %edi                                                                                                          #  46    0x25859  2      
  nop                                                                                                                      #  47    0x2585b  1      
  nop                                                                                                                      #  48    0x2585c  1      
  callq ._Unwind_Resume                                                                                                    #  49    0x2585d  5      
  jmpq .L_258a0                                                                                                            #  50    0x25862  5      
  nop                                                                                                                      #  51    0x25867  1      
  nop                                                                                                                      #  52    0x25868  1      
                                                                                                                                                    
.size _ZN2pp6ModuleD1Ev, .-_ZN2pp6ModuleD1Ev

