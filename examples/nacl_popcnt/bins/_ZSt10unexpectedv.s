  .text
  .globl _ZSt10unexpectedv
  .type _ZSt10unexpectedv, @function

#! file-offset 0x4bbe0
#! rip-offset  0x4bbe0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  
._ZSt10unexpectedv:                           #        0x4bbe0  0      
  subl $0x8, %esp                             #  1     0x4bbe0  3      
  addq %r15, %rsp                             #  2     0x4bbe3  3      
  movl 0xffe4904(%rip), %edi                  #  3     0x4bbe6  6      
  nop                                         #  4     0x4bbec  1      
  callq ._ZN10__cxxabiv112__unexpectedEPFvvE  #  5     0x4bbed  5      
                                                                       
.size _ZSt10unexpectedv, .-_ZSt10unexpectedv

