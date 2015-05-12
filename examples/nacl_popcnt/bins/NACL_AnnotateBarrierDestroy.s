  .text
  .globl NACL_AnnotateBarrierDestroy
  .type NACL_AnnotateBarrierDestroy, @function

#! file-offset 0x41f00
#! rip-offset  0x41f00
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
.NACL_AnnotateBarrierDestroy:  #        0x41f00  0      
  popq %r11                    #  1     0x41f00  3      
  andl $0xffffffe0, %r11d      #  2     0x41f03  7      
  addq %r15, %r11              #  3     0x41f0a  3      
  jmpq %r11                    #  4     0x41f0d  3      
  nop                          #  5     0x41f10  1      
  nop                          #  6     0x41f11  1      
                                                        
.size NACL_AnnotateBarrierDestroy, .-NACL_AnnotateBarrierDestroy

