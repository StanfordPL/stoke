  .text
  .globl NACL_AnnotateFlushState
  .type NACL_AnnotateFlushState, @function

#! file-offset 0x70080
#! rip-offset  0x30080
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateFlushState:  #        0x30080  0      OPC=<label>         
  popq %r11                #  1     0x30080  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x30082  7      OPC=andl_r32_imm32  
  nop                      #  3     0x30089  1      OPC=nop             
  nop                      #  4     0x3008a  1      OPC=nop             
  nop                      #  5     0x3008b  1      OPC=nop             
  nop                      #  6     0x3008c  1      OPC=nop             
  addq %r15, %r11          #  7     0x3008d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x30090  3      OPC=jmpq_r64        
  nop                      #  9     0x30093  1      OPC=nop             
  nop                      #  10    0x30094  1      OPC=nop             
  nop                      #  11    0x30095  1      OPC=nop             
  nop                      #  12    0x30096  1      OPC=nop             
  nop                      #  13    0x30097  1      OPC=nop             
  nop                      #  14    0x30098  1      OPC=nop             
  nop                      #  15    0x30099  1      OPC=nop             
  nop                      #  16    0x3009a  1      OPC=nop             
  nop                      #  17    0x3009b  1      OPC=nop             
  nop                      #  18    0x3009c  1      OPC=nop             
  nop                      #  19    0x3009d  1      OPC=nop             
  nop                      #  20    0x3009e  1      OPC=nop             
  nop                      #  21    0x3009f  1      OPC=nop             
  nop                      #  22    0x300a0  1      OPC=nop             
  nop                      #  23    0x300a1  1      OPC=nop             
  nop                      #  24    0x300a2  1      OPC=nop             
  nop                      #  25    0x300a3  1      OPC=nop             
  nop                      #  26    0x300a4  1      OPC=nop             
  nop                      #  27    0x300a5  1      OPC=nop             
  nop                      #  28    0x300a6  1      OPC=nop             
                                                                        
.size NACL_AnnotateFlushState, .-NACL_AnnotateFlushState

