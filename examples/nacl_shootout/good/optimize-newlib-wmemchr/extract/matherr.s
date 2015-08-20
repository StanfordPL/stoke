  .text
  .globl matherr
  .type matherr, @function

#! file-offset 0x149660
#! rip-offset  0x109660
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.matherr:                  #        0x109660  0      OPC=<label>         
  popq %r11                #  1     0x109660  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x109662  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d  #  3     0x109664  7      OPC=andl_r32_imm32  
  nop                      #  4     0x10966b  1      OPC=nop             
  nop                      #  5     0x10966c  1      OPC=nop             
  nop                      #  6     0x10966d  1      OPC=nop             
  nop                      #  7     0x10966e  1      OPC=nop             
  addq %r15, %r11          #  8     0x10966f  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x109672  3      OPC=jmpq_r64        
  nop                      #  10    0x109675  1      OPC=nop             
  nop                      #  11    0x109676  1      OPC=nop             
  nop                      #  12    0x109677  1      OPC=nop             
  nop                      #  13    0x109678  1      OPC=nop             
  nop                      #  14    0x109679  1      OPC=nop             
  nop                      #  15    0x10967a  1      OPC=nop             
  nop                      #  16    0x10967b  1      OPC=nop             
  nop                      #  17    0x10967c  1      OPC=nop             
  nop                      #  18    0x10967d  1      OPC=nop             
  nop                      #  19    0x10967e  1      OPC=nop             
  nop                      #  20    0x10967f  1      OPC=nop             
  nop                      #  21    0x109680  1      OPC=nop             
  nop                      #  22    0x109681  1      OPC=nop             
  nop                      #  23    0x109682  1      OPC=nop             
  nop                      #  24    0x109683  1      OPC=nop             
  nop                      #  25    0x109684  1      OPC=nop             
  nop                      #  26    0x109685  1      OPC=nop             
  nop                      #  27    0x109686  1      OPC=nop             
                                                                         
.size matherr, .-matherr

