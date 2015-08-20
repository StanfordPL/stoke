  .text
  .globl pthread_attr_getscope
  .type pthread_attr_getscope, @function

#! file-offset 0x6dbc0
#! rip-offset  0x2dbc0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.pthread_attr_getscope:     #        0x2dbc0  0      OPC=<label>         
  popq %r11                 #  1     0x2dbc0  2      OPC=popq_r64_1      
  movl %esi, %esi           #  2     0x2dbc2  2      OPC=movl_r32_r32    
  xorl %eax, %eax           #  3     0x2dbc4  2      OPC=xorl_r32_r32    
  movl %esi, %esi           #  4     0x2dbc6  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rsi,1)  #  5     0x2dbc8  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d   #  6     0x2dbd0  7      OPC=andl_r32_imm32  
  nop                       #  7     0x2dbd7  1      OPC=nop             
  nop                       #  8     0x2dbd8  1      OPC=nop             
  nop                       #  9     0x2dbd9  1      OPC=nop             
  nop                       #  10    0x2dbda  1      OPC=nop             
  addq %r15, %r11           #  11    0x2dbdb  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0x2dbde  3      OPC=jmpq_r64        
  nop                       #  13    0x2dbe1  1      OPC=nop             
  nop                       #  14    0x2dbe2  1      OPC=nop             
  nop                       #  15    0x2dbe3  1      OPC=nop             
  nop                       #  16    0x2dbe4  1      OPC=nop             
  nop                       #  17    0x2dbe5  1      OPC=nop             
  nop                       #  18    0x2dbe6  1      OPC=nop             
                                                                         
.size pthread_attr_getscope, .-pthread_attr_getscope

