  .text
  .globl matherr
  .type matherr, @function

#! file-offset 0x149360
#! rip-offset  0x109360
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.matherr:                  #        0x109360  0      OPC=<label>         
  popq %r11                #  1     0x109360  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x109362  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d  #  3     0x109364  7      OPC=andl_r32_imm32  
  nop                      #  4     0x10936b  1      OPC=nop             
  nop                      #  5     0x10936c  1      OPC=nop             
  nop                      #  6     0x10936d  1      OPC=nop             
  nop                      #  7     0x10936e  1      OPC=nop             
  addq %r15, %r11          #  8     0x10936f  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x109372  3      OPC=jmpq_r64        
  nop                      #  10    0x109375  1      OPC=nop             
  nop                      #  11    0x109376  1      OPC=nop             
  nop                      #  12    0x109377  1      OPC=nop             
  nop                      #  13    0x109378  1      OPC=nop             
  nop                      #  14    0x109379  1      OPC=nop             
  nop                      #  15    0x10937a  1      OPC=nop             
  nop                      #  16    0x10937b  1      OPC=nop             
  nop                      #  17    0x10937c  1      OPC=nop             
  nop                      #  18    0x10937d  1      OPC=nop             
  nop                      #  19    0x10937e  1      OPC=nop             
  nop                      #  20    0x10937f  1      OPC=nop             
  nop                      #  21    0x109380  1      OPC=nop             
  nop                      #  22    0x109381  1      OPC=nop             
  nop                      #  23    0x109382  1      OPC=nop             
  nop                      #  24    0x109383  1      OPC=nop             
  nop                      #  25    0x109384  1      OPC=nop             
  nop                      #  26    0x109385  1      OPC=nop             
  nop                      #  27    0x109386  1      OPC=nop             
                                                                         
.size matherr, .-matherr

