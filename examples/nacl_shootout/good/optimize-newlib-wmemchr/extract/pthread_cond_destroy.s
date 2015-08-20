  .text
  .globl pthread_cond_destroy
  .type pthread_cond_destroy, @function

#! file-offset 0x6fa20
#! rip-offset  0x2fa20
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.pthread_cond_destroy:     #        0x2fa20  0      OPC=<label>         
  popq %r11                #  1     0x2fa20  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x2fa22  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d  #  3     0x2fa24  7      OPC=andl_r32_imm32  
  nop                      #  4     0x2fa2b  1      OPC=nop             
  nop                      #  5     0x2fa2c  1      OPC=nop             
  nop                      #  6     0x2fa2d  1      OPC=nop             
  nop                      #  7     0x2fa2e  1      OPC=nop             
  addq %r15, %r11          #  8     0x2fa2f  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x2fa32  3      OPC=jmpq_r64        
  nop                      #  10    0x2fa35  1      OPC=nop             
  nop                      #  11    0x2fa36  1      OPC=nop             
  nop                      #  12    0x2fa37  1      OPC=nop             
  nop                      #  13    0x2fa38  1      OPC=nop             
  nop                      #  14    0x2fa39  1      OPC=nop             
  nop                      #  15    0x2fa3a  1      OPC=nop             
  nop                      #  16    0x2fa3b  1      OPC=nop             
  nop                      #  17    0x2fa3c  1      OPC=nop             
  nop                      #  18    0x2fa3d  1      OPC=nop             
  nop                      #  19    0x2fa3e  1      OPC=nop             
  nop                      #  20    0x2fa3f  1      OPC=nop             
  nop                      #  21    0x2fa40  1      OPC=nop             
  nop                      #  22    0x2fa41  1      OPC=nop             
  nop                      #  23    0x2fa42  1      OPC=nop             
  nop                      #  24    0x2fa43  1      OPC=nop             
  nop                      #  25    0x2fa44  1      OPC=nop             
  nop                      #  26    0x2fa45  1      OPC=nop             
  nop                      #  27    0x2fa46  1      OPC=nop             
                                                                        
.size pthread_cond_destroy, .-pthread_cond_destroy

