  .text
  .globl malloc_max_footprint
  .type malloc_max_footprint, @function

#! file-offset 0x151d00
#! rip-offset  0x111d00
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.malloc_max_footprint:        #        0x111d00  0      OPC=<label>         
  popq %r11                   #  1     0x111d00  2      OPC=popq_r64_1      
  movl 0xff6702c(%rip), %eax  #  2     0x111d02  6      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d     #  3     0x111d08  7      OPC=andl_r32_imm32  
  nop                         #  4     0x111d0f  1      OPC=nop             
  nop                         #  5     0x111d10  1      OPC=nop             
  nop                         #  6     0x111d11  1      OPC=nop             
  nop                         #  7     0x111d12  1      OPC=nop             
  addq %r15, %r11             #  8     0x111d13  3      OPC=addq_r64_r64    
  jmpq %r11                   #  9     0x111d16  3      OPC=jmpq_r64        
  nop                         #  10    0x111d19  1      OPC=nop             
  nop                         #  11    0x111d1a  1      OPC=nop             
  nop                         #  12    0x111d1b  1      OPC=nop             
  nop                         #  13    0x111d1c  1      OPC=nop             
  nop                         #  14    0x111d1d  1      OPC=nop             
  nop                         #  15    0x111d1e  1      OPC=nop             
  nop                         #  16    0x111d1f  1      OPC=nop             
  nop                         #  17    0x111d20  1      OPC=nop             
  nop                         #  18    0x111d21  1      OPC=nop             
  nop                         #  19    0x111d22  1      OPC=nop             
  nop                         #  20    0x111d23  1      OPC=nop             
  nop                         #  21    0x111d24  1      OPC=nop             
  nop                         #  22    0x111d25  1      OPC=nop             
  nop                         #  23    0x111d26  1      OPC=nop             
                                                                            
.size malloc_max_footprint, .-malloc_max_footprint

