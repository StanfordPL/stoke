  .text
  .globl __nacl_register_thread_creator
  .type __nacl_register_thread_creator, @function

#! file-offset 0x6cf60
#! rip-offset  0x2cf60
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
.__nacl_register_thread_creator:  #        0x2cf60  0      OPC=<label>         
  movl %edi, %edi                 #  1     0x2cf60  2      OPC=movl_r32_r32    
  movl %edi, %edi                 #  2     0x2cf62  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax     #  3     0x2cf64  5      OPC=movl_r32_m32    
  movl $0x10039e18, %edi          #  4     0x2cf69  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %eax          #  5     0x2cf6e  6      OPC=andl_r32_imm32  
  nop                             #  6     0x2cf74  1      OPC=nop             
  nop                             #  7     0x2cf75  1      OPC=nop             
  nop                             #  8     0x2cf76  1      OPC=nop             
  addq %r15, %rax                 #  9     0x2cf77  3      OPC=addq_r64_r64    
  jmpq %rax                       #  10    0x2cf7a  2      OPC=jmpq_r64        
  nop                             #  11    0x2cf7c  1      OPC=nop             
  nop                             #  12    0x2cf7d  1      OPC=nop             
  nop                             #  13    0x2cf7e  1      OPC=nop             
  nop                             #  14    0x2cf7f  1      OPC=nop             
  nop                             #  15    0x2cf80  1      OPC=nop             
  nop                             #  16    0x2cf81  1      OPC=nop             
  nop                             #  17    0x2cf82  1      OPC=nop             
  nop                             #  18    0x2cf83  1      OPC=nop             
  nop                             #  19    0x2cf84  1      OPC=nop             
  nop                             #  20    0x2cf85  1      OPC=nop             
                                                                               
.size __nacl_register_thread_creator, .-__nacl_register_thread_creator

