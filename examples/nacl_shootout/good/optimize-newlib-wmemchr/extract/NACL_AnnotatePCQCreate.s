  .text
  .globl NACL_AnnotatePCQCreate
  .type NACL_AnnotatePCQCreate, @function

#! file-offset 0x6fde0
#! rip-offset  0x2fde0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePCQCreate:   #        0x2fde0  0      OPC=<label>         
  popq %r11                #  1     0x2fde0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fde2  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fde9  1      OPC=nop             
  nop                      #  4     0x2fdea  1      OPC=nop             
  nop                      #  5     0x2fdeb  1      OPC=nop             
  nop                      #  6     0x2fdec  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fded  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fdf0  3      OPC=jmpq_r64        
  nop                      #  9     0x2fdf3  1      OPC=nop             
  nop                      #  10    0x2fdf4  1      OPC=nop             
  nop                      #  11    0x2fdf5  1      OPC=nop             
  nop                      #  12    0x2fdf6  1      OPC=nop             
  nop                      #  13    0x2fdf7  1      OPC=nop             
  nop                      #  14    0x2fdf8  1      OPC=nop             
  nop                      #  15    0x2fdf9  1      OPC=nop             
  nop                      #  16    0x2fdfa  1      OPC=nop             
  nop                      #  17    0x2fdfb  1      OPC=nop             
  nop                      #  18    0x2fdfc  1      OPC=nop             
  nop                      #  19    0x2fdfd  1      OPC=nop             
  nop                      #  20    0x2fdfe  1      OPC=nop             
  nop                      #  21    0x2fdff  1      OPC=nop             
  nop                      #  22    0x2fe00  1      OPC=nop             
  nop                      #  23    0x2fe01  1      OPC=nop             
  nop                      #  24    0x2fe02  1      OPC=nop             
  nop                      #  25    0x2fe03  1      OPC=nop             
  nop                      #  26    0x2fe04  1      OPC=nop             
  nop                      #  27    0x2fe05  1      OPC=nop             
  nop                      #  28    0x2fe06  1      OPC=nop             
                                                                        
.size NACL_AnnotatePCQCreate, .-NACL_AnnotatePCQCreate

