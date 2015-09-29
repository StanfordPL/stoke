  .text
  .globl Instance_HandleDocumentLoad
  .type Instance_HandleDocumentLoad, @function

#! file-offset 0x6cda0
#! rip-offset  0x2cda0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.Instance_HandleDocumentLoad:  #        0x2cda0  0      OPC=<label>         
  xorl %eax, %eax              #  1     0x2cda0  2      OPC=xorl_r32_r32    
  popq %r11                    #  2     0x2cda2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  3     0x2cda4  7      OPC=andl_r32_imm32  
  nop                          #  4     0x2cdab  1      OPC=nop             
  nop                          #  5     0x2cdac  1      OPC=nop             
  nop                          #  6     0x2cdad  1      OPC=nop             
  nop                          #  7     0x2cdae  1      OPC=nop             
  addq %r15, %r11              #  8     0x2cdaf  3      OPC=addq_r64_r64    
  jmpq %r11                    #  9     0x2cdb2  3      OPC=jmpq_r64        
  nop                          #  10    0x2cdb5  1      OPC=nop             
  nop                          #  11    0x2cdb6  1      OPC=nop             
  nop                          #  12    0x2cdb7  1      OPC=nop             
  nop                          #  13    0x2cdb8  1      OPC=nop             
  nop                          #  14    0x2cdb9  1      OPC=nop             
  nop                          #  15    0x2cdba  1      OPC=nop             
  nop                          #  16    0x2cdbb  1      OPC=nop             
  nop                          #  17    0x2cdbc  1      OPC=nop             
  nop                          #  18    0x2cdbd  1      OPC=nop             
  nop                          #  19    0x2cdbe  1      OPC=nop             
  nop                          #  20    0x2cdbf  1      OPC=nop             
  nop                          #  21    0x2cdc0  1      OPC=nop             
  nop                          #  22    0x2cdc1  1      OPC=nop             
  nop                          #  23    0x2cdc2  1      OPC=nop             
  nop                          #  24    0x2cdc3  1      OPC=nop             
  nop                          #  25    0x2cdc4  1      OPC=nop             
  nop                          #  26    0x2cdc5  1      OPC=nop             
  nop                          #  27    0x2cdc6  1      OPC=nop             
                                                                            
.size Instance_HandleDocumentLoad, .-Instance_HandleDocumentLoad

