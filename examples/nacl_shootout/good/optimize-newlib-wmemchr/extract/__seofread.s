  .text
  .globl __seofread
  .type __seofread, @function

#! file-offset 0x166500
#! rip-offset  0x126500
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__seofread:               #        0x126500  0      OPC=<label>         
  popq %r11                #  1     0x126500  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x126502  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d  #  3     0x126504  7      OPC=andl_r32_imm32  
  nop                      #  4     0x12650b  1      OPC=nop             
  nop                      #  5     0x12650c  1      OPC=nop             
  nop                      #  6     0x12650d  1      OPC=nop             
  nop                      #  7     0x12650e  1      OPC=nop             
  addq %r15, %r11          #  8     0x12650f  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x126512  3      OPC=jmpq_r64        
  nop                      #  10    0x126515  1      OPC=nop             
  nop                      #  11    0x126516  1      OPC=nop             
  nop                      #  12    0x126517  1      OPC=nop             
  nop                      #  13    0x126518  1      OPC=nop             
  nop                      #  14    0x126519  1      OPC=nop             
  nop                      #  15    0x12651a  1      OPC=nop             
  nop                      #  16    0x12651b  1      OPC=nop             
  nop                      #  17    0x12651c  1      OPC=nop             
  nop                      #  18    0x12651d  1      OPC=nop             
  nop                      #  19    0x12651e  1      OPC=nop             
  nop                      #  20    0x12651f  1      OPC=nop             
  nop                      #  21    0x126520  1      OPC=nop             
  nop                      #  22    0x126521  1      OPC=nop             
  nop                      #  23    0x126522  1      OPC=nop             
  nop                      #  24    0x126523  1      OPC=nop             
  nop                      #  25    0x126524  1      OPC=nop             
  nop                      #  26    0x126525  1      OPC=nop             
  nop                      #  27    0x126526  1      OPC=nop             
                                                                         
.size __seofread, .-__seofread

