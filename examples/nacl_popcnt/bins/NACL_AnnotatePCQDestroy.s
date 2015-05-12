  .text
  .globl NACL_AnnotatePCQDestroy
  .type NACL_AnnotatePCQDestroy, @function

#! file-offset 0x42020
#! rip-offset  0x42020
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.NACL_AnnotatePCQDestroy:  #        0x42020  0      
  popq %r11                #  1     0x42020  3      
  andl $0xffffffe0, %r11d  #  2     0x42023  7      
  addq %r15, %r11          #  3     0x4202a  3      
  jmpq %r11                #  4     0x4202d  3      
  nop                      #  5     0x42030  1      
  nop                      #  6     0x42031  1      
                                                    
.size NACL_AnnotatePCQDestroy, .-NACL_AnnotatePCQDestroy

