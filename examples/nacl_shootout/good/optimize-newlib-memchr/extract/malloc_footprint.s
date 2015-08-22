  .text
  .globl malloc_footprint
  .type malloc_footprint, @function

#! file-offset 0x151ce0
#! rip-offset  0x111ce0
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.malloc_footprint:            #        0x111ce0  0      OPC=<label>         
  popq %r11                   #  1     0x111ce0  2      OPC=popq_r64_1      
  movl 0xff67048(%rip), %eax  #  2     0x111ce2  6      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d     #  3     0x111ce8  7      OPC=andl_r32_imm32  
  nop                         #  4     0x111cef  1      OPC=nop             
  nop                         #  5     0x111cf0  1      OPC=nop             
  nop                         #  6     0x111cf1  1      OPC=nop             
  nop                         #  7     0x111cf2  1      OPC=nop             
  addq %r15, %r11             #  8     0x111cf3  3      OPC=addq_r64_r64    
  jmpq %r11                   #  9     0x111cf6  3      OPC=jmpq_r64        
  nop                         #  10    0x111cf9  1      OPC=nop             
  nop                         #  11    0x111cfa  1      OPC=nop             
  nop                         #  12    0x111cfb  1      OPC=nop             
  nop                         #  13    0x111cfc  1      OPC=nop             
  nop                         #  14    0x111cfd  1      OPC=nop             
  nop                         #  15    0x111cfe  1      OPC=nop             
  nop                         #  16    0x111cff  1      OPC=nop             
  nop                         #  17    0x111d00  1      OPC=nop             
  nop                         #  18    0x111d01  1      OPC=nop             
  nop                         #  19    0x111d02  1      OPC=nop             
  nop                         #  20    0x111d03  1      OPC=nop             
  nop                         #  21    0x111d04  1      OPC=nop             
  nop                         #  22    0x111d05  1      OPC=nop             
  nop                         #  23    0x111d06  1      OPC=nop             
                                                                            
.size malloc_footprint, .-malloc_footprint

