  .text
  .globl pthread_cond_destroy
  .type pthread_cond_destroy, @function

#! file-offset 0x6f720
#! rip-offset  0x2f720
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.pthread_cond_destroy:     #        0x2f720  0      OPC=<label>         
  popq %r11                #  1     0x2f720  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x2f722  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d  #  3     0x2f724  7      OPC=andl_r32_imm32  
  nop                      #  4     0x2f72b  1      OPC=nop             
  nop                      #  5     0x2f72c  1      OPC=nop             
  nop                      #  6     0x2f72d  1      OPC=nop             
  nop                      #  7     0x2f72e  1      OPC=nop             
  addq %r15, %r11          #  8     0x2f72f  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x2f732  3      OPC=jmpq_r64        
  nop                      #  10    0x2f735  1      OPC=nop             
  nop                      #  11    0x2f736  1      OPC=nop             
  nop                      #  12    0x2f737  1      OPC=nop             
  nop                      #  13    0x2f738  1      OPC=nop             
  nop                      #  14    0x2f739  1      OPC=nop             
  nop                      #  15    0x2f73a  1      OPC=nop             
  nop                      #  16    0x2f73b  1      OPC=nop             
  nop                      #  17    0x2f73c  1      OPC=nop             
  nop                      #  18    0x2f73d  1      OPC=nop             
  nop                      #  19    0x2f73e  1      OPC=nop             
  nop                      #  20    0x2f73f  1      OPC=nop             
  nop                      #  21    0x2f740  1      OPC=nop             
  nop                      #  22    0x2f741  1      OPC=nop             
  nop                      #  23    0x2f742  1      OPC=nop             
  nop                      #  24    0x2f743  1      OPC=nop             
  nop                      #  25    0x2f744  1      OPC=nop             
  nop                      #  26    0x2f745  1      OPC=nop             
  nop                      #  27    0x2f746  1      OPC=nop             
                                                                        
.size pthread_cond_destroy, .-pthread_cond_destroy

