  .text
  .globl NACL_AnnotatePCQDestroy
  .type NACL_AnnotatePCQDestroy, @function

#! file-offset 0x6fb00
#! rip-offset  0x2fb00
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePCQDestroy:  #        0x2fb00  0      OPC=<label>         
  popq %r11                #  1     0x2fb00  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fb02  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fb09  1      OPC=nop             
  nop                      #  4     0x2fb0a  1      OPC=nop             
  nop                      #  5     0x2fb0b  1      OPC=nop             
  nop                      #  6     0x2fb0c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fb0d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fb10  3      OPC=jmpq_r64        
  nop                      #  9     0x2fb13  1      OPC=nop             
  nop                      #  10    0x2fb14  1      OPC=nop             
  nop                      #  11    0x2fb15  1      OPC=nop             
  nop                      #  12    0x2fb16  1      OPC=nop             
  nop                      #  13    0x2fb17  1      OPC=nop             
  nop                      #  14    0x2fb18  1      OPC=nop             
  nop                      #  15    0x2fb19  1      OPC=nop             
  nop                      #  16    0x2fb1a  1      OPC=nop             
  nop                      #  17    0x2fb1b  1      OPC=nop             
  nop                      #  18    0x2fb1c  1      OPC=nop             
  nop                      #  19    0x2fb1d  1      OPC=nop             
  nop                      #  20    0x2fb1e  1      OPC=nop             
  nop                      #  21    0x2fb1f  1      OPC=nop             
  nop                      #  22    0x2fb20  1      OPC=nop             
  nop                      #  23    0x2fb21  1      OPC=nop             
  nop                      #  24    0x2fb22  1      OPC=nop             
  nop                      #  25    0x2fb23  1      OPC=nop             
  nop                      #  26    0x2fb24  1      OPC=nop             
  nop                      #  27    0x2fb25  1      OPC=nop             
  nop                      #  28    0x2fb26  1      OPC=nop             
                                                                        
.size NACL_AnnotatePCQDestroy, .-NACL_AnnotatePCQDestroy

