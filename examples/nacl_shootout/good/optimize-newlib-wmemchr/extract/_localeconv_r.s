  .text
  .globl _localeconv_r
  .type _localeconv_r, @function

#! file-offset 0x1603a0
#! rip-offset  0x1203a0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
._localeconv_r:            #        0x1203a0  0      OPC=<label>         
  popq %r11                #  1     0x1203a0  2      OPC=popq_r64_1      
  movl $0x10070e80, %eax   #  2     0x1203a2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x1203a7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x1203ae  1      OPC=nop             
  nop                      #  5     0x1203af  1      OPC=nop             
  nop                      #  6     0x1203b0  1      OPC=nop             
  nop                      #  7     0x1203b1  1      OPC=nop             
  addq %r15, %r11          #  8     0x1203b2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x1203b5  3      OPC=jmpq_r64        
  nop                      #  10    0x1203b8  1      OPC=nop             
  nop                      #  11    0x1203b9  1      OPC=nop             
  nop                      #  12    0x1203ba  1      OPC=nop             
  nop                      #  13    0x1203bb  1      OPC=nop             
  nop                      #  14    0x1203bc  1      OPC=nop             
  nop                      #  15    0x1203bd  1      OPC=nop             
  nop                      #  16    0x1203be  1      OPC=nop             
  nop                      #  17    0x1203bf  1      OPC=nop             
  nop                      #  18    0x1203c0  1      OPC=nop             
  nop                      #  19    0x1203c1  1      OPC=nop             
  nop                      #  20    0x1203c2  1      OPC=nop             
  nop                      #  21    0x1203c3  1      OPC=nop             
  nop                      #  22    0x1203c4  1      OPC=nop             
  nop                      #  23    0x1203c5  1      OPC=nop             
  nop                      #  24    0x1203c6  1      OPC=nop             
                                                                         
.size _localeconv_r, .-_localeconv_r

