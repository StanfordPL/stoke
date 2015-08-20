  .text
  .globl __gettzinfo
  .type __gettzinfo, @function

#! file-offset 0x188e40
#! rip-offset  0x148e40
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__gettzinfo:              #        0x148e40  0      OPC=<label>         
  popq %r11                #  1     0x148e40  2      OPC=popq_r64_1      
  movl $0x10071060, %eax   #  2     0x148e42  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x148e47  7      OPC=andl_r32_imm32  
  nop                      #  4     0x148e4e  1      OPC=nop             
  nop                      #  5     0x148e4f  1      OPC=nop             
  nop                      #  6     0x148e50  1      OPC=nop             
  nop                      #  7     0x148e51  1      OPC=nop             
  addq %r15, %r11          #  8     0x148e52  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x148e55  3      OPC=jmpq_r64        
  nop                      #  10    0x148e58  1      OPC=nop             
  nop                      #  11    0x148e59  1      OPC=nop             
  nop                      #  12    0x148e5a  1      OPC=nop             
  nop                      #  13    0x148e5b  1      OPC=nop             
  nop                      #  14    0x148e5c  1      OPC=nop             
  nop                      #  15    0x148e5d  1      OPC=nop             
  nop                      #  16    0x148e5e  1      OPC=nop             
  nop                      #  17    0x148e5f  1      OPC=nop             
  nop                      #  18    0x148e60  1      OPC=nop             
  nop                      #  19    0x148e61  1      OPC=nop             
  nop                      #  20    0x148e62  1      OPC=nop             
  nop                      #  21    0x148e63  1      OPC=nop             
  nop                      #  22    0x148e64  1      OPC=nop             
  nop                      #  23    0x148e65  1      OPC=nop             
  nop                      #  24    0x148e66  1      OPC=nop             
                                                                         
.size __gettzinfo, .-__gettzinfo

