  .text
  .globl NACL_AnnotateFlushExpectedRaces
  .type NACL_AnnotateFlushExpectedRaces, @function

#! file-offset 0x42140
#! rip-offset  0x42140
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
.NACL_AnnotateFlushExpectedRaces:  #        0x42140  0      
  popq %r11                        #  1     0x42140  3      
  andl $0xffffffe0, %r11d          #  2     0x42143  7      
  addq %r15, %r11                  #  3     0x4214a  3      
  jmpq %r11                        #  4     0x4214d  3      
  nop                              #  5     0x42150  1      
  nop                              #  6     0x42151  1      
                                                            
.size NACL_AnnotateFlushExpectedRaces, .-NACL_AnnotateFlushExpectedRaces

