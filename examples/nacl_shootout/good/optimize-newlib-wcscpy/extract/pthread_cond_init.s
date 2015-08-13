  .text
  .globl pthread_cond_init
  .type pthread_cond_init, @function

#! file-offset 0x6f700
#! rip-offset  0x2f700
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.pthread_cond_init:         #        0x2f700  0      OPC=<label>         
  popq %r11                 #  1     0x2f700  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0x2f702  2      OPC=movl_r32_r32    
  xorl %eax, %eax           #  3     0x2f704  2      OPC=xorl_r32_r32    
  movl %edi, %edi           #  4     0x2f706  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)  #  5     0x2f708  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d   #  6     0x2f710  7      OPC=andl_r32_imm32  
  nop                       #  7     0x2f717  1      OPC=nop             
  nop                       #  8     0x2f718  1      OPC=nop             
  nop                       #  9     0x2f719  1      OPC=nop             
  nop                       #  10    0x2f71a  1      OPC=nop             
  addq %r15, %r11           #  11    0x2f71b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0x2f71e  3      OPC=jmpq_r64        
  nop                       #  13    0x2f721  1      OPC=nop             
  nop                       #  14    0x2f722  1      OPC=nop             
  nop                       #  15    0x2f723  1      OPC=nop             
  nop                       #  16    0x2f724  1      OPC=nop             
  nop                       #  17    0x2f725  1      OPC=nop             
  nop                       #  18    0x2f726  1      OPC=nop             
                                                                         
.size pthread_cond_init, .-pthread_cond_init

