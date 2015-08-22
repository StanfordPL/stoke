  .text
  .globl pthread_cond_init
  .type pthread_cond_init, @function

#! file-offset 0x70120
#! rip-offset  0x30120
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.pthread_cond_init:         #        0x30120  0      OPC=<label>         
  popq %r11                 #  1     0x30120  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0x30122  2      OPC=movl_r32_r32    
  xorl %eax, %eax           #  3     0x30124  2      OPC=xorl_r32_r32    
  movl %edi, %edi           #  4     0x30126  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)  #  5     0x30128  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d   #  6     0x30130  7      OPC=andl_r32_imm32  
  nop                       #  7     0x30137  1      OPC=nop             
  nop                       #  8     0x30138  1      OPC=nop             
  nop                       #  9     0x30139  1      OPC=nop             
  nop                       #  10    0x3013a  1      OPC=nop             
  addq %r15, %r11           #  11    0x3013b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0x3013e  3      OPC=jmpq_r64        
  nop                       #  13    0x30141  1      OPC=nop             
  nop                       #  14    0x30142  1      OPC=nop             
  nop                       #  15    0x30143  1      OPC=nop             
  nop                       #  16    0x30144  1      OPC=nop             
  nop                       #  17    0x30145  1      OPC=nop             
  nop                       #  18    0x30146  1      OPC=nop             
                                                                         
.size pthread_cond_init, .-pthread_cond_init

