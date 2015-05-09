  .text
  .globl _ZN2pp8InstanceD1Ev
  .type _ZN2pp8InstanceD1Ev, @function

#! file-offset 0x20c60
#! rip-offset  0x20c60
#! capacity    128 bytes

# Text                                                                                                           #  Line  RIP      Bytes  
._ZN2pp8InstanceD1Ev:                                                                                            #        0x20c60  0      
  movl %edi, %edi                                                                                                #  1     0x20c60  2      
  subl $0x8, %esp                                                                                                #  2     0x20c62  3      
  addq %r15, %rsp                                                                                                #  3     0x20c65  3      
  movl %edi, %edi                                                                                                #  4     0x20c68  2      
  movl 0x10(%r15,%rdi,1), %esi                                                                                   #  5     0x20c6a  5      
  movl %edi, %edi                                                                                                #  6     0x20c6f  2      
  movl $0x10020328, (%r15,%rdi,1)                                                                                #  7     0x20c71  8      
  addl $0x8, %edi                                                                                                #  8     0x20c79  3      
  nop                                                                                                            #  9     0x20c7c  1      
  nop                                                                                                            #  10    0x20c7d  1      
  nop                                                                                                            #  11    0x20c7e  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E  #  12    0x20c7f  5      
  addl $0x8, %esp                                                                                                #  13    0x20c84  3      
  addq %r15, %rsp                                                                                                #  14    0x20c87  3      
  popq %r11                                                                                                      #  15    0x20c8a  3      
  andl $0xffffffe0, %r11d                                                                                        #  16    0x20c8d  7      
  addq %r15, %r11                                                                                                #  17    0x20c94  3      
  jmpq %r11                                                                                                      #  18    0x20c97  3      
  nop                                                                                                            #  19    0x20c9a  1      
  movl %eax, %edi                                                                                                #  20    0x20c9b  2      
  nop                                                                                                            #  21    0x20c9d  1      
  nop                                                                                                            #  22    0x20c9e  1      
  callq ._Unwind_Resume                                                                                          #  23    0x20c9f  5      
                                                                                                                                          
.size _ZN2pp8InstanceD1Ev, .-_ZN2pp8InstanceD1Ev

