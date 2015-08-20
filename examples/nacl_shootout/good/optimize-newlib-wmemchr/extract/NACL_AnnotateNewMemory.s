  .text
  .globl NACL_AnnotateNewMemory
  .type NACL_AnnotateNewMemory, @function

#! file-offset 0x6fe60
#! rip-offset  0x2fe60
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateNewMemory:   #        0x2fe60  0      OPC=<label>         
  popq %r11                #  1     0x2fe60  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fe62  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fe69  1      OPC=nop             
  nop                      #  4     0x2fe6a  1      OPC=nop             
  nop                      #  5     0x2fe6b  1      OPC=nop             
  nop                      #  6     0x2fe6c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fe6d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fe70  3      OPC=jmpq_r64        
  nop                      #  9     0x2fe73  1      OPC=nop             
  nop                      #  10    0x2fe74  1      OPC=nop             
  nop                      #  11    0x2fe75  1      OPC=nop             
  nop                      #  12    0x2fe76  1      OPC=nop             
  nop                      #  13    0x2fe77  1      OPC=nop             
  nop                      #  14    0x2fe78  1      OPC=nop             
  nop                      #  15    0x2fe79  1      OPC=nop             
  nop                      #  16    0x2fe7a  1      OPC=nop             
  nop                      #  17    0x2fe7b  1      OPC=nop             
  nop                      #  18    0x2fe7c  1      OPC=nop             
  nop                      #  19    0x2fe7d  1      OPC=nop             
  nop                      #  20    0x2fe7e  1      OPC=nop             
  nop                      #  21    0x2fe7f  1      OPC=nop             
  nop                      #  22    0x2fe80  1      OPC=nop             
  nop                      #  23    0x2fe81  1      OPC=nop             
  nop                      #  24    0x2fe82  1      OPC=nop             
  nop                      #  25    0x2fe83  1      OPC=nop             
  nop                      #  26    0x2fe84  1      OPC=nop             
  nop                      #  27    0x2fe85  1      OPC=nop             
  nop                      #  28    0x2fe86  1      OPC=nop             
                                                                        
.size NACL_AnnotateNewMemory, .-NACL_AnnotateNewMemory

