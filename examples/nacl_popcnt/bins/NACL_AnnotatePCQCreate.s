  .text
  .globl NACL_AnnotatePCQCreate
  .type NACL_AnnotatePCQCreate, @function

#! file-offset 0x41fe0
#! rip-offset  0x41fe0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.NACL_AnnotatePCQCreate:   #        0x41fe0  0      
  popq %r11                #  1     0x41fe0  3      
  andl $0xffffffe0, %r11d  #  2     0x41fe3  7      
  addq %r15, %r11          #  3     0x41fea  3      
  jmpq %r11                #  4     0x41fed  3      
  nop                      #  5     0x41ff0  1      
  nop                      #  6     0x41ff1  1      
                                                    
.size NACL_AnnotatePCQCreate, .-NACL_AnnotatePCQCreate

