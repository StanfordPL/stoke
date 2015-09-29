  .text
  .globl NACL_AnnotateCondVarSignal
  .type NACL_AnnotateCondVarSignal, @function

#! file-offset 0x70440
#! rip-offset  0x30440
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateCondVarSignal:  #        0x30440  0      OPC=<label>         
  popq %r11                   #  1     0x30440  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  2     0x30442  7      OPC=andl_r32_imm32  
  nop                         #  3     0x30449  1      OPC=nop             
  nop                         #  4     0x3044a  1      OPC=nop             
  nop                         #  5     0x3044b  1      OPC=nop             
  nop                         #  6     0x3044c  1      OPC=nop             
  addq %r15, %r11             #  7     0x3044d  3      OPC=addq_r64_r64    
  jmpq %r11                   #  8     0x30450  3      OPC=jmpq_r64        
  nop                         #  9     0x30453  1      OPC=nop             
  nop                         #  10    0x30454  1      OPC=nop             
  nop                         #  11    0x30455  1      OPC=nop             
  nop                         #  12    0x30456  1      OPC=nop             
  nop                         #  13    0x30457  1      OPC=nop             
  nop                         #  14    0x30458  1      OPC=nop             
  nop                         #  15    0x30459  1      OPC=nop             
  nop                         #  16    0x3045a  1      OPC=nop             
  nop                         #  17    0x3045b  1      OPC=nop             
  nop                         #  18    0x3045c  1      OPC=nop             
  nop                         #  19    0x3045d  1      OPC=nop             
  nop                         #  20    0x3045e  1      OPC=nop             
  nop                         #  21    0x3045f  1      OPC=nop             
  nop                         #  22    0x30460  1      OPC=nop             
  nop                         #  23    0x30461  1      OPC=nop             
  nop                         #  24    0x30462  1      OPC=nop             
  nop                         #  25    0x30463  1      OPC=nop             
  nop                         #  26    0x30464  1      OPC=nop             
  nop                         #  27    0x30465  1      OPC=nop             
  nop                         #  28    0x30466  1      OPC=nop             
                                                                           
.size NACL_AnnotateCondVarSignal, .-NACL_AnnotateCondVarSignal

