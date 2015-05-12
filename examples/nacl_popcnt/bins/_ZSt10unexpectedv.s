  .text
  .globl _ZSt10unexpectedv
  .type _ZSt10unexpectedv, @function

#! file-offset 0x4bc00
#! rip-offset  0x4bc00
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  
._ZSt10unexpectedv:                           #        0x4bc00  0      
  subl $0x8, %esp                             #  1     0x4bc00  3      
  addq %r15, %rsp                             #  2     0x4bc03  3      
  movl 0xffe48e4(%rip), %edi                  #  3     0x4bc06  6      
  nop                                         #  4     0x4bc0c  1      
  callq ._ZN10__cxxabiv112__unexpectedEPFvvE  #  5     0x4bc0d  5      
                                                                       
.size _ZSt10unexpectedv, .-_ZSt10unexpectedv

