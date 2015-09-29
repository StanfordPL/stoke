  .text
  .globl NACL_AnnotatePCQCreate
  .type NACL_AnnotatePCQCreate, @function

#! file-offset 0x70500
#! rip-offset  0x30500
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePCQCreate:   #        0x30500  0      OPC=<label>         
  popq %r11                #  1     0x30500  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x30502  7      OPC=andl_r32_imm32  
  nop                      #  3     0x30509  1      OPC=nop             
  nop                      #  4     0x3050a  1      OPC=nop             
  nop                      #  5     0x3050b  1      OPC=nop             
  nop                      #  6     0x3050c  1      OPC=nop             
  addq %r15, %r11          #  7     0x3050d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x30510  3      OPC=jmpq_r64        
  nop                      #  9     0x30513  1      OPC=nop             
  nop                      #  10    0x30514  1      OPC=nop             
  nop                      #  11    0x30515  1      OPC=nop             
  nop                      #  12    0x30516  1      OPC=nop             
  nop                      #  13    0x30517  1      OPC=nop             
  nop                      #  14    0x30518  1      OPC=nop             
  nop                      #  15    0x30519  1      OPC=nop             
  nop                      #  16    0x3051a  1      OPC=nop             
  nop                      #  17    0x3051b  1      OPC=nop             
  nop                      #  18    0x3051c  1      OPC=nop             
  nop                      #  19    0x3051d  1      OPC=nop             
  nop                      #  20    0x3051e  1      OPC=nop             
  nop                      #  21    0x3051f  1      OPC=nop             
  nop                      #  22    0x30520  1      OPC=nop             
  nop                      #  23    0x30521  1      OPC=nop             
  nop                      #  24    0x30522  1      OPC=nop             
  nop                      #  25    0x30523  1      OPC=nop             
  nop                      #  26    0x30524  1      OPC=nop             
  nop                      #  27    0x30525  1      OPC=nop             
  nop                      #  28    0x30526  1      OPC=nop             
                                                                        
.size NACL_AnnotatePCQCreate, .-NACL_AnnotatePCQCreate

