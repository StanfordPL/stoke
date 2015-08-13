  .text
  .globl iswdigit
  .type iswdigit, @function

#! file-offset 0x15e7c0
#! rip-offset  0x11e7c0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswdigit:                 #        0x11e7c0  0      OPC=<label>         
  popq %r11                #  1     0x11e7c0  2      OPC=popq_r64_1      
  subl $0x30, %edi         #  2     0x11e7c2  3      OPC=subl_r32_imm8   
  xorl %eax, %eax          #  3     0x11e7c5  2      OPC=xorl_r32_r32    
  cmpl $0x9, %edi          #  4     0x11e7c7  3      OPC=cmpl_r32_imm8   
  setbe %al                #  5     0x11e7ca  3      OPC=setbe_r8        
  andl $0xffffffe0, %r11d  #  6     0x11e7cd  7      OPC=andl_r32_imm32  
  nop                      #  7     0x11e7d4  1      OPC=nop             
  nop                      #  8     0x11e7d5  1      OPC=nop             
  nop                      #  9     0x11e7d6  1      OPC=nop             
  nop                      #  10    0x11e7d7  1      OPC=nop             
  addq %r15, %r11          #  11    0x11e7d8  3      OPC=addq_r64_r64    
  jmpq %r11                #  12    0x11e7db  3      OPC=jmpq_r64        
  nop                      #  13    0x11e7de  1      OPC=nop             
  nop                      #  14    0x11e7df  1      OPC=nop             
  nop                      #  15    0x11e7e0  1      OPC=nop             
  nop                      #  16    0x11e7e1  1      OPC=nop             
  nop                      #  17    0x11e7e2  1      OPC=nop             
  nop                      #  18    0x11e7e3  1      OPC=nop             
  nop                      #  19    0x11e7e4  1      OPC=nop             
  nop                      #  20    0x11e7e5  1      OPC=nop             
  nop                      #  21    0x11e7e6  1      OPC=nop             
                                                                         
.size iswdigit, .-iswdigit

