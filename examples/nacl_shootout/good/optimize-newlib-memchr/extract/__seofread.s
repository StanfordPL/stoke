  .text
  .globl __seofread
  .type __seofread, @function

#! file-offset 0x166c20
#! rip-offset  0x126c20
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__seofread:               #        0x126c20  0      OPC=<label>         
  popq %r11                #  1     0x126c20  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x126c22  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d  #  3     0x126c24  7      OPC=andl_r32_imm32  
  nop                      #  4     0x126c2b  1      OPC=nop             
  nop                      #  5     0x126c2c  1      OPC=nop             
  nop                      #  6     0x126c2d  1      OPC=nop             
  nop                      #  7     0x126c2e  1      OPC=nop             
  addq %r15, %r11          #  8     0x126c2f  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x126c32  3      OPC=jmpq_r64        
  nop                      #  10    0x126c35  1      OPC=nop             
  nop                      #  11    0x126c36  1      OPC=nop             
  nop                      #  12    0x126c37  1      OPC=nop             
  nop                      #  13    0x126c38  1      OPC=nop             
  nop                      #  14    0x126c39  1      OPC=nop             
  nop                      #  15    0x126c3a  1      OPC=nop             
  nop                      #  16    0x126c3b  1      OPC=nop             
  nop                      #  17    0x126c3c  1      OPC=nop             
  nop                      #  18    0x126c3d  1      OPC=nop             
  nop                      #  19    0x126c3e  1      OPC=nop             
  nop                      #  20    0x126c3f  1      OPC=nop             
  nop                      #  21    0x126c40  1      OPC=nop             
  nop                      #  22    0x126c41  1      OPC=nop             
  nop                      #  23    0x126c42  1      OPC=nop             
  nop                      #  24    0x126c43  1      OPC=nop             
  nop                      #  25    0x126c44  1      OPC=nop             
  nop                      #  26    0x126c45  1      OPC=nop             
  nop                      #  27    0x126c46  1      OPC=nop             
                                                                         
.size __seofread, .-__seofread

