  .text
  .globl NACL_AnnotateRWLockCreate
  .type NACL_AnnotateRWLockCreate, @function

#! file-offset 0x41e00
#! rip-offset  0x41e00
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
.NACL_AnnotateRWLockCreate:  #        0x41e00  0      
  popq %r11                  #  1     0x41e00  3      
  andl $0xffffffe0, %r11d    #  2     0x41e03  7      
  addq %r15, %r11            #  3     0x41e0a  3      
  jmpq %r11                  #  4     0x41e0d  3      
  nop                        #  5     0x41e10  1      
  nop                        #  6     0x41e11  1      
                                                      
.size NACL_AnnotateRWLockCreate, .-NACL_AnnotateRWLockCreate

