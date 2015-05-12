  .text
  .globl _ZN10__cxxabiv112__unexpectedEPFvvE
  .type _ZN10__cxxabiv112__unexpectedEPFvvE, @function

#! file-offset 0x4bbc0
#! rip-offset  0x4bbc0
#! capacity    64 bytes

# Text                                 #  Line  RIP      Bytes  
._ZN10__cxxabiv112__unexpectedEPFvvE:  #        0x4bbc0  0      
  subl $0x8, %esp                      #  1     0x4bbc0  3      
  addq %r15, %rsp                      #  2     0x4bbc3  3      
  movl %edi, %edi                      #  3     0x4bbc6  2      
  nop                                  #  4     0x4bbc8  1      
  nop                                  #  5     0x4bbc9  1      
  andl $0xffffffe0, %edi               #  6     0x4bbca  6      
  addq %r15, %rdi                      #  7     0x4bbd0  3      
  callq %rdi                           #  8     0x4bbd3  2      
  nop                                  #  9     0x4bbd5  1      
  nop                                  #  10    0x4bbd6  1      
  callq ._ZSt9terminatev               #  11    0x4bbd7  5      
                                                                
.size _ZN10__cxxabiv112__unexpectedEPFvvE, .-_ZN10__cxxabiv112__unexpectedEPFvvE

