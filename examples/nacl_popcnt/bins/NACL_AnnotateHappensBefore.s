  .text
  .globl NACL_AnnotateHappensBefore
  .type NACL_AnnotateHappensBefore, @function

#! file-offset 0x41f80
#! rip-offset  0x41f80
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.NACL_AnnotateHappensBefore:  #        0x41f80  0      
  popq %r11                   #  1     0x41f80  3      
  andl $0xffffffe0, %r11d     #  2     0x41f83  7      
  addq %r15, %r11             #  3     0x41f8a  3      
  jmpq %r11                   #  4     0x41f8d  3      
  nop                         #  5     0x41f90  1      
  nop                         #  6     0x41f91  1      
                                                       
.size NACL_AnnotateHappensBefore, .-NACL_AnnotateHappensBefore

