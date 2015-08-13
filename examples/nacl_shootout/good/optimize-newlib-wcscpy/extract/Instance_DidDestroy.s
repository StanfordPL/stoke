  .text
  .globl Instance_DidDestroy
  .type Instance_DidDestroy, @function

#! file-offset 0x6c320
#! rip-offset  0x2c320
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.Instance_DidDestroy:      #        0x2c320  0      OPC=<label>         
  popq %r11                #  1     0x2c320  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2c322  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2c329  1      OPC=nop             
  nop                      #  4     0x2c32a  1      OPC=nop             
  nop                      #  5     0x2c32b  1      OPC=nop             
  nop                      #  6     0x2c32c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2c32d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2c330  3      OPC=jmpq_r64        
  nop                      #  9     0x2c333  1      OPC=nop             
  nop                      #  10    0x2c334  1      OPC=nop             
  nop                      #  11    0x2c335  1      OPC=nop             
  nop                      #  12    0x2c336  1      OPC=nop             
  nop                      #  13    0x2c337  1      OPC=nop             
  nop                      #  14    0x2c338  1      OPC=nop             
  nop                      #  15    0x2c339  1      OPC=nop             
  nop                      #  16    0x2c33a  1      OPC=nop             
  nop                      #  17    0x2c33b  1      OPC=nop             
  nop                      #  18    0x2c33c  1      OPC=nop             
  nop                      #  19    0x2c33d  1      OPC=nop             
  nop                      #  20    0x2c33e  1      OPC=nop             
  nop                      #  21    0x2c33f  1      OPC=nop             
  nop                      #  22    0x2c340  1      OPC=nop             
  nop                      #  23    0x2c341  1      OPC=nop             
  nop                      #  24    0x2c342  1      OPC=nop             
  nop                      #  25    0x2c343  1      OPC=nop             
  nop                      #  26    0x2c344  1      OPC=nop             
  nop                      #  27    0x2c345  1      OPC=nop             
  nop                      #  28    0x2c346  1      OPC=nop             
                                                                        
.size Instance_DidDestroy, .-Instance_DidDestroy

