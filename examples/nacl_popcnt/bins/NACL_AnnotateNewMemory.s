  .text
  .globl NACL_AnnotateNewMemory
  .type NACL_AnnotateNewMemory, @function

#! file-offset 0x42100
#! rip-offset  0x42100
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.NACL_AnnotateNewMemory:   #        0x42100  0      
  popq %r11                #  1     0x42100  3      
  andl $0xffffffe0, %r11d  #  2     0x42103  7      
  addq %r15, %r11          #  3     0x4210a  3      
  jmpq %r11                #  4     0x4210d  3      
  nop                      #  5     0x42110  1      
  nop                      #  6     0x42111  1      
                                                    
.size NACL_AnnotateNewMemory, .-NACL_AnnotateNewMemory

