  .text
  .globl NACL_AnnotateFlushExpectedRaces
  .type NACL_AnnotateFlushExpectedRaces, @function

#! file-offset 0x420c0
#! rip-offset  0x420c0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
.NACL_AnnotateFlushExpectedRaces:  #        0x420c0  0      
  popq %r11                        #  1     0x420c0  3      
  andl $0xffffffe0, %r11d          #  2     0x420c3  7      
  addq %r15, %r11                  #  3     0x420ca  3      
  jmpq %r11                        #  4     0x420cd  3      
  nop                              #  5     0x420d0  1      
  nop                              #  6     0x420d1  1      
                                                            
.size NACL_AnnotateFlushExpectedRaces, .-NACL_AnnotateFlushExpectedRaces

