  .text
  .globl _ZSt9terminatev
  .type _ZSt9terminatev, @function

#! file-offset 0x4bc20
#! rip-offset  0x4bc20
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  
._ZSt9terminatev:                            #        0x4bc20  0      
  subl $0x8, %esp                            #  1     0x4bc20  3      
  addq %r15, %rsp                            #  2     0x4bc23  3      
  movl 0xffe48c8(%rip), %edi                 #  3     0x4bc26  6      
  nop                                        #  4     0x4bc2c  1      
  callq ._ZN10__cxxabiv111__terminateEPFvvE  #  5     0x4bc2d  5      
                                                                      
.size _ZSt9terminatev, .-_ZSt9terminatev

