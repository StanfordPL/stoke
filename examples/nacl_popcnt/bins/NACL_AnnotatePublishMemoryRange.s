  .text
  .globl NACL_AnnotatePublishMemoryRange
  .type NACL_AnnotatePublishMemoryRange, @function

#! file-offset 0x42040
#! rip-offset  0x42040
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
.NACL_AnnotatePublishMemoryRange:  #        0x42040  0      
  popq %r11                        #  1     0x42040  3      
  andl $0xffffffe0, %r11d          #  2     0x42043  7      
  addq %r15, %r11                  #  3     0x4204a  3      
  jmpq %r11                        #  4     0x4204d  3      
  nop                              #  5     0x42050  1      
  nop                              #  6     0x42051  1      
                                                            
.size NACL_AnnotatePublishMemoryRange, .-NACL_AnnotatePublishMemoryRange

