  .text
  .globl Instance_DidCreate
  .type Instance_DidCreate, @function

#! file-offset 0x6c600
#! rip-offset  0x2c600
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.Instance_DidCreate:           #        0x2c600  0      OPC=<label>         
  movl %edi, 0x10044fda(%rip)  #  1     0x2c600  6      OPC=movl_m32_r32    
  movl $0x1, %eax              #  2     0x2c606  5      OPC=movl_r32_imm32  
  popq %r11                    #  3     0x2c60b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  4     0x2c60d  7      OPC=andl_r32_imm32  
  nop                          #  5     0x2c614  1      OPC=nop             
  nop                          #  6     0x2c615  1      OPC=nop             
  nop                          #  7     0x2c616  1      OPC=nop             
  nop                          #  8     0x2c617  1      OPC=nop             
  addq %r15, %r11              #  9     0x2c618  3      OPC=addq_r64_r64    
  jmpq %r11                    #  10    0x2c61b  3      OPC=jmpq_r64        
  nop                          #  11    0x2c61e  1      OPC=nop             
  nop                          #  12    0x2c61f  1      OPC=nop             
  nop                          #  13    0x2c620  1      OPC=nop             
  nop                          #  14    0x2c621  1      OPC=nop             
  nop                          #  15    0x2c622  1      OPC=nop             
  nop                          #  16    0x2c623  1      OPC=nop             
  nop                          #  17    0x2c624  1      OPC=nop             
  nop                          #  18    0x2c625  1      OPC=nop             
  nop                          #  19    0x2c626  1      OPC=nop             
                                                                            
.size Instance_DidCreate, .-Instance_DidCreate

