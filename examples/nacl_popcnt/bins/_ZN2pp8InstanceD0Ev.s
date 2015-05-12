  .text
  .globl _ZN2pp8InstanceD0Ev
  .type _ZN2pp8InstanceD0Ev, @function

#! file-offset 0x20c20
#! rip-offset  0x20c20
#! capacity    96 bytes

# Text                                                                                                           #  Line  RIP      Bytes  
._ZN2pp8InstanceD0Ev:                                                                                            #        0x20c20  0      
  pushq %rbx                                                                                                     #  1     0x20c20  2      
  movl %edi, %ebx                                                                                                #  2     0x20c22  2      
  movl %ebx, %ebx                                                                                                #  3     0x20c24  2      
  movl 0x10(%r15,%rbx,1), %esi                                                                                   #  4     0x20c26  5      
  leal 0x8(%rbx), %edi                                                                                           #  5     0x20c2b  3      
  movl %ebx, %ebx                                                                                                #  6     0x20c2e  2      
  movl $0x10020328, (%r15,%rbx,1)                                                                                #  7     0x20c30  8      
  nop                                                                                                            #  8     0x20c38  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E  #  9     0x20c39  5      
  movl %ebx, %edi                                                                                                #  10    0x20c3e  2      
  popq %rbx                                                                                                      #  11    0x20c40  2      
  jmpq ._ZdlPv                                                                                                   #  12    0x20c42  5      
  nop                                                                                                            #  13    0x20c47  1      
  nop                                                                                                            #  14    0x20c48  1      
  movl %eax, %edi                                                                                                #  15    0x20c49  2      
  nop                                                                                                            #  16    0x20c4b  1      
  nop                                                                                                            #  17    0x20c4c  1      
  callq ._Unwind_Resume                                                                                          #  18    0x20c4d  5      
                                                                                                                                          
.size _ZN2pp8InstanceD0Ev, .-_ZN2pp8InstanceD0Ev

