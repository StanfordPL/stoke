  .text
  .globl stub_seek
  .type stub_seek, @function

#! file-offset 0x158ba0
#! rip-offset  0x118ba0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_seek:                #        0x118ba0  0      OPC=<label>         
  popq %r11                #  1     0x118ba0  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118ba2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118ba7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x118bae  1      OPC=nop             
  nop                      #  5     0x118baf  1      OPC=nop             
  nop                      #  6     0x118bb0  1      OPC=nop             
  nop                      #  7     0x118bb1  1      OPC=nop             
  addq %r15, %r11          #  8     0x118bb2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118bb5  3      OPC=jmpq_r64        
  nop                      #  10    0x118bb8  1      OPC=nop             
  nop                      #  11    0x118bb9  1      OPC=nop             
  nop                      #  12    0x118bba  1      OPC=nop             
  nop                      #  13    0x118bbb  1      OPC=nop             
  nop                      #  14    0x118bbc  1      OPC=nop             
  nop                      #  15    0x118bbd  1      OPC=nop             
  nop                      #  16    0x118bbe  1      OPC=nop             
  nop                      #  17    0x118bbf  1      OPC=nop             
  nop                      #  18    0x118bc0  1      OPC=nop             
  nop                      #  19    0x118bc1  1      OPC=nop             
  nop                      #  20    0x118bc2  1      OPC=nop             
  nop                      #  21    0x118bc3  1      OPC=nop             
  nop                      #  22    0x118bc4  1      OPC=nop             
  nop                      #  23    0x118bc5  1      OPC=nop             
  nop                      #  24    0x118bc6  1      OPC=nop             
                                                                         
.size stub_seek, .-stub_seek

