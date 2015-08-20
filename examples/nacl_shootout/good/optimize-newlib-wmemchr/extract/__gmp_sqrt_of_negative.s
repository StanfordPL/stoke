  .text
  .globl __gmp_sqrt_of_negative
  .type __gmp_sqrt_of_negative, @function

#! file-offset 0x77da0
#! rip-offset  0x37da0
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.__gmp_sqrt_of_negative:  #        0x37da0  0      OPC=<label>         
  subl $0x8, %esp         #  1     0x37da0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp         #  2     0x37da3  3      OPC=addq_r64_r64    
  movl $0x4, %edi         #  3     0x37da6  5      OPC=movl_r32_imm32  
  nop                     #  4     0x37dab  1      OPC=nop             
  nop                     #  5     0x37dac  1      OPC=nop             
  nop                     #  6     0x37dad  1      OPC=nop             
  nop                     #  7     0x37dae  1      OPC=nop             
  nop                     #  8     0x37daf  1      OPC=nop             
  nop                     #  9     0x37db0  1      OPC=nop             
  nop                     #  10    0x37db1  1      OPC=nop             
  nop                     #  11    0x37db2  1      OPC=nop             
  nop                     #  12    0x37db3  1      OPC=nop             
  nop                     #  13    0x37db4  1      OPC=nop             
  nop                     #  14    0x37db5  1      OPC=nop             
  nop                     #  15    0x37db6  1      OPC=nop             
  nop                     #  16    0x37db7  1      OPC=nop             
  nop                     #  17    0x37db8  1      OPC=nop             
  nop                     #  18    0x37db9  1      OPC=nop             
  nop                     #  19    0x37dba  1      OPC=nop             
  callq .__gmp_exception  #  20    0x37dbb  5      OPC=callq_label     
                                                                       
.size __gmp_sqrt_of_negative, .-__gmp_sqrt_of_negative

