  .text
  .globl _ZN2pp6ModuleD2Ev
  .type _ZN2pp6ModuleD2Ev, @function

#! file-offset 0x25060
#! rip-offset  0x25060
#! capacity    288 bytes

# Text                                                                                                                     #  Line  RIP      Bytes  
._ZN2pp6ModuleD2Ev:                                                                                                        #        0x25060  0      
  movq %rbx, -0x10(%rsp)                                                                                                   #  1     0x25060  5      
  movl %edi, %ebx                                                                                                          #  2     0x25065  2      
  movq %r12, -0x8(%rsp)                                                                                                    #  3     0x25067  5      
  subl $0x18, %esp                                                                                                         #  4     0x2506c  3      
  addq %r15, %rsp                                                                                                          #  5     0x2506f  3      
  movl %ebx, %ebx                                                                                                          #  6     0x25072  2      
  movl 0x24(%r15,%rbx,1), %edi                                                                                             #  7     0x25074  5      
  nop                                                                                                                      #  8     0x25079  1      
  movl %ebx, %ebx                                                                                                          #  9     0x2507a  2      
  movl $0x100203b8, (%r15,%rbx,1)                                                                                          #  10    0x2507c  8      
  xchgw %ax, %ax                                                                                                           #  11    0x25084  3      
  nop                                                                                                                      #  12    0x25087  1      
  callq ._ZdlPv                                                                                                            #  13    0x25088  5      
  movl %ebx, %ebx                                                                                                          #  14    0x2508d  2      
  movl 0x30(%r15,%rbx,1), %esi                                                                                             #  15    0x2508f  5      
  leal 0x28(%rbx), %edi                                                                                                    #  16    0x25094  3      
  movl %ebx, %ebx                                                                                                          #  17    0x25097  2      
  movl $0x0, 0x24(%r15,%rbx,1)                                                                                             #  18    0x25099  9      
  nop                                                                                                                      #  19    0x250a2  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E           #  20    0x250a3  5      
  movl %ebx, %ebx                                                                                                          #  21    0x250a8  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  22    0x250aa  5      
  leal 0x4(%rbx), %edi                                                                                                     #  23    0x250af  3      
  xchgw %ax, %ax                                                                                                           #  24    0x250b2  3      
  nop                                                                                                                      #  25    0x250b5  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  26    0x250b6  5      
  movq 0x8(%rsp), %rbx                                                                                                     #  27    0x250bb  5      
  movq 0x10(%rsp), %r12                                                                                                    #  28    0x250c0  5      
  addl $0x18, %esp                                                                                                         #  29    0x250c5  3      
  addq %r15, %rsp                                                                                                          #  30    0x250c8  3      
  popq %r11                                                                                                                #  31    0x250cb  3      
  andl $0xffffffe0, %r11d                                                                                                  #  32    0x250ce  7      
  addq %r15, %r11                                                                                                          #  33    0x250d5  3      
  jmpq %r11                                                                                                                #  34    0x250d8  3      
  nop                                                                                                                      #  35    0x250db  1      
  movl %ebx, %ebx                                                                                                          #  36    0x250dc  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  37    0x250de  5      
  leal 0x4(%rbx), %edi                                                                                                     #  38    0x250e3  3      
  movl %eax, %r12d                                                                                                         #  39    0x250e6  3      
  nop                                                                                                                      #  40    0x250e9  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  41    0x250ea  5      
  movl %r12d, %edi                                                                                                         #  42    0x250ef  3      
  nop                                                                                                                      #  43    0x250f2  1      
  nop                                                                                                                      #  44    0x250f3  1      
  callq ._Unwind_Resume                                                                                                    #  45    0x250f4  5      
.L_25140:                                                                                                                  #        0x250f9  0      
  movl %eax, %edi                                                                                                          #  46    0x250f9  2      
  nop                                                                                                                      #  47    0x250fb  1      
  nop                                                                                                                      #  48    0x250fc  1      
  callq ._Unwind_Resume                                                                                                    #  49    0x250fd  5      
  jmpq .L_25140                                                                                                            #  50    0x25102  5      
  nop                                                                                                                      #  51    0x25107  1      
  nop                                                                                                                      #  52    0x25108  1      
                                                                                                                                                    
.size _ZN2pp6ModuleD2Ev, .-_ZN2pp6ModuleD2Ev

