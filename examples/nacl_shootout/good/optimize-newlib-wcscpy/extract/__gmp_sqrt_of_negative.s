  .text
  .globl __gmp_sqrt_of_negative
  .type __gmp_sqrt_of_negative, @function

#! file-offset 0x77aa0
#! rip-offset  0x37aa0
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.__gmp_sqrt_of_negative:  #        0x37aa0  0      OPC=<label>         
  subl $0x8, %esp         #  1     0x37aa0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp         #  2     0x37aa3  3      OPC=addq_r64_r64    
  movl $0x4, %edi         #  3     0x37aa6  5      OPC=movl_r32_imm32  
  nop                     #  4     0x37aab  1      OPC=nop             
  nop                     #  5     0x37aac  1      OPC=nop             
  nop                     #  6     0x37aad  1      OPC=nop             
  nop                     #  7     0x37aae  1      OPC=nop             
  nop                     #  8     0x37aaf  1      OPC=nop             
  nop                     #  9     0x37ab0  1      OPC=nop             
  nop                     #  10    0x37ab1  1      OPC=nop             
  nop                     #  11    0x37ab2  1      OPC=nop             
  nop                     #  12    0x37ab3  1      OPC=nop             
  nop                     #  13    0x37ab4  1      OPC=nop             
  nop                     #  14    0x37ab5  1      OPC=nop             
  nop                     #  15    0x37ab6  1      OPC=nop             
  nop                     #  16    0x37ab7  1      OPC=nop             
  nop                     #  17    0x37ab8  1      OPC=nop             
  nop                     #  18    0x37ab9  1      OPC=nop             
  nop                     #  19    0x37aba  1      OPC=nop             
  callq .__gmp_exception  #  20    0x37abb  5      OPC=callq_label     
                                                                       
.size __gmp_sqrt_of_negative, .-__gmp_sqrt_of_negative

