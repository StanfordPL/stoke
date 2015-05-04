  .text
  .globl NACL_AnnotatePCQCreate
  .type NACL_AnnotatePCQCreate, @function

#! file-offset 0x42080
#! rip-offset  0x42080
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.NACL_AnnotatePCQCreate:   #        0x42080  0      
  popq %r11                #  1     0x42080  3      
  andl $0xffffffe0, %r11d  #  2     0x42083  7      
  addq %r15, %r11          #  3     0x4208a  3      
  jmpq %r11                #  4     0x4208d  3      
  nop                      #  5     0x42090  1      
  nop                      #  6     0x42091  1      
                                                    
.size NACL_AnnotatePCQCreate, .-NACL_AnnotatePCQCreate

