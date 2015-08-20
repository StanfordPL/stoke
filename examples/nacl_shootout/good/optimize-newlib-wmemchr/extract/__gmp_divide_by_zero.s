  .text
  .globl __gmp_divide_by_zero
  .type __gmp_divide_by_zero, @function

#! file-offset 0x77d80
#! rip-offset  0x37d80
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.__gmp_divide_by_zero:    #        0x37d80  0      OPC=<label>         
  subl $0x8, %esp         #  1     0x37d80  3      OPC=subl_r32_imm8   
  addq %r15, %rsp         #  2     0x37d83  3      OPC=addq_r64_r64    
  movl $0x2, %edi         #  3     0x37d86  5      OPC=movl_r32_imm32  
  nop                     #  4     0x37d8b  1      OPC=nop             
  nop                     #  5     0x37d8c  1      OPC=nop             
  nop                     #  6     0x37d8d  1      OPC=nop             
  nop                     #  7     0x37d8e  1      OPC=nop             
  nop                     #  8     0x37d8f  1      OPC=nop             
  nop                     #  9     0x37d90  1      OPC=nop             
  nop                     #  10    0x37d91  1      OPC=nop             
  nop                     #  11    0x37d92  1      OPC=nop             
  nop                     #  12    0x37d93  1      OPC=nop             
  nop                     #  13    0x37d94  1      OPC=nop             
  nop                     #  14    0x37d95  1      OPC=nop             
  nop                     #  15    0x37d96  1      OPC=nop             
  nop                     #  16    0x37d97  1      OPC=nop             
  nop                     #  17    0x37d98  1      OPC=nop             
  nop                     #  18    0x37d99  1      OPC=nop             
  nop                     #  19    0x37d9a  1      OPC=nop             
  callq .__gmp_exception  #  20    0x37d9b  5      OPC=callq_label     
                                                                       
.size __gmp_divide_by_zero, .-__gmp_divide_by_zero

