  .text
  .globl NACL_AnnotateNewMemory
  .type NACL_AnnotateNewMemory, @function

#! file-offset 0x6fb60
#! rip-offset  0x2fb60
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateNewMemory:   #        0x2fb60  0      OPC=<label>         
  popq %r11                #  1     0x2fb60  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fb62  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fb69  1      OPC=nop             
  nop                      #  4     0x2fb6a  1      OPC=nop             
  nop                      #  5     0x2fb6b  1      OPC=nop             
  nop                      #  6     0x2fb6c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fb6d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fb70  3      OPC=jmpq_r64        
  nop                      #  9     0x2fb73  1      OPC=nop             
  nop                      #  10    0x2fb74  1      OPC=nop             
  nop                      #  11    0x2fb75  1      OPC=nop             
  nop                      #  12    0x2fb76  1      OPC=nop             
  nop                      #  13    0x2fb77  1      OPC=nop             
  nop                      #  14    0x2fb78  1      OPC=nop             
  nop                      #  15    0x2fb79  1      OPC=nop             
  nop                      #  16    0x2fb7a  1      OPC=nop             
  nop                      #  17    0x2fb7b  1      OPC=nop             
  nop                      #  18    0x2fb7c  1      OPC=nop             
  nop                      #  19    0x2fb7d  1      OPC=nop             
  nop                      #  20    0x2fb7e  1      OPC=nop             
  nop                      #  21    0x2fb7f  1      OPC=nop             
  nop                      #  22    0x2fb80  1      OPC=nop             
  nop                      #  23    0x2fb81  1      OPC=nop             
  nop                      #  24    0x2fb82  1      OPC=nop             
  nop                      #  25    0x2fb83  1      OPC=nop             
  nop                      #  26    0x2fb84  1      OPC=nop             
  nop                      #  27    0x2fb85  1      OPC=nop             
  nop                      #  28    0x2fb86  1      OPC=nop             
                                                                        
.size NACL_AnnotateNewMemory, .-NACL_AnnotateNewMemory

