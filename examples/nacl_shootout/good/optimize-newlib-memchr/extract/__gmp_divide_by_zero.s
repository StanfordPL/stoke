  .text
  .globl __gmp_divide_by_zero
  .type __gmp_divide_by_zero, @function

#! file-offset 0x784a0
#! rip-offset  0x384a0
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.__gmp_divide_by_zero:    #        0x384a0  0      OPC=<label>         
  subl $0x8, %esp         #  1     0x384a0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp         #  2     0x384a3  3      OPC=addq_r64_r64    
  movl $0x2, %edi         #  3     0x384a6  5      OPC=movl_r32_imm32  
  nop                     #  4     0x384ab  1      OPC=nop             
  nop                     #  5     0x384ac  1      OPC=nop             
  nop                     #  6     0x384ad  1      OPC=nop             
  nop                     #  7     0x384ae  1      OPC=nop             
  nop                     #  8     0x384af  1      OPC=nop             
  nop                     #  9     0x384b0  1      OPC=nop             
  nop                     #  10    0x384b1  1      OPC=nop             
  nop                     #  11    0x384b2  1      OPC=nop             
  nop                     #  12    0x384b3  1      OPC=nop             
  nop                     #  13    0x384b4  1      OPC=nop             
  nop                     #  14    0x384b5  1      OPC=nop             
  nop                     #  15    0x384b6  1      OPC=nop             
  nop                     #  16    0x384b7  1      OPC=nop             
  nop                     #  17    0x384b8  1      OPC=nop             
  nop                     #  18    0x384b9  1      OPC=nop             
  nop                     #  19    0x384ba  1      OPC=nop             
  callq .__gmp_exception  #  20    0x384bb  5      OPC=callq_label     
                                                                       
.size __gmp_divide_by_zero, .-__gmp_divide_by_zero

