  .text
  .globl NACL_AnnotateThreadName
  .type NACL_AnnotateThreadName, @function

#! file-offset 0x6ff60
#! rip-offset  0x2ff60
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateThreadName:  #        0x2ff60  0      OPC=<label>         
  popq %r11                #  1     0x2ff60  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2ff62  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2ff69  1      OPC=nop             
  nop                      #  4     0x2ff6a  1      OPC=nop             
  nop                      #  5     0x2ff6b  1      OPC=nop             
  nop                      #  6     0x2ff6c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2ff6d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2ff70  3      OPC=jmpq_r64        
  nop                      #  9     0x2ff73  1      OPC=nop             
  nop                      #  10    0x2ff74  1      OPC=nop             
  nop                      #  11    0x2ff75  1      OPC=nop             
  nop                      #  12    0x2ff76  1      OPC=nop             
  nop                      #  13    0x2ff77  1      OPC=nop             
  nop                      #  14    0x2ff78  1      OPC=nop             
  nop                      #  15    0x2ff79  1      OPC=nop             
  nop                      #  16    0x2ff7a  1      OPC=nop             
  nop                      #  17    0x2ff7b  1      OPC=nop             
  nop                      #  18    0x2ff7c  1      OPC=nop             
  nop                      #  19    0x2ff7d  1      OPC=nop             
  nop                      #  20    0x2ff7e  1      OPC=nop             
  nop                      #  21    0x2ff7f  1      OPC=nop             
  nop                      #  22    0x2ff80  1      OPC=nop             
  nop                      #  23    0x2ff81  1      OPC=nop             
  nop                      #  24    0x2ff82  1      OPC=nop             
  nop                      #  25    0x2ff83  1      OPC=nop             
  nop                      #  26    0x2ff84  1      OPC=nop             
  nop                      #  27    0x2ff85  1      OPC=nop             
  nop                      #  28    0x2ff86  1      OPC=nop             
                                                                        
.size NACL_AnnotateThreadName, .-NACL_AnnotateThreadName

