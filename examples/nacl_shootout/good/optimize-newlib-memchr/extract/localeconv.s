  .text
  .globl localeconv
  .type localeconv, @function

#! file-offset 0x160ae0
#! rip-offset  0x120ae0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.localeconv:               #        0x120ae0  0      OPC=<label>         
  popq %r11                #  1     0x120ae0  2      OPC=popq_r64_1      
  movl $0x10070e80, %eax   #  2     0x120ae2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x120ae7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x120aee  1      OPC=nop             
  nop                      #  5     0x120aef  1      OPC=nop             
  nop                      #  6     0x120af0  1      OPC=nop             
  nop                      #  7     0x120af1  1      OPC=nop             
  addq %r15, %r11          #  8     0x120af2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x120af5  3      OPC=jmpq_r64        
  nop                      #  10    0x120af8  1      OPC=nop             
  nop                      #  11    0x120af9  1      OPC=nop             
  nop                      #  12    0x120afa  1      OPC=nop             
  nop                      #  13    0x120afb  1      OPC=nop             
  nop                      #  14    0x120afc  1      OPC=nop             
  nop                      #  15    0x120afd  1      OPC=nop             
  nop                      #  16    0x120afe  1      OPC=nop             
  nop                      #  17    0x120aff  1      OPC=nop             
  nop                      #  18    0x120b00  1      OPC=nop             
  nop                      #  19    0x120b01  1      OPC=nop             
  nop                      #  20    0x120b02  1      OPC=nop             
  nop                      #  21    0x120b03  1      OPC=nop             
  nop                      #  22    0x120b04  1      OPC=nop             
  nop                      #  23    0x120b05  1      OPC=nop             
  nop                      #  24    0x120b06  1      OPC=nop             
                                                                         
.size localeconv, .-localeconv

