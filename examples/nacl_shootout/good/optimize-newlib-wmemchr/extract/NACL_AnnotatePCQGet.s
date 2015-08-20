  .text
  .globl NACL_AnnotatePCQGet
  .type NACL_AnnotatePCQGet, @function

#! file-offset 0x6fe40
#! rip-offset  0x2fe40
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePCQGet:      #        0x2fe40  0      OPC=<label>         
  popq %r11                #  1     0x2fe40  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fe42  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fe49  1      OPC=nop             
  nop                      #  4     0x2fe4a  1      OPC=nop             
  nop                      #  5     0x2fe4b  1      OPC=nop             
  nop                      #  6     0x2fe4c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fe4d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fe50  3      OPC=jmpq_r64        
  nop                      #  9     0x2fe53  1      OPC=nop             
  nop                      #  10    0x2fe54  1      OPC=nop             
  nop                      #  11    0x2fe55  1      OPC=nop             
  nop                      #  12    0x2fe56  1      OPC=nop             
  nop                      #  13    0x2fe57  1      OPC=nop             
  nop                      #  14    0x2fe58  1      OPC=nop             
  nop                      #  15    0x2fe59  1      OPC=nop             
  nop                      #  16    0x2fe5a  1      OPC=nop             
  nop                      #  17    0x2fe5b  1      OPC=nop             
  nop                      #  18    0x2fe5c  1      OPC=nop             
  nop                      #  19    0x2fe5d  1      OPC=nop             
  nop                      #  20    0x2fe5e  1      OPC=nop             
  nop                      #  21    0x2fe5f  1      OPC=nop             
  nop                      #  22    0x2fe60  1      OPC=nop             
  nop                      #  23    0x2fe61  1      OPC=nop             
  nop                      #  24    0x2fe62  1      OPC=nop             
  nop                      #  25    0x2fe63  1      OPC=nop             
  nop                      #  26    0x2fe64  1      OPC=nop             
  nop                      #  27    0x2fe65  1      OPC=nop             
  nop                      #  28    0x2fe66  1      OPC=nop             
                                                                        
.size NACL_AnnotatePCQGet, .-NACL_AnnotatePCQGet

