  .text
  .globl NACL_AnnotateHappensAfter
  .type NACL_AnnotateHappensAfter, @function

#! file-offset 0x6fa80
#! rip-offset  0x2fa80
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateHappensAfter:  #        0x2fa80  0      OPC=<label>         
  popq %r11                  #  1     0x2fa80  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  2     0x2fa82  7      OPC=andl_r32_imm32  
  nop                        #  3     0x2fa89  1      OPC=nop             
  nop                        #  4     0x2fa8a  1      OPC=nop             
  nop                        #  5     0x2fa8b  1      OPC=nop             
  nop                        #  6     0x2fa8c  1      OPC=nop             
  addq %r15, %r11            #  7     0x2fa8d  3      OPC=addq_r64_r64    
  jmpq %r11                  #  8     0x2fa90  3      OPC=jmpq_r64        
  nop                        #  9     0x2fa93  1      OPC=nop             
  nop                        #  10    0x2fa94  1      OPC=nop             
  nop                        #  11    0x2fa95  1      OPC=nop             
  nop                        #  12    0x2fa96  1      OPC=nop             
  nop                        #  13    0x2fa97  1      OPC=nop             
  nop                        #  14    0x2fa98  1      OPC=nop             
  nop                        #  15    0x2fa99  1      OPC=nop             
  nop                        #  16    0x2fa9a  1      OPC=nop             
  nop                        #  17    0x2fa9b  1      OPC=nop             
  nop                        #  18    0x2fa9c  1      OPC=nop             
  nop                        #  19    0x2fa9d  1      OPC=nop             
  nop                        #  20    0x2fa9e  1      OPC=nop             
  nop                        #  21    0x2fa9f  1      OPC=nop             
  nop                        #  22    0x2faa0  1      OPC=nop             
  nop                        #  23    0x2faa1  1      OPC=nop             
  nop                        #  24    0x2faa2  1      OPC=nop             
  nop                        #  25    0x2faa3  1      OPC=nop             
  nop                        #  26    0x2faa4  1      OPC=nop             
  nop                        #  27    0x2faa5  1      OPC=nop             
  nop                        #  28    0x2faa6  1      OPC=nop             
                                                                          
.size NACL_AnnotateHappensAfter, .-NACL_AnnotateHappensAfter

