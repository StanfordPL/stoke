  .text
  .globl NACL_AnnotateNewMemory
  .type NACL_AnnotateNewMemory, @function

#! file-offset 0x42060
#! rip-offset  0x42060
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.NACL_AnnotateNewMemory:   #        0x42060  0      
  popq %r11                #  1     0x42060  3      
  andl $0xffffffe0, %r11d  #  2     0x42063  7      
  addq %r15, %r11          #  3     0x4206a  3      
  jmpq %r11                #  4     0x4206d  3      
  nop                      #  5     0x42070  1      
  nop                      #  6     0x42071  1      
                                                    
.size NACL_AnnotateNewMemory, .-NACL_AnnotateNewMemory

