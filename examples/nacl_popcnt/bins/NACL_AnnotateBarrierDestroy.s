  .text
  .globl NACL_AnnotateBarrierDestroy
  .type NACL_AnnotateBarrierDestroy, @function

#! file-offset 0x41ee0
#! rip-offset  0x41ee0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
.NACL_AnnotateBarrierDestroy:  #        0x41ee0  0      
  popq %r11                    #  1     0x41ee0  3      
  andl $0xffffffe0, %r11d      #  2     0x41ee3  7      
  addq %r15, %r11              #  3     0x41eea  3      
  jmpq %r11                    #  4     0x41eed  3      
  nop                          #  5     0x41ef0  1      
  nop                          #  6     0x41ef1  1      
                                                        
.size NACL_AnnotateBarrierDestroy, .-NACL_AnnotateBarrierDestroy

