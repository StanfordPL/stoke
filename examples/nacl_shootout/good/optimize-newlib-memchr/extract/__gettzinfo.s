  .text
  .globl __gettzinfo
  .type __gettzinfo, @function

#! file-offset 0x189560
#! rip-offset  0x149560
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__gettzinfo:              #        0x149560  0      OPC=<label>         
  popq %r11                #  1     0x149560  2      OPC=popq_r64_1      
  movl $0x10071060, %eax   #  2     0x149562  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x149567  7      OPC=andl_r32_imm32  
  nop                      #  4     0x14956e  1      OPC=nop             
  nop                      #  5     0x14956f  1      OPC=nop             
  nop                      #  6     0x149570  1      OPC=nop             
  nop                      #  7     0x149571  1      OPC=nop             
  addq %r15, %r11          #  8     0x149572  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x149575  3      OPC=jmpq_r64        
  nop                      #  10    0x149578  1      OPC=nop             
  nop                      #  11    0x149579  1      OPC=nop             
  nop                      #  12    0x14957a  1      OPC=nop             
  nop                      #  13    0x14957b  1      OPC=nop             
  nop                      #  14    0x14957c  1      OPC=nop             
  nop                      #  15    0x14957d  1      OPC=nop             
  nop                      #  16    0x14957e  1      OPC=nop             
  nop                      #  17    0x14957f  1      OPC=nop             
  nop                      #  18    0x149580  1      OPC=nop             
  nop                      #  19    0x149581  1      OPC=nop             
  nop                      #  20    0x149582  1      OPC=nop             
  nop                      #  21    0x149583  1      OPC=nop             
  nop                      #  22    0x149584  1      OPC=nop             
  nop                      #  23    0x149585  1      OPC=nop             
  nop                      #  24    0x149586  1      OPC=nop             
                                                                         
.size __gettzinfo, .-__gettzinfo

