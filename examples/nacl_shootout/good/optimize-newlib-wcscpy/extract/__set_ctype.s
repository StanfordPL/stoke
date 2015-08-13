  .text
  .globl __set_ctype
  .type __set_ctype, @function

#! file-offset 0x159480
#! rip-offset  0x119480
#! capacity    32 bytes

# Text                               #  Line  RIP       Bytes  Opcode              
.__set_ctype:                        #        0x119480  0      OPC=<label>         
  popq %r11                          #  1     0x119480  2      OPC=popq_r64_1      
  movl $0x10040cdf, 0xff574d4(%rip)  #  2     0x119482  10     OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d            #  3     0x11948c  7      OPC=andl_r32_imm32  
  nop                                #  4     0x119493  1      OPC=nop             
  nop                                #  5     0x119494  1      OPC=nop             
  nop                                #  6     0x119495  1      OPC=nop             
  nop                                #  7     0x119496  1      OPC=nop             
  addq %r15, %r11                    #  8     0x119497  3      OPC=addq_r64_r64    
  jmpq %r11                          #  9     0x11949a  3      OPC=jmpq_r64        
  nop                                #  10    0x11949d  1      OPC=nop             
  nop                                #  11    0x11949e  1      OPC=nop             
  nop                                #  12    0x11949f  1      OPC=nop             
  nop                                #  13    0x1194a0  1      OPC=nop             
  nop                                #  14    0x1194a1  1      OPC=nop             
  nop                                #  15    0x1194a2  1      OPC=nop             
  nop                                #  16    0x1194a3  1      OPC=nop             
  nop                                #  17    0x1194a4  1      OPC=nop             
  nop                                #  18    0x1194a5  1      OPC=nop             
  nop                                #  19    0x1194a6  1      OPC=nop             
                                                                                   
.size __set_ctype, .-__set_ctype

