  .text
  .globl NACL_AnnotateRWLockDestroy
  .type NACL_AnnotateRWLockDestroy, @function

#! file-offset 0x41e40
#! rip-offset  0x41e40
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.NACL_AnnotateRWLockDestroy:  #        0x41e40  0      
  popq %r11                   #  1     0x41e40  3      
  andl $0xffffffe0, %r11d     #  2     0x41e43  7      
  addq %r15, %r11             #  3     0x41e4a  3      
  jmpq %r11                   #  4     0x41e4d  3      
  nop                         #  5     0x41e50  1      
  nop                         #  6     0x41e51  1      
                                                       
.size NACL_AnnotateRWLockDestroy, .-NACL_AnnotateRWLockDestroy

