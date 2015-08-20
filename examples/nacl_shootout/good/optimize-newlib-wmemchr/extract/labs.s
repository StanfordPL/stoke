  .text
  .globl labs
  .type labs, @function

#! file-offset 0x189b00
#! rip-offset  0x149b00
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.labs:                     #        0x149b00  0      OPC=<label>         
  movl %edi, %edx          #  1     0x149b00  2      OPC=movl_r32_r32    
  popq %r11                #  2     0x149b02  2      OPC=popq_r64_1      
  sarl $0x1f, %edx         #  3     0x149b04  3      OPC=sarl_r32_imm8   
  movl %edx, %eax          #  4     0x149b07  2      OPC=movl_r32_r32    
  xorl %edi, %eax          #  5     0x149b09  2      OPC=xorl_r32_r32    
  subl %edx, %eax          #  6     0x149b0b  2      OPC=subl_r32_r32    
  andl $0xffffffe0, %r11d  #  7     0x149b0d  7      OPC=andl_r32_imm32  
  nop                      #  8     0x149b14  1      OPC=nop             
  nop                      #  9     0x149b15  1      OPC=nop             
  nop                      #  10    0x149b16  1      OPC=nop             
  nop                      #  11    0x149b17  1      OPC=nop             
  addq %r15, %r11          #  12    0x149b18  3      OPC=addq_r64_r64    
  jmpq %r11                #  13    0x149b1b  3      OPC=jmpq_r64        
  nop                      #  14    0x149b1e  1      OPC=nop             
  nop                      #  15    0x149b1f  1      OPC=nop             
  nop                      #  16    0x149b20  1      OPC=nop             
  nop                      #  17    0x149b21  1      OPC=nop             
  nop                      #  18    0x149b22  1      OPC=nop             
  nop                      #  19    0x149b23  1      OPC=nop             
  nop                      #  20    0x149b24  1      OPC=nop             
  nop                      #  21    0x149b25  1      OPC=nop             
  nop                      #  22    0x149b26  1      OPC=nop             
                                                                         
.size labs, .-labs

