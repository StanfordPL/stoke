  .text
  .globl stub_close
  .type stub_close, @function

#! file-offset 0x1583e0
#! rip-offset  0x1183e0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_close:               #        0x1183e0  0      OPC=<label>         
  popq %r11                #  1     0x1183e0  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x1183e2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x1183e7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x1183ee  1      OPC=nop             
  nop                      #  5     0x1183ef  1      OPC=nop             
  nop                      #  6     0x1183f0  1      OPC=nop             
  nop                      #  7     0x1183f1  1      OPC=nop             
  addq %r15, %r11          #  8     0x1183f2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x1183f5  3      OPC=jmpq_r64        
  nop                      #  10    0x1183f8  1      OPC=nop             
  nop                      #  11    0x1183f9  1      OPC=nop             
  nop                      #  12    0x1183fa  1      OPC=nop             
  nop                      #  13    0x1183fb  1      OPC=nop             
  nop                      #  14    0x1183fc  1      OPC=nop             
  nop                      #  15    0x1183fd  1      OPC=nop             
  nop                      #  16    0x1183fe  1      OPC=nop             
  nop                      #  17    0x1183ff  1      OPC=nop             
  nop                      #  18    0x118400  1      OPC=nop             
  nop                      #  19    0x118401  1      OPC=nop             
  nop                      #  20    0x118402  1      OPC=nop             
  nop                      #  21    0x118403  1      OPC=nop             
  nop                      #  22    0x118404  1      OPC=nop             
  nop                      #  23    0x118405  1      OPC=nop             
  nop                      #  24    0x118406  1      OPC=nop             
                                                                         
.size stub_close, .-stub_close

