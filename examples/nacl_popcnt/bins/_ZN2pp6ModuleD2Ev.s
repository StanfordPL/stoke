  .text
  .globl _ZN2pp6ModuleD2Ev
  .type _ZN2pp6ModuleD2Ev, @function

#! file-offset 0x24fc0
#! rip-offset  0x24fc0
#! capacity    288 bytes

# Text                                                                                                                     #  Line  RIP      Bytes  
._ZN2pp6ModuleD2Ev:                                                                                                        #        0x24fc0  0      
  movq %rbx, -0x10(%rsp)                                                                                                   #  1     0x24fc0  5      
  movl %edi, %ebx                                                                                                          #  2     0x24fc5  2      
  movq %r12, -0x8(%rsp)                                                                                                    #  3     0x24fc7  5      
  subl $0x18, %esp                                                                                                         #  4     0x24fcc  3      
  addq %r15, %rsp                                                                                                          #  5     0x24fcf  3      
  movl %ebx, %ebx                                                                                                          #  6     0x24fd2  2      
  movl 0x24(%r15,%rbx,1), %edi                                                                                             #  7     0x24fd4  5      
  nop                                                                                                                      #  8     0x24fd9  1      
  movl %ebx, %ebx                                                                                                          #  9     0x24fda  2      
  movl $0x100203b8, (%r15,%rbx,1)                                                                                          #  10    0x24fdc  8      
  xchgw %ax, %ax                                                                                                           #  11    0x24fe4  3      
  nop                                                                                                                      #  12    0x24fe7  1      
  callq ._ZdlPv                                                                                                            #  13    0x24fe8  5      
  movl %ebx, %ebx                                                                                                          #  14    0x24fed  2      
  movl 0x30(%r15,%rbx,1), %esi                                                                                             #  15    0x24fef  5      
  leal 0x28(%rbx), %edi                                                                                                    #  16    0x24ff4  3      
  movl %ebx, %ebx                                                                                                          #  17    0x24ff7  2      
  movl $0x0, 0x24(%r15,%rbx,1)                                                                                             #  18    0x24ff9  9      
  nop                                                                                                                      #  19    0x25002  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E           #  20    0x25003  5      
  movl %ebx, %ebx                                                                                                          #  21    0x25008  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  22    0x2500a  5      
  leal 0x4(%rbx), %edi                                                                                                     #  23    0x2500f  3      
  xchgw %ax, %ax                                                                                                           #  24    0x25012  3      
  nop                                                                                                                      #  25    0x25015  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  26    0x25016  5      
  movq 0x8(%rsp), %rbx                                                                                                     #  27    0x2501b  5      
  movq 0x10(%rsp), %r12                                                                                                    #  28    0x25020  5      
  addl $0x18, %esp                                                                                                         #  29    0x25025  3      
  addq %r15, %rsp                                                                                                          #  30    0x25028  3      
  popq %r11                                                                                                                #  31    0x2502b  3      
  andl $0xffffffe0, %r11d                                                                                                  #  32    0x2502e  7      
  addq %r15, %r11                                                                                                          #  33    0x25035  3      
  jmpq %r11                                                                                                                #  34    0x25038  3      
  nop                                                                                                                      #  35    0x2503b  1      
  movl %ebx, %ebx                                                                                                          #  36    0x2503c  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  37    0x2503e  5      
  leal 0x4(%rbx), %edi                                                                                                     #  38    0x25043  3      
  movl %eax, %r12d                                                                                                         #  39    0x25046  3      
  nop                                                                                                                      #  40    0x25049  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  41    0x2504a  5      
  movl %r12d, %edi                                                                                                         #  42    0x2504f  3      
  nop                                                                                                                      #  43    0x25052  1      
  nop                                                                                                                      #  44    0x25053  1      
  callq ._Unwind_Resume                                                                                                    #  45    0x25054  5      
.L_250a0:                                                                                                                  #        0x25059  0      
  movl %eax, %edi                                                                                                          #  46    0x25059  2      
  nop                                                                                                                      #  47    0x2505b  1      
  nop                                                                                                                      #  48    0x2505c  1      
  callq ._Unwind_Resume                                                                                                    #  49    0x2505d  5      
  jmpq .L_250a0                                                                                                            #  50    0x25062  5      
  nop                                                                                                                      #  51    0x25067  1      
  nop                                                                                                                      #  52    0x25068  1      
                                                                                                                                                    
.size _ZN2pp6ModuleD2Ev, .-_ZN2pp6ModuleD2Ev

