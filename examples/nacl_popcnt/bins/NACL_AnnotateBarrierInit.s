  .text
  .globl NACL_AnnotateBarrierInit
  .type NACL_AnnotateBarrierInit, @function

#! file-offset 0x41e80
#! rip-offset  0x41e80
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
.NACL_AnnotateBarrierInit:  #        0x41e80  0      
  popq %r11                 #  1     0x41e80  3      
  andl $0xffffffe0, %r11d   #  2     0x41e83  7      
  addq %r15, %r11           #  3     0x41e8a  3      
  jmpq %r11                 #  4     0x41e8d  3      
  nop                       #  5     0x41e90  1      
  nop                       #  6     0x41e91  1      
                                                     
.size NACL_AnnotateBarrierInit, .-NACL_AnnotateBarrierInit

