  .text
  .globl __locale_charset
  .type __locale_charset, @function

#! file-offset 0x160020
#! rip-offset  0x120020
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__locale_charset:         #        0x120020  0      OPC=<label>         
  popq %r11                #  1     0x120020  2      OPC=popq_r64_1      
  movl $0x10070ee0, %eax   #  2     0x120022  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x120027  7      OPC=andl_r32_imm32  
  nop                      #  4     0x12002e  1      OPC=nop             
  nop                      #  5     0x12002f  1      OPC=nop             
  nop                      #  6     0x120030  1      OPC=nop             
  nop                      #  7     0x120031  1      OPC=nop             
  addq %r15, %r11          #  8     0x120032  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x120035  3      OPC=jmpq_r64        
  nop                      #  10    0x120038  1      OPC=nop             
  nop                      #  11    0x120039  1      OPC=nop             
  nop                      #  12    0x12003a  1      OPC=nop             
  nop                      #  13    0x12003b  1      OPC=nop             
  nop                      #  14    0x12003c  1      OPC=nop             
  nop                      #  15    0x12003d  1      OPC=nop             
  nop                      #  16    0x12003e  1      OPC=nop             
  nop                      #  17    0x12003f  1      OPC=nop             
  nop                      #  18    0x120040  1      OPC=nop             
  nop                      #  19    0x120041  1      OPC=nop             
  nop                      #  20    0x120042  1      OPC=nop             
  nop                      #  21    0x120043  1      OPC=nop             
  nop                      #  22    0x120044  1      OPC=nop             
  nop                      #  23    0x120045  1      OPC=nop             
  nop                      #  24    0x120046  1      OPC=nop             
                                                                         
.size __locale_charset, .-__locale_charset

