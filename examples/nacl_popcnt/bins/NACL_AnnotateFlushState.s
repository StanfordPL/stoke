  .text
  .globl NACL_AnnotateFlushState
  .type NACL_AnnotateFlushState, @function

#! file-offset 0x422a0
#! rip-offset  0x422a0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.NACL_AnnotateFlushState:  #        0x422a0  0      
  popq %r11                #  1     0x422a0  3      
  andl $0xffffffe0, %r11d  #  2     0x422a3  7      
  addq %r15, %r11          #  3     0x422aa  3      
  jmpq %r11                #  4     0x422ad  3      
  nop                      #  5     0x422b0  1      
  nop                      #  6     0x422b1  1      
                                                    
.size NACL_AnnotateFlushState, .-NACL_AnnotateFlushState

