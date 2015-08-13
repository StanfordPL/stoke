  .text
  .globl ExecutePlan
  .type ExecutePlan, @function

#! file-offset 0x661c0
#! rip-offset  0x261c0
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  Opcode              
.ExecutePlan:          #        0x261c0  0      OPC=<label>         
  movl %edi, %edi      #  1     0x261c0  2      OPC=movl_r32_r32    
  movl $0x26180, %esi  #  2     0x261c2  5      OPC=movl_r32_imm32  
  jmpq .List_Do        #  3     0x261c7  5      OPC=jmpq_label_1    
  nop                  #  4     0x261cc  1      OPC=nop             
  nop                  #  5     0x261cd  1      OPC=nop             
  nop                  #  6     0x261ce  1      OPC=nop             
  nop                  #  7     0x261cf  1      OPC=nop             
  nop                  #  8     0x261d0  1      OPC=nop             
  nop                  #  9     0x261d1  1      OPC=nop             
  nop                  #  10    0x261d2  1      OPC=nop             
  nop                  #  11    0x261d3  1      OPC=nop             
  nop                  #  12    0x261d4  1      OPC=nop             
  nop                  #  13    0x261d5  1      OPC=nop             
  nop                  #  14    0x261d6  1      OPC=nop             
  nop                  #  15    0x261d7  1      OPC=nop             
  nop                  #  16    0x261d8  1      OPC=nop             
  nop                  #  17    0x261d9  1      OPC=nop             
  nop                  #  18    0x261da  1      OPC=nop             
  nop                  #  19    0x261db  1      OPC=nop             
  nop                  #  20    0x261dc  1      OPC=nop             
  nop                  #  21    0x261dd  1      OPC=nop             
  nop                  #  22    0x261de  1      OPC=nop             
  nop                  #  23    0x261df  1      OPC=nop             
                                                                    
.size ExecutePlan, .-ExecutePlan

