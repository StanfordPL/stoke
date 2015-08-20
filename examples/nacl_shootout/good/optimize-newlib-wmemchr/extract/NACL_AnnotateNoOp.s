  .text
  .globl NACL_AnnotateNoOp
  .type NACL_AnnotateNoOp, @function

#! file-offset 0x70060
#! rip-offset  0x30060
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateNoOp:        #        0x30060  0      OPC=<label>         
  popq %r11                #  1     0x30060  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x30062  7      OPC=andl_r32_imm32  
  nop                      #  3     0x30069  1      OPC=nop             
  nop                      #  4     0x3006a  1      OPC=nop             
  nop                      #  5     0x3006b  1      OPC=nop             
  nop                      #  6     0x3006c  1      OPC=nop             
  addq %r15, %r11          #  7     0x3006d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x30070  3      OPC=jmpq_r64        
  nop                      #  9     0x30073  1      OPC=nop             
  nop                      #  10    0x30074  1      OPC=nop             
  nop                      #  11    0x30075  1      OPC=nop             
  nop                      #  12    0x30076  1      OPC=nop             
  nop                      #  13    0x30077  1      OPC=nop             
  nop                      #  14    0x30078  1      OPC=nop             
  nop                      #  15    0x30079  1      OPC=nop             
  nop                      #  16    0x3007a  1      OPC=nop             
  nop                      #  17    0x3007b  1      OPC=nop             
  nop                      #  18    0x3007c  1      OPC=nop             
  nop                      #  19    0x3007d  1      OPC=nop             
  nop                      #  20    0x3007e  1      OPC=nop             
  nop                      #  21    0x3007f  1      OPC=nop             
  nop                      #  22    0x30080  1      OPC=nop             
  nop                      #  23    0x30081  1      OPC=nop             
  nop                      #  24    0x30082  1      OPC=nop             
  nop                      #  25    0x30083  1      OPC=nop             
  nop                      #  26    0x30084  1      OPC=nop             
  nop                      #  27    0x30085  1      OPC=nop             
  nop                      #  28    0x30086  1      OPC=nop             
                                                                        
.size NACL_AnnotateNoOp, .-NACL_AnnotateNoOp

