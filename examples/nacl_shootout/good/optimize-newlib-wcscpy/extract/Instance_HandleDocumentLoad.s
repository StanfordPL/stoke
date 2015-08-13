  .text
  .globl Instance_HandleDocumentLoad
  .type Instance_HandleDocumentLoad, @function

#! file-offset 0x6c380
#! rip-offset  0x2c380
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.Instance_HandleDocumentLoad:  #        0x2c380  0      OPC=<label>         
  xorl %eax, %eax              #  1     0x2c380  2      OPC=xorl_r32_r32    
  popq %r11                    #  2     0x2c382  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  3     0x2c384  7      OPC=andl_r32_imm32  
  nop                          #  4     0x2c38b  1      OPC=nop             
  nop                          #  5     0x2c38c  1      OPC=nop             
  nop                          #  6     0x2c38d  1      OPC=nop             
  nop                          #  7     0x2c38e  1      OPC=nop             
  addq %r15, %r11              #  8     0x2c38f  3      OPC=addq_r64_r64    
  jmpq %r11                    #  9     0x2c392  3      OPC=jmpq_r64        
  nop                          #  10    0x2c395  1      OPC=nop             
  nop                          #  11    0x2c396  1      OPC=nop             
  nop                          #  12    0x2c397  1      OPC=nop             
  nop                          #  13    0x2c398  1      OPC=nop             
  nop                          #  14    0x2c399  1      OPC=nop             
  nop                          #  15    0x2c39a  1      OPC=nop             
  nop                          #  16    0x2c39b  1      OPC=nop             
  nop                          #  17    0x2c39c  1      OPC=nop             
  nop                          #  18    0x2c39d  1      OPC=nop             
  nop                          #  19    0x2c39e  1      OPC=nop             
  nop                          #  20    0x2c39f  1      OPC=nop             
  nop                          #  21    0x2c3a0  1      OPC=nop             
  nop                          #  22    0x2c3a1  1      OPC=nop             
  nop                          #  23    0x2c3a2  1      OPC=nop             
  nop                          #  24    0x2c3a3  1      OPC=nop             
  nop                          #  25    0x2c3a4  1      OPC=nop             
  nop                          #  26    0x2c3a5  1      OPC=nop             
  nop                          #  27    0x2c3a6  1      OPC=nop             
                                                                            
.size Instance_HandleDocumentLoad, .-Instance_HandleDocumentLoad

