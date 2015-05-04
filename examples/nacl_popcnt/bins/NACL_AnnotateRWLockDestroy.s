  .text
  .globl NACL_AnnotateRWLockDestroy
  .type NACL_AnnotateRWLockDestroy, @function

#! file-offset 0x41ec0
#! rip-offset  0x41ec0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.NACL_AnnotateRWLockDestroy:  #        0x41ec0  0      
  popq %r11                   #  1     0x41ec0  3      
  andl $0xffffffe0, %r11d     #  2     0x41ec3  7      
  addq %r15, %r11             #  3     0x41eca  3      
  jmpq %r11                   #  4     0x41ecd  3      
  nop                         #  5     0x41ed0  1      
  nop                         #  6     0x41ed1  1      
                                                       
.size NACL_AnnotateRWLockDestroy, .-NACL_AnnotateRWLockDestroy

