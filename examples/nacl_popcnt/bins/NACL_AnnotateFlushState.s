  .text
  .globl NACL_AnnotateFlushState
  .type NACL_AnnotateFlushState, @function

#! file-offset 0x42320
#! rip-offset  0x42320
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.NACL_AnnotateFlushState:  #        0x42320  0      
  popq %r11                #  1     0x42320  3      
  andl $0xffffffe0, %r11d  #  2     0x42323  7      
  addq %r15, %r11          #  3     0x4232a  3      
  jmpq %r11                #  4     0x4232d  3      
  nop                      #  5     0x42330  1      
  nop                      #  6     0x42331  1      
                                                    
.size NACL_AnnotateFlushState, .-NACL_AnnotateFlushState

