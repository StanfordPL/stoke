  .text
  .globl __locale_charset
  .type __locale_charset, @function

#! file-offset 0x160a40
#! rip-offset  0x120a40
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__locale_charset:         #        0x120a40  0      OPC=<label>         
  popq %r11                #  1     0x120a40  2      OPC=popq_r64_1      
  movl $0x10070ee0, %eax   #  2     0x120a42  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x120a47  7      OPC=andl_r32_imm32  
  nop                      #  4     0x120a4e  1      OPC=nop             
  nop                      #  5     0x120a4f  1      OPC=nop             
  nop                      #  6     0x120a50  1      OPC=nop             
  nop                      #  7     0x120a51  1      OPC=nop             
  addq %r15, %r11          #  8     0x120a52  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x120a55  3      OPC=jmpq_r64        
  nop                      #  10    0x120a58  1      OPC=nop             
  nop                      #  11    0x120a59  1      OPC=nop             
  nop                      #  12    0x120a5a  1      OPC=nop             
  nop                      #  13    0x120a5b  1      OPC=nop             
  nop                      #  14    0x120a5c  1      OPC=nop             
  nop                      #  15    0x120a5d  1      OPC=nop             
  nop                      #  16    0x120a5e  1      OPC=nop             
  nop                      #  17    0x120a5f  1      OPC=nop             
  nop                      #  18    0x120a60  1      OPC=nop             
  nop                      #  19    0x120a61  1      OPC=nop             
  nop                      #  20    0x120a62  1      OPC=nop             
  nop                      #  21    0x120a63  1      OPC=nop             
  nop                      #  22    0x120a64  1      OPC=nop             
  nop                      #  23    0x120a65  1      OPC=nop             
  nop                      #  24    0x120a66  1      OPC=nop             
                                                                         
.size __locale_charset, .-__locale_charset

