  .text
  .globl ExecutePlan
  .type ExecutePlan, @function

#! file-offset 0x66740
#! rip-offset  0x26740
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  Opcode              
.ExecutePlan:          #        0x26740  0      OPC=<label>         
  movl %edi, %edi      #  1     0x26740  2      OPC=movl_r32_r32    
  movl $0x26700, %esi  #  2     0x26742  5      OPC=movl_r32_imm32  
  jmpq .List_Do        #  3     0x26747  5      OPC=jmpq_label_1    
  nop                  #  4     0x2674c  1      OPC=nop             
  nop                  #  5     0x2674d  1      OPC=nop             
  nop                  #  6     0x2674e  1      OPC=nop             
  nop                  #  7     0x2674f  1      OPC=nop             
  nop                  #  8     0x26750  1      OPC=nop             
  nop                  #  9     0x26751  1      OPC=nop             
  nop                  #  10    0x26752  1      OPC=nop             
  nop                  #  11    0x26753  1      OPC=nop             
  nop                  #  12    0x26754  1      OPC=nop             
  nop                  #  13    0x26755  1      OPC=nop             
  nop                  #  14    0x26756  1      OPC=nop             
  nop                  #  15    0x26757  1      OPC=nop             
  nop                  #  16    0x26758  1      OPC=nop             
  nop                  #  17    0x26759  1      OPC=nop             
  nop                  #  18    0x2675a  1      OPC=nop             
  nop                  #  19    0x2675b  1      OPC=nop             
  nop                  #  20    0x2675c  1      OPC=nop             
  nop                  #  21    0x2675d  1      OPC=nop             
  nop                  #  22    0x2675e  1      OPC=nop             
  nop                  #  23    0x2675f  1      OPC=nop             
                                                                    
.size ExecutePlan, .-ExecutePlan

