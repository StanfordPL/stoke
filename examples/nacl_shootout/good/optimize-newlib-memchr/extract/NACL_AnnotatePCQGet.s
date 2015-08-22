  .text
  .globl NACL_AnnotatePCQGet
  .type NACL_AnnotatePCQGet, @function

#! file-offset 0x70560
#! rip-offset  0x30560
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePCQGet:      #        0x30560  0      OPC=<label>         
  popq %r11                #  1     0x30560  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x30562  7      OPC=andl_r32_imm32  
  nop                      #  3     0x30569  1      OPC=nop             
  nop                      #  4     0x3056a  1      OPC=nop             
  nop                      #  5     0x3056b  1      OPC=nop             
  nop                      #  6     0x3056c  1      OPC=nop             
  addq %r15, %r11          #  7     0x3056d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x30570  3      OPC=jmpq_r64        
  nop                      #  9     0x30573  1      OPC=nop             
  nop                      #  10    0x30574  1      OPC=nop             
  nop                      #  11    0x30575  1      OPC=nop             
  nop                      #  12    0x30576  1      OPC=nop             
  nop                      #  13    0x30577  1      OPC=nop             
  nop                      #  14    0x30578  1      OPC=nop             
  nop                      #  15    0x30579  1      OPC=nop             
  nop                      #  16    0x3057a  1      OPC=nop             
  nop                      #  17    0x3057b  1      OPC=nop             
  nop                      #  18    0x3057c  1      OPC=nop             
  nop                      #  19    0x3057d  1      OPC=nop             
  nop                      #  20    0x3057e  1      OPC=nop             
  nop                      #  21    0x3057f  1      OPC=nop             
  nop                      #  22    0x30580  1      OPC=nop             
  nop                      #  23    0x30581  1      OPC=nop             
  nop                      #  24    0x30582  1      OPC=nop             
  nop                      #  25    0x30583  1      OPC=nop             
  nop                      #  26    0x30584  1      OPC=nop             
  nop                      #  27    0x30585  1      OPC=nop             
  nop                      #  28    0x30586  1      OPC=nop             
                                                                        
.size NACL_AnnotatePCQGet, .-NACL_AnnotatePCQGet

