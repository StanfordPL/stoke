  .text
  .globl stub_fstat
  .type stub_fstat, @function

#! file-offset 0x158bc0
#! rip-offset  0x118bc0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_fstat:               #        0x118bc0  0      OPC=<label>         
  popq %r11                #  1     0x118bc0  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118bc2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118bc7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x118bce  1      OPC=nop             
  nop                      #  5     0x118bcf  1      OPC=nop             
  nop                      #  6     0x118bd0  1      OPC=nop             
  nop                      #  7     0x118bd1  1      OPC=nop             
  addq %r15, %r11          #  8     0x118bd2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118bd5  3      OPC=jmpq_r64        
  nop                      #  10    0x118bd8  1      OPC=nop             
  nop                      #  11    0x118bd9  1      OPC=nop             
  nop                      #  12    0x118bda  1      OPC=nop             
  nop                      #  13    0x118bdb  1      OPC=nop             
  nop                      #  14    0x118bdc  1      OPC=nop             
  nop                      #  15    0x118bdd  1      OPC=nop             
  nop                      #  16    0x118bde  1      OPC=nop             
  nop                      #  17    0x118bdf  1      OPC=nop             
  nop                      #  18    0x118be0  1      OPC=nop             
  nop                      #  19    0x118be1  1      OPC=nop             
  nop                      #  20    0x118be2  1      OPC=nop             
  nop                      #  21    0x118be3  1      OPC=nop             
  nop                      #  22    0x118be4  1      OPC=nop             
  nop                      #  23    0x118be5  1      OPC=nop             
  nop                      #  24    0x118be6  1      OPC=nop             
                                                                         
.size stub_fstat, .-stub_fstat

