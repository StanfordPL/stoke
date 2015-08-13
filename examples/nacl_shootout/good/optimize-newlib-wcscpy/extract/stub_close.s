  .text
  .globl stub_close
  .type stub_close, @function

#! file-offset 0x1580e0
#! rip-offset  0x1180e0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_close:               #        0x1180e0  0      OPC=<label>         
  popq %r11                #  1     0x1180e0  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x1180e2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x1180e7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x1180ee  1      OPC=nop             
  nop                      #  5     0x1180ef  1      OPC=nop             
  nop                      #  6     0x1180f0  1      OPC=nop             
  nop                      #  7     0x1180f1  1      OPC=nop             
  addq %r15, %r11          #  8     0x1180f2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x1180f5  3      OPC=jmpq_r64        
  nop                      #  10    0x1180f8  1      OPC=nop             
  nop                      #  11    0x1180f9  1      OPC=nop             
  nop                      #  12    0x1180fa  1      OPC=nop             
  nop                      #  13    0x1180fb  1      OPC=nop             
  nop                      #  14    0x1180fc  1      OPC=nop             
  nop                      #  15    0x1180fd  1      OPC=nop             
  nop                      #  16    0x1180fe  1      OPC=nop             
  nop                      #  17    0x1180ff  1      OPC=nop             
  nop                      #  18    0x118100  1      OPC=nop             
  nop                      #  19    0x118101  1      OPC=nop             
  nop                      #  20    0x118102  1      OPC=nop             
  nop                      #  21    0x118103  1      OPC=nop             
  nop                      #  22    0x118104  1      OPC=nop             
  nop                      #  23    0x118105  1      OPC=nop             
  nop                      #  24    0x118106  1      OPC=nop             
                                                                         
.size stub_close, .-stub_close

