  .text
  .globl NACL_AnnotateRWLockReleased
  .type NACL_AnnotateRWLockReleased, @function

#! file-offset 0x41e60
#! rip-offset  0x41e60
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
.NACL_AnnotateRWLockReleased:  #        0x41e60  0      
  popq %r11                    #  1     0x41e60  3      
  andl $0xffffffe0, %r11d      #  2     0x41e63  7      
  addq %r15, %r11              #  3     0x41e6a  3      
  jmpq %r11                    #  4     0x41e6d  3      
  nop                          #  5     0x41e70  1      
  nop                          #  6     0x41e71  1      
                                                        
.size NACL_AnnotateRWLockReleased, .-NACL_AnnotateRWLockReleased

