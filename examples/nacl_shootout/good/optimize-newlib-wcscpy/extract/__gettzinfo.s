  .text
  .globl __gettzinfo
  .type __gettzinfo, @function

#! file-offset 0x188aa0
#! rip-offset  0x148aa0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__gettzinfo:              #        0x148aa0  0      OPC=<label>         
  popq %r11                #  1     0x148aa0  2      OPC=popq_r64_1      
  movl $0x10071060, %eax   #  2     0x148aa2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x148aa7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x148aae  1      OPC=nop             
  nop                      #  5     0x148aaf  1      OPC=nop             
  nop                      #  6     0x148ab0  1      OPC=nop             
  nop                      #  7     0x148ab1  1      OPC=nop             
  addq %r15, %r11          #  8     0x148ab2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x148ab5  3      OPC=jmpq_r64        
  nop                      #  10    0x148ab8  1      OPC=nop             
  nop                      #  11    0x148ab9  1      OPC=nop             
  nop                      #  12    0x148aba  1      OPC=nop             
  nop                      #  13    0x148abb  1      OPC=nop             
  nop                      #  14    0x148abc  1      OPC=nop             
  nop                      #  15    0x148abd  1      OPC=nop             
  nop                      #  16    0x148abe  1      OPC=nop             
  nop                      #  17    0x148abf  1      OPC=nop             
  nop                      #  18    0x148ac0  1      OPC=nop             
  nop                      #  19    0x148ac1  1      OPC=nop             
  nop                      #  20    0x148ac2  1      OPC=nop             
  nop                      #  21    0x148ac3  1      OPC=nop             
  nop                      #  22    0x148ac4  1      OPC=nop             
  nop                      #  23    0x148ac5  1      OPC=nop             
  nop                      #  24    0x148ac6  1      OPC=nop             
                                                                         
.size __gettzinfo, .-__gettzinfo

