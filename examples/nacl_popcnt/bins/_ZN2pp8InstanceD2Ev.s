  .text
  .globl _ZN2pp8InstanceD2Ev
  .type _ZN2pp8InstanceD2Ev, @function

#! file-offset 0x20d80
#! rip-offset  0x20d80
#! capacity    128 bytes

# Text                                                                                                           #  Line  RIP      Bytes  
._ZN2pp8InstanceD2Ev:                                                                                            #        0x20d80  0      
  movl %edi, %edi                                                                                                #  1     0x20d80  2      
  subl $0x8, %esp                                                                                                #  2     0x20d82  3      
  addq %r15, %rsp                                                                                                #  3     0x20d85  3      
  movl %edi, %edi                                                                                                #  4     0x20d88  2      
  movl 0x10(%r15,%rdi,1), %esi                                                                                   #  5     0x20d8a  5      
  movl %edi, %edi                                                                                                #  6     0x20d8f  2      
  movl $0x10020328, (%r15,%rdi,1)                                                                                #  7     0x20d91  8      
  addl $0x8, %edi                                                                                                #  8     0x20d99  3      
  nop                                                                                                            #  9     0x20d9c  1      
  nop                                                                                                            #  10    0x20d9d  1      
  nop                                                                                                            #  11    0x20d9e  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E  #  12    0x20d9f  5      
  addl $0x8, %esp                                                                                                #  13    0x20da4  3      
  addq %r15, %rsp                                                                                                #  14    0x20da7  3      
  popq %r11                                                                                                      #  15    0x20daa  3      
  andl $0xffffffe0, %r11d                                                                                        #  16    0x20dad  7      
  addq %r15, %r11                                                                                                #  17    0x20db4  3      
  jmpq %r11                                                                                                      #  18    0x20db7  3      
  nop                                                                                                            #  19    0x20dba  1      
  movl %eax, %edi                                                                                                #  20    0x20dbb  2      
  nop                                                                                                            #  21    0x20dbd  1      
  nop                                                                                                            #  22    0x20dbe  1      
  callq ._Unwind_Resume                                                                                          #  23    0x20dbf  5      
                                                                                                                                          
.size _ZN2pp8InstanceD2Ev, .-_ZN2pp8InstanceD2Ev

