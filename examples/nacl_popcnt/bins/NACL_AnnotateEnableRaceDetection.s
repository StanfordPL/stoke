  .text
  .globl NACL_AnnotateEnableRaceDetection
  .type NACL_AnnotateEnableRaceDetection, @function

#! file-offset 0x422e0
#! rip-offset  0x422e0
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  
.NACL_AnnotateEnableRaceDetection:  #        0x422e0  0      
  popq %r11                         #  1     0x422e0  3      
  andl $0xffffffe0, %r11d           #  2     0x422e3  7      
  addq %r15, %r11                   #  3     0x422ea  3      
  jmpq %r11                         #  4     0x422ed  3      
  nop                               #  5     0x422f0  1      
  nop                               #  6     0x422f1  1      
                                                             
.size NACL_AnnotateEnableRaceDetection, .-NACL_AnnotateEnableRaceDetection

