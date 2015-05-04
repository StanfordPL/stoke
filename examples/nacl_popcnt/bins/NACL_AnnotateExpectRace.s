  .text
  .globl NACL_AnnotateExpectRace
  .type NACL_AnnotateExpectRace, @function

#! file-offset 0x42120
#! rip-offset  0x42120
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.NACL_AnnotateExpectRace:  #        0x42120  0      
  popq %r11                #  1     0x42120  3      
  andl $0xffffffe0, %r11d  #  2     0x42123  7      
  addq %r15, %r11          #  3     0x4212a  3      
  jmpq %r11                #  4     0x4212d  3      
  nop                      #  5     0x42130  1      
  nop                      #  6     0x42131  1      
                                                    
.size NACL_AnnotateExpectRace, .-NACL_AnnotateExpectRace

