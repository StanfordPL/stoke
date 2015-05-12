  .text
  .globl _ZN2pp8InstanceD2Ev
  .type _ZN2pp8InstanceD2Ev, @function

#! file-offset 0x20d00
#! rip-offset  0x20d00
#! capacity    128 bytes

# Text                                                                                                           #  Line  RIP      Bytes  
._ZN2pp8InstanceD2Ev:                                                                                            #        0x20d00  0      
  movl %edi, %edi                                                                                                #  1     0x20d00  2      
  subl $0x8, %esp                                                                                                #  2     0x20d02  3      
  addq %r15, %rsp                                                                                                #  3     0x20d05  3      
  movl %edi, %edi                                                                                                #  4     0x20d08  2      
  movl 0x10(%r15,%rdi,1), %esi                                                                                   #  5     0x20d0a  5      
  movl %edi, %edi                                                                                                #  6     0x20d0f  2      
  movl $0x10020328, (%r15,%rdi,1)                                                                                #  7     0x20d11  8      
  addl $0x8, %edi                                                                                                #  8     0x20d19  3      
  nop                                                                                                            #  9     0x20d1c  1      
  nop                                                                                                            #  10    0x20d1d  1      
  nop                                                                                                            #  11    0x20d1e  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E  #  12    0x20d1f  5      
  addl $0x8, %esp                                                                                                #  13    0x20d24  3      
  addq %r15, %rsp                                                                                                #  14    0x20d27  3      
  popq %r11                                                                                                      #  15    0x20d2a  3      
  andl $0xffffffe0, %r11d                                                                                        #  16    0x20d2d  7      
  addq %r15, %r11                                                                                                #  17    0x20d34  3      
  jmpq %r11                                                                                                      #  18    0x20d37  3      
  nop                                                                                                            #  19    0x20d3a  1      
  movl %eax, %edi                                                                                                #  20    0x20d3b  2      
  nop                                                                                                            #  21    0x20d3d  1      
  nop                                                                                                            #  22    0x20d3e  1      
  callq ._Unwind_Resume                                                                                          #  23    0x20d3f  5      
                                                                                                                                          
.size _ZN2pp8InstanceD2Ev, .-_ZN2pp8InstanceD2Ev

