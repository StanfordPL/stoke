  .text
  .globl NACL_AnnotateExpectRace
  .type NACL_AnnotateExpectRace, @function

#! file-offset 0x420a0
#! rip-offset  0x420a0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.NACL_AnnotateExpectRace:  #        0x420a0  0      
  popq %r11                #  1     0x420a0  3      
  andl $0xffffffe0, %r11d  #  2     0x420a3  7      
  addq %r15, %r11          #  3     0x420aa  3      
  jmpq %r11                #  4     0x420ad  3      
  nop                      #  5     0x420b0  1      
  nop                      #  6     0x420b1  1      
                                                    
.size NACL_AnnotateExpectRace, .-NACL_AnnotateExpectRace

