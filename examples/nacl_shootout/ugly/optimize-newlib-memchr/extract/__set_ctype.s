  .text
  .globl __set_ctype
  .type __set_ctype, @function

#! file-offset 0x159ea0
#! rip-offset  0x119ea0
#! capacity    32 bytes

# Text                               #  Line  RIP       Bytes  Opcode              
.__set_ctype:                        #        0x119ea0  0      OPC=<label>         
  popq %r11                          #  1     0x119ea0  2      OPC=popq_r64_1      
  movl $0x10040cdf, 0xff56ab4(%rip)  #  2     0x119ea2  10     OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d            #  3     0x119eac  7      OPC=andl_r32_imm32  
  nop                                #  4     0x119eb3  1      OPC=nop             
  nop                                #  5     0x119eb4  1      OPC=nop             
  nop                                #  6     0x119eb5  1      OPC=nop             
  nop                                #  7     0x119eb6  1      OPC=nop             
  addq %r15, %r11                    #  8     0x119eb7  3      OPC=addq_r64_r64    
  jmpq %r11                          #  9     0x119eba  3      OPC=jmpq_r64        
  nop                                #  10    0x119ebd  1      OPC=nop             
  nop                                #  11    0x119ebe  1      OPC=nop             
  nop                                #  12    0x119ebf  1      OPC=nop             
  nop                                #  13    0x119ec0  1      OPC=nop             
  nop                                #  14    0x119ec1  1      OPC=nop             
  nop                                #  15    0x119ec2  1      OPC=nop             
  nop                                #  16    0x119ec3  1      OPC=nop             
  nop                                #  17    0x119ec4  1      OPC=nop             
  nop                                #  18    0x119ec5  1      OPC=nop             
  nop                                #  19    0x119ec6  1      OPC=nop             
                                                                                   
.size __set_ctype, .-__set_ctype

