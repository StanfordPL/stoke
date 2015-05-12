  .text
  .globl NACL_AnnotateIgnoreReadsBegin
  .type NACL_AnnotateIgnoreReadsBegin, @function

#! file-offset 0x421a0
#! rip-offset  0x421a0
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  
.NACL_AnnotateIgnoreReadsBegin:  #        0x421a0  0      
  popq %r11                      #  1     0x421a0  3      
  andl $0xffffffe0, %r11d        #  2     0x421a3  7      
  addq %r15, %r11                #  3     0x421aa  3      
  jmpq %r11                      #  4     0x421ad  3      
  nop                            #  5     0x421b0  1      
  nop                            #  6     0x421b1  1      
                                                          
.size NACL_AnnotateIgnoreReadsBegin, .-NACL_AnnotateIgnoreReadsBegin

