  .text
  .globl NACL_AnnotateIgnoreWritesBegin
  .type NACL_AnnotateIgnoreWritesBegin, @function

#! file-offset 0x421e0
#! rip-offset  0x421e0
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  
.NACL_AnnotateIgnoreWritesBegin:  #        0x421e0  0      
  popq %r11                       #  1     0x421e0  3      
  andl $0xffffffe0, %r11d         #  2     0x421e3  7      
  addq %r15, %r11                 #  3     0x421ea  3      
  jmpq %r11                       #  4     0x421ed  3      
  nop                             #  5     0x421f0  1      
  nop                             #  6     0x421f1  1      
                                                           
.size NACL_AnnotateIgnoreWritesBegin, .-NACL_AnnotateIgnoreWritesBegin

