  .text
  .globl NACL_AnnotatePCQGet
  .type NACL_AnnotatePCQGet, @function

#! file-offset 0x6fb40
#! rip-offset  0x2fb40
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePCQGet:      #        0x2fb40  0      OPC=<label>         
  popq %r11                #  1     0x2fb40  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fb42  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fb49  1      OPC=nop             
  nop                      #  4     0x2fb4a  1      OPC=nop             
  nop                      #  5     0x2fb4b  1      OPC=nop             
  nop                      #  6     0x2fb4c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fb4d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fb50  3      OPC=jmpq_r64        
  nop                      #  9     0x2fb53  1      OPC=nop             
  nop                      #  10    0x2fb54  1      OPC=nop             
  nop                      #  11    0x2fb55  1      OPC=nop             
  nop                      #  12    0x2fb56  1      OPC=nop             
  nop                      #  13    0x2fb57  1      OPC=nop             
  nop                      #  14    0x2fb58  1      OPC=nop             
  nop                      #  15    0x2fb59  1      OPC=nop             
  nop                      #  16    0x2fb5a  1      OPC=nop             
  nop                      #  17    0x2fb5b  1      OPC=nop             
  nop                      #  18    0x2fb5c  1      OPC=nop             
  nop                      #  19    0x2fb5d  1      OPC=nop             
  nop                      #  20    0x2fb5e  1      OPC=nop             
  nop                      #  21    0x2fb5f  1      OPC=nop             
  nop                      #  22    0x2fb60  1      OPC=nop             
  nop                      #  23    0x2fb61  1      OPC=nop             
  nop                      #  24    0x2fb62  1      OPC=nop             
  nop                      #  25    0x2fb63  1      OPC=nop             
  nop                      #  26    0x2fb64  1      OPC=nop             
  nop                      #  27    0x2fb65  1      OPC=nop             
  nop                      #  28    0x2fb66  1      OPC=nop             
                                                                        
.size NACL_AnnotatePCQGet, .-NACL_AnnotatePCQGet

