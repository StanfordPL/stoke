  .text
  .globl NACL_AnnotateIgnoreReadsBegin
  .type NACL_AnnotateIgnoreReadsBegin, @function

#! file-offset 0x42180
#! rip-offset  0x42180
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  
.NACL_AnnotateIgnoreReadsBegin:  #        0x42180  0      
  popq %r11                      #  1     0x42180  3      
  andl $0xffffffe0, %r11d        #  2     0x42183  7      
  addq %r15, %r11                #  3     0x4218a  3      
  jmpq %r11                      #  4     0x4218d  3      
  nop                            #  5     0x42190  1      
  nop                            #  6     0x42191  1      
                                                          
.size NACL_AnnotateIgnoreReadsBegin, .-NACL_AnnotateIgnoreReadsBegin

