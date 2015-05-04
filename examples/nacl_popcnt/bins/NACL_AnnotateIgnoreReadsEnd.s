  .text
  .globl NACL_AnnotateIgnoreReadsEnd
  .type NACL_AnnotateIgnoreReadsEnd, @function

#! file-offset 0x42240
#! rip-offset  0x42240
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
.NACL_AnnotateIgnoreReadsEnd:  #        0x42240  0      
  popq %r11                    #  1     0x42240  3      
  andl $0xffffffe0, %r11d      #  2     0x42243  7      
  addq %r15, %r11              #  3     0x4224a  3      
  jmpq %r11                    #  4     0x4224d  3      
  nop                          #  5     0x42250  1      
  nop                          #  6     0x42251  1      
                                                        
.size NACL_AnnotateIgnoreReadsEnd, .-NACL_AnnotateIgnoreReadsEnd

