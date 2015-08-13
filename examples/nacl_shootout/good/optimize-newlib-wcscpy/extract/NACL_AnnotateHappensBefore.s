  .text
  .globl NACL_AnnotateHappensBefore
  .type NACL_AnnotateHappensBefore, @function

#! file-offset 0x6fa60
#! rip-offset  0x2fa60
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateHappensBefore:  #        0x2fa60  0      OPC=<label>         
  popq %r11                   #  1     0x2fa60  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  2     0x2fa62  7      OPC=andl_r32_imm32  
  nop                         #  3     0x2fa69  1      OPC=nop             
  nop                         #  4     0x2fa6a  1      OPC=nop             
  nop                         #  5     0x2fa6b  1      OPC=nop             
  nop                         #  6     0x2fa6c  1      OPC=nop             
  addq %r15, %r11             #  7     0x2fa6d  3      OPC=addq_r64_r64    
  jmpq %r11                   #  8     0x2fa70  3      OPC=jmpq_r64        
  nop                         #  9     0x2fa73  1      OPC=nop             
  nop                         #  10    0x2fa74  1      OPC=nop             
  nop                         #  11    0x2fa75  1      OPC=nop             
  nop                         #  12    0x2fa76  1      OPC=nop             
  nop                         #  13    0x2fa77  1      OPC=nop             
  nop                         #  14    0x2fa78  1      OPC=nop             
  nop                         #  15    0x2fa79  1      OPC=nop             
  nop                         #  16    0x2fa7a  1      OPC=nop             
  nop                         #  17    0x2fa7b  1      OPC=nop             
  nop                         #  18    0x2fa7c  1      OPC=nop             
  nop                         #  19    0x2fa7d  1      OPC=nop             
  nop                         #  20    0x2fa7e  1      OPC=nop             
  nop                         #  21    0x2fa7f  1      OPC=nop             
  nop                         #  22    0x2fa80  1      OPC=nop             
  nop                         #  23    0x2fa81  1      OPC=nop             
  nop                         #  24    0x2fa82  1      OPC=nop             
  nop                         #  25    0x2fa83  1      OPC=nop             
  nop                         #  26    0x2fa84  1      OPC=nop             
  nop                         #  27    0x2fa85  1      OPC=nop             
  nop                         #  28    0x2fa86  1      OPC=nop             
                                                                           
.size NACL_AnnotateHappensBefore, .-NACL_AnnotateHappensBefore

