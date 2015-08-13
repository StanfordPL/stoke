  .text
  .globl pthread_attr_getscope
  .type pthread_attr_getscope, @function

#! file-offset 0x6d8c0
#! rip-offset  0x2d8c0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.pthread_attr_getscope:     #        0x2d8c0  0      OPC=<label>         
  popq %r11                 #  1     0x2d8c0  2      OPC=popq_r64_1      
  movl %esi, %esi           #  2     0x2d8c2  2      OPC=movl_r32_r32    
  xorl %eax, %eax           #  3     0x2d8c4  2      OPC=xorl_r32_r32    
  movl %esi, %esi           #  4     0x2d8c6  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rsi,1)  #  5     0x2d8c8  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d   #  6     0x2d8d0  7      OPC=andl_r32_imm32  
  nop                       #  7     0x2d8d7  1      OPC=nop             
  nop                       #  8     0x2d8d8  1      OPC=nop             
  nop                       #  9     0x2d8d9  1      OPC=nop             
  nop                       #  10    0x2d8da  1      OPC=nop             
  addq %r15, %r11           #  11    0x2d8db  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0x2d8de  3      OPC=jmpq_r64        
  nop                       #  13    0x2d8e1  1      OPC=nop             
  nop                       #  14    0x2d8e2  1      OPC=nop             
  nop                       #  15    0x2d8e3  1      OPC=nop             
  nop                       #  16    0x2d8e4  1      OPC=nop             
  nop                       #  17    0x2d8e5  1      OPC=nop             
  nop                       #  18    0x2d8e6  1      OPC=nop             
                                                                         
.size pthread_attr_getscope, .-pthread_attr_getscope

