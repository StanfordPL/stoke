  .text
  .globl _ZSt9terminatev
  .type _ZSt9terminatev, @function

#! file-offset 0x4bba0
#! rip-offset  0x4bba0
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  
._ZSt9terminatev:                            #        0x4bba0  0      
  subl $0x8, %esp                            #  1     0x4bba0  3      
  addq %r15, %rsp                            #  2     0x4bba3  3      
  movl 0xffe4948(%rip), %edi                 #  3     0x4bba6  6      
  nop                                        #  4     0x4bbac  1      
  callq ._ZN10__cxxabiv111__terminateEPFvvE  #  5     0x4bbad  5      
                                                                      
.size _ZSt9terminatev, .-_ZSt9terminatev

