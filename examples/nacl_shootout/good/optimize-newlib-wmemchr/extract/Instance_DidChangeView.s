  .text
  .globl Instance_DidChangeView
  .type Instance_DidChangeView, @function

#! file-offset 0x6c640
#! rip-offset  0x2c640
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.Instance_DidChangeView:   #        0x2c640  0      OPC=<label>         
  popq %r11                #  1     0x2c640  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2c642  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2c649  1      OPC=nop             
  nop                      #  4     0x2c64a  1      OPC=nop             
  nop                      #  5     0x2c64b  1      OPC=nop             
  nop                      #  6     0x2c64c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2c64d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2c650  3      OPC=jmpq_r64        
  nop                      #  9     0x2c653  1      OPC=nop             
  nop                      #  10    0x2c654  1      OPC=nop             
  nop                      #  11    0x2c655  1      OPC=nop             
  nop                      #  12    0x2c656  1      OPC=nop             
  nop                      #  13    0x2c657  1      OPC=nop             
  nop                      #  14    0x2c658  1      OPC=nop             
  nop                      #  15    0x2c659  1      OPC=nop             
  nop                      #  16    0x2c65a  1      OPC=nop             
  nop                      #  17    0x2c65b  1      OPC=nop             
  nop                      #  18    0x2c65c  1      OPC=nop             
  nop                      #  19    0x2c65d  1      OPC=nop             
  nop                      #  20    0x2c65e  1      OPC=nop             
  nop                      #  21    0x2c65f  1      OPC=nop             
  nop                      #  22    0x2c660  1      OPC=nop             
  nop                      #  23    0x2c661  1      OPC=nop             
  nop                      #  24    0x2c662  1      OPC=nop             
  nop                      #  25    0x2c663  1      OPC=nop             
  nop                      #  26    0x2c664  1      OPC=nop             
  nop                      #  27    0x2c665  1      OPC=nop             
  nop                      #  28    0x2c666  1      OPC=nop             
                                                                        
.size Instance_DidChangeView, .-Instance_DidChangeView

