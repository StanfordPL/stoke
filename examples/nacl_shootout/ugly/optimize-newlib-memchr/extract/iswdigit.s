  .text
  .globl iswdigit
  .type iswdigit, @function

#! file-offset 0x15f1e0
#! rip-offset  0x11f1e0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswdigit:                 #        0x11f1e0  0      OPC=<label>         
  popq %r11                #  1     0x11f1e0  2      OPC=popq_r64_1      
  subl $0x30, %edi         #  2     0x11f1e2  3      OPC=subl_r32_imm8   
  xorl %eax, %eax          #  3     0x11f1e5  2      OPC=xorl_r32_r32    
  cmpl $0x9, %edi          #  4     0x11f1e7  3      OPC=cmpl_r32_imm8   
  setbe %al                #  5     0x11f1ea  3      OPC=setbe_r8        
  andl $0xffffffe0, %r11d  #  6     0x11f1ed  7      OPC=andl_r32_imm32  
  nop                      #  7     0x11f1f4  1      OPC=nop             
  nop                      #  8     0x11f1f5  1      OPC=nop             
  nop                      #  9     0x11f1f6  1      OPC=nop             
  nop                      #  10    0x11f1f7  1      OPC=nop             
  addq %r15, %r11          #  11    0x11f1f8  3      OPC=addq_r64_r64    
  jmpq %r11                #  12    0x11f1fb  3      OPC=jmpq_r64        
  nop                      #  13    0x11f1fe  1      OPC=nop             
  nop                      #  14    0x11f1ff  1      OPC=nop             
  nop                      #  15    0x11f200  1      OPC=nop             
  nop                      #  16    0x11f201  1      OPC=nop             
  nop                      #  17    0x11f202  1      OPC=nop             
  nop                      #  18    0x11f203  1      OPC=nop             
  nop                      #  19    0x11f204  1      OPC=nop             
  nop                      #  20    0x11f205  1      OPC=nop             
  nop                      #  21    0x11f206  1      OPC=nop             
                                                                         
.size iswdigit, .-iswdigit

