  .text
  .globl malloc_footprint
  .type malloc_footprint, @function

#! file-offset 0x1515c0
#! rip-offset  0x1115c0
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.malloc_footprint:            #        0x1115c0  0      OPC=<label>         
  popq %r11                   #  1     0x1115c0  2      OPC=popq_r64_1      
  movl 0xff67768(%rip), %eax  #  2     0x1115c2  6      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d     #  3     0x1115c8  7      OPC=andl_r32_imm32  
  nop                         #  4     0x1115cf  1      OPC=nop             
  nop                         #  5     0x1115d0  1      OPC=nop             
  nop                         #  6     0x1115d1  1      OPC=nop             
  nop                         #  7     0x1115d2  1      OPC=nop             
  addq %r15, %r11             #  8     0x1115d3  3      OPC=addq_r64_r64    
  jmpq %r11                   #  9     0x1115d6  3      OPC=jmpq_r64        
  nop                         #  10    0x1115d9  1      OPC=nop             
  nop                         #  11    0x1115da  1      OPC=nop             
  nop                         #  12    0x1115db  1      OPC=nop             
  nop                         #  13    0x1115dc  1      OPC=nop             
  nop                         #  14    0x1115dd  1      OPC=nop             
  nop                         #  15    0x1115de  1      OPC=nop             
  nop                         #  16    0x1115df  1      OPC=nop             
  nop                         #  17    0x1115e0  1      OPC=nop             
  nop                         #  18    0x1115e1  1      OPC=nop             
  nop                         #  19    0x1115e2  1      OPC=nop             
  nop                         #  20    0x1115e3  1      OPC=nop             
  nop                         #  21    0x1115e4  1      OPC=nop             
  nop                         #  22    0x1115e5  1      OPC=nop             
  nop                         #  23    0x1115e6  1      OPC=nop             
                                                                            
.size malloc_footprint, .-malloc_footprint

