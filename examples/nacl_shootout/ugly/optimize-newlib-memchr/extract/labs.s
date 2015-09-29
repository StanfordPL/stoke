  .text
  .globl labs
  .type labs, @function

#! file-offset 0x18a220
#! rip-offset  0x14a220
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.labs:                     #        0x14a220  0      OPC=<label>         
  movl %edi, %edx          #  1     0x14a220  2      OPC=movl_r32_r32    
  popq %r11                #  2     0x14a222  2      OPC=popq_r64_1      
  sarl $0x1f, %edx         #  3     0x14a224  3      OPC=sarl_r32_imm8   
  movl %edx, %eax          #  4     0x14a227  2      OPC=movl_r32_r32    
  xorl %edi, %eax          #  5     0x14a229  2      OPC=xorl_r32_r32    
  subl %edx, %eax          #  6     0x14a22b  2      OPC=subl_r32_r32    
  andl $0xffffffe0, %r11d  #  7     0x14a22d  7      OPC=andl_r32_imm32  
  nop                      #  8     0x14a234  1      OPC=nop             
  nop                      #  9     0x14a235  1      OPC=nop             
  nop                      #  10    0x14a236  1      OPC=nop             
  nop                      #  11    0x14a237  1      OPC=nop             
  addq %r15, %r11          #  12    0x14a238  3      OPC=addq_r64_r64    
  jmpq %r11                #  13    0x14a23b  3      OPC=jmpq_r64        
  nop                      #  14    0x14a23e  1      OPC=nop             
  nop                      #  15    0x14a23f  1      OPC=nop             
  nop                      #  16    0x14a240  1      OPC=nop             
  nop                      #  17    0x14a241  1      OPC=nop             
  nop                      #  18    0x14a242  1      OPC=nop             
  nop                      #  19    0x14a243  1      OPC=nop             
  nop                      #  20    0x14a244  1      OPC=nop             
  nop                      #  21    0x14a245  1      OPC=nop             
  nop                      #  22    0x14a246  1      OPC=nop             
                                                                         
.size labs, .-labs

