  .text
  .globl _ZN10__cxxabiv112__unexpectedEPFvvE
  .type _ZN10__cxxabiv112__unexpectedEPFvvE, @function

#! file-offset 0x4bc40
#! rip-offset  0x4bc40
#! capacity    64 bytes

# Text                                 #  Line  RIP      Bytes  
._ZN10__cxxabiv112__unexpectedEPFvvE:  #        0x4bc40  0      
  subl $0x8, %esp                      #  1     0x4bc40  3      
  addq %r15, %rsp                      #  2     0x4bc43  3      
  movl %edi, %edi                      #  3     0x4bc46  2      
  nop                                  #  4     0x4bc48  1      
  nop                                  #  5     0x4bc49  1      
  andl $0xffffffe0, %edi               #  6     0x4bc4a  6      
  addq %r15, %rdi                      #  7     0x4bc50  3      
  callq %rdi                           #  8     0x4bc53  2      
  nop                                  #  9     0x4bc55  1      
  nop                                  #  10    0x4bc56  1      
  callq ._ZSt9terminatev               #  11    0x4bc57  5      
                                                                
.size _ZN10__cxxabiv112__unexpectedEPFvvE, .-_ZN10__cxxabiv112__unexpectedEPFvvE

