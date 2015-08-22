  .text
  .globl __nacl_register_thread_creator
  .type __nacl_register_thread_creator, @function

#! file-offset 0x6d980
#! rip-offset  0x2d980
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
.__nacl_register_thread_creator:  #        0x2d980  0      OPC=<label>         
  movl %edi, %edi                 #  1     0x2d980  2      OPC=movl_r32_r32    
  movl %edi, %edi                 #  2     0x2d982  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax     #  3     0x2d984  5      OPC=movl_r32_m32    
  movl $0x10039e18, %edi          #  4     0x2d989  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %eax          #  5     0x2d98e  6      OPC=andl_r32_imm32  
  nop                             #  6     0x2d994  1      OPC=nop             
  nop                             #  7     0x2d995  1      OPC=nop             
  nop                             #  8     0x2d996  1      OPC=nop             
  addq %r15, %rax                 #  9     0x2d997  3      OPC=addq_r64_r64    
  jmpq %rax                       #  10    0x2d99a  2      OPC=jmpq_r64        
  nop                             #  11    0x2d99c  1      OPC=nop             
  nop                             #  12    0x2d99d  1      OPC=nop             
  nop                             #  13    0x2d99e  1      OPC=nop             
  nop                             #  14    0x2d99f  1      OPC=nop             
  nop                             #  15    0x2d9a0  1      OPC=nop             
  nop                             #  16    0x2d9a1  1      OPC=nop             
  nop                             #  17    0x2d9a2  1      OPC=nop             
  nop                             #  18    0x2d9a3  1      OPC=nop             
  nop                             #  19    0x2d9a4  1      OPC=nop             
  nop                             #  20    0x2d9a5  1      OPC=nop             
                                                                               
.size __nacl_register_thread_creator, .-__nacl_register_thread_creator

