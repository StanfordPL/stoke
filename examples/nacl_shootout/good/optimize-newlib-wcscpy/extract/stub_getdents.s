  .text
  .globl stub_getdents
  .type stub_getdents, @function

#! file-offset 0x1581c0
#! rip-offset  0x1181c0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_getdents:            #        0x1181c0  0      OPC=<label>         
  popq %r11                #  1     0x1181c0  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x1181c2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x1181c7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x1181ce  1      OPC=nop             
  nop                      #  5     0x1181cf  1      OPC=nop             
  nop                      #  6     0x1181d0  1      OPC=nop             
  nop                      #  7     0x1181d1  1      OPC=nop             
  addq %r15, %r11          #  8     0x1181d2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x1181d5  3      OPC=jmpq_r64        
  nop                      #  10    0x1181d8  1      OPC=nop             
  nop                      #  11    0x1181d9  1      OPC=nop             
  nop                      #  12    0x1181da  1      OPC=nop             
  nop                      #  13    0x1181db  1      OPC=nop             
  nop                      #  14    0x1181dc  1      OPC=nop             
  nop                      #  15    0x1181dd  1      OPC=nop             
  nop                      #  16    0x1181de  1      OPC=nop             
  nop                      #  17    0x1181df  1      OPC=nop             
  nop                      #  18    0x1181e0  1      OPC=nop             
  nop                      #  19    0x1181e1  1      OPC=nop             
  nop                      #  20    0x1181e2  1      OPC=nop             
  nop                      #  21    0x1181e3  1      OPC=nop             
  nop                      #  22    0x1181e4  1      OPC=nop             
  nop                      #  23    0x1181e5  1      OPC=nop             
  nop                      #  24    0x1181e6  1      OPC=nop             
                                                                         
.size stub_getdents, .-stub_getdents

