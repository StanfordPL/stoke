  .text
  .globl NACL_AnnotateTraceMemory
  .type NACL_AnnotateTraceMemory, @function

#! file-offset 0x42160
#! rip-offset  0x42160
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
.NACL_AnnotateTraceMemory:  #        0x42160  0      
  popq %r11                 #  1     0x42160  3      
  andl $0xffffffe0, %r11d   #  2     0x42163  7      
  addq %r15, %r11           #  3     0x4216a  3      
  jmpq %r11                 #  4     0x4216d  3      
  nop                       #  5     0x42170  1      
  nop                       #  6     0x42171  1      
                                                     
.size NACL_AnnotateTraceMemory, .-NACL_AnnotateTraceMemory

