  .text
  .globl _ZNSirsEPFRSiS_E
  .type _ZNSirsEPFRSiS_E, @function

#! file-offset 0xa6dc0
#! rip-offset  0x66dc0
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
._ZNSirsEPFRSiS_E:        #        0x66dc0  0      OPC=<label>         
  movl %edi, %edi         #  1     0x66dc0  2      OPC=movl_r32_r32    
  movl %esi, %esi         #  2     0x66dc2  2      OPC=movl_r32_r32    
  andl $0xffffffe0, %esi  #  3     0x66dc4  6      OPC=andl_r32_imm32  
  nop                     #  4     0x66dca  1      OPC=nop             
  nop                     #  5     0x66dcb  1      OPC=nop             
  nop                     #  6     0x66dcc  1      OPC=nop             
  addq %r15, %rsi         #  7     0x66dcd  3      OPC=addq_r64_r64    
  jmpq %rsi               #  8     0x66dd0  2      OPC=jmpq_r64        
  nop                     #  9     0x66dd2  1      OPC=nop             
  nop                     #  10    0x66dd3  1      OPC=nop             
  nop                     #  11    0x66dd4  1      OPC=nop             
  nop                     #  12    0x66dd5  1      OPC=nop             
  nop                     #  13    0x66dd6  1      OPC=nop             
  nop                     #  14    0x66dd7  1      OPC=nop             
  nop                     #  15    0x66dd8  1      OPC=nop             
  nop                     #  16    0x66dd9  1      OPC=nop             
  nop                     #  17    0x66dda  1      OPC=nop             
  nop                     #  18    0x66ddb  1      OPC=nop             
  nop                     #  19    0x66ddc  1      OPC=nop             
  nop                     #  20    0x66ddd  1      OPC=nop             
  nop                     #  21    0x66dde  1      OPC=nop             
  nop                     #  22    0x66ddf  1      OPC=nop             
  nop                     #  23    0x66de0  1      OPC=nop             
  nop                     #  24    0x66de1  1      OPC=nop             
  nop                     #  25    0x66de2  1      OPC=nop             
  nop                     #  26    0x66de3  1      OPC=nop             
  nop                     #  27    0x66de4  1      OPC=nop             
  nop                     #  28    0x66de5  1      OPC=nop             
                                                                       
.size _ZNSirsEPFRSiS_E, .-_ZNSirsEPFRSiS_E

