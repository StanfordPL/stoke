  .text
  .globl pthread_mutexattr_init
  .type pthread_mutexattr_init, @function

#! file-offset 0x6dae0
#! rip-offset  0x2dae0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.pthread_mutexattr_init:    #        0x2dae0  0      OPC=<label>         
  popq %r11                 #  1     0x2dae0  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0x2dae2  2      OPC=movl_r32_r32    
  xorl %eax, %eax           #  3     0x2dae4  2      OPC=xorl_r32_r32    
  movl %edi, %edi           #  4     0x2dae6  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)  #  5     0x2dae8  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d   #  6     0x2daf0  7      OPC=andl_r32_imm32  
  nop                       #  7     0x2daf7  1      OPC=nop             
  nop                       #  8     0x2daf8  1      OPC=nop             
  nop                       #  9     0x2daf9  1      OPC=nop             
  nop                       #  10    0x2dafa  1      OPC=nop             
  addq %r15, %r11           #  11    0x2dafb  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0x2dafe  3      OPC=jmpq_r64        
  nop                       #  13    0x2db01  1      OPC=nop             
  nop                       #  14    0x2db02  1      OPC=nop             
  nop                       #  15    0x2db03  1      OPC=nop             
  nop                       #  16    0x2db04  1      OPC=nop             
  nop                       #  17    0x2db05  1      OPC=nop             
  nop                       #  18    0x2db06  1      OPC=nop             
                                                                         
.size pthread_mutexattr_init, .-pthread_mutexattr_init

