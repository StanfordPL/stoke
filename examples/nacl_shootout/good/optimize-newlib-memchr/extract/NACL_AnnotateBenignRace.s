  .text
  .globl NACL_AnnotateBenignRace
  .type NACL_AnnotateBenignRace, @function

#! file-offset 0x705e0
#! rip-offset  0x305e0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBenignRace:  #        0x305e0  0      OPC=<label>         
  popq %r11                #  1     0x305e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x305e2  7      OPC=andl_r32_imm32  
  nop                      #  3     0x305e9  1      OPC=nop             
  nop                      #  4     0x305ea  1      OPC=nop             
  nop                      #  5     0x305eb  1      OPC=nop             
  nop                      #  6     0x305ec  1      OPC=nop             
  addq %r15, %r11          #  7     0x305ed  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x305f0  3      OPC=jmpq_r64        
  nop                      #  9     0x305f3  1      OPC=nop             
  nop                      #  10    0x305f4  1      OPC=nop             
  nop                      #  11    0x305f5  1      OPC=nop             
  nop                      #  12    0x305f6  1      OPC=nop             
  nop                      #  13    0x305f7  1      OPC=nop             
  nop                      #  14    0x305f8  1      OPC=nop             
  nop                      #  15    0x305f9  1      OPC=nop             
  nop                      #  16    0x305fa  1      OPC=nop             
  nop                      #  17    0x305fb  1      OPC=nop             
  nop                      #  18    0x305fc  1      OPC=nop             
  nop                      #  19    0x305fd  1      OPC=nop             
  nop                      #  20    0x305fe  1      OPC=nop             
  nop                      #  21    0x305ff  1      OPC=nop             
  nop                      #  22    0x30600  1      OPC=nop             
  nop                      #  23    0x30601  1      OPC=nop             
  nop                      #  24    0x30602  1      OPC=nop             
  nop                      #  25    0x30603  1      OPC=nop             
  nop                      #  26    0x30604  1      OPC=nop             
  nop                      #  27    0x30605  1      OPC=nop             
  nop                      #  28    0x30606  1      OPC=nop             
                                                                        
.size NACL_AnnotateBenignRace, .-NACL_AnnotateBenignRace

