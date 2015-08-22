  .text
  .globl Instance_DidCreate
  .type Instance_DidCreate, @function

#! file-offset 0x6cd20
#! rip-offset  0x2cd20
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.Instance_DidCreate:           #        0x2cd20  0      OPC=<label>         
  movl %edi, 0x100448ba(%rip)  #  1     0x2cd20  6      OPC=movl_m32_r32    
  movl $0x1, %eax              #  2     0x2cd26  5      OPC=movl_r32_imm32  
  popq %r11                    #  3     0x2cd2b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  4     0x2cd2d  7      OPC=andl_r32_imm32  
  nop                          #  5     0x2cd34  1      OPC=nop             
  nop                          #  6     0x2cd35  1      OPC=nop             
  nop                          #  7     0x2cd36  1      OPC=nop             
  nop                          #  8     0x2cd37  1      OPC=nop             
  addq %r15, %r11              #  9     0x2cd38  3      OPC=addq_r64_r64    
  jmpq %r11                    #  10    0x2cd3b  3      OPC=jmpq_r64        
  nop                          #  11    0x2cd3e  1      OPC=nop             
  nop                          #  12    0x2cd3f  1      OPC=nop             
  nop                          #  13    0x2cd40  1      OPC=nop             
  nop                          #  14    0x2cd41  1      OPC=nop             
  nop                          #  15    0x2cd42  1      OPC=nop             
  nop                          #  16    0x2cd43  1      OPC=nop             
  nop                          #  17    0x2cd44  1      OPC=nop             
  nop                          #  18    0x2cd45  1      OPC=nop             
  nop                          #  19    0x2cd46  1      OPC=nop             
                                                                            
.size Instance_DidCreate, .-Instance_DidCreate

