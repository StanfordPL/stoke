  .text
  .globl NACL_AnnotateBarrierInit
  .type NACL_AnnotateBarrierInit, @function

#! file-offset 0x6f980
#! rip-offset  0x2f980
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBarrierInit:  #        0x2f980  0      OPC=<label>         
  popq %r11                 #  1     0x2f980  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  2     0x2f982  7      OPC=andl_r32_imm32  
  nop                       #  3     0x2f989  1      OPC=nop             
  nop                       #  4     0x2f98a  1      OPC=nop             
  nop                       #  5     0x2f98b  1      OPC=nop             
  nop                       #  6     0x2f98c  1      OPC=nop             
  addq %r15, %r11           #  7     0x2f98d  3      OPC=addq_r64_r64    
  jmpq %r11                 #  8     0x2f990  3      OPC=jmpq_r64        
  nop                       #  9     0x2f993  1      OPC=nop             
  nop                       #  10    0x2f994  1      OPC=nop             
  nop                       #  11    0x2f995  1      OPC=nop             
  nop                       #  12    0x2f996  1      OPC=nop             
  nop                       #  13    0x2f997  1      OPC=nop             
  nop                       #  14    0x2f998  1      OPC=nop             
  nop                       #  15    0x2f999  1      OPC=nop             
  nop                       #  16    0x2f99a  1      OPC=nop             
  nop                       #  17    0x2f99b  1      OPC=nop             
  nop                       #  18    0x2f99c  1      OPC=nop             
  nop                       #  19    0x2f99d  1      OPC=nop             
  nop                       #  20    0x2f99e  1      OPC=nop             
  nop                       #  21    0x2f99f  1      OPC=nop             
  nop                       #  22    0x2f9a0  1      OPC=nop             
  nop                       #  23    0x2f9a1  1      OPC=nop             
  nop                       #  24    0x2f9a2  1      OPC=nop             
  nop                       #  25    0x2f9a3  1      OPC=nop             
  nop                       #  26    0x2f9a4  1      OPC=nop             
  nop                       #  27    0x2f9a5  1      OPC=nop             
  nop                       #  28    0x2f9a6  1      OPC=nop             
                                                                         
.size NACL_AnnotateBarrierInit, .-NACL_AnnotateBarrierInit

