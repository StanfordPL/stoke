  .text
  .globl Instance_DidCreate
  .type Instance_DidCreate, @function

#! file-offset 0x6c300
#! rip-offset  0x2c300
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.Instance_DidCreate:           #        0x2c300  0      OPC=<label>         
  movl %edi, 0x100452da(%rip)  #  1     0x2c300  6      OPC=movl_m32_r32    
  movl $0x1, %eax              #  2     0x2c306  5      OPC=movl_r32_imm32  
  popq %r11                    #  3     0x2c30b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  4     0x2c30d  7      OPC=andl_r32_imm32  
  nop                          #  5     0x2c314  1      OPC=nop             
  nop                          #  6     0x2c315  1      OPC=nop             
  nop                          #  7     0x2c316  1      OPC=nop             
  nop                          #  8     0x2c317  1      OPC=nop             
  addq %r15, %r11              #  9     0x2c318  3      OPC=addq_r64_r64    
  jmpq %r11                    #  10    0x2c31b  3      OPC=jmpq_r64        
  nop                          #  11    0x2c31e  1      OPC=nop             
  nop                          #  12    0x2c31f  1      OPC=nop             
  nop                          #  13    0x2c320  1      OPC=nop             
  nop                          #  14    0x2c321  1      OPC=nop             
  nop                          #  15    0x2c322  1      OPC=nop             
  nop                          #  16    0x2c323  1      OPC=nop             
  nop                          #  17    0x2c324  1      OPC=nop             
  nop                          #  18    0x2c325  1      OPC=nop             
  nop                          #  19    0x2c326  1      OPC=nop             
                                                                            
.size Instance_DidCreate, .-Instance_DidCreate

