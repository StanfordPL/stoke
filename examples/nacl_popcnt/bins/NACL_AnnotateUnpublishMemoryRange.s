  .text
  .globl NACL_AnnotateUnpublishMemoryRange
  .type NACL_AnnotateUnpublishMemoryRange, @function

#! file-offset 0x41fc0
#! rip-offset  0x41fc0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  
.NACL_AnnotateUnpublishMemoryRange:  #        0x41fc0  0      
  popq %r11                          #  1     0x41fc0  3      
  andl $0xffffffe0, %r11d            #  2     0x41fc3  7      
  addq %r15, %r11                    #  3     0x41fca  3      
  jmpq %r11                          #  4     0x41fcd  3      
  nop                                #  5     0x41fd0  1      
  nop                                #  6     0x41fd1  1      
                                                              
.size NACL_AnnotateUnpublishMemoryRange, .-NACL_AnnotateUnpublishMemoryRange

