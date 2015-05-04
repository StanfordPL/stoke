  .text
  .globl NACL_AnnotateMutexIsNotPHB
  .type NACL_AnnotateMutexIsNotPHB, @function

#! file-offset 0x421c0
#! rip-offset  0x421c0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.NACL_AnnotateMutexIsNotPHB:  #        0x421c0  0      
  popq %r11                   #  1     0x421c0  3      
  andl $0xffffffe0, %r11d     #  2     0x421c3  7      
  addq %r15, %r11             #  3     0x421ca  3      
  jmpq %r11                   #  4     0x421cd  3      
  nop                         #  5     0x421d0  1      
  nop                         #  6     0x421d1  1      
                                                       
.size NACL_AnnotateMutexIsNotPHB, .-NACL_AnnotateMutexIsNotPHB

