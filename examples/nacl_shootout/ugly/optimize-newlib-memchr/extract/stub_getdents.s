  .text
  .globl stub_getdents
  .type stub_getdents, @function

#! file-offset 0x158be0
#! rip-offset  0x118be0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_getdents:            #        0x118be0  0      OPC=<label>         
  popq %r11                #  1     0x118be0  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118be2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118be7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x118bee  1      OPC=nop             
  nop                      #  5     0x118bef  1      OPC=nop             
  nop                      #  6     0x118bf0  1      OPC=nop             
  nop                      #  7     0x118bf1  1      OPC=nop             
  addq %r15, %r11          #  8     0x118bf2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118bf5  3      OPC=jmpq_r64        
  nop                      #  10    0x118bf8  1      OPC=nop             
  nop                      #  11    0x118bf9  1      OPC=nop             
  nop                      #  12    0x118bfa  1      OPC=nop             
  nop                      #  13    0x118bfb  1      OPC=nop             
  nop                      #  14    0x118bfc  1      OPC=nop             
  nop                      #  15    0x118bfd  1      OPC=nop             
  nop                      #  16    0x118bfe  1      OPC=nop             
  nop                      #  17    0x118bff  1      OPC=nop             
  nop                      #  18    0x118c00  1      OPC=nop             
  nop                      #  19    0x118c01  1      OPC=nop             
  nop                      #  20    0x118c02  1      OPC=nop             
  nop                      #  21    0x118c03  1      OPC=nop             
  nop                      #  22    0x118c04  1      OPC=nop             
  nop                      #  23    0x118c05  1      OPC=nop             
  nop                      #  24    0x118c06  1      OPC=nop             
                                                                         
.size stub_getdents, .-stub_getdents

