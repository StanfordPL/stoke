  .text
  .globl NACL_AnnotateFlushState
  .type NACL_AnnotateFlushState, @function

#! file-offset 0x42280
#! rip-offset  0x42280
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.NACL_AnnotateFlushState:  #        0x42280  0      
  popq %r11                #  1     0x42280  3      
  andl $0xffffffe0, %r11d  #  2     0x42283  7      
  addq %r15, %r11          #  3     0x4228a  3      
  jmpq %r11                #  4     0x4228d  3      
  nop                      #  5     0x42290  1      
  nop                      #  6     0x42291  1      
                                                    
.size NACL_AnnotateFlushState, .-NACL_AnnotateFlushState

