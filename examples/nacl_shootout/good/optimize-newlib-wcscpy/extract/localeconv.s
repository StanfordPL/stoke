  .text
  .globl localeconv
  .type localeconv, @function

#! file-offset 0x1600c0
#! rip-offset  0x1200c0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.localeconv:               #        0x1200c0  0      OPC=<label>         
  popq %r11                #  1     0x1200c0  2      OPC=popq_r64_1      
  movl $0x10070e80, %eax   #  2     0x1200c2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x1200c7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x1200ce  1      OPC=nop             
  nop                      #  5     0x1200cf  1      OPC=nop             
  nop                      #  6     0x1200d0  1      OPC=nop             
  nop                      #  7     0x1200d1  1      OPC=nop             
  addq %r15, %r11          #  8     0x1200d2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x1200d5  3      OPC=jmpq_r64        
  nop                      #  10    0x1200d8  1      OPC=nop             
  nop                      #  11    0x1200d9  1      OPC=nop             
  nop                      #  12    0x1200da  1      OPC=nop             
  nop                      #  13    0x1200db  1      OPC=nop             
  nop                      #  14    0x1200dc  1      OPC=nop             
  nop                      #  15    0x1200dd  1      OPC=nop             
  nop                      #  16    0x1200de  1      OPC=nop             
  nop                      #  17    0x1200df  1      OPC=nop             
  nop                      #  18    0x1200e0  1      OPC=nop             
  nop                      #  19    0x1200e1  1      OPC=nop             
  nop                      #  20    0x1200e2  1      OPC=nop             
  nop                      #  21    0x1200e3  1      OPC=nop             
  nop                      #  22    0x1200e4  1      OPC=nop             
  nop                      #  23    0x1200e5  1      OPC=nop             
  nop                      #  24    0x1200e6  1      OPC=nop             
                                                                         
.size localeconv, .-localeconv

