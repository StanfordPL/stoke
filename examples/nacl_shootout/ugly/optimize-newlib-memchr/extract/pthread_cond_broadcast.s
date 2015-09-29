  .text
  .globl pthread_cond_broadcast
  .type pthread_cond_broadcast, @function

#! file-offset 0x702e0
#! rip-offset  0x302e0
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.pthread_cond_broadcast:  #        0x302e0  0      OPC=<label>         
  movl %edi, %edi         #  1     0x302e0  2      OPC=movl_r32_r32    
  movl $0x7fffffff, %esi  #  2     0x302e2  5      OPC=movl_r32_imm32  
  jmpq .pulse             #  3     0x302e7  2      OPC=jmpq_label      
  nop                     #  4     0x302e9  1      OPC=nop             
  nop                     #  5     0x302ea  1      OPC=nop             
  nop                     #  6     0x302eb  1      OPC=nop             
  nop                     #  7     0x302ec  1      OPC=nop             
  nop                     #  8     0x302ed  1      OPC=nop             
  nop                     #  9     0x302ee  1      OPC=nop             
  nop                     #  10    0x302ef  1      OPC=nop             
  nop                     #  11    0x302f0  1      OPC=nop             
  nop                     #  12    0x302f1  1      OPC=nop             
  nop                     #  13    0x302f2  1      OPC=nop             
  nop                     #  14    0x302f3  1      OPC=nop             
  nop                     #  15    0x302f4  1      OPC=nop             
  nop                     #  16    0x302f5  1      OPC=nop             
  nop                     #  17    0x302f6  1      OPC=nop             
  nop                     #  18    0x302f7  1      OPC=nop             
  nop                     #  19    0x302f8  1      OPC=nop             
  nop                     #  20    0x302f9  1      OPC=nop             
  nop                     #  21    0x302fa  1      OPC=nop             
  nop                     #  22    0x302fb  1      OPC=nop             
  nop                     #  23    0x302fc  1      OPC=nop             
  nop                     #  24    0x302fd  1      OPC=nop             
  nop                     #  25    0x302fe  1      OPC=nop             
  nop                     #  26    0x302ff  1      OPC=nop             
                                                                       
.size pthread_cond_broadcast, .-pthread_cond_broadcast

