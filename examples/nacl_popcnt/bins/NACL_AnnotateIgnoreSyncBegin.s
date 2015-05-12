  .text
  .globl NACL_AnnotateIgnoreSyncBegin
  .type NACL_AnnotateIgnoreSyncBegin, @function

#! file-offset 0x42220
#! rip-offset  0x42220
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
.NACL_AnnotateIgnoreSyncBegin:  #        0x42220  0      
  popq %r11                     #  1     0x42220  3      
  andl $0xffffffe0, %r11d       #  2     0x42223  7      
  addq %r15, %r11               #  3     0x4222a  3      
  jmpq %r11                     #  4     0x4222d  3      
  nop                           #  5     0x42230  1      
  nop                           #  6     0x42231  1      
                                                         
.size NACL_AnnotateIgnoreSyncBegin, .-NACL_AnnotateIgnoreSyncBegin

