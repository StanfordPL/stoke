  .text
  .globl stub_fstat
  .type stub_fstat, @function

#! file-offset 0x1584a0
#! rip-offset  0x1184a0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_fstat:               #        0x1184a0  0      OPC=<label>         
  popq %r11                #  1     0x1184a0  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x1184a2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x1184a7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x1184ae  1      OPC=nop             
  nop                      #  5     0x1184af  1      OPC=nop             
  nop                      #  6     0x1184b0  1      OPC=nop             
  nop                      #  7     0x1184b1  1      OPC=nop             
  addq %r15, %r11          #  8     0x1184b2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x1184b5  3      OPC=jmpq_r64        
  nop                      #  10    0x1184b8  1      OPC=nop             
  nop                      #  11    0x1184b9  1      OPC=nop             
  nop                      #  12    0x1184ba  1      OPC=nop             
  nop                      #  13    0x1184bb  1      OPC=nop             
  nop                      #  14    0x1184bc  1      OPC=nop             
  nop                      #  15    0x1184bd  1      OPC=nop             
  nop                      #  16    0x1184be  1      OPC=nop             
  nop                      #  17    0x1184bf  1      OPC=nop             
  nop                      #  18    0x1184c0  1      OPC=nop             
  nop                      #  19    0x1184c1  1      OPC=nop             
  nop                      #  20    0x1184c2  1      OPC=nop             
  nop                      #  21    0x1184c3  1      OPC=nop             
  nop                      #  22    0x1184c4  1      OPC=nop             
  nop                      #  23    0x1184c5  1      OPC=nop             
  nop                      #  24    0x1184c6  1      OPC=nop             
                                                                         
.size stub_fstat, .-stub_fstat

