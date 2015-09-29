  .text
  .globl PPP_ShutdownModule
  .type PPP_ShutdownModule, @function

#! file-offset 0x6ce40
#! rip-offset  0x2ce40
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.PPP_ShutdownModule:       #        0x2ce40  0      OPC=<label>         
  popq %r11                #  1     0x2ce40  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2ce42  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2ce49  1      OPC=nop             
  nop                      #  4     0x2ce4a  1      OPC=nop             
  nop                      #  5     0x2ce4b  1      OPC=nop             
  nop                      #  6     0x2ce4c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2ce4d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2ce50  3      OPC=jmpq_r64        
  nop                      #  9     0x2ce53  1      OPC=nop             
  nop                      #  10    0x2ce54  1      OPC=nop             
  nop                      #  11    0x2ce55  1      OPC=nop             
  nop                      #  12    0x2ce56  1      OPC=nop             
  nop                      #  13    0x2ce57  1      OPC=nop             
  nop                      #  14    0x2ce58  1      OPC=nop             
  nop                      #  15    0x2ce59  1      OPC=nop             
  nop                      #  16    0x2ce5a  1      OPC=nop             
  nop                      #  17    0x2ce5b  1      OPC=nop             
  nop                      #  18    0x2ce5c  1      OPC=nop             
  nop                      #  19    0x2ce5d  1      OPC=nop             
  nop                      #  20    0x2ce5e  1      OPC=nop             
  nop                      #  21    0x2ce5f  1      OPC=nop             
  nop                      #  22    0x2ce60  1      OPC=nop             
  nop                      #  23    0x2ce61  1      OPC=nop             
  nop                      #  24    0x2ce62  1      OPC=nop             
  nop                      #  25    0x2ce63  1      OPC=nop             
  nop                      #  26    0x2ce64  1      OPC=nop             
  nop                      #  27    0x2ce65  1      OPC=nop             
  nop                      #  28    0x2ce66  1      OPC=nop             
                                                                        
.size PPP_ShutdownModule, .-PPP_ShutdownModule

