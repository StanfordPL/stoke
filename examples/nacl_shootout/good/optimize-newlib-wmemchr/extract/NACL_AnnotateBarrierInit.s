  .text
  .globl NACL_AnnotateBarrierInit
  .type NACL_AnnotateBarrierInit, @function

#! file-offset 0x6fc80
#! rip-offset  0x2fc80
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBarrierInit:  #        0x2fc80  0      OPC=<label>         
  popq %r11                 #  1     0x2fc80  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  2     0x2fc82  7      OPC=andl_r32_imm32  
  nop                       #  3     0x2fc89  1      OPC=nop             
  nop                       #  4     0x2fc8a  1      OPC=nop             
  nop                       #  5     0x2fc8b  1      OPC=nop             
  nop                       #  6     0x2fc8c  1      OPC=nop             
  addq %r15, %r11           #  7     0x2fc8d  3      OPC=addq_r64_r64    
  jmpq %r11                 #  8     0x2fc90  3      OPC=jmpq_r64        
  nop                       #  9     0x2fc93  1      OPC=nop             
  nop                       #  10    0x2fc94  1      OPC=nop             
  nop                       #  11    0x2fc95  1      OPC=nop             
  nop                       #  12    0x2fc96  1      OPC=nop             
  nop                       #  13    0x2fc97  1      OPC=nop             
  nop                       #  14    0x2fc98  1      OPC=nop             
  nop                       #  15    0x2fc99  1      OPC=nop             
  nop                       #  16    0x2fc9a  1      OPC=nop             
  nop                       #  17    0x2fc9b  1      OPC=nop             
  nop                       #  18    0x2fc9c  1      OPC=nop             
  nop                       #  19    0x2fc9d  1      OPC=nop             
  nop                       #  20    0x2fc9e  1      OPC=nop             
  nop                       #  21    0x2fc9f  1      OPC=nop             
  nop                       #  22    0x2fca0  1      OPC=nop             
  nop                       #  23    0x2fca1  1      OPC=nop             
  nop                       #  24    0x2fca2  1      OPC=nop             
  nop                       #  25    0x2fca3  1      OPC=nop             
  nop                       #  26    0x2fca4  1      OPC=nop             
  nop                       #  27    0x2fca5  1      OPC=nop             
  nop                       #  28    0x2fca6  1      OPC=nop             
                                                                         
.size NACL_AnnotateBarrierInit, .-NACL_AnnotateBarrierInit

