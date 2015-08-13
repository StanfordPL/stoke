  .text
  .globl __newlib_thread_exit
  .type __newlib_thread_exit, @function

#! file-offset 0x15e4a0
#! rip-offset  0x11e4a0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__newlib_thread_exit:     #        0x11e4a0  0      OPC=<label>         
  popq %r11                #  1     0x11e4a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x11e4a2  7      OPC=andl_r32_imm32  
  nop                      #  3     0x11e4a9  1      OPC=nop             
  nop                      #  4     0x11e4aa  1      OPC=nop             
  nop                      #  5     0x11e4ab  1      OPC=nop             
  nop                      #  6     0x11e4ac  1      OPC=nop             
  addq %r15, %r11          #  7     0x11e4ad  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x11e4b0  3      OPC=jmpq_r64        
  nop                      #  9     0x11e4b3  1      OPC=nop             
  nop                      #  10    0x11e4b4  1      OPC=nop             
  nop                      #  11    0x11e4b5  1      OPC=nop             
  nop                      #  12    0x11e4b6  1      OPC=nop             
  nop                      #  13    0x11e4b7  1      OPC=nop             
  nop                      #  14    0x11e4b8  1      OPC=nop             
  nop                      #  15    0x11e4b9  1      OPC=nop             
  nop                      #  16    0x11e4ba  1      OPC=nop             
  nop                      #  17    0x11e4bb  1      OPC=nop             
  nop                      #  18    0x11e4bc  1      OPC=nop             
  nop                      #  19    0x11e4bd  1      OPC=nop             
  nop                      #  20    0x11e4be  1      OPC=nop             
  nop                      #  21    0x11e4bf  1      OPC=nop             
  nop                      #  22    0x11e4c0  1      OPC=nop             
  nop                      #  23    0x11e4c1  1      OPC=nop             
  nop                      #  24    0x11e4c2  1      OPC=nop             
  nop                      #  25    0x11e4c3  1      OPC=nop             
  nop                      #  26    0x11e4c4  1      OPC=nop             
  nop                      #  27    0x11e4c5  1      OPC=nop             
  nop                      #  28    0x11e4c6  1      OPC=nop             
                                                                         
.size __newlib_thread_exit, .-__newlib_thread_exit

