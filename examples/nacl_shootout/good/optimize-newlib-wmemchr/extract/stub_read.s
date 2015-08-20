  .text
  .globl stub_read
  .type stub_read, @function

#! file-offset 0x158440
#! rip-offset  0x118440
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_read:                #        0x118440  0      OPC=<label>         
  popq %r11                #  1     0x118440  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118442  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118447  7      OPC=andl_r32_imm32  
  nop                      #  4     0x11844e  1      OPC=nop             
  nop                      #  5     0x11844f  1      OPC=nop             
  nop                      #  6     0x118450  1      OPC=nop             
  nop                      #  7     0x118451  1      OPC=nop             
  addq %r15, %r11          #  8     0x118452  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118455  3      OPC=jmpq_r64        
  nop                      #  10    0x118458  1      OPC=nop             
  nop                      #  11    0x118459  1      OPC=nop             
  nop                      #  12    0x11845a  1      OPC=nop             
  nop                      #  13    0x11845b  1      OPC=nop             
  nop                      #  14    0x11845c  1      OPC=nop             
  nop                      #  15    0x11845d  1      OPC=nop             
  nop                      #  16    0x11845e  1      OPC=nop             
  nop                      #  17    0x11845f  1      OPC=nop             
  nop                      #  18    0x118460  1      OPC=nop             
  nop                      #  19    0x118461  1      OPC=nop             
  nop                      #  20    0x118462  1      OPC=nop             
  nop                      #  21    0x118463  1      OPC=nop             
  nop                      #  22    0x118464  1      OPC=nop             
  nop                      #  23    0x118465  1      OPC=nop             
  nop                      #  24    0x118466  1      OPC=nop             
                                                                         
.size stub_read, .-stub_read

