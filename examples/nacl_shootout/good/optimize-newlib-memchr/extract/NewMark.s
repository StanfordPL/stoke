  .text
  .globl NewMark
  .type NewMark, @function

#! file-offset 0x66ca0
#! rip-offset  0x26ca0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NewMark:                      #        0x26ca0  0      OPC=<label>         
  addl $0x1, 0x1004a49d(%rip)  #  1     0x26ca0  7      OPC=addl_m32_imm8   
  popq %r11                    #  2     0x26ca7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  3     0x26ca9  7      OPC=andl_r32_imm32  
  nop                          #  4     0x26cb0  1      OPC=nop             
  nop                          #  5     0x26cb1  1      OPC=nop             
  nop                          #  6     0x26cb2  1      OPC=nop             
  nop                          #  7     0x26cb3  1      OPC=nop             
  addq %r15, %r11              #  8     0x26cb4  3      OPC=addq_r64_r64    
  jmpq %r11                    #  9     0x26cb7  3      OPC=jmpq_r64        
  nop                          #  10    0x26cba  1      OPC=nop             
  nop                          #  11    0x26cbb  1      OPC=nop             
  nop                          #  12    0x26cbc  1      OPC=nop             
  nop                          #  13    0x26cbd  1      OPC=nop             
  nop                          #  14    0x26cbe  1      OPC=nop             
  nop                          #  15    0x26cbf  1      OPC=nop             
  nop                          #  16    0x26cc0  1      OPC=nop             
  nop                          #  17    0x26cc1  1      OPC=nop             
  nop                          #  18    0x26cc2  1      OPC=nop             
  nop                          #  19    0x26cc3  1      OPC=nop             
  nop                          #  20    0x26cc4  1      OPC=nop             
  nop                          #  21    0x26cc5  1      OPC=nop             
  nop                          #  22    0x26cc6  1      OPC=nop             
                                                                            
.size NewMark, .-NewMark

