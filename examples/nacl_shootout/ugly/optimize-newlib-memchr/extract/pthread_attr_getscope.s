  .text
  .globl pthread_attr_getscope
  .type pthread_attr_getscope, @function

#! file-offset 0x6e2e0
#! rip-offset  0x2e2e0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.pthread_attr_getscope:     #        0x2e2e0  0      OPC=<label>         
  popq %r11                 #  1     0x2e2e0  2      OPC=popq_r64_1      
  movl %esi, %esi           #  2     0x2e2e2  2      OPC=movl_r32_r32    
  xorl %eax, %eax           #  3     0x2e2e4  2      OPC=xorl_r32_r32    
  movl %esi, %esi           #  4     0x2e2e6  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rsi,1)  #  5     0x2e2e8  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d   #  6     0x2e2f0  7      OPC=andl_r32_imm32  
  nop                       #  7     0x2e2f7  1      OPC=nop             
  nop                       #  8     0x2e2f8  1      OPC=nop             
  nop                       #  9     0x2e2f9  1      OPC=nop             
  nop                       #  10    0x2e2fa  1      OPC=nop             
  addq %r15, %r11           #  11    0x2e2fb  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0x2e2fe  3      OPC=jmpq_r64        
  nop                       #  13    0x2e301  1      OPC=nop             
  nop                       #  14    0x2e302  1      OPC=nop             
  nop                       #  15    0x2e303  1      OPC=nop             
  nop                       #  16    0x2e304  1      OPC=nop             
  nop                       #  17    0x2e305  1      OPC=nop             
  nop                       #  18    0x2e306  1      OPC=nop             
                                                                         
.size pthread_attr_getscope, .-pthread_attr_getscope

