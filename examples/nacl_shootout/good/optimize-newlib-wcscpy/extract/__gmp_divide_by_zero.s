  .text
  .globl __gmp_divide_by_zero
  .type __gmp_divide_by_zero, @function

#! file-offset 0x77a80
#! rip-offset  0x37a80
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.__gmp_divide_by_zero:    #        0x37a80  0      OPC=<label>         
  subl $0x8, %esp         #  1     0x37a80  3      OPC=subl_r32_imm8   
  addq %r15, %rsp         #  2     0x37a83  3      OPC=addq_r64_r64    
  movl $0x2, %edi         #  3     0x37a86  5      OPC=movl_r32_imm32  
  nop                     #  4     0x37a8b  1      OPC=nop             
  nop                     #  5     0x37a8c  1      OPC=nop             
  nop                     #  6     0x37a8d  1      OPC=nop             
  nop                     #  7     0x37a8e  1      OPC=nop             
  nop                     #  8     0x37a8f  1      OPC=nop             
  nop                     #  9     0x37a90  1      OPC=nop             
  nop                     #  10    0x37a91  1      OPC=nop             
  nop                     #  11    0x37a92  1      OPC=nop             
  nop                     #  12    0x37a93  1      OPC=nop             
  nop                     #  13    0x37a94  1      OPC=nop             
  nop                     #  14    0x37a95  1      OPC=nop             
  nop                     #  15    0x37a96  1      OPC=nop             
  nop                     #  16    0x37a97  1      OPC=nop             
  nop                     #  17    0x37a98  1      OPC=nop             
  nop                     #  18    0x37a99  1      OPC=nop             
  nop                     #  19    0x37a9a  1      OPC=nop             
  callq .__gmp_exception  #  20    0x37a9b  5      OPC=callq_label     
                                                                       
.size __gmp_divide_by_zero, .-__gmp_divide_by_zero

