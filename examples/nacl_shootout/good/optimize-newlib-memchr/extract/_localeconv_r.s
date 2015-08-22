  .text
  .globl _localeconv_r
  .type _localeconv_r, @function

#! file-offset 0x160ac0
#! rip-offset  0x120ac0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
._localeconv_r:            #        0x120ac0  0      OPC=<label>         
  popq %r11                #  1     0x120ac0  2      OPC=popq_r64_1      
  movl $0x10070e80, %eax   #  2     0x120ac2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x120ac7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x120ace  1      OPC=nop             
  nop                      #  5     0x120acf  1      OPC=nop             
  nop                      #  6     0x120ad0  1      OPC=nop             
  nop                      #  7     0x120ad1  1      OPC=nop             
  addq %r15, %r11          #  8     0x120ad2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x120ad5  3      OPC=jmpq_r64        
  nop                      #  10    0x120ad8  1      OPC=nop             
  nop                      #  11    0x120ad9  1      OPC=nop             
  nop                      #  12    0x120ada  1      OPC=nop             
  nop                      #  13    0x120adb  1      OPC=nop             
  nop                      #  14    0x120adc  1      OPC=nop             
  nop                      #  15    0x120add  1      OPC=nop             
  nop                      #  16    0x120ade  1      OPC=nop             
  nop                      #  17    0x120adf  1      OPC=nop             
  nop                      #  18    0x120ae0  1      OPC=nop             
  nop                      #  19    0x120ae1  1      OPC=nop             
  nop                      #  20    0x120ae2  1      OPC=nop             
  nop                      #  21    0x120ae3  1      OPC=nop             
  nop                      #  22    0x120ae4  1      OPC=nop             
  nop                      #  23    0x120ae5  1      OPC=nop             
  nop                      #  24    0x120ae6  1      OPC=nop             
                                                                         
.size _localeconv_r, .-_localeconv_r

