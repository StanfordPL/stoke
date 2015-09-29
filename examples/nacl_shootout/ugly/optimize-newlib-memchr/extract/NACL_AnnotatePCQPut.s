  .text
  .globl NACL_AnnotatePCQPut
  .type NACL_AnnotatePCQPut, @function

#! file-offset 0x70540
#! rip-offset  0x30540
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePCQPut:      #        0x30540  0      OPC=<label>         
  popq %r11                #  1     0x30540  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x30542  7      OPC=andl_r32_imm32  
  nop                      #  3     0x30549  1      OPC=nop             
  nop                      #  4     0x3054a  1      OPC=nop             
  nop                      #  5     0x3054b  1      OPC=nop             
  nop                      #  6     0x3054c  1      OPC=nop             
  addq %r15, %r11          #  7     0x3054d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x30550  3      OPC=jmpq_r64        
  nop                      #  9     0x30553  1      OPC=nop             
  nop                      #  10    0x30554  1      OPC=nop             
  nop                      #  11    0x30555  1      OPC=nop             
  nop                      #  12    0x30556  1      OPC=nop             
  nop                      #  13    0x30557  1      OPC=nop             
  nop                      #  14    0x30558  1      OPC=nop             
  nop                      #  15    0x30559  1      OPC=nop             
  nop                      #  16    0x3055a  1      OPC=nop             
  nop                      #  17    0x3055b  1      OPC=nop             
  nop                      #  18    0x3055c  1      OPC=nop             
  nop                      #  19    0x3055d  1      OPC=nop             
  nop                      #  20    0x3055e  1      OPC=nop             
  nop                      #  21    0x3055f  1      OPC=nop             
  nop                      #  22    0x30560  1      OPC=nop             
  nop                      #  23    0x30561  1      OPC=nop             
  nop                      #  24    0x30562  1      OPC=nop             
  nop                      #  25    0x30563  1      OPC=nop             
  nop                      #  26    0x30564  1      OPC=nop             
  nop                      #  27    0x30565  1      OPC=nop             
  nop                      #  28    0x30566  1      OPC=nop             
                                                                        
.size NACL_AnnotatePCQPut, .-NACL_AnnotatePCQPut

