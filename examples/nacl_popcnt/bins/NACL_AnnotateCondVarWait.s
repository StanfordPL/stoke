  .text
  .globl NACL_AnnotateCondVarWait
  .type NACL_AnnotateCondVarWait, @function

#! file-offset 0x41fa0
#! rip-offset  0x41fa0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
.NACL_AnnotateCondVarWait:  #        0x41fa0  0      
  popq %r11                 #  1     0x41fa0  3      
  andl $0xffffffe0, %r11d   #  2     0x41fa3  7      
  addq %r15, %r11           #  3     0x41faa  3      
  jmpq %r11                 #  4     0x41fad  3      
  nop                       #  5     0x41fb0  1      
  nop                       #  6     0x41fb1  1      
                                                     
.size NACL_AnnotateCondVarWait, .-NACL_AnnotateCondVarWait

