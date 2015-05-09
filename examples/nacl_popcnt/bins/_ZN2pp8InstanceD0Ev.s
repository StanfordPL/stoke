  .text
  .globl _ZN2pp8InstanceD0Ev
  .type _ZN2pp8InstanceD0Ev, @function

#! file-offset 0x20c00
#! rip-offset  0x20c00
#! capacity    96 bytes

# Text                                                                                                           #  Line  RIP      Bytes  
._ZN2pp8InstanceD0Ev:                                                                                            #        0x20c00  0      
  pushq %rbx                                                                                                     #  1     0x20c00  2      
  movl %edi, %ebx                                                                                                #  2     0x20c02  2      
  movl %ebx, %ebx                                                                                                #  3     0x20c04  2      
  movl 0x10(%r15,%rbx,1), %esi                                                                                   #  4     0x20c06  5      
  leal 0x8(%rbx), %edi                                                                                           #  5     0x20c0b  3      
  movl %ebx, %ebx                                                                                                #  6     0x20c0e  2      
  movl $0x10020328, (%r15,%rbx,1)                                                                                #  7     0x20c10  8      
  nop                                                                                                            #  8     0x20c18  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E  #  9     0x20c19  5      
  movl %ebx, %edi                                                                                                #  10    0x20c1e  2      
  popq %rbx                                                                                                      #  11    0x20c20  2      
  jmpq ._ZdlPv                                                                                                   #  12    0x20c22  5      
  nop                                                                                                            #  13    0x20c27  1      
  nop                                                                                                            #  14    0x20c28  1      
  movl %eax, %edi                                                                                                #  15    0x20c29  2      
  nop                                                                                                            #  16    0x20c2b  1      
  nop                                                                                                            #  17    0x20c2c  1      
  callq ._Unwind_Resume                                                                                          #  18    0x20c2d  5      
                                                                                                                                          
.size _ZN2pp8InstanceD0Ev, .-_ZN2pp8InstanceD0Ev

