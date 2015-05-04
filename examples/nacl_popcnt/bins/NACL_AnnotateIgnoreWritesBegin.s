  .text
  .globl NACL_AnnotateIgnoreWritesBegin
  .type NACL_AnnotateIgnoreWritesBegin, @function

#! file-offset 0x42260
#! rip-offset  0x42260
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  
.NACL_AnnotateIgnoreWritesBegin:  #        0x42260  0      
  popq %r11                       #  1     0x42260  3      
  andl $0xffffffe0, %r11d         #  2     0x42263  7      
  addq %r15, %r11                 #  3     0x4226a  3      
  jmpq %r11                       #  4     0x4226d  3      
  nop                             #  5     0x42270  1      
  nop                             #  6     0x42271  1      
                                                           
.size NACL_AnnotateIgnoreWritesBegin, .-NACL_AnnotateIgnoreWritesBegin

