  .text
  .globl abs
  .type abs, @function

#! file-offset 0x1846e0
#! rip-offset  0x1446e0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.abs:                      #        0x1446e0  0      OPC=<label>         
  movl %edi, %edx          #  1     0x1446e0  2      OPC=movl_r32_r32    
  popq %r11                #  2     0x1446e2  2      OPC=popq_r64_1      
  sarl $0x1f, %edx         #  3     0x1446e4  3      OPC=sarl_r32_imm8   
  movl %edx, %eax          #  4     0x1446e7  2      OPC=movl_r32_r32    
  xorl %edi, %eax          #  5     0x1446e9  2      OPC=xorl_r32_r32    
  subl %edx, %eax          #  6     0x1446eb  2      OPC=subl_r32_r32    
  andl $0xffffffe0, %r11d  #  7     0x1446ed  7      OPC=andl_r32_imm32  
  nop                      #  8     0x1446f4  1      OPC=nop             
  nop                      #  9     0x1446f5  1      OPC=nop             
  nop                      #  10    0x1446f6  1      OPC=nop             
  nop                      #  11    0x1446f7  1      OPC=nop             
  addq %r15, %r11          #  12    0x1446f8  3      OPC=addq_r64_r64    
  jmpq %r11                #  13    0x1446fb  3      OPC=jmpq_r64        
  nop                      #  14    0x1446fe  1      OPC=nop             
  nop                      #  15    0x1446ff  1      OPC=nop             
  nop                      #  16    0x144700  1      OPC=nop             
  nop                      #  17    0x144701  1      OPC=nop             
  nop                      #  18    0x144702  1      OPC=nop             
  nop                      #  19    0x144703  1      OPC=nop             
  nop                      #  20    0x144704  1      OPC=nop             
  nop                      #  21    0x144705  1      OPC=nop             
  nop                      #  22    0x144706  1      OPC=nop             
                                                                         
.size abs, .-abs

