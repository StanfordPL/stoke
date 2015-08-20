  .text
  .globl malloc_max_footprint
  .type malloc_max_footprint, @function

#! file-offset 0x1515e0
#! rip-offset  0x1115e0
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.malloc_max_footprint:        #        0x1115e0  0      OPC=<label>         
  popq %r11                   #  1     0x1115e0  2      OPC=popq_r64_1      
  movl 0xff6774c(%rip), %eax  #  2     0x1115e2  6      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d     #  3     0x1115e8  7      OPC=andl_r32_imm32  
  nop                         #  4     0x1115ef  1      OPC=nop             
  nop                         #  5     0x1115f0  1      OPC=nop             
  nop                         #  6     0x1115f1  1      OPC=nop             
  nop                         #  7     0x1115f2  1      OPC=nop             
  addq %r15, %r11             #  8     0x1115f3  3      OPC=addq_r64_r64    
  jmpq %r11                   #  9     0x1115f6  3      OPC=jmpq_r64        
  nop                         #  10    0x1115f9  1      OPC=nop             
  nop                         #  11    0x1115fa  1      OPC=nop             
  nop                         #  12    0x1115fb  1      OPC=nop             
  nop                         #  13    0x1115fc  1      OPC=nop             
  nop                         #  14    0x1115fd  1      OPC=nop             
  nop                         #  15    0x1115fe  1      OPC=nop             
  nop                         #  16    0x1115ff  1      OPC=nop             
  nop                         #  17    0x111600  1      OPC=nop             
  nop                         #  18    0x111601  1      OPC=nop             
  nop                         #  19    0x111602  1      OPC=nop             
  nop                         #  20    0x111603  1      OPC=nop             
  nop                         #  21    0x111604  1      OPC=nop             
  nop                         #  22    0x111605  1      OPC=nop             
  nop                         #  23    0x111606  1      OPC=nop             
                                                                            
.size malloc_max_footprint, .-malloc_max_footprint

