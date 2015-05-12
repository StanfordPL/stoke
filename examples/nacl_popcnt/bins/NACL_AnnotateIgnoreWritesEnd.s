  .text
  .globl NACL_AnnotateIgnoreWritesEnd
  .type NACL_AnnotateIgnoreWritesEnd, @function

#! file-offset 0x42200
#! rip-offset  0x42200
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
.NACL_AnnotateIgnoreWritesEnd:  #        0x42200  0      
  popq %r11                     #  1     0x42200  3      
  andl $0xffffffe0, %r11d       #  2     0x42203  7      
  addq %r15, %r11               #  3     0x4220a  3      
  jmpq %r11                     #  4     0x4220d  3      
  nop                           #  5     0x42210  1      
  nop                           #  6     0x42211  1      
                                                         
.size NACL_AnnotateIgnoreWritesEnd, .-NACL_AnnotateIgnoreWritesEnd

