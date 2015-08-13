  .text
  .globl pthread_mutexattr_init
  .type pthread_mutexattr_init, @function

#! file-offset 0x6d0c0
#! rip-offset  0x2d0c0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.pthread_mutexattr_init:    #        0x2d0c0  0      OPC=<label>         
  popq %r11                 #  1     0x2d0c0  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0x2d0c2  2      OPC=movl_r32_r32    
  xorl %eax, %eax           #  3     0x2d0c4  2      OPC=xorl_r32_r32    
  movl %edi, %edi           #  4     0x2d0c6  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)  #  5     0x2d0c8  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d   #  6     0x2d0d0  7      OPC=andl_r32_imm32  
  nop                       #  7     0x2d0d7  1      OPC=nop             
  nop                       #  8     0x2d0d8  1      OPC=nop             
  nop                       #  9     0x2d0d9  1      OPC=nop             
  nop                       #  10    0x2d0da  1      OPC=nop             
  addq %r15, %r11           #  11    0x2d0db  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0x2d0de  3      OPC=jmpq_r64        
  nop                       #  13    0x2d0e1  1      OPC=nop             
  nop                       #  14    0x2d0e2  1      OPC=nop             
  nop                       #  15    0x2d0e3  1      OPC=nop             
  nop                       #  16    0x2d0e4  1      OPC=nop             
  nop                       #  17    0x2d0e5  1      OPC=nop             
  nop                       #  18    0x2d0e6  1      OPC=nop             
                                                                         
.size pthread_mutexattr_init, .-pthread_mutexattr_init

