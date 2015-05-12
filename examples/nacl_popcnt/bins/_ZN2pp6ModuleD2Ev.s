  .text
  .globl _ZN2pp6ModuleD2Ev
  .type _ZN2pp6ModuleD2Ev, @function

#! file-offset 0x24fe0
#! rip-offset  0x24fe0
#! capacity    288 bytes

# Text                                                                                                                     #  Line  RIP      Bytes  
._ZN2pp6ModuleD2Ev:                                                                                                        #        0x24fe0  0      
  movq %rbx, -0x10(%rsp)                                                                                                   #  1     0x24fe0  5      
  movl %edi, %ebx                                                                                                          #  2     0x24fe5  2      
  movq %r12, -0x8(%rsp)                                                                                                    #  3     0x24fe7  5      
  subl $0x18, %esp                                                                                                         #  4     0x24fec  3      
  addq %r15, %rsp                                                                                                          #  5     0x24fef  3      
  movl %ebx, %ebx                                                                                                          #  6     0x24ff2  2      
  movl 0x24(%r15,%rbx,1), %edi                                                                                             #  7     0x24ff4  5      
  nop                                                                                                                      #  8     0x24ff9  1      
  movl %ebx, %ebx                                                                                                          #  9     0x24ffa  2      
  movl $0x100203b8, (%r15,%rbx,1)                                                                                          #  10    0x24ffc  8      
  xchgw %ax, %ax                                                                                                           #  11    0x25004  3      
  nop                                                                                                                      #  12    0x25007  1      
  callq ._ZdlPv                                                                                                            #  13    0x25008  5      
  movl %ebx, %ebx                                                                                                          #  14    0x2500d  2      
  movl 0x30(%r15,%rbx,1), %esi                                                                                             #  15    0x2500f  5      
  leal 0x28(%rbx), %edi                                                                                                    #  16    0x25014  3      
  movl %ebx, %ebx                                                                                                          #  17    0x25017  2      
  movl $0x0, 0x24(%r15,%rbx,1)                                                                                             #  18    0x25019  9      
  nop                                                                                                                      #  19    0x25022  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPKvESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E           #  20    0x25023  5      
  movl %ebx, %ebx                                                                                                          #  21    0x25028  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  22    0x2502a  5      
  leal 0x4(%rbx), %edi                                                                                                     #  23    0x2502f  3      
  xchgw %ax, %ax                                                                                                           #  24    0x25032  3      
  nop                                                                                                                      #  25    0x25035  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  26    0x25036  5      
  movq 0x8(%rsp), %rbx                                                                                                     #  27    0x2503b  5      
  movq 0x10(%rsp), %r12                                                                                                    #  28    0x25040  5      
  addl $0x18, %esp                                                                                                         #  29    0x25045  3      
  addq %r15, %rsp                                                                                                          #  30    0x25048  3      
  popq %r11                                                                                                                #  31    0x2504b  3      
  andl $0xffffffe0, %r11d                                                                                                  #  32    0x2504e  7      
  addq %r15, %r11                                                                                                          #  33    0x25055  3      
  jmpq %r11                                                                                                                #  34    0x25058  3      
  nop                                                                                                                      #  35    0x2505b  1      
  movl %ebx, %ebx                                                                                                          #  36    0x2505c  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                              #  37    0x2505e  5      
  leal 0x4(%rbx), %edi                                                                                                     #  38    0x25063  3      
  movl %eax, %r12d                                                                                                         #  39    0x25066  3      
  nop                                                                                                                      #  40    0x25069  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E  #  41    0x2506a  5      
  movl %r12d, %edi                                                                                                         #  42    0x2506f  3      
  nop                                                                                                                      #  43    0x25072  1      
  nop                                                                                                                      #  44    0x25073  1      
  callq ._Unwind_Resume                                                                                                    #  45    0x25074  5      
.L_250c0:                                                                                                                  #        0x25079  0      
  movl %eax, %edi                                                                                                          #  46    0x25079  2      
  nop                                                                                                                      #  47    0x2507b  1      
  nop                                                                                                                      #  48    0x2507c  1      
  callq ._Unwind_Resume                                                                                                    #  49    0x2507d  5      
  jmpq .L_250c0                                                                                                            #  50    0x25082  5      
  nop                                                                                                                      #  51    0x25087  1      
  nop                                                                                                                      #  52    0x25088  1      
                                                                                                                                                    
.size _ZN2pp6ModuleD2Ev, .-_ZN2pp6ModuleD2Ev

