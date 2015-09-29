  .text
  .globl _ZNSirsEPFRSiS_E
  .type _ZNSirsEPFRSiS_E, @function

#! file-offset 0xa77e0
#! rip-offset  0x677e0
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
._ZNSirsEPFRSiS_E:        #        0x677e0  0      OPC=<label>         
  movl %edi, %edi         #  1     0x677e0  2      OPC=movl_r32_r32    
  movl %esi, %esi         #  2     0x677e2  2      OPC=movl_r32_r32    
  andl $0xffffffe0, %esi  #  3     0x677e4  6      OPC=andl_r32_imm32  
  nop                     #  4     0x677ea  1      OPC=nop             
  nop                     #  5     0x677eb  1      OPC=nop             
  nop                     #  6     0x677ec  1      OPC=nop             
  addq %r15, %rsi         #  7     0x677ed  3      OPC=addq_r64_r64    
  jmpq %rsi               #  8     0x677f0  2      OPC=jmpq_r64        
  nop                     #  9     0x677f2  1      OPC=nop             
  nop                     #  10    0x677f3  1      OPC=nop             
  nop                     #  11    0x677f4  1      OPC=nop             
  nop                     #  12    0x677f5  1      OPC=nop             
  nop                     #  13    0x677f6  1      OPC=nop             
  nop                     #  14    0x677f7  1      OPC=nop             
  nop                     #  15    0x677f8  1      OPC=nop             
  nop                     #  16    0x677f9  1      OPC=nop             
  nop                     #  17    0x677fa  1      OPC=nop             
  nop                     #  18    0x677fb  1      OPC=nop             
  nop                     #  19    0x677fc  1      OPC=nop             
  nop                     #  20    0x677fd  1      OPC=nop             
  nop                     #  21    0x677fe  1      OPC=nop             
  nop                     #  22    0x677ff  1      OPC=nop             
  nop                     #  23    0x67800  1      OPC=nop             
  nop                     #  24    0x67801  1      OPC=nop             
  nop                     #  25    0x67802  1      OPC=nop             
  nop                     #  26    0x67803  1      OPC=nop             
  nop                     #  27    0x67804  1      OPC=nop             
  nop                     #  28    0x67805  1      OPC=nop             
                                                                       
.size _ZNSirsEPFRSiS_E, .-_ZNSirsEPFRSiS_E

