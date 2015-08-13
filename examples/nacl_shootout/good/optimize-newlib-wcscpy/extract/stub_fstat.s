  .text
  .globl stub_fstat
  .type stub_fstat, @function

#! file-offset 0x1581a0
#! rip-offset  0x1181a0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_fstat:               #        0x1181a0  0      OPC=<label>         
  popq %r11                #  1     0x1181a0  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x1181a2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x1181a7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x1181ae  1      OPC=nop             
  nop                      #  5     0x1181af  1      OPC=nop             
  nop                      #  6     0x1181b0  1      OPC=nop             
  nop                      #  7     0x1181b1  1      OPC=nop             
  addq %r15, %r11          #  8     0x1181b2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x1181b5  3      OPC=jmpq_r64        
  nop                      #  10    0x1181b8  1      OPC=nop             
  nop                      #  11    0x1181b9  1      OPC=nop             
  nop                      #  12    0x1181ba  1      OPC=nop             
  nop                      #  13    0x1181bb  1      OPC=nop             
  nop                      #  14    0x1181bc  1      OPC=nop             
  nop                      #  15    0x1181bd  1      OPC=nop             
  nop                      #  16    0x1181be  1      OPC=nop             
  nop                      #  17    0x1181bf  1      OPC=nop             
  nop                      #  18    0x1181c0  1      OPC=nop             
  nop                      #  19    0x1181c1  1      OPC=nop             
  nop                      #  20    0x1181c2  1      OPC=nop             
  nop                      #  21    0x1181c3  1      OPC=nop             
  nop                      #  22    0x1181c4  1      OPC=nop             
  nop                      #  23    0x1181c5  1      OPC=nop             
  nop                      #  24    0x1181c6  1      OPC=nop             
                                                                         
.size stub_fstat, .-stub_fstat

