  .text
  .globl Noop
  .type Noop, @function

#! file-offset 0x661a0
#! rip-offset  0x261a0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.Noop:                     #        0x261a0  0      OPC=<label>         
  popq %r11                #  1     0x261a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x261a2  7      OPC=andl_r32_imm32  
  nop                      #  3     0x261a9  1      OPC=nop             
  nop                      #  4     0x261aa  1      OPC=nop             
  nop                      #  5     0x261ab  1      OPC=nop             
  nop                      #  6     0x261ac  1      OPC=nop             
  addq %r15, %r11          #  7     0x261ad  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x261b0  3      OPC=jmpq_r64        
  nop                      #  9     0x261b3  1      OPC=nop             
  nop                      #  10    0x261b4  1      OPC=nop             
  nop                      #  11    0x261b5  1      OPC=nop             
  nop                      #  12    0x261b6  1      OPC=nop             
  nop                      #  13    0x261b7  1      OPC=nop             
  nop                      #  14    0x261b8  1      OPC=nop             
  nop                      #  15    0x261b9  1      OPC=nop             
  nop                      #  16    0x261ba  1      OPC=nop             
  nop                      #  17    0x261bb  1      OPC=nop             
  nop                      #  18    0x261bc  1      OPC=nop             
  nop                      #  19    0x261bd  1      OPC=nop             
  nop                      #  20    0x261be  1      OPC=nop             
  nop                      #  21    0x261bf  1      OPC=nop             
  nop                      #  22    0x261c0  1      OPC=nop             
  nop                      #  23    0x261c1  1      OPC=nop             
  nop                      #  24    0x261c2  1      OPC=nop             
  nop                      #  25    0x261c3  1      OPC=nop             
  nop                      #  26    0x261c4  1      OPC=nop             
  nop                      #  27    0x261c5  1      OPC=nop             
  nop                      #  28    0x261c6  1      OPC=nop             
                                                                        
.size Noop, .-Noop

