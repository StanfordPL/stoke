  .text
  .globl __locale_msgcharset
  .type __locale_msgcharset, @function

#! file-offset 0x160a80
#! rip-offset  0x120a80
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__locale_msgcharset:      #        0x120a80  0      OPC=<label>         
  popq %r11                #  1     0x120a80  2      OPC=popq_r64_1      
  movl $0x10070ec0, %eax   #  2     0x120a82  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x120a87  7      OPC=andl_r32_imm32  
  nop                      #  4     0x120a8e  1      OPC=nop             
  nop                      #  5     0x120a8f  1      OPC=nop             
  nop                      #  6     0x120a90  1      OPC=nop             
  nop                      #  7     0x120a91  1      OPC=nop             
  addq %r15, %r11          #  8     0x120a92  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x120a95  3      OPC=jmpq_r64        
  nop                      #  10    0x120a98  1      OPC=nop             
  nop                      #  11    0x120a99  1      OPC=nop             
  nop                      #  12    0x120a9a  1      OPC=nop             
  nop                      #  13    0x120a9b  1      OPC=nop             
  nop                      #  14    0x120a9c  1      OPC=nop             
  nop                      #  15    0x120a9d  1      OPC=nop             
  nop                      #  16    0x120a9e  1      OPC=nop             
  nop                      #  17    0x120a9f  1      OPC=nop             
  nop                      #  18    0x120aa0  1      OPC=nop             
  nop                      #  19    0x120aa1  1      OPC=nop             
  nop                      #  20    0x120aa2  1      OPC=nop             
  nop                      #  21    0x120aa3  1      OPC=nop             
  nop                      #  22    0x120aa4  1      OPC=nop             
  nop                      #  23    0x120aa5  1      OPC=nop             
  nop                      #  24    0x120aa6  1      OPC=nop             
                                                                         
.size __locale_msgcharset, .-__locale_msgcharset

