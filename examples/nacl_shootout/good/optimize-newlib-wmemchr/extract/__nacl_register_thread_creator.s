  .text
  .globl __nacl_register_thread_creator
  .type __nacl_register_thread_creator, @function

#! file-offset 0x6d260
#! rip-offset  0x2d260
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
.__nacl_register_thread_creator:  #        0x2d260  0      OPC=<label>         
  movl %edi, %edi                 #  1     0x2d260  2      OPC=movl_r32_r32    
  movl %edi, %edi                 #  2     0x2d262  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax     #  3     0x2d264  5      OPC=movl_r32_m32    
  movl $0x10039e18, %edi          #  4     0x2d269  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %eax          #  5     0x2d26e  6      OPC=andl_r32_imm32  
  nop                             #  6     0x2d274  1      OPC=nop             
  nop                             #  7     0x2d275  1      OPC=nop             
  nop                             #  8     0x2d276  1      OPC=nop             
  addq %r15, %rax                 #  9     0x2d277  3      OPC=addq_r64_r64    
  jmpq %rax                       #  10    0x2d27a  2      OPC=jmpq_r64        
  nop                             #  11    0x2d27c  1      OPC=nop             
  nop                             #  12    0x2d27d  1      OPC=nop             
  nop                             #  13    0x2d27e  1      OPC=nop             
  nop                             #  14    0x2d27f  1      OPC=nop             
  nop                             #  15    0x2d280  1      OPC=nop             
  nop                             #  16    0x2d281  1      OPC=nop             
  nop                             #  17    0x2d282  1      OPC=nop             
  nop                             #  18    0x2d283  1      OPC=nop             
  nop                             #  19    0x2d284  1      OPC=nop             
  nop                             #  20    0x2d285  1      OPC=nop             
                                                                               
.size __nacl_register_thread_creator, .-__nacl_register_thread_creator

