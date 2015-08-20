  .text
  .globl __set_ctype
  .type __set_ctype, @function

#! file-offset 0x159780
#! rip-offset  0x119780
#! capacity    32 bytes

# Text                               #  Line  RIP       Bytes  Opcode              
.__set_ctype:                        #        0x119780  0      OPC=<label>         
  popq %r11                          #  1     0x119780  2      OPC=popq_r64_1      
  movl $0x10040cdf, 0xff571d4(%rip)  #  2     0x119782  10     OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d            #  3     0x11978c  7      OPC=andl_r32_imm32  
  nop                                #  4     0x119793  1      OPC=nop             
  nop                                #  5     0x119794  1      OPC=nop             
  nop                                #  6     0x119795  1      OPC=nop             
  nop                                #  7     0x119796  1      OPC=nop             
  addq %r15, %r11                    #  8     0x119797  3      OPC=addq_r64_r64    
  jmpq %r11                          #  9     0x11979a  3      OPC=jmpq_r64        
  nop                                #  10    0x11979d  1      OPC=nop             
  nop                                #  11    0x11979e  1      OPC=nop             
  nop                                #  12    0x11979f  1      OPC=nop             
  nop                                #  13    0x1197a0  1      OPC=nop             
  nop                                #  14    0x1197a1  1      OPC=nop             
  nop                                #  15    0x1197a2  1      OPC=nop             
  nop                                #  16    0x1197a3  1      OPC=nop             
  nop                                #  17    0x1197a4  1      OPC=nop             
  nop                                #  18    0x1197a5  1      OPC=nop             
  nop                                #  19    0x1197a6  1      OPC=nop             
                                                                                   
.size __set_ctype, .-__set_ctype

