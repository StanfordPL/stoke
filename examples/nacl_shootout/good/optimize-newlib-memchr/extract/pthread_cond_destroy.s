  .text
  .globl pthread_cond_destroy
  .type pthread_cond_destroy, @function

#! file-offset 0x70140
#! rip-offset  0x30140
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.pthread_cond_destroy:     #        0x30140  0      OPC=<label>         
  popq %r11                #  1     0x30140  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x30142  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d  #  3     0x30144  7      OPC=andl_r32_imm32  
  nop                      #  4     0x3014b  1      OPC=nop             
  nop                      #  5     0x3014c  1      OPC=nop             
  nop                      #  6     0x3014d  1      OPC=nop             
  nop                      #  7     0x3014e  1      OPC=nop             
  addq %r15, %r11          #  8     0x3014f  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x30152  3      OPC=jmpq_r64        
  nop                      #  10    0x30155  1      OPC=nop             
  nop                      #  11    0x30156  1      OPC=nop             
  nop                      #  12    0x30157  1      OPC=nop             
  nop                      #  13    0x30158  1      OPC=nop             
  nop                      #  14    0x30159  1      OPC=nop             
  nop                      #  15    0x3015a  1      OPC=nop             
  nop                      #  16    0x3015b  1      OPC=nop             
  nop                      #  17    0x3015c  1      OPC=nop             
  nop                      #  18    0x3015d  1      OPC=nop             
  nop                      #  19    0x3015e  1      OPC=nop             
  nop                      #  20    0x3015f  1      OPC=nop             
  nop                      #  21    0x30160  1      OPC=nop             
  nop                      #  22    0x30161  1      OPC=nop             
  nop                      #  23    0x30162  1      OPC=nop             
  nop                      #  24    0x30163  1      OPC=nop             
  nop                      #  25    0x30164  1      OPC=nop             
  nop                      #  26    0x30165  1      OPC=nop             
  nop                      #  27    0x30166  1      OPC=nop             
                                                                        
.size pthread_cond_destroy, .-pthread_cond_destroy

