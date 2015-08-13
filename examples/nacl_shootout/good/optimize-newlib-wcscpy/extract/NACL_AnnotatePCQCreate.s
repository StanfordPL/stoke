  .text
  .globl NACL_AnnotatePCQCreate
  .type NACL_AnnotatePCQCreate, @function

#! file-offset 0x6fae0
#! rip-offset  0x2fae0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePCQCreate:   #        0x2fae0  0      OPC=<label>         
  popq %r11                #  1     0x2fae0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fae2  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fae9  1      OPC=nop             
  nop                      #  4     0x2faea  1      OPC=nop             
  nop                      #  5     0x2faeb  1      OPC=nop             
  nop                      #  6     0x2faec  1      OPC=nop             
  addq %r15, %r11          #  7     0x2faed  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2faf0  3      OPC=jmpq_r64        
  nop                      #  9     0x2faf3  1      OPC=nop             
  nop                      #  10    0x2faf4  1      OPC=nop             
  nop                      #  11    0x2faf5  1      OPC=nop             
  nop                      #  12    0x2faf6  1      OPC=nop             
  nop                      #  13    0x2faf7  1      OPC=nop             
  nop                      #  14    0x2faf8  1      OPC=nop             
  nop                      #  15    0x2faf9  1      OPC=nop             
  nop                      #  16    0x2fafa  1      OPC=nop             
  nop                      #  17    0x2fafb  1      OPC=nop             
  nop                      #  18    0x2fafc  1      OPC=nop             
  nop                      #  19    0x2fafd  1      OPC=nop             
  nop                      #  20    0x2fafe  1      OPC=nop             
  nop                      #  21    0x2faff  1      OPC=nop             
  nop                      #  22    0x2fb00  1      OPC=nop             
  nop                      #  23    0x2fb01  1      OPC=nop             
  nop                      #  24    0x2fb02  1      OPC=nop             
  nop                      #  25    0x2fb03  1      OPC=nop             
  nop                      #  26    0x2fb04  1      OPC=nop             
  nop                      #  27    0x2fb05  1      OPC=nop             
  nop                      #  28    0x2fb06  1      OPC=nop             
                                                                        
.size NACL_AnnotatePCQCreate, .-NACL_AnnotatePCQCreate

