  .text
  .globl NACL_AnnotateHappensBefore
  .type NACL_AnnotateHappensBefore, @function

#! file-offset 0x42000
#! rip-offset  0x42000
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.NACL_AnnotateHappensBefore:  #        0x42000  0      
  popq %r11                   #  1     0x42000  3      
  andl $0xffffffe0, %r11d     #  2     0x42003  7      
  addq %r15, %r11             #  3     0x4200a  3      
  jmpq %r11                   #  4     0x4200d  3      
  nop                         #  5     0x42010  1      
  nop                         #  6     0x42011  1      
                                                       
.size NACL_AnnotateHappensBefore, .-NACL_AnnotateHappensBefore

