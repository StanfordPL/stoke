  .text
  .globl NACL_AnnotateRWLockCreate
  .type NACL_AnnotateRWLockCreate, @function

#! file-offset 0x41e20
#! rip-offset  0x41e20
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
.NACL_AnnotateRWLockCreate:  #        0x41e20  0      
  popq %r11                  #  1     0x41e20  3      
  andl $0xffffffe0, %r11d    #  2     0x41e23  7      
  addq %r15, %r11            #  3     0x41e2a  3      
  jmpq %r11                  #  4     0x41e2d  3      
  nop                        #  5     0x41e30  1      
  nop                        #  6     0x41e31  1      
                                                      
.size NACL_AnnotateRWLockCreate, .-NACL_AnnotateRWLockCreate

