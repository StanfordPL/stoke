  .text
  .globl stub_write
  .type stub_write, @function

#! file-offset 0x158160
#! rip-offset  0x118160
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_write:               #        0x118160  0      OPC=<label>         
  popq %r11                #  1     0x118160  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118162  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118167  7      OPC=andl_r32_imm32  
  nop                      #  4     0x11816e  1      OPC=nop             
  nop                      #  5     0x11816f  1      OPC=nop             
  nop                      #  6     0x118170  1      OPC=nop             
  nop                      #  7     0x118171  1      OPC=nop             
  addq %r15, %r11          #  8     0x118172  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118175  3      OPC=jmpq_r64        
  nop                      #  10    0x118178  1      OPC=nop             
  nop                      #  11    0x118179  1      OPC=nop             
  nop                      #  12    0x11817a  1      OPC=nop             
  nop                      #  13    0x11817b  1      OPC=nop             
  nop                      #  14    0x11817c  1      OPC=nop             
  nop                      #  15    0x11817d  1      OPC=nop             
  nop                      #  16    0x11817e  1      OPC=nop             
  nop                      #  17    0x11817f  1      OPC=nop             
  nop                      #  18    0x118180  1      OPC=nop             
  nop                      #  19    0x118181  1      OPC=nop             
  nop                      #  20    0x118182  1      OPC=nop             
  nop                      #  21    0x118183  1      OPC=nop             
  nop                      #  22    0x118184  1      OPC=nop             
  nop                      #  23    0x118185  1      OPC=nop             
  nop                      #  24    0x118186  1      OPC=nop             
                                                                         
.size stub_write, .-stub_write

