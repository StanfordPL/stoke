  .text
  .globl NACL_AnnotateBarrierDestroy
  .type NACL_AnnotateBarrierDestroy, @function

#! file-offset 0x6f9e0
#! rip-offset  0x2f9e0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBarrierDestroy:  #        0x2f9e0  0      OPC=<label>         
  popq %r11                    #  1     0x2f9e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  2     0x2f9e2  7      OPC=andl_r32_imm32  
  nop                          #  3     0x2f9e9  1      OPC=nop             
  nop                          #  4     0x2f9ea  1      OPC=nop             
  nop                          #  5     0x2f9eb  1      OPC=nop             
  nop                          #  6     0x2f9ec  1      OPC=nop             
  addq %r15, %r11              #  7     0x2f9ed  3      OPC=addq_r64_r64    
  jmpq %r11                    #  8     0x2f9f0  3      OPC=jmpq_r64        
  nop                          #  9     0x2f9f3  1      OPC=nop             
  nop                          #  10    0x2f9f4  1      OPC=nop             
  nop                          #  11    0x2f9f5  1      OPC=nop             
  nop                          #  12    0x2f9f6  1      OPC=nop             
  nop                          #  13    0x2f9f7  1      OPC=nop             
  nop                          #  14    0x2f9f8  1      OPC=nop             
  nop                          #  15    0x2f9f9  1      OPC=nop             
  nop                          #  16    0x2f9fa  1      OPC=nop             
  nop                          #  17    0x2f9fb  1      OPC=nop             
  nop                          #  18    0x2f9fc  1      OPC=nop             
  nop                          #  19    0x2f9fd  1      OPC=nop             
  nop                          #  20    0x2f9fe  1      OPC=nop             
  nop                          #  21    0x2f9ff  1      OPC=nop             
  nop                          #  22    0x2fa00  1      OPC=nop             
  nop                          #  23    0x2fa01  1      OPC=nop             
  nop                          #  24    0x2fa02  1      OPC=nop             
  nop                          #  25    0x2fa03  1      OPC=nop             
  nop                          #  26    0x2fa04  1      OPC=nop             
  nop                          #  27    0x2fa05  1      OPC=nop             
  nop                          #  28    0x2fa06  1      OPC=nop             
                                                                            
.size NACL_AnnotateBarrierDestroy, .-NACL_AnnotateBarrierDestroy

