  .text
  .globl pthread_mutexattr_destroy
  .type pthread_mutexattr_destroy, @function

#! file-offset 0x6d3e0
#! rip-offset  0x2d3e0
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.pthread_mutexattr_destroy:  #        0x2d3e0  0      OPC=<label>         
  popq %r11                  #  1     0x2d3e0  2      OPC=popq_r64_1      
  xorl %eax, %eax            #  2     0x2d3e2  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d    #  3     0x2d3e4  7      OPC=andl_r32_imm32  
  nop                        #  4     0x2d3eb  1      OPC=nop             
  nop                        #  5     0x2d3ec  1      OPC=nop             
  nop                        #  6     0x2d3ed  1      OPC=nop             
  nop                        #  7     0x2d3ee  1      OPC=nop             
  addq %r15, %r11            #  8     0x2d3ef  3      OPC=addq_r64_r64    
  jmpq %r11                  #  9     0x2d3f2  3      OPC=jmpq_r64        
  nop                        #  10    0x2d3f5  1      OPC=nop             
  nop                        #  11    0x2d3f6  1      OPC=nop             
  nop                        #  12    0x2d3f7  1      OPC=nop             
  nop                        #  13    0x2d3f8  1      OPC=nop             
  nop                        #  14    0x2d3f9  1      OPC=nop             
  nop                        #  15    0x2d3fa  1      OPC=nop             
  nop                        #  16    0x2d3fb  1      OPC=nop             
  nop                        #  17    0x2d3fc  1      OPC=nop             
  nop                        #  18    0x2d3fd  1      OPC=nop             
  nop                        #  19    0x2d3fe  1      OPC=nop             
  nop                        #  20    0x2d3ff  1      OPC=nop             
  nop                        #  21    0x2d400  1      OPC=nop             
  nop                        #  22    0x2d401  1      OPC=nop             
  nop                        #  23    0x2d402  1      OPC=nop             
  nop                        #  24    0x2d403  1      OPC=nop             
  nop                        #  25    0x2d404  1      OPC=nop             
  nop                        #  26    0x2d405  1      OPC=nop             
  nop                        #  27    0x2d406  1      OPC=nop             
                                                                          
.size pthread_mutexattr_destroy, .-pthread_mutexattr_destroy

