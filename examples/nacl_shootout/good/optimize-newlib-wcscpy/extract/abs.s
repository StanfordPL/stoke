  .text
  .globl abs
  .type abs, @function

#! file-offset 0x184340
#! rip-offset  0x144340
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.abs:                      #        0x144340  0      OPC=<label>         
  movl %edi, %edx          #  1     0x144340  2      OPC=movl_r32_r32    
  popq %r11                #  2     0x144342  2      OPC=popq_r64_1      
  sarl $0x1f, %edx         #  3     0x144344  3      OPC=sarl_r32_imm8   
  movl %edx, %eax          #  4     0x144347  2      OPC=movl_r32_r32    
  xorl %edi, %eax          #  5     0x144349  2      OPC=xorl_r32_r32    
  subl %edx, %eax          #  6     0x14434b  2      OPC=subl_r32_r32    
  andl $0xffffffe0, %r11d  #  7     0x14434d  7      OPC=andl_r32_imm32  
  nop                      #  8     0x144354  1      OPC=nop             
  nop                      #  9     0x144355  1      OPC=nop             
  nop                      #  10    0x144356  1      OPC=nop             
  nop                      #  11    0x144357  1      OPC=nop             
  addq %r15, %r11          #  12    0x144358  3      OPC=addq_r64_r64    
  jmpq %r11                #  13    0x14435b  3      OPC=jmpq_r64        
  nop                      #  14    0x14435e  1      OPC=nop             
  nop                      #  15    0x14435f  1      OPC=nop             
  nop                      #  16    0x144360  1      OPC=nop             
  nop                      #  17    0x144361  1      OPC=nop             
  nop                      #  18    0x144362  1      OPC=nop             
  nop                      #  19    0x144363  1      OPC=nop             
  nop                      #  20    0x144364  1      OPC=nop             
  nop                      #  21    0x144365  1      OPC=nop             
  nop                      #  22    0x144366  1      OPC=nop             
                                                                         
.size abs, .-abs

