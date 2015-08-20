  .text
  .globl _ZNSirsEPFRSiS_E
  .type _ZNSirsEPFRSiS_E, @function

#! file-offset 0xa70c0
#! rip-offset  0x670c0
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
._ZNSirsEPFRSiS_E:        #        0x670c0  0      OPC=<label>         
  movl %edi, %edi         #  1     0x670c0  2      OPC=movl_r32_r32    
  movl %esi, %esi         #  2     0x670c2  2      OPC=movl_r32_r32    
  andl $0xffffffe0, %esi  #  3     0x670c4  6      OPC=andl_r32_imm32  
  nop                     #  4     0x670ca  1      OPC=nop             
  nop                     #  5     0x670cb  1      OPC=nop             
  nop                     #  6     0x670cc  1      OPC=nop             
  addq %r15, %rsi         #  7     0x670cd  3      OPC=addq_r64_r64    
  jmpq %rsi               #  8     0x670d0  2      OPC=jmpq_r64        
  nop                     #  9     0x670d2  1      OPC=nop             
  nop                     #  10    0x670d3  1      OPC=nop             
  nop                     #  11    0x670d4  1      OPC=nop             
  nop                     #  12    0x670d5  1      OPC=nop             
  nop                     #  13    0x670d6  1      OPC=nop             
  nop                     #  14    0x670d7  1      OPC=nop             
  nop                     #  15    0x670d8  1      OPC=nop             
  nop                     #  16    0x670d9  1      OPC=nop             
  nop                     #  17    0x670da  1      OPC=nop             
  nop                     #  18    0x670db  1      OPC=nop             
  nop                     #  19    0x670dc  1      OPC=nop             
  nop                     #  20    0x670dd  1      OPC=nop             
  nop                     #  21    0x670de  1      OPC=nop             
  nop                     #  22    0x670df  1      OPC=nop             
  nop                     #  23    0x670e0  1      OPC=nop             
  nop                     #  24    0x670e1  1      OPC=nop             
  nop                     #  25    0x670e2  1      OPC=nop             
  nop                     #  26    0x670e3  1      OPC=nop             
  nop                     #  27    0x670e4  1      OPC=nop             
  nop                     #  28    0x670e5  1      OPC=nop             
                                                                       
.size _ZNSirsEPFRSiS_E, .-_ZNSirsEPFRSiS_E

