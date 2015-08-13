  .text
  .globl Instance_DidChangeFocus
  .type Instance_DidChangeFocus, @function

#! file-offset 0x6c360
#! rip-offset  0x2c360
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.Instance_DidChangeFocus:  #        0x2c360  0      OPC=<label>         
  popq %r11                #  1     0x2c360  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2c362  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2c369  1      OPC=nop             
  nop                      #  4     0x2c36a  1      OPC=nop             
  nop                      #  5     0x2c36b  1      OPC=nop             
  nop                      #  6     0x2c36c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2c36d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2c370  3      OPC=jmpq_r64        
  nop                      #  9     0x2c373  1      OPC=nop             
  nop                      #  10    0x2c374  1      OPC=nop             
  nop                      #  11    0x2c375  1      OPC=nop             
  nop                      #  12    0x2c376  1      OPC=nop             
  nop                      #  13    0x2c377  1      OPC=nop             
  nop                      #  14    0x2c378  1      OPC=nop             
  nop                      #  15    0x2c379  1      OPC=nop             
  nop                      #  16    0x2c37a  1      OPC=nop             
  nop                      #  17    0x2c37b  1      OPC=nop             
  nop                      #  18    0x2c37c  1      OPC=nop             
  nop                      #  19    0x2c37d  1      OPC=nop             
  nop                      #  20    0x2c37e  1      OPC=nop             
  nop                      #  21    0x2c37f  1      OPC=nop             
  nop                      #  22    0x2c380  1      OPC=nop             
  nop                      #  23    0x2c381  1      OPC=nop             
  nop                      #  24    0x2c382  1      OPC=nop             
  nop                      #  25    0x2c383  1      OPC=nop             
  nop                      #  26    0x2c384  1      OPC=nop             
  nop                      #  27    0x2c385  1      OPC=nop             
  nop                      #  28    0x2c386  1      OPC=nop             
                                                                        
.size Instance_DidChangeFocus, .-Instance_DidChangeFocus

