  .text
  .globl NACL_AnnotateIgnoreSyncEnd
  .type NACL_AnnotateIgnoreSyncEnd, @function

#! file-offset 0x422c0
#! rip-offset  0x422c0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.NACL_AnnotateIgnoreSyncEnd:  #        0x422c0  0      
  popq %r11                   #  1     0x422c0  3      
  andl $0xffffffe0, %r11d     #  2     0x422c3  7      
  addq %r15, %r11             #  3     0x422ca  3      
  jmpq %r11                   #  4     0x422cd  3      
  nop                         #  5     0x422d0  1      
  nop                         #  6     0x422d1  1      
                                                       
.size NACL_AnnotateIgnoreSyncEnd, .-NACL_AnnotateIgnoreSyncEnd

