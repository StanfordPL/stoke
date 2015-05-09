  .text
  .globl _ZN2pp8InstanceD2Ev
  .type _ZN2pp8InstanceD2Ev, @function

#! file-offset 0x20ce0
#! rip-offset  0x20ce0
#! capacity    128 bytes

# Text                                                                                                           #  Line  RIP      Bytes  
._ZN2pp8InstanceD2Ev:                                                                                            #        0x20ce0  0      
  movl %edi, %edi                                                                                                #  1     0x20ce0  2      
  subl $0x8, %esp                                                                                                #  2     0x20ce2  3      
  addq %r15, %rsp                                                                                                #  3     0x20ce5  3      
  movl %edi, %edi                                                                                                #  4     0x20ce8  2      
  movl 0x10(%r15,%rdi,1), %esi                                                                                   #  5     0x20cea  5      
  movl %edi, %edi                                                                                                #  6     0x20cef  2      
  movl $0x10020328, (%r15,%rdi,1)                                                                                #  7     0x20cf1  8      
  addl $0x8, %edi                                                                                                #  8     0x20cf9  3      
  nop                                                                                                            #  9     0x20cfc  1      
  nop                                                                                                            #  10    0x20cfd  1      
  nop                                                                                                            #  11    0x20cfe  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E  #  12    0x20cff  5      
  addl $0x8, %esp                                                                                                #  13    0x20d04  3      
  addq %r15, %rsp                                                                                                #  14    0x20d07  3      
  popq %r11                                                                                                      #  15    0x20d0a  3      
  andl $0xffffffe0, %r11d                                                                                        #  16    0x20d0d  7      
  addq %r15, %r11                                                                                                #  17    0x20d14  3      
  jmpq %r11                                                                                                      #  18    0x20d17  3      
  nop                                                                                                            #  19    0x20d1a  1      
  movl %eax, %edi                                                                                                #  20    0x20d1b  2      
  nop                                                                                                            #  21    0x20d1d  1      
  nop                                                                                                            #  22    0x20d1e  1      
  callq ._Unwind_Resume                                                                                          #  23    0x20d1f  5      
                                                                                                                                          
.size _ZN2pp8InstanceD2Ev, .-_ZN2pp8InstanceD2Ev

