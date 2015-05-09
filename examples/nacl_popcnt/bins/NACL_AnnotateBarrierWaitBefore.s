  .text
  .globl NACL_AnnotateBarrierWaitBefore
  .type NACL_AnnotateBarrierWaitBefore, @function

#! file-offset 0x41ea0
#! rip-offset  0x41ea0
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  
.NACL_AnnotateBarrierWaitBefore:  #        0x41ea0  0      
  popq %r11                       #  1     0x41ea0  3      
  andl $0xffffffe0, %r11d         #  2     0x41ea3  7      
  addq %r15, %r11                 #  3     0x41eaa  3      
  jmpq %r11                       #  4     0x41ead  3      
  nop                             #  5     0x41eb0  1      
  nop                             #  6     0x41eb1  1      
                                                           
.size NACL_AnnotateBarrierWaitBefore, .-NACL_AnnotateBarrierWaitBefore

