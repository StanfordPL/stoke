  .text
  .globl __gmp_sqrt_of_negative
  .type __gmp_sqrt_of_negative, @function

#! file-offset 0x784c0
#! rip-offset  0x384c0
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.__gmp_sqrt_of_negative:  #        0x384c0  0      OPC=<label>         
  subl $0x8, %esp         #  1     0x384c0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp         #  2     0x384c3  3      OPC=addq_r64_r64    
  movl $0x4, %edi         #  3     0x384c6  5      OPC=movl_r32_imm32  
  nop                     #  4     0x384cb  1      OPC=nop             
  nop                     #  5     0x384cc  1      OPC=nop             
  nop                     #  6     0x384cd  1      OPC=nop             
  nop                     #  7     0x384ce  1      OPC=nop             
  nop                     #  8     0x384cf  1      OPC=nop             
  nop                     #  9     0x384d0  1      OPC=nop             
  nop                     #  10    0x384d1  1      OPC=nop             
  nop                     #  11    0x384d2  1      OPC=nop             
  nop                     #  12    0x384d3  1      OPC=nop             
  nop                     #  13    0x384d4  1      OPC=nop             
  nop                     #  14    0x384d5  1      OPC=nop             
  nop                     #  15    0x384d6  1      OPC=nop             
  nop                     #  16    0x384d7  1      OPC=nop             
  nop                     #  17    0x384d8  1      OPC=nop             
  nop                     #  18    0x384d9  1      OPC=nop             
  nop                     #  19    0x384da  1      OPC=nop             
  callq .__gmp_exception  #  20    0x384db  5      OPC=callq_label     
                                                                       
.size __gmp_sqrt_of_negative, .-__gmp_sqrt_of_negative

